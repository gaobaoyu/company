package cn.info.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.info.bean.Info;
import cn.info.dao.InfoDao;
import cn.util.PageBean;

@Service
@Transactional
public class InfoService {
	
	@Autowired
	private InfoDao infoDao;
	
	public void save(Info info){
		infoDao.save(info);
	}
	
	public void delete(Info info){
		infoDao.delete(info);
	}
	
	public void update(Info info){
		infoDao.update(info);
	}
	
	public int findCount(){
		return infoDao.findCount();
	}
	
	public List<Info> findByUserId(Integer userId){
		return infoDao.findByUserId(userId);
	}
	
	public PageBean<Info> findByPage(int page) {
		PageBean<Info> pageBean = new PageBean<Info>();
		// ���õ�ǰҳ��:
		pageBean.setPage(page);
		// ����ÿҳ��ʾ��¼��:
		int limit = 9;
		pageBean.setLimit(limit);
		// �����ܼ�¼��:
		int totalCount = 0;
		totalCount = infoDao.findCount();
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
		List<Info> list = infoDao.findByPage(begin, limit);
		pageBean.setList(list);
		return pageBean;
	}
}
