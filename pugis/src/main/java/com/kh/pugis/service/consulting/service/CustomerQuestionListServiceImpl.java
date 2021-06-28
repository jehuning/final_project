// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomerQuestionListServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.CustomerQuestionListDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerQuestionListServiceImpl
    implements CustomerQuestionListService
{
	@Autowired
    CustomerQuestionListDao cd;
    public CustomerQuestionListServiceImpl()
    {
    }

    public void customerQuestionlist()
    {
    }

    public void customerQuestionDetail()
    {
    }

    public void customerQuestionPageMove()
    {
    }

    public void customerQuestionSearch()
    {
    }
    
}
