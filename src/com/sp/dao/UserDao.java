package com.sp.dao;

import java.util.List;

import com.sp.entity.dict.ProjectType;
import com.sp.entity.dict.UserModel;

public interface UserDao{
	String userLogin(UserModel user);
	List<ProjectType> getAllProjectTypes();
	List<ProjectType> getSomeProjectTypes();
	int save(ProjectType projectType);
	void update(ProjectType projectType);
	ProjectType getById(Integer id);
	void delet(Integer id);
}
