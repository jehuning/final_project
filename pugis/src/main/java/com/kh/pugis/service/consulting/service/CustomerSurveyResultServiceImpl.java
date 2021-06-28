// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomerSurveyResultServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.CustomerSurveyResultDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerSurveyResultServiceImpl
    implements CustomerSurveyResultService
{
	@Autowired
    CustomerSurveyResultDao cd;
    public CustomerSurveyResultServiceImpl()
    {
    }

    public void selectCustomerSurvey()
    {
    }

    public void viewResult()
    {
    }
    
}
