package com.item.ServiceEmpl;
import com.item.Services.ItemService;
import com.item.model.Item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import java.sql.Connection;
public class ItemServiceEmpl implements ItemService{
    private DataSource dataSource;
    public  ItemServiceEmpl(DataSource dataSource){
        this.dataSource=dataSource;
    }
    @Override
    public boolean addItem(Item item){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            String sql = "INSERT INTO item (NAME, PRICE, TOTAL_NUMBER) VALUES ('"
                    + item.getName() + "', " + item.getPrice() + ", " + item.getTotalNumber() + ")";

            statement.execute(sql);
            return true;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (connection != null) connection.close();
                if (statement != null) statement.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return false;
    }
    @Override
    public boolean editItem(Item item){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();

            String sql = "UPDATE item SET NAME = '" + item.getName() + "', "
                    + "PRICE = " + item.getPrice() + ", "
                    + "TOTAL_NUMBER = " + item.getTotalNumber()
                    + " WHERE id = " + item.getId();
            statement.execute(sql);
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (connection != null) connection.close();
                if (statement != null) statement.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return false;
    }
    @Override
    public Item getItemById(long id){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            String sql = "Select * from ITEM WHERE id = " + id;
            ResultSet resultSet = statement.executeQuery(sql);
            Item item = new Item();
            if (resultSet.next()) {
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getDouble("price"));
                item.setTotalNumber(resultSet.getInt("total_number"));
            }
            return item;
        }
        catch (SQLException e)
        {
            System.out.println(e.getMessage());
        }
        finally {
            try {
                if (connection != null) connection.close();
                if (statement != null) statement.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return null;
    }
    @Override
    public List<Item> getAllItems(){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            String sql = "Select * from ITEM ";
            ResultSet resultSet = statement.executeQuery(sql);
            Item item = new Item();
            List<Item> items = new ArrayList<>();
            while (resultSet.next()) {
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getDouble("price"));
                item.setTotalNumber(resultSet.getInt("total_number"));
                items.add(item);
            }
            return items;
        }
        catch (SQLException e)
        {
            System.out.println(e.getMessage());
        }
        finally {
            try {
                if (connection != null) connection.close();
                if (statement != null) statement.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return new ArrayList<>();
    }
    @Override
    public boolean deleteItemById(long id){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            String sql = "delete from ITEM where id = " + id;
            statement.execute(sql);
            return true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (connection != null) connection.close();
                if (statement != null) statement.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return false;
    }
}
