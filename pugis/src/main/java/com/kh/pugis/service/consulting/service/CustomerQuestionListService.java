// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomerQuestionListService.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import com.kh.pugis.service.consulting.domain.SearchCriteria;

public interface CustomerQuestionListService {

	// 게시물 목록 조회
	public List<CustomerQuestion> list(SearchCriteria scri) throws Exception;
	
	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public CustomerQuestion read(int reg_id) throws Exception;

	
	// 게시물 삭제
	public void delete(int reg_id) throws Exception;
	
}
