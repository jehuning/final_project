// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomerQuestionListServiceImpl.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.CustomerQuestionListDao;
import com.kh.pugis.service.consulting.domain.Criteria;
import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import com.kh.pugis.service.consulting.domain.SearchCriteria;

@Service
@Transactional
public class CustomerQuestionListServiceImpl implements CustomerQuestionListService {
	@Autowired
	CustomerQuestionListDao cd;

	// 게시물 목록 조회
	@Override
	public List<CustomerQuestion> list(SearchCriteria scri) throws Exception {

		return cd.list(scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return cd.listCount(scri);
	}

	// 게시물 조회
	@Override
	public CustomerQuestion read(int reg_id) throws Exception {

		return cd.read(reg_id);
	}

	// 게시물 삭제
	@Override
	public void delete(int reg_id) throws Exception {
		
		cd.delete(reg_id);
	}

}
