package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Cart;
import team.singal.coffee.pojo.RecordCart;

public interface CartDao {

	List<Cart> findAll();

	Cart findById(String id);

	void updateCart(Cart cart);

	void deleteCart(Cart cart);

	Cart findByCoffeeUserId(String coffeeCartId, String cartUserId);

	void addCart(Cart cart);

	void checkCart(RecordCart record);

}
