package team.singal.coffee.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.receiveInfoDao;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.ReceiveInfo;
import team.singal.coffee.pojo.User;
import team.singal.coffee.service.receiveInfoService;

/**
 * 收货信息逻辑层
 * 
 * @author 皮艳萍
 *
 */
@Service
@Transactional
public class receiveInfoServiceImpl implements receiveInfoService {

	@Resource
	private receiveInfoDao receiveInfoDao;

	@Override
	public Message addReceiveInfo(ReceiveInfo receiveInfo, String address1, String address2, User user) {
		// TODO Auto-generated method stub
		String id = UUID.randomUUID().toString().substring(0, 4);
		String address = address1 + address2;
		receiveInfo.setrAddress(address);
		receiveInfo.setUser(user);
		receiveInfo.setId(id);
		Message message = new Message();
		message.setMsg("success");
		receiveInfoDao.addReceiveInfo(receiveInfo);
		return message;
	}

	@Override
	public void updateReceiveInfo(String id, String name, String address, String phone) {
		// TODO Auto-generated method stub
		ReceiveInfo receiveInfo = receiveInfoDao.findById(id);
		receiveInfo.setrName(name);
		receiveInfo.setrPhone(phone);
		receiveInfo.setrAddress(address);
		receiveInfoDao.updateReceiveInfo(receiveInfo);

	}

	@Override
	public void deleteReceiveInfo(String id) {
		// TODO Auto-generated method stub
		ReceiveInfo receiveInfo = receiveInfoDao.findById(id);
		receiveInfoDao.deleteReceiveInfo(receiveInfo);

	}

	@Override
	public List<ReceiveInfo> findAll(String id) {
		// TODO Auto-generated method stub

		return receiveInfoDao.findAll(id);
	}

}
