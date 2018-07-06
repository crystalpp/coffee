package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.ClubCardDao;
import team.singal.coffee.pojo.ClubCard;

/*
 *TODO
 *会员卡数据层
 * @author Walk without hitting a lever
 *2018年6月28日 下午11:23:15
 *
 */
@Repository
public class ClubCardDaoImpl implements ClubCardDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void updateCard(ClubCard clubCard) {
		sessionFactory.getCurrentSession().merge(clubCard);

	}

	@Override
	public ClubCard FindbyId(String id) {
		String hql = "from ClubCard c where c.id=:id";
		return sessionFactory.getCurrentSession().createQuery(hql, ClubCard.class).setParameter("id", id)
				.uniqueResult();
	}

	@Override
	public List<ClubCard> findAll(String id) {
		// TODO Auto-generated method stub
		String hql = "from ClubCard c where c.user.id =:id";
		return sessionFactory.getCurrentSession().createQuery(hql, ClubCard.class).setParameter("id", id)
				.getResultList();
	}
}
