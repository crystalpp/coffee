package team.singal.coffee.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import team.singal.coffee.dao.AssessDao;
import team.singal.coffee.dao.CoffeeDao;
import team.singal.coffee.pojo.Assess;
import team.singal.coffee.pojo.AssessView;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.service.CoffeeService;

/**
 * 咖啡逻辑控制层
 * 
 * @author 皮艳萍
 *
 */
@Service
@Transactional
public class CoffeeServiceImpl implements CoffeeService {

	@Resource
	private CoffeeDao coffeeDao;

	@Resource

	private AssessDao assessDao;

	@Override
	public JSONArray findAll() {
		// TODO Auto-generated method stub
		JSONArray jsonArray = new JSONArray();
		List<Coffee> coffees = coffeeDao.findAllByHot();
		// List<CoffeeView> coffeeViews = new ArrayList<>();
		for (Coffee coffee : coffees) {

			// coffeeViews.add(new CoffeeView(coffee.getKind().getId(),
			// coffee.getId(), coffee.getCoName(),
			// coffee.getCoHot(), coffee.getCoIntroduce(), coffee.getCoIne(),
			// coffee.getCoRegion(),
			// coffee.getCoPrice(), coffee.getCoNumber(), coffee.getCoPictrue(),
			// coffee.getCoPF(),
			// coffee.getCoHTP(), coffee.getCoS()));
			JSONObject jo = new JSONObject();
			jo.put("coffeeKind", coffee.getKind().getId());
			jo.put("coffeeId", coffee.getId());
			jo.put("coName", coffee.getCoName());
			jo.put("coHot", coffee.getCoHot());
			jo.put("coIntroduce", coffee.getCoIntroduce());
			jo.put("coIne", coffee.getCoIne());
			jo.put("coRegion", coffee.getCoRegion());
			jo.put("coPrice", coffee.getCoPrice());
			jo.put("coNumber", coffee.getCoNumber());
			jo.put("coPicture", coffee.getCoPictrue());
			jo.put("coPF", coffee.getCoPF());
			jo.put("coHTP", coffee.getCoHTP());
			jo.put("coS", coffee.getCoS());
			jsonArray.add(jo);
		}
		return jsonArray;

	}

	@Override
	public Coffee findById(String coffeeId) {
		// TODO Auto-generated method stub
		Coffee coffee = coffeeDao.findById(coffeeId);
		return coffee;

		/*
		 * JSONObject jo = new JSONObject(); jo.put("coffeeKind",
		 * coffee.getKind().getId()); jo.put("coffeeId", coffee.getId());
		 * jo.put("coName", coffee.getCoName()); jo.put("coHot",
		 * coffee.getCoHot()); jo.put("coIntroduce", coffee.getCoIntroduce());
		 * jo.put("coIne", coffee.getCoIne()); jo.put("coRegion",
		 * coffee.getCoRegion()); jo.put("coPrice", coffee.getCoPrice());
		 * jo.put("coNumber", coffee.getCoNumber()); jo.put("coPicture",
		 * coffee.getCoPictrue()); jo.put("coPF", coffee.getCoPF());
		 * jo.put("coHTP", coffee.getCoHTP()); jo.put("coS", coffee.getCoS());
		 * return jo;
		 */
	}

	@Override
	public List<Coffee> findByKindId(String coffeeKind) {
		// TODO Auto-generated method stub

		return coffeeDao.findByKindId(coffeeKind);

	}

	@Override
	public List<AssessView> findAssessById(String coffeeId) {
		// TODO Auto-generated method stub
		List<AssessView> assessViews = new ArrayList<>();
		List<Assess> assesses = assessDao.findAssessById(coffeeId);
		for (Assess assess : assesses) {
			assessViews.add(new AssessView(assess.getReviewDate(), assess.getContext(), assess.getReviewHot(),
					assess.getReviewTitle(), assess.getUser().getUserName()));
		}
		return assessViews;

	}

	@Override
	public JSONArray findAllByPrice() {
		JSONArray jsonArray = new JSONArray();
		List<Coffee> coffees = coffeeDao.findAllByPrice();
		for (Coffee coffee : coffees) {
			JSONObject jo = new JSONObject();
			jo.put("coffeeKind", coffee.getKind().getId());
			jo.put("coffeeId", coffee.getId());
			jo.put("coName", coffee.getCoName());
			jo.put("coHot", coffee.getCoHot());
			jo.put("coIntroduce", coffee.getCoIntroduce());
			jo.put("coIne", coffee.getCoIne());
			jo.put("coRegion", coffee.getCoRegion());
			jo.put("coPrice", coffee.getCoPrice());
			jo.put("coNumber", coffee.getCoNumber());
			jo.put("coPicture", coffee.getCoPictrue());
			jo.put("coPF", coffee.getCoPF());
			jo.put("coHTP", coffee.getCoHTP());
			jo.put("coS", coffee.getCoS());
			jsonArray.add(jo);
		}
		return jsonArray;
	}

	@Override
	public JSONArray findByName(String searchText) {
		JSONArray jsonArray = new JSONArray();
		List<Coffee> coffees = coffeeDao.findByName(searchText);
		// List<CoffeeView> coffeeViews = new ArrayList<>();
		for (Coffee coffee : coffees) {

			// coffeeViews.add(new CoffeeView(coffee.getKind().getId(),
			// coffee.getId(), coffee.getCoName(),
			// coffee.getCoHot(), coffee.getCoIntroduce(), coffee.getCoIne(),
			// coffee.getCoRegion(),
			// coffee.getCoPrice(), coffee.getCoNumber(), coffee.getCoPictrue(),
			// coffee.getCoPF(),
			// coffee.getCoHTP(), coffee.getCoS()));
			JSONObject jo = new JSONObject();
			jo.put("coffeeKind", coffee.getKind().getId());
			jo.put("coffeeId", coffee.getId());
			jo.put("coName", coffee.getCoName());
			jo.put("coHot", coffee.getCoHot());
			jo.put("coIntroduce", coffee.getCoIntroduce());
			jo.put("coIne", coffee.getCoIne());
			jo.put("coRegion", coffee.getCoRegion());
			jo.put("coPrice", coffee.getCoPrice());
			jo.put("coNumber", coffee.getCoNumber());
			jo.put("coPicture", coffee.getCoPictrue());
			jo.put("coPF", coffee.getCoPF());
			jo.put("coHTP", coffee.getCoHTP());
			jo.put("coS", coffee.getCoS());
			jsonArray.add(jo);
		}
		return jsonArray;
	}

}
