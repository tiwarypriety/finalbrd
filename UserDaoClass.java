package com.nucleus.DAO;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.nucleus.Entity.Role14;
import com.nucleus.Entity.User14;

@Repository
public class UserDaoClass implements UserDaoInterface
{
	@Autowired
    private SessionFactory sessionFactory;

	@Transactional
	@Override
	public void insertUser(User14 user,Role14 role) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}

	@Transactional
	@Override
	public User14 viewUser(String username) 
	{
		User14 user=(User14) sessionFactory.getCurrentSession().get(User14.class,username);
		return user;
	}

	/*@Transactional
	@Override
	public void insertRole(Role14 role) 
	{
		System.out.println(role);
		sessionFactory.getCurrentSession().saveOrUpdate(role);
	}*/
}
