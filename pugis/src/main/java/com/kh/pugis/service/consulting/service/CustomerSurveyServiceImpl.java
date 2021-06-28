// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CustomerSurveyServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.CustomerSurveyDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerSurveyServiceImpl
    implements CustomerSurveyService
{
	 @Autowired
	 CustomerSurveyDao cd;
    public CustomerSurveyServiceImpl()
    {
    }

    public void saveSurvey()
    {
        cd.saveSurvey();
    }

    public void selectSurvey()
    {
    }

    public void selectCustomer()
    {
    }

    public void CustomerPageMove()
    {
    }

    public void distributeSurvey()
    {
    }
   
}
