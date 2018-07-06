package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.AdminDao;
import team.singal.coffee.pojo.Admin;
import team.singal.coffee.pojo.User;

/**
 * 管理员数据层
 * 
 * @author 胡春
 *
 */
@Repository
public class AdminDaoImpl implements AdminDao {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public Admin login(String adminName, String adminPassword) {
		// TODO Auto-generated method stub
		String hql = "from Admin a where a.adminName=:adminName and a.adminPassword=:adminPassword";
		return sessionFactory.getCurrentSession().createQuery(hql, Admin.class).setParameter("adminName", adminName)
				.setParameter("adminPassword", adminPassword).uniqueResult();

	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		String hql = "from User u order by u.id";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).getResultList();
	}

	@Override
	public User findByName(String userName) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.userName=:userName";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("userName", userName)
				.uniqueResult();
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(user);

	}

	@Override
	public List<User> findByLike(String userName) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.userName like :userName";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class)
				.setParameter("userName", "%" + userName + "%").getResultList();
	}

	@Override
	public User findById(String id) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.id=:id";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("id", id).uniqueResult();
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(user);
	}

	@Override
	public Admin findByName1(String adminName) {
		// TODO Auto-generated method stub
		String hql = "from Admin a where a.adminName=:adminName";
		return sessionFactory.getCurrentSession().createQuery(hql, Admin.class).setParameter("adminName", adminName)
				.uniqueResult();

	}

	@Override
	public void updatePsw(Admin admin) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(admin);
	}

}
