// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RegularConsultService.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.domain.*;
import java.util.List;

public interface RegularConsultService
{

    List selectCustomer(CustomerInfo customerinfo, PageInfo pageinfo);

     PageMoveInfo CustomerPageMove(CustomerInfo customerinfo, PageInfo pageinfo);

     String saveSchedule(ConsultScheduleDate rcsd, CustomerInfoListDto cil);
}
