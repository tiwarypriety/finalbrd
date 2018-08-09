package com.nucleus.Services;


import com.nucleus.Entity.Role14;
import com.nucleus.Entity.User14;

public interface UserServiceInterface
{
   void insertUser(User14 user,Role14 role);
   User14 viewUser(String username);
   /*void insertRole(Role14 role);*/
   User14 serviceEncoder(User14 user);
}
