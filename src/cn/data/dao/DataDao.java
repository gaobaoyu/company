package cn.data.dao;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import cn.data.bean.Data;

@Repository
public class DataDao extends HibernateDaoSupport{

	@Resource  
	public void setSessionFacotry(SessionFactory sessionFacotry) {  
	    super.setSessionFactory(sessionFacotry);  
	} 
	
	@SuppressWarnings("unchecked")
	public int findCount() {
		String hql = "select count(*) from Data";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	@SuppressWarnings("unchecked")
	public Data findById(int equipmentId) {
		String hql = "from Data where equipmentId = ?";
		List<Data> list = this.getHibernateTemplate().find(hql, equipmentId);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	public void save(Data data) {
		this.getHibernateTemplate().save(data);
	}
	
	public void update(Data data) {
		this.getHibernateTemplate().update(data);
	}
	
	@SuppressWarnings("unchecked")
	public List<Data> findNew() {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Data.class);
		criteria.addOrder(Order.desc("dataId"));
		List<Data> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 20);
		return list;
	}
	
	
	public void delete(Data data) {
		this.getHibernateTemplate().delete(data);
	}
}
