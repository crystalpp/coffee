package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.ReceiveInfo;

public interface receiveInfoDao {

	void addReceiveInfo(ReceiveInfo receiveInfo);

	void updateReceiveInfo(ReceiveInfo receiveInfo);

	void deleteReceiveInfo(ReceiveInfo receiveInfo);

	List<ReceiveInfo> findAll(String id);

	ReceiveInfo findById(String id);

}
