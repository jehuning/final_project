// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   EmpScheduleServiceImpl.java

package com.kh.pugis.service.consulting.service;


import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pugis.service.consulting.dao.EmpScheduleDao;
import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.Schedule;

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

    public List<Schedule> empSchedule(Schedule s)
    {
    	LocalDate date = LocalDate.now();
    	String schedule_date = date.toString();
    	s.setSchedule_date(schedule_date);
    	//현재 날짜를 구함.
    	int l = date.lengthOfMonth();
    	String last = String.valueOf(l);
    	String a = schedule_date.substring(0, schedule_date.length()-2);
    	String lastDayOfMonth = a + last;
    	
    	System.out.println(lastDayOfMonth);
    	HashMap<String, String> hm = new HashMap<String,String>();
    	hm.put("sDate", schedule_date);
    	hm.put("fDate", lastDayOfMonth);
    	hm.put("emp_id", s.getEmp_id());
    	return esd.empSchedule(hm);
    }

    public List<Schedule> deptSchedule(Schedule s){
    	String today = "";
    	esd.regularConSchedule(today);
    	esd.marketingConSchedule(today);
    	//현재날짜의 상담스케줄을 구해오고, 스케줄테이블에 추가
    	
    	String dept_id = esd.getDept(s);//직원의 부서아이디를 구해옴
    	s.setSchedule_dept(dept_id);
    	
    	//부서아이디와 현재날짜 해당월의 말일로 스케줄을 검색함.
    	
    	
    	LocalDate date = LocalDate.now();
    	String schedule_date = date.toString();
    	//현재 날짜를 구함
    	int l = date.lengthOfMonth();
    	String last = String.valueOf(l);
    	
    	String a = schedule_date.substring(0, schedule_date.length()-2);
    	String lastDayOfMonth = a + last;//해당월의 말일을 구함
    	
    	HashMap<String, String> hm = new HashMap<String,String>();
    	hm.put("sDate", schedule_date);
    	hm.put("fDate", lastDayOfMonth);
    	hm.put("schedule_dept", s.getSchedule_dept());
    	
    	return esd.deptSchedule(hm);
    }
    public List<Consult> rgConsultSchedule(Schedule s){
    	LocalDate date = LocalDate.now();
    	String schedule_date = date.toString();
    	return esd.regularConSchedule(schedule_date);
    }
    public List<Consult> mkConsultSchedule(Schedule s){
    	LocalDate date = LocalDate.now();
    	String schedule_date = date.toString();
    	return esd.marketingConSchedule(schedule_date);
    }
}
