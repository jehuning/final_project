package com.kh.pugis.service.consulting.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.pugis.service.consulting.domain.CustomerQuestionReply;


@Repository
public class CustomerQuestionListReplyDAOImpl implements CustomerQuestionListReplyDAO{

	@Autowired SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<CustomerQuestionReply> readReply(int reg_id) throws Exception {
		return sql.selectList("CustomerQuestionListReply.readReply", reg_id);
	}

	// 댓글 작성
	@Override
	public void writdReply(CustomerQuestionReply cqrVO) throws Exception {
		sql.insert("CustomerQuestionListReply.writeReply", cqrVO);
	}

	// 댓글 삭제
	@Override
	public void deleteReply(int reply_id) throws Exception {
		sql.delete("CustomerQuestionListReply.deleteReply", reply_id);
	}

	// 선택된 댓글 조회
	@Override
	public CustomerQuestionReply selectReply(int reg_id) throws Exception {
		return sql.selectOne("CustomerQuestionListReply.selectReply", reg_id);
	}

}

