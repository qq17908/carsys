package com.sp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.sp.entity.dict.ProjectType;
import com.sp.entity.dict.UserModel;
import com.sp.service.UserService;
import com.sp.util.FormValidator;

@Controller
//@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;

    @Autowired
    private FormValidator validator;

	@RequestMapping(value = "/login1",method=RequestMethod.POST)
	protected String handle(UserModel user,BindingResult result, Model model){
		String flag = userService.userLogin(user);
		System.out.println("flag:" + flag);
		if ("sucess".equals(flag)){
			return "sucess";
		}
		return "test1";
	}
	
	@RequestMapping(value = "/login",method=RequestMethod.POST)
	protected String loginRedirect(){
		return "test1";
	}
	
	//
	@RequestMapping(value = "/showProjectTypes")
	protected ModelAndView getAllProjectTypes(){
		ModelAndView mav = new ModelAndView("showProjectTypes");
		List<ProjectType> projectTypes = userService.getAllProjectTypes();
		mav.addObject("SEARCH_PROJECTTYPE_RESULTS_KEY", projectTypes);
		return mav;
	}
	
	//查找
	@RequestMapping(value = "/searchProjectType")
	public ModelAndView getSomeProjectType(){
		ModelAndView mav = new ModelAndView("showProjectTypes");
		List<ProjectType> projectTypes = userService.getSomeProjectTypes();
		mav.addObject("SEARCH_PROJECTTYPE_RESULTS_KEY", projectTypes);
		return mav;
	}
	
	@RequestMapping(value = "/addProjectType",method=RequestMethod.GET)
	protected ModelAndView newProjectTypeForm(){
		ModelAndView mav = new ModelAndView("newProjectType");
		ProjectType projectType = new ProjectType();
		mav.getModelMap().put("newProjectType", projectType);
		return mav;
	}
	
	@RequestMapping(value = "/saveProjectType",method=RequestMethod.POST)
	public String addProjectType(@ModelAttribute("newProjectType")ProjectType projectType,BindingResult result,SessionStatus status){
		//return userService.addProjectType(projectType, result, status);
		return userService.addProjectType(projectType);
	}
	
/*	@RequestMapping(value = "/saveProjectType1",method=RequestMethod.POST)
	public String addProjectT(@ModelAttribute("newProjectType")ProjectType projectType){
		//return userService.addProjectType(projectType, result, status);
		return userService.addProjectType(projectType);
	}
*/
	
/*	@RequestMapping(value="/updateProjectType",method=RequestMethod.GET)
	public ModelAndView editProjectType(Integer id){
		ModelAndView mav = new ModelAndView("views/editProjectType");
		ProjectType projectType = userService.getProjectTypeById(id);
		mav.addObject("editProjectType",projectType);
		return mav;
	}
*/
	
	@RequestMapping(value="/updateProjectType",method=RequestMethod.GET)
	public ModelAndView editProjectType(Integer id){
		ModelAndView mav = new ModelAndView("form-elements");
		ProjectType projectType = userService.getProjectTypeById(id);
		mav.addObject("form-elements",projectType);
		return mav;
	}
	
	@RequestMapping(value="/updateProjectType",method=RequestMethod.POST)
	public String updateProjectType(@ModelAttribute("editProjectType")ProjectType projectType){
		return userService.updateProjectType(projectType);
	}
	
	@RequestMapping(value="/deleteProjectType")
	public String deleteProjectType(Integer id){
		return userService.deleteProjectType(id);
	}
}