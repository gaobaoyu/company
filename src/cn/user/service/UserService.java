package cn.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.user.bean.User;
import cn.user.dao.UserDao;
import cn.util.Md5Utils;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}
	
	public User findByName(String username){
		return userDao.findByUsername(username);
	}
	
	public void save(User user) {
		user.setState(0);
		user.setPassword(Md5Utils.md5(user.getPassword()));
		userDao.save(user);
	}

	public void update(User existUser) {
		userDao.update(existUser);
	}

	public User login(User user) {
		
		user.setPassword(Md5Utils.md5(user.getPassword()));
		return userDao.login(user);
	}

	public User findByUid(Integer uid) {
		return userDao.findByUid(uid);
	}


	public void delete(User existUser) {
		userDao.delete(existUser);
	}
}
