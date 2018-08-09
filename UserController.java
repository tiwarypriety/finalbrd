package com.nucleus.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.nucleus.Entity.Role14;
import com.nucleus.Entity.User14;
import com.nucleus.Services.ServiceInterface;
import com.nucleus.Services.SpringException;
import com.nucleus.Services.UserServiceInterface;

@Controller
public class UserController 
{
	final static Logger logger=Logger.getLogger(com.nucleus.Controller.UserController.class);
	@Autowired
	UserServiceInterface serviceclass;
   @Autowired
   private MessageSource messagesource;
    
   //HOME ADMIN
   @RequestMapping(value="/homeAdmin",method=RequestMethod.GET)
   public String homeAdmin()
   {
	   return messagesource.getMessage("q",null,"Not Found",null);
   }
   
 //INSERT USER
  @RequestMapping(value="/insertUser1",method=RequestMethod.GET)
  public String insertUser1()
  {
	   return messagesource.getMessage("i",null,"Not Found",null);
  }
  
  //ADD USER
  @RequestMapping(value="/addUser",method=RequestMethod.POST)
  @ExceptionHandler({com.nucleus.Services.SpringException.class})
  public ModelAndView addUser(@ModelAttribute("user") User14 user,@ModelAttribute("role") Role14 role)
  { 
	  PropertyConfigurator.configure("log4j.properties");
	  try
	  {
		  if(user.getUsername().length() < 5 ){
		         throw new SpringException("Given name is too short");
		      }
		  else
		  {
	    serviceclass.serviceEncoder(user);
	    serviceclass.insertUser(user,role);
	    return new ModelAndView(messagesource.getMessage("m",null,"Not Found",null),"message","Successfully Inserted");
	  }
	  }
	  catch(Exception e)
	   {
		  logger.warn("Exception occured while INSERTING");
		  logger.error(e);
	   }
	return new ModelAndView(messagesource.getMessage("o",null,"Not Found",null));
  }
    
   //VIEW USER ID
   @RequestMapping(value="/viewUserId",method=RequestMethod.GET)
   public String view()
   {
	   return messagesource.getMessage("j",null,"Not Found",null);
   }
   
   //VIEW USER
   @RequestMapping(value="/viewUser",method=RequestMethod.POST)
   public ModelAndView viewUser(@RequestParam String username,Model model)
   {
	   PropertyConfigurator.configure("log4j.properties");
	   try
	   {
	  User14 user=serviceclass.viewUser(username);
	  if(user != null)
	  {
	  model.addAttribute("user",user);
	  return new ModelAndView(messagesource.getMessage("n",null,"Not Found",null));
	  }
	  else
	  {
		return new ModelAndView(messagesource.getMessage("c",null,"Not Found",null),"message","Customer Id does not exist");
	  }
		}
	   catch(Exception e)
	   {
		   logger.warn("Exception occured while VIEWING");
		   logger.error(e);	 
	   }
	  return new ModelAndView(messagesource.getMessage("o",null,"Not Found",null));
	}
  
}
