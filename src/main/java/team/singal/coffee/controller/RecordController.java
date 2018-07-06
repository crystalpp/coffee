package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.Record;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.RecordCartService;
import team.singal.coffee.service.RecordService;

/**
 * 交易记录控制层
 * 
 * @author 尹小芳
 *
 */
@Controller
@RequestMapping("/records")
public class RecordController {
	@Resource
	private RecordCartService RecordCart;
	@Resource
	private RecordService recordService;

	@ResponseBody
	@RequestMapping("/findAll")
	public List<Record> findAll(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("u");
		String uid = user.getId();
		return recordService.findAll(uid);
	}

	@RequestMapping("/addRecord")
	public ModelAndView addRecord(String id, String blance, String addrssid, HttpServletResponse response,
			HttpServletRequest request) {
		System.out.println("***");
		ModelAndView modelAndView = new ModelAndView();

		try {
			Message message = recordService.addRecord(id, blance, addrssid);
			modelAndView.addObject("msg", message);
			modelAndView.setViewName("/jsp/transHistory.jsp");
			response.sendRedirect("/index.jsp");
			return null;
			// request.getRequestDispatcher("/index.jsp").forward(, arg1);
			// return modelAndView;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message message1 = new Message();
			message1.setMsg("操作异常");
			modelAndView.addObject("msg", message1);
			/* modelAndView.setViewName("/index.jsp"); */
			return modelAndView;

		}

	}

}
