package com.kh.pugis.service.consulting.domain;


public class CustomerQuestion
{

    public CustomerQuestion()
    {
    }

    String question_category;
    String reg_num;
    String reg_date;
    String user_id;
    String question_title;
    String question_content;
    String answer_content;
    String answer_date;
    
    
	public String getQuestion_category() {
		return question_category;
	}
	public void setQuestion_category(String question_category) {
		this.question_category = question_category;
	}
	public String getReg_num() {
		return reg_num;
	}
	public void setReg_num(String reg_num) {
		this.reg_num = reg_num;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public String getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}
}
