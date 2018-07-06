package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Coffee;

public interface CoffeeDao {

	List<Coffee> findAll();

	Coffee findById(String coffeeId);

	List<Coffee> findByKindId(String coffeeKind);

	List<Coffee> findAllByHot();

	List<Coffee> findAllByPrice();

	List<Coffee> findByName(String searchText);

}
