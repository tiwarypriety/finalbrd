package com.nucleus.Controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;


import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.nucleus.Entity.Customer14;

import com.nucleus.Services.ServiceClass;
import com.nucleus.Services.ServiceInterface;

@Controller
public class CustomerController 
{
	DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");	
	final static Logger logger=Logger.getLogger(com.nucleus.Controller.CustomerController.class);
	@Autowired
	ServiceInterface serviceclass;
   @Autowired
   private MessageSource messagesource;
  
   //***************************HOME********************************************
   @RequestMapping(value="/home",method=RequestMethod.GET)
   public String home()
   {
	   return messagesource.getMessage("l",null,"Not Found",null);
   }
   
   //***************************INSERT FORM***************************************
   @RequestMapping(value="/insert",method=RequestMethod.GET)
   public String insert(@ModelAttribute("customer") Customer14 customer)
   {
	  return messagesource.getMessage("b",null,"Not Found",null);
  }
   
   //***************************INSERT******************************************
   @RequestMapping(value="/add",method=RequestMethod.POST)
   public ModelAndView add(@Valid @ModelAttribute("customer") Customer14 customer,BindingResult bindingResult,Principal principal,Model model)
   {
	   String name=principal.getName();
	   model.addAttribute("name",name);
	   PropertyConfigurator.configure("log4j.properties");
	   try
	   {
	   if(bindingResult.hasErrors())
	   {
		   return new ModelAndView(messagesource.getMessage("b",null,"Not Found",null));
	   } 
	   Boolean b=serviceclass.insert(customer,name);
	   if(b == true)
	   {
		   return new ModelAndView(messagesource.getMessage("c",null,"Not Found",null),"message","Successfully Inserted");   
	   }
	  }
	   catch(Exception e)
	   {
		   logger.warn("Exception occured while INSERTING");
		   logger.error(e);
	   }
	return new ModelAndView(messagesource.getMessage("o",null,"Not Found",null));
	} 
   
   //*****************************UPDATE ID********************************************
   @RequestMapping(value="/updateId",method=RequestMethod.GET)
   public ModelAndView updateid()
   {
	   return new ModelAndView(messagesource.getMessage("d",null,"Not Found",null));
   }
   
   //**************************UPDATEFORM**********************************************
   @RequestMapping(value="/updateform",method=RequestMethod.POST)
   public String updateform(@RequestParam int cCode,Model model)
   {
	  PropertyConfigurator.configure("log4j.properties");
	   try
	   {
	    Customer14 customer=serviceclass.fetch(cCode);
	    model.addAttribute("customer",customer);
	    return messagesource.getMessage("e",null,"Not Found",null);
	  }
	   catch(Exception e)
	   {
		   logger.warn("Exception occured while FETCHING DETAILS");
		   logger.error(e);
	   }
	   return messagesource.getMessage("o",null,"Not Found",null);
	 }
   
   //******************************UPDATE************************************************
   @RequestMapping(value="/update",method=RequestMethod.POST)
   public ModelAndView update(@ModelAttribute("customer") Customer14 customer) throws ParseException
   {
	 serviceclass.update(customer);
	 return new ModelAndView(messagesource.getMessage("c",null,"Not Found",null),"message","Successfully Updated");
	}
   
   //*********************************DELETE ID******************************************
   @RequestMapping(value="/deleteId",method=RequestMethod.GET)
   public String deleteid()
   {
	   return messagesource.getMessage("f",null,"Not Found",null);
   }
   
   //**********************************DELETE*******************************************
   @RequestMapping(value="/delete",method=RequestMethod.POST)
   public ModelAndView deletefetch(@RequestParam int cCode,Model model)
   {
	   PropertyConfigurator.configure("log4j.properties");
	   try
	   {
	      int i=serviceclass.delete(cCode);
	     if(i != 0)
	     {
	    	return new ModelAndView(messagesource.getMessage("c",null,"Not Found",null),"message","Successfully Deleted");
	     }
	   }
	   catch(Exception e)
	   {
		   return new ModelAndView(messagesource.getMessage("c",null,"Not Found",null),"message","Customer Id does not exist");
		}
	return null;
	 }
   
   //**********************************VIEW ID*******************************************
   @RequestMapping(value="/viewId",method=RequestMethod.GET)
   public String view()
   {
	   return messagesource.getMessage("g",null,"Not Found",null);
   }
   
   //********************************VIEW SUCCESS*******************************************
   @RequestMapping(value="/view",method=RequestMethod.POST)
   public ModelAndView view(@RequestParam int cCode,Model model)
   {
	   PropertyConfigurator.configure("log4j.properties");
	   try
	   {
	  Customer14 customer=serviceclass.view(cCode);
	  if(customer != null)
	  {
	  model.addAttribute("customer",customer);
	  return new ModelAndView(messagesource.getMessage("h",null,"Not Found",null));
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
  
   //******************************VIEW ALL******************************************
   @RequestMapping(value="/viewAll",method=RequestMethod.GET)
   public String viewAll(Model model)
   {
	   try
	   {
	   List<Customer14> list=serviceclass.viewAll();
	   model.addAttribute("list",list);
	   return messagesource.getMessage("p",null,"Not Found",null);
	   }
	   catch(Exception e)
	   {
		   logger.warn("Exception occured while VIEWING");
		   logger.error(e); 
	   }
	return null;
   }
}
