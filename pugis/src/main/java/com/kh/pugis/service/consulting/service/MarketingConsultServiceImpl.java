// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketingConsultServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.MarketingConsultDao;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.CustomerInfo;
import com.kh.pugis.service.consulting.domain.PageInfo;
import com.kh.pugis.service.consulting.domain.PageMoveInfo;
import com.kh.pugis.service.consulting.utils.CalcWorkDay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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


    public List<CustomerInfo> selectCustomer(PageInfo pi, int selectSize)
    {
        int currentPage = pi.getCurrentPage();
        int pageListSize = pi.getPageListSize();
        System.out.println("한페이지 출력수"+pageListSize);
        int totalPage = (selectSize-1) / pageListSize + 1;
        //전체 조회 개수에 따른 페이지수 산출
        
        //전체 조회 개수 만큼 디비에서 가져옴.
       ArrayList<CustomerInfo> al =  (ArrayList<CustomerInfo>) mcd.selectCustomer(selectSize);
       System.out.println("디비 조회:" +al.size());
        HashMap<String,Object> hm = new HashMap<String,Object>();
        if(totalPage != currentPage)
        { 
            int pageBegin = (currentPage - 1) * pageListSize + 1;
            int pageEnd = pageBegin + (pageListSize - 1);
            List<CustomerInfo> subList = al.subList(pageBegin-1,pageEnd);
            return subList;
        } else
        { //마지막 페이지일때
        	int pageBegin = (currentPage - 1) * pageListSize + 1;
        	 int pageEnd = selectSize;
        	 List<CustomerInfo> subList = al.subList(pageBegin-1,pageEnd);
             return subList;
        }
    }
    public PageMoveInfo CustomerPageMove(PageInfo pi, int selectSize){
    	PageMoveInfo pmi = new PageMoveInfo();
        int totalPage = 0;
        int currentPage = 0;
        int pageListSize = 0;
     
        
     
        pmi.setSelectedSize(selectSize);
        System.out.println("전체조회개수"+selectSize);
        
        pageListSize = pi.getPageListSize();
        if(selectSize%pageListSize==0){
        	 totalPage = selectSize / pageListSize;
        }else{
        	 totalPage = selectSize / pageListSize + 1;
        }
        
        pmi.setTotalPage(totalPage);
        System.out.println((new StringBuilder("\uCD1D\uD398\uC774\uC9C0:")).append(totalPage).toString());
        int pageListInterval = 5;
        currentPage = pi.getCurrentPage();
        System.out.println((new StringBuilder("\uD604\uC7AC\uD398\uC774\uC9C0:")).append(currentPage).toString());
        int pageNumfirst = ((currentPage - 1) / pageListInterval) * pageListInterval + 1;
        System.out.println((new StringBuilder("\uAD6C\uAC04\uCCAB\uBC88\uD638:")).append(pageNumfirst).toString());
        int pageNumlast = 0;
        if((currentPage-1) / pageListInterval != totalPage / pageListInterval)
            pageNumlast = (pageNumfirst - 1) + pageListInterval;
        else
            pageNumlast = (pageNumfirst - 1) + totalPage % pageListInterval;
        
        System.out.println((new StringBuilder("\uAD6C\uAC04\uB05D\uBC88\uD638:")).append(pageNumlast).toString());
       
        Boolean prev = Boolean.valueOf(pageNumfirst != 1);
        Boolean next = Boolean.valueOf((currentPage-1) / pageListInterval != (totalPage-1) / pageListInterval);
       
        pmi.setPageNumfirst(pageNumfirst);
        pmi.setPageNumlast(pageNumlast);
        
       System.out.println(next);
        
        pmi.setPrevPage(prev);
        pmi.setNextPage(next);
        return pmi;
    }
    public String saveSchedule(ConsultScheduleDate rcsd, List<String> cList)
    {	
List<String> workDayList = new ArrayList<String>();
    	
    	String start = rcsd.getStart_date().replace("-", "");
    	String finish = rcsd.getFinish_date().replace("-", "");
    	String consult_code = rcsd.getConsult_code();
    	CalcWorkDay cwd = new CalcWorkDay();
    	workDayList = cwd.calcWorkDay(start,finish);
    	int wn = workDayList.size();//선택된 날짜 중 근무일수
    	System.out.println("근무일수"+wn);
    	
    	
    	int pn = cList.size(); //선택된 사람 수
    	System.out.println("사람수"+pn);
    	
    	int rdPerDay = pn/wn; //하루당 스케줄 배치 기본 인원수
    	System.out.println("하루당 스케줄 배치 기본 인원수:"+rdPerDay);
    	
    	int extraRd = pn%wn; //하루에 1명씩 더 배치되는 날의 수
    	
		List<HashMap<String,String>> scheduleList = new ArrayList<HashMap<String,String>>();
    		
		for(int i = 0; i < wn; i++){//근무일 하루씩 i 증가
			
		
			if(0 <= i && i <extraRd){//하루에 기본인원수+1 씩 배치되는 날 구간
				for(int j = i*(rdPerDay+1);j<(i+1)*(rdPerDay+1);j++){
					HashMap<String,String> scheduleMap = new HashMap<String,String>();
					scheduleMap.put("scheduleDay",workDayList.get(i));
					scheduleMap.put("customerId",cList.get(j));

					if(scheduleMap.size()!=0){//아무도 배치되지 않는 날(ex.근무일은 N인데 총스케줄등록인원은 N명이하일 때 발생)을 제외하고 스케쥴 등록 리스트에 저장
						scheduleList.add(scheduleMap);
					}
				}
			}else{//하루에 기본인원수 씩 배치되는 날 구간
				for(int j = extraRd*(rdPerDay+1)+(i-extraRd)*(rdPerDay);j<extraRd*(rdPerDay+1)+(i-extraRd+1)*(rdPerDay);j++){
					HashMap<String,String> scheduleMap = new HashMap<String,String>();
					scheduleMap.put("scheduleDay",workDayList.get(i));
					scheduleMap.put("customerId",cList.get(j));
					
					if(scheduleMap.size()!=0){//아무도 배치되지 않는 날(ex.근무일은 N인데 총스케줄등록인원은 N명이하일 때 발생)을 제외하고 스케쥴 등록 리스트에 저장
						scheduleList.add(scheduleMap);
					}
				}
			}
			
			
		}
		System.out.println("스케줄입력리스트길이"+scheduleList.size());
    
		String result = mcd.saveSchedule(scheduleList,consult_code);
    	
    	
    	return result;
    }
  
}
