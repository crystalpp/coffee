package team.singal.coffee.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	@Resource
	private UserService userService;

	@RequestMapping("/creatAccount")
	@ResponseBody
	public Message creatAccount(User user) {
		System.out.println("**" + user);
		try {
			return userService.creatAccount(user);
		} catch (Exception e) {
			Message message = new Message();
			message.setMsg("Creat Failed");
			return message;
			// TODO: handle exception
		}

	}

	@RequestMapping("/login")
	public ModelAndView login(String userInfo, String userPassword, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		User u = userService.login(userInfo, userPassword);
		if (u != null) {
			request.getSession().setAttribute("u", u);
			mav.setViewName("redirect:/index.jsp");// 默认转发 ,加上 redirect为重定向
			return mav;
		} else {
			mav.addObject("msg", "UserName or Password ERROR");
			mav.setViewName("../jsp/login.jsp");
			return mav;
		}

	}

}
