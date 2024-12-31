package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.ProductDetails;
import com.utility.DBUtility;

public class ProductDAO {
    public int addProduct(ProductDetails product)
    {
        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        String sql = "insert into Product(proId, proName, price, quantity, category) values(?,?,?,?,?)";
        int rowsAffected = 0;
        try
        {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, product.getProId());
            ps.setString(2, product.getProName());
            ps.setInt(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setString(5, product.getCategory());
            
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
    
    public ArrayList<ProductDetails> fetchAllProduct()
    {
        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<ProductDetails> productList = new ArrayList<ProductDetails>();
        String sql = "select * from Product";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next())
            {
                productList.add(new ProductDetails(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getString(5)));
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
        return productList;
    }
    
    public int updateProductByproId(ProductDetails product)
    {

        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        int rowsAffected = 0;
        String sql = "update Product set proName=?,price=?,quantity=?,category=? where proId=?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getProName());
            ps.setInt(2, product.getPrice());
            ps.setInt(3,product.getQuantity());
            ps.setString(4, product.getCategory());
            ps.setInt(5, product.getProId());

            rowsAffected = ps.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally {
            db.closeStatement(ps);
            db.closeConnection(conn);
        }
        return rowsAffected;
    }
    
    public int deleteProductBypId(int pid)
    {
        DBUtility db = new DBUtility();
        Connection conn = db.connectDB();
        PreparedStatement ps = null;
        int rowsAffected = 0;
        String sql = "delete from Product where proId=?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, pid);
            
            rowsAffected = ps.executeUpdate();
            conn.commit();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally {
            db.closeStatement(ps);
            db.closeConnection(conn);
        }
        return rowsAffected;
    }

}