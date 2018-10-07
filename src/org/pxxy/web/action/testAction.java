package org.pxxy.web.action;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.pxxy.domain.Manager;
import org.pxxy.service.ManagerService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.dsna.util.images.ValidateCode;

@ParentPackage("struts-default")
@Namespace("/")
@Controller("managerAction") 
@Scope("prototype")
public class testAction extends ActionSupport implements ModelDriven<Manager> {
	Manager manager = new Manager();
	@Resource(name = "managerService")
	private ManagerService managerService;
	private String yzm;//ֵ
		public String getYzm() {
		return yzm;
	}
	public void setYzm(String yzm) {
		this.yzm = yzm;
	}

	@Override
	public Manager getModel() {
		// TODO Auto-generated method stub
		return manager;
	}
/*------------------------------------------------*/
	@Action(value = "user_register", results = { @Result(name = "success", location = "/successReg.jsp"), @Result(name = "error", location = "/errorReg.jsp")})
	public void register() {
		Manager regExist=managerService.register(manager);
		System.out.println("testActon user_register------regExist:"+regExist);
		String responseText=null;
		HttpServletResponse response = ServletActionContext.getResponse();  
		if(regExist==null){
			responseText="0";//数据不存在，用户名可以用
		}
		else{
			responseText="1";
		} 
	    try {
			response.getWriter().print(responseText);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	   
	}
/*------------------------------------------------*/
	@Action(value = "user_login", results = { @Result(name = "success", location = "/index.jsp"),
			@Result(name = "error", location = "/errorLog.jsp"), })
	public void login() {
		String responseText=null;
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();  
		String session_code = (String) request.getSession().getAttribute("session_code");
		Manager existUser = managerService.login(manager);
		System.out.println("testAction------login------existUser:"+existUser);
		if (existUser == null) {
			System.out.println("1212122212");
			responseText="0";
			System.out.println("user_login responseText:"+responseText);
			
		} else if (!yzm.equalsIgnoreCase(session_code)){
			System.out.println("qwqwq");
			responseText="2";
			System.out.println("user_login responseText:"+responseText);
		} 
		else {
			System.out.println("asdadadasdas");
			HttpSession session = request.getSession();
			session.setAttribute("admin", existUser);
			responseText="1";
			System.out.println("user_login responseText:"+responseText);
		}
		System.out.println("user_login responseText:"+responseText);
		try {
			response.getWriter().print(responseText);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
/*------------------------------------------------*/
	@Action(value = "validateCode")
	public String validateCode() {
		ValidateCode vc = new ValidateCode(135, 35, 4, 20);
		String code = vc.getCode();
		ServletActionContext.getRequest().getSession().setAttribute("session_code", code);
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			vc.write(response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}


}
