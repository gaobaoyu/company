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
		// ���õ�ǰҳ��:
		pageBean.setPage(page);
		// ����ÿҳ��ʾ��¼��:
		int limit = 9;
		pageBean.setLimit(limit);
		// �����ܼ�¼��:
		int totalCount = 0;
		totalCount = equipmentDao.findCount();
		pageBean.setTotalCount(totalCount);
		// ������ҳ��
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		// ÿҳ��ʾ�����ݼ���
		int begin = (page - 1) * limit;
		List<Equipment> list = equipmentDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}
	
	public List<Equipment> findNew(){
		return equipmentDao.findNew();
	}
}
