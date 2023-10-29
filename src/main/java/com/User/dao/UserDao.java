package com.User.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DB.DB_Connection;
import com.User.dto.User_Info;



public class UserDao {



static	Connection ck = DB_Connection.getConnection();
	public boolean insertUserData(User_Info uf) throws ClassNotFoundException, SQLException {
		
			
		
		boolean flag=false;
		
		System.out.println(ck);
		String insert="insert into userdetails (name, email, password) values(?,?,?)";
		try {
			PreparedStatement pre=ck.prepareStatement(insert);
			
			pre.setString(1, uf.getName());
			pre.setString(2, uf.getEmail());
			pre.setString(3, uf.getPassword());
			
			
			
			
			int f= pre.executeUpdate();
			if(f==1) {
				flag=true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
	public User_Info getInfo(User_Info info) {
		User_Info user=null;
		
		String select="select * from userdetails where email=? and password=?";
		
		try {
			PreparedStatement pre=ck.prepareStatement(select);
			
			pre.setString(1, info.getEmail());
			pre.setString(2, info.getPassword());
			
			ResultSet rs=pre.executeQuery();
			
			  
			  if(rs.next()) {
				  user=new User_Info();
				  user.setId(rs.getInt(1));
				 user.setName(rs.getString(2));
				 user.setEmail(rs.getString(3));
				 user.setPassword(rs.getString(4));
			   }
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return user;
		
	}
	
}
