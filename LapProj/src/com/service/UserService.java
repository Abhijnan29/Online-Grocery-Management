package com.service;

import java.util.ArrayList;

import com.beans.UserDetails;
import com.dao.UserDAO;


public class UserService {
	 UserDAO userdao= new UserDAO();
	    public int addusers(UserDetails user) {
	        return userdao.addUser(user);
	    }
	    public ArrayList<UserDetails> fetchAllUsers()
	    {
	        return userdao.fetchAllUser();
	    }
	   
}
