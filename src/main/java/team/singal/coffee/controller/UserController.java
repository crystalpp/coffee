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

/**
 * 用户控制c层
 * 
 * @author 皮艳萍
 *
 */
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
			//
			String url = request.getSession().getAttribute("backUrl").toString();
			// + "?coffeeId=" + coffeeId + "&&coffeeKind=" + coffeeKind
			mav.setViewName("redirect:" + url);// 默认转发
			// ,加上
			// redirect为重定向
			request.getSession().removeAttribute("backUrl");
			return mav;
		} else {
			mav.addObject("msg", "UserName or Password ERROR");
			mav.setViewName("../jsp/login.jsp");
			return mav;
		}

	}

	@RequestMapping("/updateUserInfo")
	@ResponseBody

	public Message updateUserInfo(HttpServletRequest request, String email, String userPhone, String birthday) {
		User user = (User) request.getSession().getAttribute("u");
		Message message = new Message();
		try {
			message = userService.updateUserInfo(user, email, userPhone, birthday);
			return message;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

			message.setMsg("Error");
			return message;
		}

	}

	@RequestMapping("/checkOld")
	@ResponseBody
	public Message checkOld(String oldPsw, HttpServletRequest request) {
		return userService.checkOld(oldPsw, request);
	}
	@RequestMapping("/updatePsw")
	@ResponseBody
	public Message updatePsw(String newPassword1, HttpServletRequest request) {
		try {
			User user = (User) request.getSession().getAttribute("u");
			return userService.updatePsw(newPassword1, user);

		} catch (Exception e) { // TODO: handle exception
			e.printStackTrace();
			Message message = new Message();
			message.setMsg("error");
			return message;
		}

	}

}
