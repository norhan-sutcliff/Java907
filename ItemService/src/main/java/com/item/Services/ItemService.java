package com.item.Services;
import com.item.model.Item;
import java.util.List;
public interface ItemService {
    boolean addItem(Item item);
    boolean editItem(Item item);
    Item getItemById(long id);
    List<Item> getAllItems();
    boolean deleteItemById(long id);
}