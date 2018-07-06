package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.Assess;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.AssessService;

/**
 * 商品评论控制层
 * 
 * @author 皮艳萍
 *
 */
@Controller
@RequestMapping("/assesses")
public class AssessController {

	@Resource
	private AssessService assessService;

	@RequestMapping("/addReview")
	@ResponseBody
	public Message addReview(Assess assess, String coffeeId, String userId) {
		try {
			return assessService.addReview(assess, coffeeId, userId);
		} catch (Exception e) {
			// TODO: handle exception
			Message message = new Message();
			message.setMsg("ADD FAILED");
			return message;
		}

	}

	@RequestMapping("/findAll")
	@ResponseBody
	public ModelAndView findAll(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		User user = (User) request.getSession().getAttribute("u");
		List<Assess> Assesss = assessService.findAll(user.getId());
		modelAndView.addObject("Assesss", Assesss);
		modelAndView.setViewName("/jsp/ProductReview.jsp");

		return modelAndView;
	}

	@RequestMapping("/deleteAssess")
	@ResponseBody
	public Message deleteAssess(String id) {

		try {
			return assessService.delete(id);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message message = new Message();
			message.setMsg("error");
			return message;
		}

	}

}
