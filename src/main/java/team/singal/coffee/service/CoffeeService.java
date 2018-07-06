package team.singal.coffee.service;

import java.util.List;

import net.sf.json.JSONArray;
import team.singal.coffee.pojo.AssessView;
import team.singal.coffee.pojo.Coffee;

public interface CoffeeService {

	JSONArray findAll();

	Coffee findById(String coffeeId);

	List<Coffee> findByKindId(String coffeeKind);

	List<AssessView> findAssessById(String coffeeId);

	JSONArray findAllByPrice();

	JSONArray findByName(String searchText);

}
