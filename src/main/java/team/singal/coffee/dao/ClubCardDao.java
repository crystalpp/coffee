package team.singal.coffee.dao;

import java.util.List;

import team.singal.coffee.pojo.ClubCard;

public interface ClubCardDao {
	void updateCard(ClubCard clubCard);
	ClubCard FindbyId(String id);
	List<ClubCard> findAll(String id);
}
