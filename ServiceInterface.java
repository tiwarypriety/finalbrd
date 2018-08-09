package com.nucleus.Services;

import java.text.ParseException;
import java.util.Date;
import java.util.List;


import com.nucleus.Entity.Customer14;


public interface ServiceInterface
{
	 Boolean insert(Customer14 customer,String name);
	 void update(Customer14 customer);//,String createDate);
	 Customer14 fetch(int id);
	 int delete(int cCode);
	 Customer14 view(int cCode);
	 List<Customer14> viewAll();
}
