// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AllConsultSearchServiceImpl.java

package com.kh.pugis.service.consulting.service;



import com.kh.pugis.service.consulting.dao.AllConsultSearchDao;
import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;

import java.util.List;

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

    public List<Consult> consultSearch(String condition,ConsultScheduleDate csd)
    {	switch (condition){
		case "전체" :	return acsd.allConsultSearch(csd);
		case "우수" :return acsd.regularConsultSearch(csd);
		default :return acsd.marketingConsultSearch(csd);
    	}
    }

    public void executeConsult(Consult c)
    {
    	acsd.executeConsult(c);
    	
    }
    
}
