// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AllConsultSearchServiceImpl.java

package com.kh.pugis.service.consulting.service;



import com.kh.pugis.service.consulting.dao.AllConsultSearchDao;
import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.MarketingEventDate;

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
    public List<MarketingEventDate> getMKConsult(){
		
    	
    	
    	return acsd.getMKConsult();
    }
    public List<Consult> consultSearch(String condition,ConsultScheduleDate csd)
    {	switch (condition){
		case "ALL" : System.out.println("전체조회:"+condition);	return acsd.allConsultSearch(csd);
		case "RG" :System.out.println("우수:"+condition); return acsd.regularConsultSearch(csd);
		case "MK" :System.out.println("마케팅:"+condition); return acsd.marketingConsultSearch(csd);
		default : System.out.println("행사별:"+condition);return acsd.specificMkConsultSearch(condition);
		//특정 마케팅 코드로 스케줄을 조회하는 기능 (화면단에서 특정 마케팅 스케줄 선택시 해당 마케팅상담코드를 condition으로 넘겨줌
    	}
    }

    public void executeConsult(Consult c)
    {
    	acsd.executeConsult(c);
    	
    }
    
}
