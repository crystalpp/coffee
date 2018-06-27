package team.singal.coffee.service.impl;

import java.util.UUID;

import javax.annotation.Resource;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.UserDao;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	@Override
	public Message creatAccount(User user) {
		// TODO Auto-generated method stub
		Message message = new Message();
		String id = UUID.randomUUID().toString().substring(0, 10);
		user.setId(id);
		User user2 = userDao.findByPhone(user.getUserPhone());
		User user3 = userDao.findByEmail(user.getEmail());
		if (user2 == null) {
			if (user3 == null) {
				Md5Hash md5Hash1 = new Md5Hash(user.getUserPassword());
				user.setUserPassword(md5Hash1.toString());
				userDao.creatAccount(user);
				message.setMsg("Registration Successful");
				return message;
			} else {
				message.setMsg("This email is invalid");
				return message;
			}
		} else {
			message.setMsg("This phone is invalid");
			return message;
		}

	}

	@Override
	public User login(String userInfo, String userPassword) {
		// TODO Auto-generated method stub
		User user = userDao.findByEmail(userInfo);
		User user2 = userDao.findByPhone(userInfo);
		Md5Hash md5Hash = new Md5Hash(userPassword);
		String newPassword = md5Hash.toString();
		if (user != null) {
			return userDao.loginByEmail(user.getEmail(), newPassword);
		} else if (user2 != null) {
			return userDao.loginbyPhone(user2.getUserPhone(), newPassword);
		} else {
			return null;
		}

	}

}
