package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.receiveInfoDao;
import team.singal.coffee.pojo.ReceiveInfo;

/**
 * 收获信息数据层
 * 
 * @author 皮艳萍
 *
 */
@Repository
public class receiveInfoDaoImpl implements receiveInfoDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void addReceiveInfo(ReceiveInfo receiveInfo) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(receiveInfo);

	}

	@Override
	public void updateReceiveInfo(ReceiveInfo receiveInfo) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(receiveInfo);
	}

	@Override
	public void deleteReceiveInfo(ReceiveInfo receiveInfo) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(receiveInfo);

	}

	@Override
	public List<ReceiveInfo> findAll(String id) {
		// TODO Auto-generated method stub
		String hql = "from ReceiveInfo r where r.user.id=:id";
		System.out.println(hql);
		return sessionFactory.getCurrentSession().createQuery(hql, ReceiveInfo.class).setParameter("id", id)
				.getResultList();
	}

	@Override
	public ReceiveInfo findById(String id) {
		// TODO Auto-generated method stub
		String hql = "from ReceiveInfo r where id=:id";

		return sessionFactory.getCurrentSession().createQuery(hql, ReceiveInfo.class).setParameter("id", id)
				.uniqueResult();

	}

}
