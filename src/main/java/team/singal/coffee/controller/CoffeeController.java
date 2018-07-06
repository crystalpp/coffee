package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.json.JSONArray;
import team.singal.coffee.pojo.AssessView;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.service.CoffeeService;

/**
 * 咖啡控制层
 * 
 * @author 皮艳萍
 *
 */
@Controller
@RequestMapping("/coffees")
public class CoffeeController {

	@Resource
	private CoffeeService coffeeService;

	@RequestMapping("/findAll")
	@ResponseBody
	public JSONArray findAll() {
		// ModelAndView mav = new ModelAndView();
		JSONArray coffees = coffeeService.findAll();
		// mav.addObject("coffees", coffees);
		// mav.setViewName("/jsp/coffee.jsp");

		return coffees;
	}

	@RequestMapping("/findAllByPrice")
	@ResponseBody
	public JSONArray findAllByPrice(String sortCoffee) {
		// ModelAndView mav = new ModelAndView();
		System.out.println("***" + sortCoffee);
		JSONArray coffees = coffeeService.findAllByPrice();
		// mav.addObject("coffees", coffees);
		// mav.setViewName("/jsp/coffee.jsp");

		return coffees;
	}

	@RequestMapping("/showCoffeeDetail")
	@ResponseBody
	public ModelAndView showCoffeeDetail(String coffeeId, String coffeeKind, HttpServletRequest request) {
		Coffee coffee = coffeeService.findById(coffeeId);
		List<Coffee> kindCoffees = coffeeService.findByKindId(coffeeKind);
		/*
		 * User user = (User) request.getSession().getAttribute("u");
		 * 
		 * String userId = user.getId();
		 */

		List<AssessView> assesses = coffeeService.findAssessById(coffeeId);
		System.out.println(assesses);
		ModelAndView mav = new ModelAndView();
		// request.setAttribute("coffee", coffee);
		mav.addObject("coffee", coffee);
		mav.addObject("kindCoffees", kindCoffees);
		mav.addObject("assesses1", assesses);
		mav.setViewName("../jsp/detail.jsp");
		return mav;

	}

	@RequestMapping("/findByName")
	@ResponseBody
	public JSONArray findByName(String search, HttpServletRequest request) {
		try {
			System.out.println("****");
			// ModelAndView mav = new ModelAndView();
			JSONArray coffees = coffeeService.findByName(search);
			System.out.println("***" + coffees);
			// mav.addObject("coffees", coffees);
			// mav.setViewName("/jsp/coffee.jsp");

			return coffees;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}

	}

}
