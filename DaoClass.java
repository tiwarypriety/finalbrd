package com.nucleus.DAO;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;



import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.Entity.Customer14;




@Repository
public class DaoClass implements DaoInterface
{
    @Autowired
    private SessionFactory sessionFactory;
    
    //INSERT
	@Override
	public Boolean insert(Customer14 customer,String name) 
	{
		Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy hh:mm:ss");  
		String date1 = dateFormat.format(date);
		customer.setCreateDate(date1);
		customer.setCreatedBy(name);
		customer.setModifiedDate(null);
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
		return true;
	}

	//UPDATE
	@Override
	public void update(Customer14 customer)//,String createDate)
	{
		Date date = Calendar.getInstance().getTime();  
		DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy hh:mm:ss");  
		String date1 = dateFormat.format(date);
		//String date2=dateFormat.format(createDate);
		customer.setModifiedDate(date1);
		//customer.setCreateDate(date2);
		sessionFactory.getCurrentSession().update(customer);
		//return 1;
	}

	//FETCH
	@Override
	public Customer14 fetch(int id) 
	{
		Customer14 customer=(Customer14) sessionFactory.getCurrentSession().get(Customer14.class,id);
		return customer;
	}

	//DELETE
	@Override
	public int delete(int cCode) 
	{
		Customer14 customer=(Customer14) sessionFactory.getCurrentSession().get(Customer14.class,cCode);
		sessionFactory.getCurrentSession().delete(customer);
		return 1;
	}
	
	//VIEW
	@Transactional
	@Override
	public Customer14 view(int cCode) 
	{
		Customer14 customer=(Customer14) sessionFactory.getCurrentSession().get(Customer14.class,cCode);
		return customer;
	}

	//VIEW ALL
	@Transactional
	@Override
	public List<Customer14> viewAll()
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Customer14");
		List<Customer14> list=query.list();
		return list;
	}
	
}
