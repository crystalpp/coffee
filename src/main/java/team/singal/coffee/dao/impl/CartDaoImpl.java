package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.CartDao;
import team.singal.coffee.pojo.Cart;
import team.singal.coffee.pojo.RecordCart;

/*
 *TODO
 *购物车数据层
 * @author Walk without hitting a lever
 *2018年6月27日 下午9:30:21
 *
 */
@Repository
public class CartDaoImpl implements CartDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<Cart> findAll() {
		String hql = "from Cart c order by c.id";

		return sessionFactory.getCurrentSession().createQuery(hql, Cart.class).getResultList();
	}

	@Override
	public Cart findById(String id) {
		String hql = "from Cart c where c.id=:id";

		return sessionFactory.getCurrentSession().createQuery(hql, Cart.class).setParameter("id", id).uniqueResult();
	}

	@Override
	public void updateCart(Cart cart) {
		sessionFactory.getCurrentSession().merge(cart);

	}

	@Override
	public void deleteCart(Cart cart) {

		sessionFactory.getCurrentSession().delete(cart);
	}

	@Override
	public Cart findByCoffeeUserId(String coffeeCartId, String cartUserId) {
		// TODO Auto-generated method stub
		String hql = "from Cart c where c.coffee.id=:cofffeeCartId and c.user.id=:cartUserID";
		return sessionFactory.getCurrentSession().createQuery(hql, Cart.class)
				.setParameter("cofffeeCartId", coffeeCartId).setParameter("cartUserID", cartUserId).uniqueResult();
	}

	@Override
	public void addCart(Cart cart) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(cart);

	}

	@Override
	public void checkCart(RecordCart record) {

		sessionFactory.getCurrentSession().persist(record);
	}
}
