package com.item.controller;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.util.List;
import com.item.model.Item;
import com.item.Services.ItemService;
import com.item.ServiceEmpl.ItemServiceEmpl;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Objects;
import javax.annotation.Resource;
import javax.sql.DataSource;

@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
    @Resource(name = "jdbc/connection")
    public static DataSource datasource;
    static public ItemService itemService = new ItemServiceEmpl(datasource);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(Objects.isNull(action))
        {
            action = "show-Items";
        }
        switch (action) {
            case "add-item":
                addItem(req,resp);
                break;
            case "update-item":
                updateItem(req,resp);
                break;
            case "delete-item":
                deleteItem(req,resp);
                break;
            case "show-items":
                ShowItems(req,resp);
                break;
            case "show-item":
                ShowItem(req,resp);
                break;
            default:
                ShowItems(req,resp);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
    private void addItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        int totalNumber = Integer.parseInt(req.getParameter("totalNumber"));
        Item item = new Item();
        item.setId(id);
        item.setName(name);
        item.setPrice(price);
        item.setTotalNumber(totalNumber);
        boolean isAdded = itemService.addItem(item);
        if (isAdded) {
            ShowItems(req, resp);
        } else {
            System.out.println("Can't add item");
        }
    }
    private void updateItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        int totalNumber = Integer.parseInt(req.getParameter("totalNumber"));
        Item item = new Item();
        item.setId(id);
        item.setName(name);
        item.setPrice(price);
        item.setTotalNumber(totalNumber);
        boolean isUpdated = itemService.editItem(item);
        if (isUpdated) {
            ShowItems(req, resp);
        } else {
            System.out.println("Can't update item");
        }
    }
    private void deleteItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Long id = Long.parseLong(req.getParameter("id"));
            boolean itemDeleted = itemService.deleteItemById(id);
            if (itemDeleted) {
                req.setAttribute("message", "Item deleted successfully.");
            } else {
                req.setAttribute("message", "Failed to delete item.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("message", "Error: " + e.getMessage());
        }
        ShowItems(req, resp);
    }
    private void ShowItems(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Item> items = itemService.getAllItems();
        req.setAttribute("items", items);
        try {
            req.getRequestDispatcher("/show-items.jsp").forward(req, resp);
        } catch (Exception e) {
            System.out.println("---> " + e.getMessage());
        }
    }
    private void ShowItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));
        Item item = itemService.getItemById(id);
        req.setAttribute("item", item);
        try {
            req.getRequestDispatcher("/show-item.jsp").forward(req, resp);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
