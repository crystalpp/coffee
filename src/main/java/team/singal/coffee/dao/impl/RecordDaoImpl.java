package team.singal.coffee.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import team.singal.coffee.dao.RecordDao;
import team.singal.coffee.pojo.Record;

/**
 * 交易记录数据层
 * 
 * @author 皮艳萍
 *
 */
@Repository
public class RecordDaoImpl implements RecordDao {
	@Resource
	private SessionFactory sessionFactory;

	@Override
	public List<Record> findAll(String uid) {
		// TODO Auto-generated method stub
		String hql = "from Record c where c.user.id =:uid";
		return sessionFactory.getCurrentSession().createQuery(hql, Record.class).getResultList();
	}

	@Override
	public void addRecord(Record record) {
		sessionFactory.getCurrentSession().persist(record);

	}

}
