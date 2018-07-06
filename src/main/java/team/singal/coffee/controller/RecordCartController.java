package team.singal.coffee.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.payShow;
import team.singal.coffee.service.RecordCartService;

/*
 *TODO
 *购物车记录控制层
 * @author Walk without hitting a lever
 *2018年6月28日 下午4:45:12
 *
 */
@Controller
@RequestMapping("/recordCarts")
public class RecordCartController {

	@Resource
	private RecordCartService RecordCart;

	@RequestMapping("/findAll")
	@ResponseBody
	public ModelAndView findAll() {
		ModelAndView modelAndView = new ModelAndView();
		payShow show = RecordCart.findAll();
		modelAndView.addObject("RecordCarts", show);
		modelAndView.setViewName("/jsp/PayForCoffee.jsp");
		System.out.println(show);
		return modelAndView;

	}
}
