package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.UserDetails;
import com.utility.DBUtility;

public class UserDAO {
	public int addUser(UserDetails user)
    {
        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        String sql = "insert into User(userId,userName,email,password) values(?,?,?,?)";
        int rowsAffected = 0;
        try
        {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, user.getUserId());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            
            rowsAffected = ps.executeUpdate();
            conn.commit();
            
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        finally
        {
            db.closeStatement(ps);
            db.closeConnection(conn);
        }
        
        return rowsAffected;
    }
    
    public ArrayList<UserDetails> fetchAllUser()
    {
        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<UserDetails> userList = new ArrayList<UserDetails>();
        String sql = "select * from User";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next())
            {
                userList.add(new UserDetails(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally
        {
            db.closeStatement(ps);
            db.closeConnection(conn);
        }
        return userList;
    }
    
}
