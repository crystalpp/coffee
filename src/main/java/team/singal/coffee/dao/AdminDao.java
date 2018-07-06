package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Admin;
import team.singal.coffee.pojo.User;

public interface AdminDao {

	Admin login(String adminName, String adminPassword);

	List<User> findAll();

	User findByName(String userName);

	void addUser(User user);

	List<User> findByLike(String userName);

	User findById(String uId);

	void deleteUser(User user);

	void updateUser(User user);

	Admin findByName1(String adminName);

	void updatePsw(Admin admin);

}
