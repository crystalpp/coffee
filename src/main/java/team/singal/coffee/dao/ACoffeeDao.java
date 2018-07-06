package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Kind;
import team.singal.coffee.pojo.Record;

public interface ACoffeeDao {

	List<Coffee> findAll();

	List<Coffee> findByLike(String coName);

	Coffee findByName(String coName);


	void addKind(Kind k);


	void addCoffee(Coffee coffee);

	Coffee findById(String id);

	Kind findByType(String type);

	void deleteCoffee(Coffee coffee);

	void updateCoffee(Coffee coffee);

	List<Kind> findKindAll();

	void updateKind(Kind kind);

	Kind findByKindId(String kId);

	List<Coffee> findByKId(String kId);

	void updateBook(Coffee coffee);

	void deleteKind(Kind kind);

	List<Record> findRecordAll();

	List<Record> findByLikeIndert(String userName);



	

}
