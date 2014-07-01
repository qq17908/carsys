package com.sp.web;

import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse; 
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod; 
import org.springframework.web.servlet.ModelAndView; 

@Controller
@RequestMapping("return")
public class ReturnController {
	@RequestMapping(value="test1",method=RequestMethod.GET)
	public ModelAndView test1(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mav");
		mav.addObject("mav", "ModelAndView....");
		System.out.println("test1");
		return mav;
	}
	
	//跳转到界面为 类路径@RequestMapping的值 + 方法@RequestMapping的值组成的页面
	@RequestMapping("test2")
	public Model test2(Model model){
		model.addAttribute("model", "返回类型是model");
		return model;
	}
	
	//跳转到界面为 类路径@RequestMapping的值 + 方法@RequestMapping的值组成的页面
	@RequestMapping("test3")
	public ModelMap test3(ModelMap modelMap){
		modelMap.addAttribute("modelMap", "返回类型是modelMap");
		return modelMap;
	}
	
	//跳转到界面为 类路径@RequestMapping的值 + 方法@RequestMapping的值组成的页面
	public Map test4(Map map){
		map.put("map", "返回类型是Map");
		return map;
	}
	
	@RequestMapping("test6")
	public void test6(Map<String,Object> map){
		map.put("void", "返回类型是void");
	}
	
	@RequestMapping("test7")
	public String test7(Map<String,Object> map){
		map.put("string", "返回类型是String");
		return "string";
	}
}
