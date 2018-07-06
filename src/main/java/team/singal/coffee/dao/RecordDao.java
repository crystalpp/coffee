package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Record;

public interface RecordDao {

	List<Record> findAll(String uid);

	void addRecord(Record record);

}
