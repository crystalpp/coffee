package team.singal.coffee.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import team.singal.coffee.dao.ACoffeeDao;
import team.singal.coffee.pojo.Coffee;
import team.singal.coffee.pojo.Kind;
import team.singal.coffee.pojo.Message;
import team.singal.coffee.pojo.Record;
import team.singal.coffee.service.ACoffeeService;
import team.singal.coffee.utils.UpUtils;

/**
 * 管理员咖啡逻辑层
 * 
 * @author 胡春
 *
 */
@Service
@Transactional
public class ACoffeeServiceImpl implements ACoffeeService {
	@Resource
	private ACoffeeDao aCoffeeDao;

	@Override
	public List<Coffee> findAll() {
		return aCoffeeDao.findAll();
	}

	@Override
	public List<Coffee> findByLike(String coName) {
		// TODO Auto-generated method stub
		return aCoffeeDao.findByLike(coName);
	}

	@Override
	public Message addCoffee(Coffee coffee, String type, MultipartFile filedata, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		Coffee b = aCoffeeDao.findByName(coffee.getCoName());
		if (b == null) {
			Kind kind = aCoffeeDao.findByType(type);
			if (kind == null) {
				Kind k = new Kind();
				String kId = UUID.randomUUID().toString().substring(0, 4);
				k.setId(kId);
				k.setType(type);
				aCoffeeDao.addKind(k);
				coffee.setKind(k);
			} else {
				coffee.setKind(kind);
			}
			// 判断上传文件
			if (filedata.getSize() > 0) {
				String src = UpUtils.getSrc(filedata, request);
				coffee.setCoPictrue(src);
			} else {
				coffee.setCoPictrue("");
			}
			String bId = UUID.randomUUID().toString().substring(0, 4);
			coffee.setId(bId);
			aCoffeeDao.addCoffee(coffee);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("Exists");
			return msg;
		}
	}

	@Override
	public Message updateCoffee(Coffee coffee, String type, MultipartFile filedata, HttpServletRequest request) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		// 判断我们的修改对象是否存在
		Coffee c = aCoffeeDao.findById(coffee.getId());
		if (c != null) {
			Kind kind = aCoffeeDao.findByType(type);
			if (kind == null) {
				Kind k = new Kind();
				String kId = UUID.randomUUID().toString().substring(0, 4);
				k.setId(kId);
				k.setType(type);
				aCoffeeDao.addKind(k);
				coffee.setKind(k);
			} else {
				coffee.setKind(kind);
			}
			// 判断上传文件
			if (filedata.getSize() > 0) {
				String src = UpUtils.getSrc(filedata, request);
				coffee.setCoPictrue(src);
				;
			} else {
				coffee.setCoPictrue(c.getCoPictrue());
			}
			aCoffeeDao.updateCoffee(coffee);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("Does Not Exist");
			return msg;
		}
	}

	@Override
	public void deleteCoffee(String id) {
		// TODO Auto-generated method stub
		System.out.println(id);
		Coffee coffee = aCoffeeDao.findById(id);
		aCoffeeDao.deleteCoffee(coffee);
	}

	@Override
	public List<Kind> findKindAll() {
		// TODO Auto-generated method stub
		return aCoffeeDao.findKindAll();
	}

	@Override
	public Message addKind(Kind kind) {
		// TODO Auto-generated method stub
		String id = UUID.randomUUID().toString().substring(0, 4);
		kind.setId(id);
		Message msg = new Message();

		if (kind.getType() != null && !kind.getType().equals("")) {
			if (aCoffeeDao.findByType(kind.getType()) != null) {
				msg.setMsg("Exited");
				return msg;
			}
			aCoffeeDao.addKind(kind);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("Must to hava type");
			return msg;
		}

	}

	@Override
	public Message updateKind(Kind kind) {
		// TODO Auto-generated method stub
		Message msg = new Message();
		Kind k = aCoffeeDao.findByType(kind.getType());
		if (k == null) {
			aCoffeeDao.updateKind(kind);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("Exits");
			return msg;
		}
	}

	@Override
	public Message deleteKind(String kId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Message msg = new Message();
		Kind kind = aCoffeeDao.findByKindId(kId);
		if (kind != null && !kind.getType().equals("未知")) {
			// 当id为book的外键时如何删除 如下:
			List<Coffee> coffees = aCoffeeDao.findByKId(kId);
			Kind k = aCoffeeDao.findByType("未知");
			if (coffees != null) {
				for (Coffee coffee : coffees) {
					coffee.setKind(k);
					aCoffeeDao.updateBook(coffee);
				}
			}
			aCoffeeDao.deleteKind(kind);
			msg.setMsg("SUCCESS");
			return msg;
		} else {
			msg.setMsg("Can not delete");
			return msg;
		}
	}

	@Override
	public List<Record> findRecordAll() {
		// TODO Auto-generated method stub
		return aCoffeeDao.findRecordAll();
	}

	@Override
	public List<Record> findByLikeIndert(String userName) {
		// TODO Auto-generated method stub
		return aCoffeeDao.findByLikeIndert(userName);
	}
}
