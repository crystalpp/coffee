package team.singal.coffee.service;

import java.util.List;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.ReceiveInfo;
import team.singal.coffee.pojo.User;

public interface receiveInfoService {

	Message addReceiveInfo(ReceiveInfo receiveInfo, String address1, String address2, User user);

	void updateReceiveInfo(String id, String name, String address, String phone);

	void deleteReceiveInfo(String id);

	List<ReceiveInfo> findAll(String string);
}
