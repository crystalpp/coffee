package team.singal.coffee.dao;

import team.singal.coffee.pojo.User;

public interface UserDao {

	void creatAccount(User user);

	User findByPhone(String userPhone);

	User findByEmail(String email);

	User loginByEmail(String email, String newPassword);

	User loginbyPhone(String userPhone, String newPassword);

	User findById(String userId);

	void updateUserInfo(User user);

	void updatePsw(User user);

}
