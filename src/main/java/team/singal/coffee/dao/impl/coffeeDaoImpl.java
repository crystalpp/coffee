package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.CoffeeDao;
import team.singal.coffee.pojo.Coffee;

/**
 * 咖啡数据层
 * 
 * @author 皮艳萍
 *
 */
@Repository
public class coffeeDaoImpl implements CoffeeDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<Coffee> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Coffee c order by c.id";
		List<Coffee> coffees = sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).getResultList();
		for (Coffee coffee : coffees) {
			coffee.getKind();
			coffee.getKind().getCoffees();
		}
		return coffees;
	}

	@Override
	public List<Coffee> findAllByHot() {
		// TODO Auto-generated method stub
		String hql = "from Coffee c order by c.coHot desc";
		List<Coffee> coffees = sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).getResultList();
		for (Coffee coffee : coffees) {
			coffee.getKind();
			coffee.getKind().getCoffees();
		}
		return coffees;
	}

	@Override
	public Coffee findById(String coffeeId) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.id =:id";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("id", coffeeId)
				.uniqueResult();
	}

	@Override
	public List<Coffee> findByKindId(String coffeeKind) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.kind.id =:id";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("id", coffeeKind)
				.getResultList();
	}

	@Override
	public List<Coffee> findAllByPrice() {
		String hql = "from Coffee c order by c.coPrice desc";
		List<Coffee> coffees = sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).getResultList();
		for (Coffee coffee : coffees) {
			coffee.getKind();
			coffee.getKind().getCoffees();
		}
		return coffees;
	}

	@Override
	public List<Coffee> findByName(String searchText) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.coName like :coName";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class)
				.setParameter("coName", "%" + searchText + "%").getResultList();
	}

}
