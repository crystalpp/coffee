package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.ReceiveInfo;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.receiveInfoService;

/**
 * 收货信息控制层
 * 
 * @author 皮艳萍
 *
 */
@Controller
@RequestMapping("/reInfos")
public class receiveInfoController {

	@Resource
	private receiveInfoService receiveInfoService;

	@RequestMapping("/addReceiveInfo")
	@ResponseBody
	public Message addReceiveInfo(ReceiveInfo receiveInfo, String address1, String address2,
			HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("u");
		System.out.println(receiveInfo);
		try {
			return receiveInfoService.addReceiveInfo(receiveInfo, address1, address2, user);

		} catch (Exception e) {
			// TODO: handle exception
			Message message = new Message();
			message.setMsg("failed");
			return message;

		}
	}

	@RequestMapping("/updateReceiveInfo")
	@ResponseBody
	public Message updateReceiveInfo(String id, String rName, String rAddress, String rPhone) {
		System.out.println("hahahaha" + rName);
		Message message = new Message();
		try {

			receiveInfoService.updateReceiveInfo(id, rName, rAddress, rPhone);
			message.setMsg("Update Success!");
			return message;

		} catch (Exception e) {

			// TODO: handle exception
			e.printStackTrace();
			message.setMsg("failed");
			return message;

		}
	}

	@RequestMapping("/findAll")
	@ResponseBody
	public ModelAndView findAll(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("u");
		System.out.println(user.getId());
		ModelAndView modelAndView = new ModelAndView();
		List<ReceiveInfo> receiveInfos = receiveInfoService.findAll(user.getId());
		modelAndView.addObject("receiveInfos", receiveInfos);
		modelAndView.setViewName("/jsp/addressBook.jsp");
		return modelAndView;
	}

	@RequestMapping("/deleteReceiveInfo")
	@ResponseBody
	public Message deleteReceiveInfo(String id) {
		Message message = new Message();
		try {

			receiveInfoService.deleteReceiveInfo(id);
			message.setMsg("Delete Success!");
			return message;

		} catch (Exception e) {

			// TODO: handle exception
			e.printStackTrace();
			message.setMsg("failed");
			return message;

		}
	}

}
