package cn.equipemt.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import cn.equipment.bean.Equipment;
import cn.util.PageHibernateCallback;


@Repository
public class EquipmentDao extends HibernateDaoSupport{
	
	@Resource  
	public void setSessionFacotry(SessionFactory sessionFacotry) {  
	    super.setSessionFactory(sessionFacotry);  
	} 
	
	@SuppressWarnings("unchecked")
	public Equipment findByName(String name) {
		String hql = "from Equipment where name = ?";
		List<Equipment> list = this.getHibernateTemplate().find(hql, name);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<Equipment> findByUserId(Integer id) {
		String hql = "from Equipment where userid = ?";
		List<Equipment> list = this.getHibernateTemplate().find(hql, id);
		
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<Equipment> findAll() {
		String hql = "from Equipment";
		List<Equipment> list = this.getHibernateTemplate().find(hql);
		return list;
	}
	
	public void save(Equipment equipment) {
		this.getHibernateTemplate().save(equipment);
	}

	@SuppressWarnings("unchecked")
	public int findCount() {
		String hql = "select count(*) from Equipment";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public List<Equipment> findByPage(int begin, int limit) {
		String hql = "from Equipment";
		List<Equipment> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Equipment>(hql, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<Equipment> findNew() {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Equipment.class);
		criteria.addOrder(Order.desc("equipmentId"));
		List<Equipment> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 5);
		return list;
	}


	public void delete(Equipment equipment) {
		this.getHibernateTemplate().delete(equipment);
	}
}
