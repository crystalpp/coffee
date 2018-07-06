package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.Cart;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.CartService;

/*
 *TODO
 *购物车控制层
 * @author Walk without hitting a lever
 *2018年6月27日 下午9:27:30
 *
 */
@Controller
@RequestMapping("/carts")
public class CartController {
	@Resource
	private CartService cartService;

	@RequestMapping("/findAll")
	@ResponseBody
	public ModelAndView findAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Cart> carts = cartService.findAll();
		modelAndView.addObject("carts", carts);
		modelAndView.setViewName("/jsp/Cart.jsp");
		return modelAndView;

	}

	@RequestMapping("/updateCart")
	@ResponseBody
	public void updateCart(String id, String number) {
		int number1 = Integer.parseInt(number);
		System.out.println(number);
		System.out.println(id.trim());
		cartService.updateCart(id.trim(), number1);

	}

	@RequestMapping("/deleteCart")
	@ResponseBody
	public Message deleteCart(String id) {
		System.out.println(id.trim());

		return cartService.deleteCart(id.trim());

	}

	@RequestMapping("/addCart")
	@ResponseBody
	public Message addCart(String cartNumber, String coffeeCartId, HttpServletRequest request) {
		System.out.println("hello world");
		try {
			User user = (User) request.getSession().getAttribute("u");
			return cartService.addCart(cartNumber, coffeeCartId, user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message message = new Message();
			message.setMsg("ERROR");
			return message;
		}
	}

	@RequestMapping("/checkCart")
	@ResponseBody
	public void checkCart(String id) {
		System.out.println("Check" + id.trim());
		try {
			cartService.checkCart(id.trim());

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
