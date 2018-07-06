package team.singal.coffee.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import team.singal.coffee.dao.ClubCardDao;
import team.singal.coffee.pojo.ClubCard;
import team.singal.coffee.service.ClubCardService;

/**
 * 会员卡服务层
 * 
 * @author 皮艳萍
 *
 */
@Service
@Transactional
public class ClubCardServiceImpl implements ClubCardService {
	@Resource
	private ClubCardDao clubCardDao;

	@Override
	public List<ClubCard> findAll(String id) {
		// TODO Auto-generated method stub
		return clubCardDao.findAll(id);
	}

}
