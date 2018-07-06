package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import team.singal.coffee.pojo.Admin;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.AdminService;

/**
 * 管理员信息
 * @author 胡春
 *
 */
@Controller
@RequestMapping("/admins")
public class AdminController {

	
	@Resource
	private AdminService adminService;
	
	@RequestMapping("/login")
	public ModelAndView login(Admin admin ,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Admin a = adminService.login(admin);
		if (a != null) {
			request.getSession().setAttribute("a", a);
			mav.setViewName("/jsp/a-index.jsp");
			return mav;
		} else {
			mav.addObject("msg", "adminName or password error");
			mav.setViewName("/a-login.jsp");
			return mav;
		}
	}
	@RequestMapping("/findAll")
	public ModelAndView findAll() {
		ModelAndView mav = new ModelAndView();
		List<User> users = adminService.findAll();
		mav.setViewName("/jsp/a-userList.jsp");
		mav.addObject("users", users);
		return mav;
	}
	@RequestMapping("/addUser")
	@ResponseBody
	public Message addUser(User user) {

		try {
			return adminService.addUser(user);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg = new Message();
			msg.setMsg("error");
			return msg;
		}
	}
	@RequestMapping("/findByLike")
	public ModelAndView findByLike(String userName) {
		ModelAndView mav = new ModelAndView();
		List<User> users = adminService.findByLike(userName);
		mav.setViewName("/jsp/a-userList.jsp");
		mav.addObject("users", users);
		return mav;
	}
	@RequestMapping("/updateUser")
	@ResponseBody
	public Message updateKind(User user) {
		try {
			Message message = adminService.updateUser(user);
			return message;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg = new Message();
			msg.setMsg("This user already exists and cannot be added repeatedly");
			return msg;

		}

	}

	@RequestMapping("/deleteUser")
	@ResponseBody
	public Message deleteKind(String uId) {

		try {
			Message msg = adminService.deleteUser(uId);
			return msg;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg = new Message();
			msg.setMsg("Fail");
			return msg;
		}
	}
	@RequestMapping("/checkOld")
	@ResponseBody
	public Message checkOld(String oldPsw, HttpServletRequest request) {
		return adminService.checkOld(oldPsw, request);
	}
	
	@RequestMapping("/updatePsw")
	@ResponseBody
	public Message updatePsw(String newPassword1, String adminName) {
		System.out.println(newPassword1);
		System.out.println(adminName);
		try {
			return adminService.updatePsw(newPassword1, adminName);

		} catch (Exception e) { // TODO: handle exception
			e.printStackTrace();
			Message message = new Message();
			message.setMsg("ERROR");
			return message;
		}

	}
}
