package com.nucleus.Controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController
{
	final static Logger logger=Logger.getLogger(com.nucleus.Controller.SecurityController.class);
	   //USER LOGIN
	   @RequestMapping(value="/default1",method=RequestMethod.GET)
	   public ModelAndView default1(HttpServletRequest request,Model model,Principal principal)
	   { 
		   PropertyConfigurator.configure("log4j.properties");
	      try
	      {
	       String name=principal.getName();
		   model.addAttribute("name",name);
		   if(request.isUserInRole("ROLE_USER"))
		   {
			   return new ModelAndView("welcome"); 
		   }
		   else if(request.isUserInRole("ROLE_ADMIN"))
		   {
			   return new ModelAndView("adminwelcome"); 
		   }	
		   else
		   {
			return new ModelAndView("login");
		   }
	   }
	   catch(Exception e)
	   {

		   logger.warn("Exception occured while INSERTING");
		   logger.error(e);
	   }
	   return null;
		   }
	   
	@RequestMapping("/loginpage1")
	public String handler1()
	{
		return "login";
	}	
		@RequestMapping("/loginfailure")
		public String handler2(ModelMap map)
		{
			return "login";
		}

		@RequestMapping("/logoutpage")
		public String handler3()
		{		
			return "login";
		}
		
		@RequestMapping("/accessdenied")
		public String handler4()
		{		
			return "denied";
		}

}
