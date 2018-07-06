package team.singal.coffee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Kind;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.Record;

public interface ACoffeeService {

	List<Coffee> findByLike(String coName);

	Message addCoffee(Coffee coffee, String type, MultipartFile filedata, HttpServletRequest request);

	Message updateCoffee(Coffee coffee, String type, MultipartFile filedata, HttpServletRequest request);

	void deleteCoffee(String id);

	List<Coffee> findAll();

	List<Kind> findKindAll();

	Message addKind(Kind kind);

	Message updateKind(Kind kind);

	Message deleteKind(String kId);

	List<Record> findRecordAll();

	List<Record> findByLikeIndert(String userName);

	

	


}
