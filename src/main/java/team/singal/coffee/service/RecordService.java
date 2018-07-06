package team.singal.coffee.service;

import java.util.List;

import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.Record;


/*
 *TODO
 * @author Walk without hitting a lever
 *2018年6月28日 下午11:06:11
 *
 */
public interface RecordService {
	List<Record> findAll(String uid);

	Message addRecord( String id, String blance, String addrssid);

}

