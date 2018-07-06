package team.singal.coffee.service;

import javax.servlet.http.HttpServletRequest;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;

public interface UserService {

	Message creatAccount(User user);

	User login(String userInfo, String userPassword);

	Message updateUserInfo(User user, String email, String userPhone, String birthday);

	Message checkOld(String oldPsw, HttpServletRequest request);

	Message updatePsw(String newPassword1, User user);

}
