package cn.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import cn.user.bean.User;

@Repository
public class UserDao extends HibernateDaoSupport{
	
	@Resource  
	public void setSessionFacotry(SessionFactory sessionFacotry) {  
	    super.setSessionFactory(sessionFacotry);  
	} 
	
	@SuppressWarnings("unchecked")
	public User findByUsername(String username) {
		String hql = "from User where username = ? and state = 0";
		List<User> list = this.getHibernateTemplate().find(hql, username);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public User findByName(String username) {
		String hql = "from User where username = ?";
		List<User> list = this.getHibernateTemplate().find(hql, username);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	

	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}
	

	public void update(User existUser) {
		this.getHibernateTemplate().update(existUser);
	}

	@SuppressWarnings("unchecked")
	public User login(User user) {
		String hql = "from User where name = ? and password = ?";
		List<User> list = this.getHibernateTemplate().find(hql,
				user.getName(), user.getPassword());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public int findCount() {
		String hql = "select count(*) from User";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public User findByUid(Integer uid) {
		return this.getHibernateTemplate().get(User.class, uid);
	}

	public void delete(User existUser) {
		this.getHibernateTemplate().delete(existUser);
	}
}
