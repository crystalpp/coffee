package team.singal.coffee.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.CartDao;
import team.singal.coffee.dao.CoffeeDao;
import team.singal.coffee.pojo.Cart;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.RecordCart;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.CartService;

/*
 *TODO
 *购物车服务层
 * @author Walk without hitting a lever
 *2018年6月27日 下午9:27:23
 *
 */
@Service
@Transactional
public class CartServiceImpl implements CartService {
	@Resource
	private CartDao cartDao;
	@Resource
	private CoffeeDao coffeeDao;

	@Override
	public List<Cart> findAll() {

		return cartDao.findAll();
	}

	@Override
	public void updateCart(String id, int number1) {
		Cart cart = cartDao.findById(id);
		try {
			if (cart != null) {
				cart.setCartNumber(number1);
				cartDao.updateCart(cart);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public Message deleteCart(String id) {
		Cart cart = cartDao.findById(id);
		Message message = new Message();
		try {
			if (cart != null) {
				cartDao.deleteCart(cart);
				message.setMsg("删除成功");
				return message;

			} else {
				message.setMsg("删除的记录不存在");
				return message;
			}

		} catch (Exception e) {
			// TODO: handle exception
			message.setMsg("操作异常");
			return message;
		}

	}

	@Override
	public Message addCart(String cartNumber, String coffeeCartId, User user) {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(cartNumber);
		Message message = new Message();
		message.setMsg("ADD SUCCESS");
		Cart cart2 = cartDao.findByCoffeeUserId(coffeeCartId, user.getId());
		if (cart2 == null) {
			Coffee coffee = coffeeDao.findById(coffeeCartId);
			String id = UUID.randomUUID().toString().substring(0, 4);
			Cart cart = new Cart();
			cart.setId(id);
			cart.setCoffee(coffee);
			cart.setUser(user);
			cart.setCartDate(new Date());
			cart.setCartNumber(num);
			cartDao.addCart(cart);

		} else {
			cart2.setCartNumber(cart2.getCartNumber() + num);
			cartDao.updateCart(cart2);
		}

		return message;

	}

	@Override
	public void checkCart(String id) {
		// 2018年6月28日// TODO Auto-generated method stub
		RecordCart record = new RecordCart();
		Cart cart = cartDao.findById(id);

		String rid = UUID.randomUUID().toString().substring(0, 4);
		record.setId(rid);
		record.setCartNumber(cart.getCartNumber());
		record.setRecordDate(new Date());
		record.setCoffee(cart.getCoffee());
		record.setUser(cart.getUser());
		cartDao.checkCart(record);
		/* cartDao.deleteCart(cart); */

	}

}
