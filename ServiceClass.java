package com.nucleus.Services;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.DAO.DaoClass;
import com.nucleus.DAO.DaoInterface;
import com.nucleus.Entity.Customer14;



@Service
public class ServiceClass implements ServiceInterface
{
    @Autowired
    DaoInterface daoclass;
    
    @Transactional
	@Override
	public Boolean insert(Customer14 customer,String name) 
	{
	   return daoclass.insert(customer,name);
	}

    @Transactional
	@Override
	public void update(Customer14 customer)//,String createDate) 
	{
    	daoclass.update(customer);//,createDate);
	}

    @Transactional
    @Override
	public Customer14 fetch(int id) 
	{
		return daoclass.fetch(id);
	}

    @Transactional
	@Override
	public int delete(int cCode) 
    {
    	return daoclass.delete(cCode);
	}
    
    @Transactional
    @Override
	public Customer14 view(int cCode) 
    {
    	return daoclass.view(cCode);
	}

    @Transactional
	@Override
	public List<Customer14> viewAll()
	{
		return daoclass.viewAll();
	}
}
