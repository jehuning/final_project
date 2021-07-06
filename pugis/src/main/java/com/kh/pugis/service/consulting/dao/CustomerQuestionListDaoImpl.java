package com.kh.pugis.service.consulting.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.pugis.service.consulting.domain.Criteria;
import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import com.kh.pugis.service.consulting.domain.SearchCriteria;

@Repository
public class CustomerQuestionListDaoImpl implements CustomerQuestionListDao{
	@Autowired
	private SqlSession sqlSession;
/*
	// 게시글 작성
		@Override
		public void write(CustomerQuestion customerquestionVO) throws Exception {
			sqlSession.insert("boardMapper.insert", customerquestionVO);
			
		}
*/
		// 게시물 목록 조회
		@Override
		public List<CustomerQuestion> list(SearchCriteria scri) throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectList("CustomerQuestionList.listPage", scri);
		}
	
		// 게시물 총 갯수
		@Override
		public int listCount(SearchCriteria scri) throws Exception {
			// TODO Auto-generated method stub
			return sqlSession.selectOne("CustomerQuestionList.listCount", scri);
		}

		
		// 게시물 조회
		@Override
		public CustomerQuestion read(int reg_id) throws Exception {
			
			return sqlSession.selectOne("CustomerQuestionList.read", reg_id);
		}

		
		// 게시물 삭제
		@Override
		public void delete(int reg_id) throws Exception {
			
			sqlSession.delete("CustomerQuestionList.delete", reg_id);
		}
}

