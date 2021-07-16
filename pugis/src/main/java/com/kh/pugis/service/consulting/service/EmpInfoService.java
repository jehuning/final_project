// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EmpInfoService.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.domain.Employee;

public interface EmpInfoService
{

    public abstract Employee empInfoSummary(Employee e);

    public abstract Employee empInfoSpecific(Employee e);
}
