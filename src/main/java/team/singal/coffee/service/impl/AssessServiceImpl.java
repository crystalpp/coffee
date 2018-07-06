package team.singal.coffee.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.AssessDao;
import team.singal.coffee.dao.CoffeeDao;
import team.singal.coffee.dao.UserDao;
import team.singal.coffee.pojo.Assess;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.AssessService;

/**
 * 评论服务层
 * 
 * @author 皮艳萍
 *
 */
@Transactional
@Service
public class AssessServiceImpl implements AssessService {
	@Resource
	private AssessDao assessDao;
	@Resource
	private UserDao userDao;
	@Resource
	private CoffeeDao coffeeDao;

	@Override
	public Message addReview(Assess assess, String coffeeId, String userId) {
		// TODO Auto-generated method stub
		User user = userDao.findById(userId);
		Coffee coffee = coffeeDao.findById(coffeeId);
		String id = UUID.randomUUID().toString().substring(0, 4);
		assess.setReviewDate(new Date());
		assess.setId(id);
		assess.setUser(user);
		assess.setCoffee(coffee);
		assessDao.addReview(assess);
		Message message = new Message();
		message.setMsg("ADD SUCCESS");
		return message;
	}

	@Override
	public List<Assess> findAll(String id) {
		// TODO Auto-generated method stub
		return assessDao.findAll(id);
	}

	@Override
	public Message delete(String id) {
		// TODO Auto-generated method stub
		Assess assess = assessDao.findById(id);
		if (assess == null) {
			Message message = new Message();
			message.setMsg("delete error");
			return message;
		} else {
			assessDao.delete(assess);
			Message message1 = new Message();
			message1.setMsg("delete success");
			return message1;
		}

	}

}
