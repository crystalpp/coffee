package team.singal.coffee.service;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.User;

public interface UserService {

	Message creatAccount(User user);

	User login(String userInfo, String userPassword);

}
