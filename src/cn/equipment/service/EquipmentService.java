package cn.equipment.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.equipemt.dao.EquipmentDao;
import cn.equipment.bean.Equipment;
import cn.util.PageBean;

@Service
@Transactional
public class EquipmentService {
	@Autowired
	private EquipmentDao equipmentDao;
	
	public Equipment findByName(String name){
		return equipmentDao.findByName(name);
	}
	
	public List<Equipment> findByUserId(Integer id){
		return equipmentDao.findByUserId(id);
	}
	
	public List<Equipment> findAll() {
		return equipmentDao.findAll();
	}

	public void save(Equipment equipment) {
		equipmentDao.save(equipment);
	}

	public void delete(Equipment exist) {
		equipmentDao.delete(exist);
	}
	
	public PageBean<Equipment> findByPage(int page) {
		PageBean<Equipment> pageBean = new PageBean<Equipment>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		int limit = 9;
		pageBean.setLimit(limit);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = equipmentDao.findCount();
		pageBean.setTotalCount(totalCount);
		// 设置总页数
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合
		int begin = (page - 1) * limit;
		List<Equipment> list = equipmentDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}
	
	public List<Equipment> findNew(){
		return equipmentDao.findNew();
	}
}
