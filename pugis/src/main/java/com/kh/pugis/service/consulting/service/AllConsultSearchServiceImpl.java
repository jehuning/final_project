// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AllConsultSearchServiceImpl.java

package com.kh.pugis.service.consulting.service;



import com.kh.pugis.service.consulting.dao.AllConsultSearchDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AllConsultSearchServiceImpl
    implements AllConsultSearchService
{
	@Autowired
    AllConsultSearchDao acsd;
    public AllConsultSearchServiceImpl()
    {
    }

    public void allConsultSearch()
    {
        acsd.allConsultSearch();
    }

    public void executeConsult()
    {
    }
    
}
