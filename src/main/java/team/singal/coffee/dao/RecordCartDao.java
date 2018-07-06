package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.RecordCart;

public interface RecordCartDao {
	List<RecordCart> findAll();

	void deleteRecordCart(RecordCart recordCart);
}
