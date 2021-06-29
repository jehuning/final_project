// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RegularConsultService.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.domain.*;
import java.util.List;

public interface RegularConsultService
{

    public abstract List selectCustomer(CustomerInfo customerinfo, PageInfo pageinfo);

    public abstract PageMoveInfo CustomerPageMove(CustomerInfo customerinfo, PageInfo pageinfo);

    public abstract void saveSchedule(RegularConsultSelectDate rcsd, CustomerInfoListDto cil);
}
