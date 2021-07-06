package com.kh.pugis.service.consulting.domain;

import java.util.Date;

public class CustomerQuestionReply {
	private int reg_id;
	private int reply_id;
	private String answer_content;
	private String answer_writer;
	private Date answer_date;
	public int getReg_id() {
		return reg_id;
	}
	public void setReg_id(int reg_id) {
		this.reg_id = reg_id;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public String getAnswer_writer() {
		return answer_writer;
	}
	public void setAnswer_writer(String answer_writer) {
		this.answer_writer = answer_writer;
	}
	public Date getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

	@Override
	public String toString() {
		return "CustomerQuestionReply [reg_id=" + reg_id + ", reply_id=" + reply_id + ", answer_content=" + answer_content + ", answer_writer=" + answer_writer + ", answer_date="
				+ answer_date + "]";
	}

}