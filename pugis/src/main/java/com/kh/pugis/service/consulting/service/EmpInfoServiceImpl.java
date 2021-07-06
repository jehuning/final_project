// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EmpInfoServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.EmpInfoDao;
import com.kh.pugis.service.consulting.domain.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EmpInfoServiceImpl
    implements EmpInfoService
{
	@Autowired
    EmpInfoDao ed;
    public EmpInfoServiceImpl()
    {
    }

    public Employee empInfoSummary(Employee e)
    {
        return ed.empInfoSummary(e);
    }

    public Employee empInfoSpecific()
    {
        return ed.empInfoSpecific();
    }
    
}
