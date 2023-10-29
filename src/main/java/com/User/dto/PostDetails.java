package com.User.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class PostDetails {

	private int id;
	private String title;
	private String content;
	private Timestamp date;
	private User_Info info;
	
	public PostDetails() {
		// TODO Auto-generated constructor stub
	}
	
	public PostDetails(int id, String title, String content, Timestamp date, User_Info info) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
		this.info = info;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp timestamp) {
		this.date = timestamp;
	}

	public User_Info getInfo() {
		return info;
	}

	public void setInfo(User_Info info) {
		this.info = info;
	}
	
	
}
