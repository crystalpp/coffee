package team.singal.coffee.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.RecordCartDao;
import team.singal.coffee.pojo.ClubCard;
import team.singal.coffee.pojo.ReceiveInfo;
import team.singal.coffee.pojo.RecordCart;
import team.singal.coffee.pojo.payShow;
import team.singal.coffee.service.RecordCartService;

/*
 *TODO
 *购物车记录逻辑层
 * @author Walk without hitting a lever
 *2018年6月28日 下午4:51:40
 *
 */
@Service
@Transactional
public class RecordCartServiceImpl implements RecordCartService {
	@Resource
	private RecordCartDao recordDao;

	@Override
	public payShow findAll() {
		// 2018年6月28日// TODO Auto-generated method stub
		// return

		List<String> coffesPic = new ArrayList<>();
		List<String> coffesname = new ArrayList<>();
		List<Integer> coffesNum = new ArrayList<>();
		List<String> coffesPrice = new ArrayList<>();
		List<String> receiveInfoId = new ArrayList<>();
		List<String> receiveInfoName = new ArrayList<>();
		List<String> receiveInfoAddress = new ArrayList<>();
		List<String> receiveInfoPhoneNumber = new ArrayList<>();
		List<String> clubCardId = new ArrayList<>();
		List<String> clubCardNumber = new ArrayList<>();
		List<String> clubCardType = new ArrayList<>();
		List<String> clubCardBalance = new ArrayList<>();
		List<RecordCart> recordCarts = recordDao.findAll();
		for (RecordCart recordCart : recordCarts) {
			coffesPic.add(recordCart.getCoffee().getCoPictrue());
			coffesname.add(recordCart.getCoffee().getCoName());
			coffesNum.add(recordCart.getCartNumber());
			coffesPrice.add(recordCart.getCoffee().getCoPrice());

		}

		for (ReceiveInfo receiveInfo : recordCarts.get(0).getUser().getReceiveInfos()) {
			receiveInfoId.add(receiveInfo.getId());
			receiveInfoName.add(receiveInfo.getrName());
			receiveInfoAddress.add(receiveInfo.getrAddress());
			receiveInfoPhoneNumber.add(receiveInfo.getrPhone());
		}

		for (ClubCard clubCard : recordCarts.get(0).getUser().getClubCards()) {
			clubCardId.add(clubCard.getId());
			clubCardNumber.add(clubCard.getcId());
			clubCardBalance.add(clubCard.getcBalance());
			clubCardType.add(clubCard.getcType());
		}
		payShow pShow = new payShow(coffesPic, coffesname, coffesNum, coffesPrice, receiveInfoId, receiveInfoName,
				receiveInfoAddress, receiveInfoPhoneNumber, clubCardId, clubCardNumber, clubCardType, clubCardBalance);
		return pShow;

	}

}
