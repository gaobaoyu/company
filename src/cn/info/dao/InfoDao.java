package cn.info.dao;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import cn.info.bean.Info;
import cn.util.PageHibernateCallback;


@Repository
public class InfoDao extends HibernateDaoSupport{
	
	@Resource  
	public void setSessionFacotry(SessionFactory sessionFacotry) {  
	    super.setSessionFactory(sessionFacotry);  
	} 
	
	@SuppressWarnings("unchecked")
	public int findCount() {
		String hql = "select count(*) from Info";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}
	
	public void save(Info info) {
		this.getHibernateTemplate().save(info);
	}
	
	public void update(Info info) {
		this.getHibernateTemplate().update(info);
	}
	
	public void delete(Info info) {
		this.getHibernateTemplate().delete(info);
	}
	
	@SuppressWarnings("unchecked")
	public List<Info> findByUserId(Integer userId){
		String hql = "from Info where userId = ?";
		List<Info> list = this.getHibernateTemplate().find(hql, userId);
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
	public List<Info> findByPage(int begin, int limit) {
		String hql = "from Info";
		List<Info> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Info>(hql, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}
}
