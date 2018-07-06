package team.singal.coffee.service;

import java.util.List;

import team.singal.coffee.pojo.ClubCard;

public interface ClubCardService {

	List<ClubCard> findAll(String id);

}
