package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


import team.singal.coffee.dao.ACoffeeDao;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Kind;
import team.singal.coffee.pojo.Record;

/**
 * 咖啡种类数据操作层
 * @author 胡春
 *
 */
@Repository
public class ACoffeeDaoImpl implements ACoffeeDao{

	@Resource
	private SessionFactory sessionFactory;
	@Override
	public List<Coffee> findAll() {
		// TODO Auto-generated method stub
		String hql = "from Coffee c order by c.id";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).getResultList();
	}
	@Override
	public List<Coffee> findByLike(String coName) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.coName like :coName";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("coName", "%" + coName + "%").getResultList();
	}

	@Override
	public Coffee findByName(String coName) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.coName =:coName";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("coName", coName).uniqueResult();
	}

	@Override
	public void addKind(Kind k) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(k);
	}

	@Override
	public void addCoffee(Coffee coffee) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(coffee);
	}

	@Override
	public Coffee findById(String id) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.id =:id";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("id", id).uniqueResult();
	}

	@Override
	public Kind findByType(String type) {
		// TODO Auto-generated method stub
		String hql="from Kind k where k.type=:type";
		return sessionFactory.getCurrentSession().createQuery(hql,Kind.class).setParameter("type",type).uniqueResult();
	}

	@Override
	public void deleteCoffee(Coffee coffee) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(coffee);
	}

	@Override
	public void updateCoffee(Coffee coffee) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(coffee);
	}
	@Override
	public List<Kind> findKindAll() {
		// TODO Auto-generated method stub
		String hql="from Kind k order by k.id";
		return   sessionFactory.getCurrentSession().createQuery(hql,Kind.class).getResultList();
		
	}
	@Override
	public void updateKind(Kind kind) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(kind);
	}
	@Override
	public Kind findByKindId(String kId) {
		// TODO Auto-generated method stub
		String hql="from Kind k where k.id=:kId";
		return sessionFactory.getCurrentSession().createQuery(hql,Kind.class).setParameter("kId",kId).uniqueResult();
	}
	@Override
	public List<Coffee> findByKId(String kId) {
		// TODO Auto-generated method stub
		String hql = "from Coffee c where c.kind.id=:kId";
		return sessionFactory.getCurrentSession().createQuery(hql, Coffee.class).setParameter("kId", kId).getResultList();
	}
	@Override
	public void updateBook(Coffee coffee) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(coffee);
	}
	@Override
	public void deleteKind(Kind kind) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(kind);
	}
	@Override
	public List<Record> findRecordAll() {
		// TODO Auto-generated method stub
		String hql = "from Record r order by r.id";
		return sessionFactory.getCurrentSession().createQuery(hql, Record.class).getResultList();
	}
	@Override
	public List<Record> findByLikeIndert(String userName) {
		// TODO Auto-generated method stub
		String hql = "from Record r where r.user.userName like :userName";
		return sessionFactory.getCurrentSession().createQuery(hql, Record.class).setParameter("userName", "%" + userName + "%").getResultList();
	}

}
