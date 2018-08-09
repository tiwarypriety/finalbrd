package com.nucleus.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.DAO.DaoInterface;
import com.nucleus.DAO.UserDaoInterface;

import com.nucleus.Entity.Role14;
import com.nucleus.Entity.User14;

@Service
public class UserServiceClass implements UserServiceInterface  
{
	 @Autowired
	 UserDaoInterface daoclass; 
	
	 //***************************INSERT USER***********************************************
	@Transactional
	@Override
	public void insertUser(User14 user,Role14 role) 
	{
		daoclass.insertUser(user,role);
	}

	//*****************************VIEW USER*********************************************
	@Transactional
	@Override
	public User14 viewUser(String username) 
	{
		return daoclass.viewUser(username);
	}

	/*//******************************INSERT ROLE********************************************
	@Transactional
	@Override
	public void insertRole(Role14 role) 
	{
		daoclass.insertRole(role);
	}*/
	//*******************************PASSWORD ENCODER*************************************
	
	public User14 serviceEncoder(User14 user)
	{
		String password=user.getPassword();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		System.out.println(hashedPassword);
		user.setPassword(hashedPassword);
		return user;
	}
	
}
