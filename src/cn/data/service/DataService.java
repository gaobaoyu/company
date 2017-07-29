package cn.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.data.bean.Data;
import cn.data.dao.DataDao;

@Service
@Transactional
public class DataService {
	@Autowired
	private DataDao dataDao;
	
	public int findCount(){
		return dataDao.findCount();
	}
	
	public void save(Data data){
		dataDao.save(data);
	}
	
	public void update(Data data){
		dataDao.update(data);
	}
	
	public void delete(Data data){
		dataDao.delete(data);
	}
	
	public List<Data> findNew(){
		return dataDao.findNew();
	}
	
	public Data findById(int equipmentId){
		return dataDao.findById(equipmentId);
	}
}
