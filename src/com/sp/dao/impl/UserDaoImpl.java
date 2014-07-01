package com.sp.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sp.dao.UserDao;
import com.sp.entity.dict.ProjectType;
import com.sp.entity.dict.UserModel;

@Component("userDao")
public class UserDaoImpl implements UserDao{
	@Autowired
	private SessionFactory sessionFactory;
    
    public ProjectType getById(int id)
    {
        return (ProjectType) sessionFactory.getCurrentSession().get(ProjectType.class, id);
    }
    
	@Override
	public String userLogin(UserModel user) {
		return "123456";
	}

	//获取数据
	@Override
	@SuppressWarnings("unchecked")
	public List<ProjectType> getAllProjectTypes() {
		Criteria ceriteria = sessionFactory.getCurrentSession().createCriteria(ProjectType.class);
		return ceriteria.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectType> getSomeProjectTypes() {
		Criteria ceriteria = sessionFactory.getCurrentSession().createCriteria(ProjectType.class);
		List<ProjectType> list = ceriteria.add(Restrictions.like("projectType", "%22%", MatchMode.ANYWHERE)).list();
		return list;
	}

	//新增数据；
	@Override
	public int save(ProjectType projectType) {
		return (Integer) sessionFactory.getCurrentSession().save(projectType);
	}
	
	//修改数据
	@Override
	public void update(ProjectType projectType) {
		sessionFactory.getCurrentSession().merge(projectType);
	}

	//根据id获得ProjectType
	@Override
	public ProjectType getById(Integer id) {
		return(ProjectType)sessionFactory.getCurrentSession().get(ProjectType.class, id);
	}
	
	//删除ProjectType
	@Override
	public void delet(Integer id) {
		ProjectType projectType = getById(id);
		sessionFactory.getCurrentSession().delete(projectType);
	}
}
