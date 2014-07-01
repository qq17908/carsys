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
	
	//��ת������Ϊ ��·��@RequestMapping��ֵ + ����@RequestMapping��ֵ��ɵ�ҳ��
	@RequestMapping("test2")
	public Model test2(Model model){
		model.addAttribute("model", "����������model");
		return model;
	}
	
	//��ת������Ϊ ��·��@RequestMapping��ֵ + ����@RequestMapping��ֵ��ɵ�ҳ��
	@RequestMapping("test3")
	public ModelMap test3(ModelMap modelMap){
		modelMap.addAttribute("modelMap", "����������modelMap");
		return modelMap;
	}
	
	//��ת������Ϊ ��·��@RequestMapping��ֵ + ����@RequestMapping��ֵ��ɵ�ҳ��
	public Map test4(Map map){
		map.put("map", "����������Map");
		return map;
	}
	
	@RequestMapping("test6")
	public void test6(Map<String,Object> map){
		map.put("void", "����������void");
	}
	
	@RequestMapping("test7")
	public String test7(Map<String,Object> map){
		map.put("string", "����������String");
		return "string";
	}
}
