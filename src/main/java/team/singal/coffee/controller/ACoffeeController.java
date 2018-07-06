package team.singal.coffee.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Kind;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.Record;
import team.singal.coffee.service.ACoffeeService;
import team.singal.coffee.utils.UpUtils;


/**
 * 
 * @author 胡春
 *
 */
@Controller
@RequestMapping("/a-coffees")
public class ACoffeeController {
	@Resource
	private  ACoffeeService aCoffeeService;
	
	@RequestMapping("/findAll")
	public ModelAndView findAll() {
		ModelAndView mav = new ModelAndView();
		List<Coffee> coffees =  aCoffeeService.findAll();
		mav.addObject("coffees", coffees);
		mav.setViewName("/jsp/a-coffee.jsp");
		return mav;
	}
	@RequestMapping("/findByLike")
	public ModelAndView findByLike(String coName) {
		ModelAndView mav = new ModelAndView();
		List<Coffee> coffees = aCoffeeService.findByLike(coName);
		
		mav.addObject("coffees",coffees);
		mav.setViewName("/jsp/a-coffee.jsp");
		return mav;
	}
	
	@RequestMapping("/addCoffee")
	@ResponseBody
	public Message addCoffee(Coffee coffee, String type,MultipartFile filedata,HttpServletRequest request) {
		/*ModelAndView mav = new ModelAndView();*/
		try {
			 Message msg = aCoffeeService.addCoffee(coffee, type,filedata,request);
			/* mav.addObject("msg",msg);
			 List<Book> books =  bookService.findAll();
			 mav.addObject("books", books);
			 mav.setViewName("/book.jsp");*/
			 return msg;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg = new Message();
			msg.setMsg("error");
			/*mav.addObject("msg", msg);
			 mav.setViewName("/book.jsp");*/
			return msg;
		}
	}
	
	@RequestMapping("/updateCoffee")
	@ResponseBody
	public Message updateCoffee(Coffee coffee, String type,MultipartFile filedata,HttpServletRequest request) {
		/*ModelAndView mav = new ModelAndView();*/
		try {
			Message msg = aCoffeeService.updateCoffee(coffee, type,filedata,request);
			/* mav.addObject("msg",msg);
			 List<Book> books =  bookService.findAll();
			 mav.addObject("books", books);
			 mav.setViewName("/book.jsp");*/
			 return msg;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg = new Message();
			msg.setMsg("error");
			/*mav.addObject("msg", msg);
			 mav.setViewName("/book.jsp");*/
			return msg;
		}
	}
	
	@RequestMapping("/deleteCoffee")
	@ResponseBody
	public Message deleteCoffee(String id) {
		Message msg = new Message();
		try {
			aCoffeeService.deleteCoffee(id);
			msg.setMsg("删除成功");
			return msg;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			msg.setMsg("删除失败");
			return msg;
		}
	}
	
	//文件上传
	@RequestMapping("/up")
	public void up(MultipartFile filedata, HttpServletRequest request){
		String src = UpUtils.getSrc(filedata, request);
		System.out.println(src);
	} 
	@RequestMapping("/findKindAll")
	public ModelAndView findKindAll() {
		ModelAndView mav=new ModelAndView();
	List<Kind> kinds=aCoffeeService.findKindAll();
		mav.addObject("kinds",kinds);
		mav.setViewName("/jsp/a-coffeeKind.jsp");
		return mav;
	
	}
	@RequestMapping("/addKind")
	@ResponseBody()
	public Message addKind(Kind kind) {
		try {
			Message message= aCoffeeService.addKind(kind);
			return message;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg=new Message();
			msg.setMsg("FAIL");
			return msg;
		}
		
		
	}
	@RequestMapping("/updateKind")
	@ResponseBody()
	public Message updateKind(Kind kind) {
		try {
			Message message= aCoffeeService.updateKind(kind);
			return message;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg=new Message();
			msg.setMsg("FAIL");
			return msg;
			
		}
		
	}
	@RequestMapping("/deleteKind")
	@ResponseBody
	public Message deleteKind(String kId) {
		
		try {
			Message msg= aCoffeeService.deleteKind(kId);
			return msg;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			Message msg=new Message();
			msg.setMsg("FAIL");
			return msg;
		}
		
	}
	
	
	@RequestMapping("/findRecordAll")
	public ModelAndView findRecordAll() {
		ModelAndView mav = new ModelAndView();
		List<Record> records =  aCoffeeService.findRecordAll();
		mav.addObject("records", records);
		mav.setViewName("/jsp/a-indert.jsp");
		return mav;
	}
	@RequestMapping("/findByLikeIndert")
	public ModelAndView findByLikeIndert(String userName) {
		ModelAndView mav = new ModelAndView();
		List<Record> records = aCoffeeService.findByLikeIndert(userName);
		
		mav.addObject("records",records);
		mav.setViewName("/jsp/a-indert.jsp");
		return mav;
	}
}
