package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.Assess;

public interface AssessDao {

	List<Assess> findAssessById(String coffeeId);

	void addReview(Assess assess);

	List<Assess> findAll(String id);

	Assess findById(String id);

	void delete(Assess assess);

}
