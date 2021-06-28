// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CommuteServiceImpl.java

package com.kh.pugis.service.consulting.service;

import com.kh.pugis.service.consulting.dao.CommuteDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CommuteServiceImpl
    implements CommuteService
{
	 @Autowired
	 CommuteDao cd;
    public CommuteServiceImpl()
    {
    }

    public void startWork()
    {
        cd.startWork();
    }

    public void leaveWork()
    {
    }

    public void commuteHistory()
    {
    }
   
}
