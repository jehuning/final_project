package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.CustomerQuestionReply;

public interface CustomerQuestionListReplyDAO {

	// 댓글 조회
	public List<CustomerQuestionReply> readReply(int reg_id) throws Exception;
	
	// 댓글 작성
	public void writdReply(CustomerQuestionReply cqrVO) throws Exception;
	
	// 댓글 삭제
	public void deleteReply(int reply_id) throws Exception;
	
	// 선택된 댓글 조회
	public CustomerQuestionReply selectReply(int reg_id) throws Exception;
}
