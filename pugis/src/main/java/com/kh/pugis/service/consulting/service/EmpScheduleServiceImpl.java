// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EmpScheduleServiceImpl.java

package com.kh.pugis.service.consulting.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.EmpScheduleDao;

@Service
@Transactional
public class EmpScheduleServiceImpl
    implements EmpScheduleService
{
	@Autowired
	 EmpScheduleDao esd;
    public EmpScheduleServiceImpl()
    {
    }

    public void scheduleCalendar()
    {
        esd.scheduleCalendar();
    }

    public void empSchedule()
    {
    }

    public void depSchedule()
    {
    }

   
}
