package com.sp.service;

import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;
import com.sp.entity.dict.ProjectType;
import com.sp.entity.dict.UserModel;

public interface UserService {
	String userLogin(UserModel user);
	
	List<ProjectType> getAllProjectTypes();
	
	List<ProjectType> getSomeProjectTypes();
	
	String addProjectType(ProjectType projectType,BindingResult result,SessionStatus status);
	
	String addProjectType(ProjectType projectType);
	
	String updateProjectType(ProjectType projectType);
	
	ProjectType getProjectTypeById(Integer id);
	
	String deleteProjectType(Integer id);
	
}