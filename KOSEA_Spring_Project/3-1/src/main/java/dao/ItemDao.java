package dao;

import java.util.List;

import model.Item;

public interface ItemDao {
	public List<Item> findAll();
	public Item findById(Integer id);
}
