package com.User.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.DB.DB_Connection;
import com.User.dto.PostDetails;


public class PostDao {

	
	static	Connection ck = DB_Connection.getConnection();
	
	
	// insert data into database 
	public boolean insertPost(int uid, String title, String content) {
		boolean flag=false;
		
		String insert="insert into post (title,content, uid) values(?,?,?)";
		
		try {
			PreparedStatement pre=ck.prepareStatement(insert);
			pre.setString(1, title);
			pre.setString(2, content);
			pre.setInt(3, uid);
			
			int f= pre.executeUpdate();
			if(f==1) {
				flag=true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
	
	// get All apost and show into showpage 
	public List<PostDetails> getAllPost(int id){
		
		 ArrayList<PostDetails> ls=new ArrayList<>();
		 
		 try {
			 
			 String select="select * from post where uid=? order by id DESC";
			 
			 PreparedStatement pr=ck.prepareStatement(select);
			 pr.setInt(1,id);
			 ResultSet st= pr.executeQuery();
			 
			 while(st.next()) {
				 PostDetails ps=new PostDetails();
				 ps.setId(st.getInt(1));
				 ps.setTitle(st.getString(2));
				 ps.setContent(st.getString(3));
				 ps.setDate(st.getTimestamp(4));
				 ls.add(ps);
				 
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		return ls;
		
		
	}
	
//	getData and set into edit page 
	
	public PostDetails getById(int id){
		PostDetails ps=new PostDetails();
		try {
			
			String select="select * from post where id=?";
			
			PreparedStatement pr=ck.prepareStatement(select);
			pr.setInt(1,id);
			
			ResultSet st= pr.executeQuery();
			
			while(st.next()) {
				ps.setId(st.getInt(1));
				ps.setTitle(st.getString(2));
				ps.setContent(st.getString(3));
	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ps;	
	}
	
	
	
	// Update data in to data base
	public boolean updatePost(int id, String title, String content){
		boolean flag=false;
		try {
			
			String update="update post set title=?, content=? where id=?";
			
			PreparedStatement pr=ck.prepareStatement(update);
			pr.setString(1, title);
			pr.setString(2, content);
			pr.setInt(3,id);
			
		int f=	pr.executeUpdate();
		    if(f==1) {
		    	flag=true;
		    }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return flag;	
	}
	
	// delete post
	public boolean deletePost(int id){
		boolean flag=false;
		try {
			
			String delete="delete from post where id=?";
			
			PreparedStatement pr=ck.prepareStatement(delete);
			
			pr.setInt(1,id);
			int f=	pr.executeUpdate();
			if(f==1) {
				flag=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return flag;	
	}
}
