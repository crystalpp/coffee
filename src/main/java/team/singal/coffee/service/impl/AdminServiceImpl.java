package team.singal.coffee.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.AdminDao;
import team.singal.coffee.pojo.Admin;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.AdminService;
/**
 * 咖啡信息管理和订单管理
 * @author 胡春
 *
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Resource
	private AdminDao adminDao;
	
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.login(admin.getAdminName(),admin.getAdminPassword());
	}
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return adminDao.findAll();
	}
	@Override
	public Message addUser(User user) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		User user2 = adminDao.findByName(user.getUserName());
		if (user2 == null) {
			String id = UUID.randomUUID().toString().substring(0, 4);
			user.setId(id);
			user.setUserPassword("123");
			adminDao.addUser(user);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("This user already exists and cannot be added repeatedly");
			return msg;
		}

	}
	@Override
	public List<User> findByLike(String userName) {
		// TODO Auto-generated method stub
		return adminDao.findByLike(userName);
	}
	@Override
	public Message updateUser(User user) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		User u = adminDao.findById(user.getId());
		if (u != null) {
			adminDao.updateUser(user);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("This user does not exists");
			return msg;
		}
	}

	@Override
	public Message deleteUser(String uId) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		User user = adminDao.findById(uId);
		if (user != null) {
			adminDao.deleteUser(user);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("FAIL");
			return msg;
		}
	}
	@Override
	public Message checkOld(String oldPsw, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Message message = new Message();
		Admin admin = (Admin) request.getSession().getAttribute("a");
		
		String old = oldPsw;
		if (!admin.getAdminPassword().equals(old)) {
			message.setMsg("OldPassword is not true");
			return message;
		} else {
			message.setMsg(" ");
			return message;
		}

	}
	@Override
	public Message updatePsw(String newPassword1, String adminName) {
		// TODO Auto-generated method stub
		Message message = new Message();
		Admin admin = new Admin();
		admin = adminDao.findByName1(adminName);
		
		admin.setAdminPassword(newPassword1);
		adminDao.updatePsw(admin);
		message.setMsg("SUCCESS");
		return message;

	}
}
