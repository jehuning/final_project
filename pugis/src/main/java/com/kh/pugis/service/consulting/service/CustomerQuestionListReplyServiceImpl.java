package com.kh.pugis.service.consulting.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pugis.service.consulting.dao.CustomerQuestionListReplyDAO;
import com.kh.pugis.service.consulting.domain.CustomerQuestionReply;

@Service
public class CustomerQuestionListReplyServiceImpl implements CustomerQuestionListReplyService {
	
	@Autowired
	private CustomerQuestionListReplyDAO cqrdao;

	// 댓글 목록
	@Override
	public List<CustomerQuestionReply> readReply(int reg_id) throws Exception {
		return cqrdao.readReply(reg_id);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(CustomerQuestionReply cqrVO) throws Exception {
		cqrdao.writdReply(cqrVO);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(CustomerQuestionReply cqrVO) throws Exception {
		cqrdao.deleteReply(cqrVO);
	}

	// 선택된 댓글 조회
	@Override
	public CustomerQuestionReply selectReply(int reg_id) throws Exception {
		return cqrdao.selectReply(reg_id);
	}

}
