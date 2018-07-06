package team.singal.coffee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import team.singal.coffee.pojo.Admin;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;

public interface AdminService {

	Admin login(Admin admin);

	List<User> findAll();

	Message addUser(User user);

	List<User> findByLike(String userName);

	Message deleteUser(String uId);

	Message updateUser(User user);

	Message checkOld(String oldPsw, HttpServletRequest request);

	Message updatePsw(String newPassword1, String userName);

}
