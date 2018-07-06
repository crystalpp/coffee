package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.ClubCard;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.ClubCardService;

/**
 * 会员卡控制层
 * 
 * @author 皮艳萍
 *
 */
@Controller
@RequestMapping("/clubCards")
public class ClubCardController {
	@Resource
	private ClubCardService clubCardService;

	@RequestMapping("/findAll")
	public ModelAndView findAll(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("u");
		ModelAndView modelAndView = new ModelAndView();
		List<ClubCard> clubCardds = clubCardService.findAll(user.getId());
		modelAndView.addObject("clubCardds", clubCardds);
		modelAndView.setViewName("/jsp/card.jsp");
		return modelAndView;

	}
}
