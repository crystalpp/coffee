package team.singal.coffee.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.ClubCardDao;
import team.singal.coffee.dao.RecordCartDao;
import team.singal.coffee.dao.RecordDao;
import team.singal.coffee.pojo.ClubCard;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.ReceiveInfo;
import team.singal.coffee.pojo.Record;
import team.singal.coffee.pojo.RecordCart;
import team.singal.coffee.service.RecordService;

/**
 * 交易记录服务层
 * 
 * @author 皮艳萍
 *
 */
@Service
@Transactional
public class RecordServiceImpl implements RecordService {
	@Resource
	private RecordDao recordDao;
	@Resource
	private ClubCardDao clubCardDao;
	@Resource
	private RecordCartDao recordCartDao;

	@Override
	public List<Record> findAll(String uid) {
		// TODO Auto-generated method stub
		return recordDao.findAll(uid);
	}

	@Override
	public Message addRecord(String id, String blance, String addrssid) {
		List<RecordCart> recordCarts = recordCartDao.findAll();
		Message message = new Message();
		ReceiveInfo r = null;
		List<ReceiveInfo> rs = recordCarts.get(0).getUser().getReceiveInfos();
		for (ReceiveInfo receiveInfo : rs) {
			if (receiveInfo.getId().equals(addrssid)) {
				r = receiveInfo;
				break;
			}
		}
		if (r == null) {
			message.setMsg("操作异常");
			return message;
		} else {
			for (RecordCart recordCart : recordCarts) {
				Record record = new Record();
				String uid = UUID.randomUUID().toString().substring(0, 4);
				record.setId(uid);
				record.setCoffee(recordCart.getCoffee());
				record.setReceiveDate(new Date());
				record.setUser(recordCart.getUser());
				record.setReceiveInfo(r);
				record.setReNumber(recordCart.getCartNumber());
				recordDao.addRecord(record);
				recordCartDao.deleteRecordCart(recordCart);
			}
			ClubCard clubCard = clubCardDao.FindbyId(id);
			if (clubCard == null) {
				message.setMsg("操作异常");
				return message;
			} else {
				clubCard.setcBalance(blance);
				message.setMsg("Success！");
				return message;
			}
		}
	}

}
