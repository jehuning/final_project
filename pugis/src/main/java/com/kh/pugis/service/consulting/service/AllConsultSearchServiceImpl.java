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
		case "ALL" :	return acsd.allConsultSearch(csd);
		case "RG" :return acsd.regularConsultSearch(csd);
		case "MK" :return acsd.marketingConsultSearch(csd);
		default : return acsd.specificMkConsultSearch(condition);
		//특정 마케팅 코드로 스케줄을 조회하는 기능 (화면단에서 특정 마케팅 스케줄 선택시 해당 마케팅상담코드를 condition으로 넘겨줌
    	}
    }

    public void executeConsult(Consult c)
    {
    	acsd.executeConsult(c);
    	
    }
    
}
