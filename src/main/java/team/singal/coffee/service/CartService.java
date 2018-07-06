package team.singal.coffee.service;

import java.util.List;

import team.singal.coffee.pojo.Cart;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;

public interface CartService {

	List<Cart> findAll();

	void updateCart(String id, int number1);

	Message deleteCart(String id);

	Message addCart(String cartNumber, String coffeeCartId, User user);

	void checkCart(String id);

}
