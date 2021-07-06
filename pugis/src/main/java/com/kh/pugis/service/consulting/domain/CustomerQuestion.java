package com.kh.pugis.service.consulting.domain;

import java.util.Date;

public class CustomerQuestion {
	String question_category;
	int reg_id;
	Date reg_date;
	String customer_id;
	String question_title;
	String question_content;
	
	public String getQuestion_category() {
		return question_category;
	}
	public void setQuestion_category(String question_category) {
		this.question_category = question_category;
	}
	public int getReg_id() {
		return reg_id;
	}
	public void setReg_id(int reg_id) {
		this.reg_id = reg_id;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getQuestion_title() {
		return question_title;
	}
	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getQuestion_content() {
		return question_content;
	}
	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	
}

