package com.javatpoint;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.User;
import model.Vendor;
import model.VendorDao;
import model.Vendor_service;


@Controller
public class ControllerDemo {
	private ApplicationContext app=new ClassPathXmlApplicationContext("ApplicationContext.xml");
	
	@RequestMapping("/home")
	public String view(Model m)
	{
		Vendor obj=app.getBean("data",Vendor.class);
		m.addAttribute("bean",obj);
		return "home";
	}
	
	
	@RequestMapping(value="/vregister", method=RequestMethod.POST)
	public String view2(@ModelAttribute("bean") Vendor v,Model m)
	{
			VendorDao obj=app.getBean("dao",VendorDao.class);
			obj.save(v);
		
			return "home";
	}
	
	
	@RequestMapping(value="/check", method=RequestMethod.POST)
	public String view4(@ModelAttribute("bean") Vendor v,Model m,HttpServletRequest request)
	{
		
		VendorDao obj=app.getBean("dao",VendorDao.class);
		int flag=obj.login(v);
		if(flag>0)
		{
			if(v.getUser_type().equals("Vendor"))
			{
				Vendor_service ob=app.getBean("vserv",Vendor_service.class);
				m.addAttribute("bean",ob);
				HttpSession session=request.getSession();
				session.setAttribute("id", flag);
				return "service_menu";
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("id", flag);
				session.setAttribute("type", v.getUser_type());
				VendorDao ob1=app.getBean("dao",VendorDao.class);
				List list=ob1.all_display();
				Vendor_service ob=app.getBean("vserv",Vendor_service.class);
				m.addAttribute("bean",ob);
				m.addAttribute("data",list);
				return "all_service";
			
			}
		}
		else
		{
			return "home";
		}
		
	}
	
	@RequestMapping("/service_add")
	public String service(Model m)
	{
		Vendor_service ob=app.getBean("vserv",Vendor_service.class);
		m.addAttribute("bean",ob);
		return "display";
	}
	
	
	@RequestMapping(value="service", method=RequestMethod.POST)
	public String service(@ModelAttribute("bean") Vendor_service vs,Model m,HttpServletRequest request )
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		HttpSession session=request.getSession();
		String id=String.valueOf(session.getAttribute("id"));
		int vid=Integer.valueOf(id);
		vs.setVid(vid);
		obj.service(vs);
		m.addAttribute("msg","Please add next service");
		return "service_menu";
		
	}
	
	@RequestMapping("/service_display")
	public String display(Model m,HttpServletRequest request)
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		HttpSession session=request.getSession();
		String id=String.valueOf(session.getAttribute("id"));
		int vid=Integer.valueOf(id);
		List list=obj.display(vid);
		Vendor_service ob=app.getBean("vserv",Vendor_service.class);
		m.addAttribute("bean",ob);
		m.addAttribute("data",list);
		return "all_service";
	}
	
	@RequestMapping("/saloon")
	public String saloon(Model m)
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		List list=obj.saloon();
		m.addAttribute("saloonlist",list);
		return "saloon";
	}
	@RequestMapping(value="/service_update" , method=RequestMethod.POST)
	public String uservice(@ModelAttribute("bean") Vendor_service vs)
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		obj.service_update(vs);
		return "service_menu";
	}
	
	@RequestMapping(value="/service_delete" , method=RequestMethod.POST)
	public String dservice(@ModelAttribute("bean") Vendor_service vs)
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		obj.service_delete(vs);
		return "service_menu";
	}
	
	@RequestMapping(value="/service_apply" , method=RequestMethod.POST)
	public String aservice(@ModelAttribute("bean") Vendor_service vs,Model m)
	{
		VendorDao obj=app.getBean("dao",VendorDao.class);
		Vendor ob=obj.apply(vs);
		m.addAttribute("data",ob);
		return "vendor_info";
	}
	
	
}
