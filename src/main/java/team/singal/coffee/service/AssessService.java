package team.singal.coffee.service;

import java.util.List;

import team.singal.coffee.pojo.Assess;
import team.singal.coffee.pojo.Message;

public interface AssessService {

	Message addReview(Assess assess, String coffeeId, String userId);

	List<Assess> findAll(String id);

	Message delete(String id);

}
