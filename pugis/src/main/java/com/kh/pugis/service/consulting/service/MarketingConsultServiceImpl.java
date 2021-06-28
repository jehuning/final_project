// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketingConsultServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.MarketingConsultDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MarketingConsultServiceImpl
    implements MarketingConsultService
{
	  @Autowired
	 MarketingConsultDao mcd;
    public MarketingConsultServiceImpl()
    {
    }

    public void printEvent()
    {
    }

    public void selectEvent()
    {
    }

    public void CustomerPageMove()
    {
    }

    public void selectCustomer()
    {
        mcd.selectCustomer();
    }

    public void saveSchedule()
    {
    }
  
}
