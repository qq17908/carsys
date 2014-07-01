package com.sp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sp.entity.dict.ProjectType;
import com.sp.service.UserService;

@Controller
public class IndexController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("helloWorld")
	public String helloworld(){
		System.out.println("sucess:indexController");
		//return "sucess";
		return "login";
	}
	
/*	@RequestMapping("/index.do")
	public String loginRedirect(){
		return "index";
	}*/
	
	@RequestMapping(value = "/index.do")
	protected ModelAndView getAllProjectTypes(){
		ModelAndView mav = new ModelAndView("index");
		List<ProjectType> projectTypes = userService.getAllProjectTypes();
		mav.addObject("SEARCH_PROJECTTYPE_RESULTS_KEY", projectTypes);
		return mav;
	}
	
	//文字排版
	@RequestMapping("/typography.do")
	public String typographyRedirect(){
		return "typography";
	}
	//UI组件-组件
	//UI组件-按钮&图表
	@RequestMapping("/buttons.do")
	public String buttonsRedirect(){
		return "buttons";
	}
	//UI组件-树菜单
	//UI组件-JQuery UI
	//UI组件-可拖拽列表
	//UI组件-三级菜单
	
	//表格-简单&动态
	@RequestMapping("/tables.do")
	public String tablesRedirect(){
		return "tables";
	}
	//表格-jqGrid Plugin
	@RequestMapping("/jqgrid.do")
	public String jqGridPluginRedirect(){
		return "jqgrid";
	}
	//表单-表单组件
	@RequestMapping("/formelements.do")
	public String formelementsRedirect(){
		return "form-elements";
	}
	//表单-向导提示&验证
	@RequestMapping("/formwizard.do")
	public String formwizardRedirect(){
		return "form-wizard";
	}
	//表单-编辑器
	@RequestMapping("/wysiwyg.do")
	public String wysiwygRedirect(){
		return "wysiwyg";
	}
	//表单-文件上传
	@RequestMapping("/dropzone.do")
	public String dropzoneRedirect(){
		return "dropzone";
	}
	//插件
	@RequestMapping("/widgets.do")
	public String widgetsRedirect(){
		return "widgets";
	}
	//日历
	@RequestMapping("/calendar")
	public String calendar(){
		return "calendar";
	}
	//相册
	//更多页面-用户信息
	@RequestMapping("/profile.do")
	public String profileRedirect(){
		return "profile";
	}
	//更多页面-收件箱
	@RequestMapping("/inbox.do")
	public String inboxRedirect(){
		return "inbox";
	}
	//更多页面-售价单
	//更多页面-购物车
	//更多页面-时间轴
	@RequestMapping("/timeline.do")
	public String timelineRedirect(){
		return "timeline";
	}
	//更多页面-登录
	//其他页面-帮助
	@RequestMapping("/faq.do")
	public String faqRedirect(){
		return "faq";
	}
	//其它页面-网格
}