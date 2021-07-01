// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RegularConsultServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.RegularConsultDao;
import com.kh.pugis.service.consulting.domain.*;
import com.kh.pugis.service.consulting.utils.CalcWorkDay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RegularConsultServiceImpl
    implements RegularConsultService
{	
	 @Autowired
	  RegularConsultDao rcd;

    public RegularConsultServiceImpl()
    {
    }

    public List<CustomerInfo> selectCustomer(CustomerInfo ci, PageInfo pi)
    {
        int selectedSize = 0;
        selectedSize = rcd.countSelect(ci);
        int currentPage = pi.getCurrentPage();
        int pageListSize = pi.getPageListSize();
        int totalPage = selectedSize / pageListSize + 1;
        HashMap<String,Object> hm = new HashMap<String,Object>();
        if(totalPage != currentPage)
        {
            int pageBegin = (currentPage - 1) * pageListSize + 1;
            int pageEnd = pageBegin + (pageListSize - 1);
            hm.put("customer_address", ci.getCustomer_address());
            hm.put("customer_grade", ci.getCustomer_grade());
            hm.put("page_begin", Integer.valueOf(pageBegin));
            hm.put("page_end", Integer.valueOf(pageEnd));
        } else
        {
            int pageBegin = (currentPage - 1) * pageListSize + 1;
            int pageEnd = selectedSize;
            hm.put("customer_address", ci.getCustomer_address());
            hm.put("customer_grade", ci.getCustomer_grade());
            hm.put("page_begin", Integer.valueOf(pageBegin));
            hm.put("page_end", Integer.valueOf(pageEnd));
        }
        return rcd.selectCustomer(hm);
    }

    public PageMoveInfo CustomerPageMove(CustomerInfo ci, PageInfo pi)
    {
        PageMoveInfo pmi = new PageMoveInfo();
        int totalPage = 0;
        int currentPage = 0;
        int pageListSize = 0;
        int selectedSize = 0;
        selectedSize = rcd.countSelect(ci);
        pageListSize = pi.getPageListSize();
        totalPage = selectedSize / pageListSize + 1;
        pmi.setTotalPage(totalPage);
        System.out.println((new StringBuilder("\uCD1D\uD398\uC774\uC9C0:")).append(totalPage).toString());
        int pageListInterval = 5;
        currentPage = pi.getCurrentPage();
        System.out.println((new StringBuilder("\uD604\uC7AC\uD398\uC774\uC9C0:")).append(currentPage).toString());
        int pageNumfirst = ((currentPage - 1) / pageListInterval) * pageListInterval + 1;
        System.out.println((new StringBuilder("\uAD6C\uAC04\uCCAB\uBC88\uD638:")).append(pageNumfirst).toString());
        int pageNumlast = 0;
        if(currentPage / pageListInterval != totalPage / pageListInterval)
            pageNumlast = (pageNumfirst - 1) + pageListInterval;
        else
            pageNumlast = (pageNumfirst - 1) + totalPage % pageListInterval;
        System.out.println((new StringBuilder("\uAD6C\uAC04\uB05D\uBC88\uD638:")).append(pageNumlast).toString());
        Boolean prev = Boolean.valueOf(pageNumfirst != 1);
        Boolean next = Boolean.valueOf(currentPage / pageListInterval != totalPage / pageListInterval);
        pmi.setPageNumfirst(pageNumfirst);
        pmi.setPageNumlast(pageNumlast);
        pmi.setPrevPage(prev.booleanValue());
        pmi.setNextPage(next.booleanValue());
        return pmi;
    }

    public void saveSchedule(RegularConsultSelectDate rcsd, CustomerInfoListDto cil)
    {
    	RegularConsult rc = new RegularConsult();
    	Random rd = new Random();
    	List<String> workDayList = new ArrayList<String>();
    	
    	String start = rcsd.getStart_date();
    	String finish = rcsd.getFinish_date();
    	
    	CalcWorkDay cwd = new CalcWorkDay();
    	workDayList = cwd.calcWorkDay(start,finish);
    	int wn = workDayList.size();//선택된 날짜 중 근무일수
    	
    	List<String> cList = new ArrayList<String>();
    	for(CustomerInfo cId: cil.getSelecetedId()){
    		cList.add(cId.getCustomer_id());
    	}
    	int pn = cList.size(); //선택된 사람 수
    	int rdPerDay = pn/wn; //하루당 스케줄 배치 기본 인원수
    	int extraRd = pn%wn; //하루에 1명씩 더 배치되는 날의 수
    	if(extraRd==0){
    		extraRd=wn;
    	}
    	List<Integer> rdI = new ArrayList<Integer>();
    	for(String day :workDayList){
    			if(rdI.size()==0){
    				rdI.add(rd.nextInt(pn));
    			}else{
    				Boolean chk = false;
    				int n;
    				do{
    					n=rd.nextInt(pn);
    				}while(rdI.contains(n));
    				rdI.add(n);
				}
		}
    		HashMap<String,List<String>> scheduleMap = new HashMap<String,List<String>>();
		for(int i = 0; i < wn; i++){
			List<String> l = new ArrayList<String>();
			//	0				~	(rdPerDay+1)-1
			//	1*(rdPerDay+1)	~ 	2*(rdPerDay+1)-1
			//	0<= i <extraRd
			if(0 <= i && i <extraRd){
				for(int j = i*(rdPerDay+1);j<(i+1)*(rdPerDay+1);j++){
					l.add(cList.get(rdI.get(j)));
				}
			}else{
				for(int j = extraRd*(rdPerDay+1)+(i-extraRd)*(rdPerDay);j<extraRd*(rdPerDay+1)+(i-extraRd+1)*(rdPerDay);j++){
					l.add(cList.get(rdI.get(j)));
				}
			}
			
			scheduleMap.put(workDayList.get(i), l); // list로 바꿔야함.
		}
    
   
    }
}
