package test.sp.dao;

import javassist.bytecode.Descriptor.Iterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.*;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sp.entity.dict.ProjectType;
import com.sp.service.UserService;
import com.sp.web.UserController;

public class testDict {
	private static SessionFactory sf;
	
	@BeforeClass
	public static void BeforeClass() {
		//获取配置文件
		//sf = new Configuration().configure().buildSessionFactory();
	}

	@Test
	public void SelectData(){
		Session s = sf.openSession();
		Transaction  tx = s.beginTransaction();
		
		ProjectType t = new ProjectType();
		System.out.print("ooo");
//		t.setId(1);
		t.setIndex("001");
		t.setProjectType("住宅");
		t.setProjectTypeAbbr("test");
		
		Session session = sf.openSession();
		session.beginTransaction();
		session.save(t);
		session.getTransaction().commit();
		session.close();
	}
	
	@Test 
	public void testAdd() throws Exception {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		UserService service = (UserService)ctx.getBean("userService");
		ProjectType projectType = new ProjectType();
		projectType.setIndex("4445");
		projectType.setProjectType("6666");
		projectType.setProjectTypeAbbr("5554");
		service.addProjectType(projectType);
		//service.addProjectType(projectType);
		ctx.destroy();
	}
	
	@Test
	public void testService() throws Exception{
		UserController uc = new UserController();
		
		ProjectType projectType = new ProjectType();
		projectType.setIndex("111");
		projectType.setProjectType("222");
		projectType.setProjectTypeAbbr("333");
		
//		uc.addProjectT(projectType);
		
	}
	
	
	@Test
	public void testSearch() throws Exception{
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		UserService service = (UserService)ctx.getBean("userService");
		System.out.println("testSearch");
		java.util.List<ProjectType> list = service.getSomeProjectTypes();
		java.util.Iterator<ProjectType> itr = list.iterator();
		while(itr.hasNext()){
			ProjectType pt = itr.next();
			System.out.println(pt.getProjectType());			
		}
		
		System.out.println("finish!");
	}
	
	@AfterClass
	public static void AfterClass() {
		//sf.close();
	}
}
