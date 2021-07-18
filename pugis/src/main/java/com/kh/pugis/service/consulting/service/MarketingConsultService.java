// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketingConsultService.java

package com.kh.pugis.service.consulting.service;

import java.util.List;

import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.CustomerInfo;
import com.kh.pugis.service.consulting.domain.PageInfo;
import com.kh.pugis.service.consulting.domain.PageMoveInfo;

public interface MarketingConsultService
{


	List<CustomerInfo> selectCustomer(PageInfo pageinfo, int selectSize);
	 PageMoveInfo CustomerPageMove(PageInfo pageinfo, int selectSize);
    String saveSchedule(ConsultScheduleDate rcsd, List<String> cList);
}
