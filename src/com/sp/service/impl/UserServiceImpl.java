package com.sp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.support.SessionStatus;
import com.sp.dao.UserDao;
import com.sp.entity.dict.ProjectType;
import com.sp.entity.dict.UserModel;
import com.sp.service.UserService;
import com.sp.util.FormValidator;

@Component("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

    @Autowired
    private FormValidator validator;
    
	@Override
	public String userLogin(UserModel user) {
		String password = userDao.userLogin(user);
		if(password.equals(user.getPassword())){
			return "sucess:serviceimpl";
		}else{
			return "false:serviceimpl";
		}
	}

	@Override
	public List<ProjectType> getAllProjectTypes(){
		List<ProjectType> projectType = userDao.getAllProjectTypes();
		return projectType;
	}
	

	@Override
	public List<ProjectType> getSomeProjectTypes() {
		List<ProjectType> projectType = userDao.getSomeProjectTypes();
		return projectType;
	}


	@Override
	public String addProjectType(@ModelAttribute("newProjectType")ProjectType projectType,BindingResult result,SessionStatus status){
		validator.validate(projectType, result);
		if(result.hasErrors()){
			return "newProjectType";
		}
		userDao.save(projectType);
		//status.setComplete();
		return "redirect:showProjectTypes.do";
	}


	@Override
	public String addProjectType(ProjectType projectType) {
		userDao.save(projectType);
		return "redirect:showProjectTypes.do";
	}
	

	@Override
	public String updateProjectType(ProjectType projectType) {
		userDao.update(projectType);
		return "redirect:showProjectTypes.do";
	}

	@Override
	public ProjectType getProjectTypeById(Integer id) {
		return userDao.getById(id);
	}


	@Override
	public String deleteProjectType(Integer id) {
		userDao.delet(id);
		return "redirect:showProjectTypes.do";
	}


}
