package com.kh.pugis.service.consulting.dao;

import java.util.List;

import com.kh.pugis.service.consulting.domain.Criteria;
import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import com.kh.pugis.service.consulting.domain.SearchCriteria;


public interface CustomerQuestionListDao {
/*	
	// 게시글 작성
	public void write(CustomerQuestion customerquestionVO) throws Exception;
*/	
	// 게시물 목록 조회
	public List<CustomerQuestion> list(SearchCriteria scri) throws Exception;

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public CustomerQuestion read(int reg_id) throws Exception;

	// 게시물 삭제
	public void delete(int reg_id) throws Exception;
}
