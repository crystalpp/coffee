package team.singal.coffee.dao.impl;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.UserDao;
import team.singal.coffee.pojo.User;

/**
 * 用户数据操作层
 * 
 * @author 皮艳萍
 *
 */
@Repository
public class UserDaoImpl implements UserDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void creatAccount(User user) {
		sessionFactory.getCurrentSession().persist(user);

	}

	@Override
	public User findByPhone(String userPhone) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.userPhone =:userPhone";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("userPhone", userPhone)
				.uniqueResult();
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.email =:email";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("email", email)
				.uniqueResult();
	}

	@Override
	public User loginByEmail(String email, String newPassword) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.email=:email and u.userPassword=:userPassword";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("email", email)
				.setParameter("userPassword", newPassword).uniqueResult();
	}

	@Override
	public User loginbyPhone(String userPhone, String newPassword) {
		String hql = "from User u where u.userPhone=:userPhone and u.userPassword=:userPassword";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("userPhone", userPhone)
				.setParameter("userPassword", newPassword).uniqueResult();
	}

	@Override
	public User findById(String userId) {
		String hql = "from User u where u.id =:id";
		return sessionFactory.getCurrentSession().createQuery(hql, User.class).setParameter("id", userId)
				.uniqueResult();
	}

	@Override
	public void updateUserInfo(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(user);
	}
	
	@Override
	public void updatePsw(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().merge(user);
	}

}
