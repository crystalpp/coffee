package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.AssessDao;
import team.singal.coffee.pojo.Assess;

/**
 * 评价数据层
 * 
 * @author 皮艳萍
 *
 */
@Repository
public class AssessDaoImpl implements AssessDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<Assess> findAssessById(String coffeeId) {
		// TODO Auto-generated method stub
		String hql = "from Assess a where a.coffee.id=:coffeeId";
		return sessionFactory.getCurrentSession().createQuery(hql, Assess.class).setParameter("coffeeId", coffeeId)
				.getResultList();
	}

	@Override
	public void addReview(Assess assess) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(assess);

	}

	@Override
	public List<Assess> findAll(String id) {
		// TODO Auto-generated method stub
		String hql = "from Assess a where a.user.id=:id";

		return sessionFactory.getCurrentSession().createQuery(hql, Assess.class).setParameter("id", id).getResultList();
	}

	@Override
	public Assess findById(String id) {
		// TODO Auto-generated method stub
		String hql = "from Assess a where a.id=:id";

		return sessionFactory.getCurrentSession().createQuery(hql, Assess.class).setParameter("id", id).uniqueResult();
	}

	@Override
	public void delete(Assess assess) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(assess);
	}

}
