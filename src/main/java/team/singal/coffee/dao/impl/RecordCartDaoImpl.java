package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.RecordCartDao;
import team.singal.coffee.pojo.RecordCart;

/*
 *TODO
 *购物车记录数据层
 * @author Walk without hitting a lever
 *2018年6月28日 下午4:55:53
 *
 */
@Repository
public class RecordCartDaoImpl implements RecordCartDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<RecordCart> findAll() {
		String hql = "from RecordCart c order by c.id";
		return sessionFactory.getCurrentSession().createQuery(hql, RecordCart.class).getResultList();
	}

	@Override
	public void deleteRecordCart(RecordCart recordCart) {
		sessionFactory.getCurrentSession().delete(recordCart);

	}

}
