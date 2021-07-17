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
    	String today = date.toString().replace("-", "");
    	//현재 날짜를 구함.
    	
    	int l = date.lengthOfMonth();
    	String last = String.valueOf(l);
    	String a = today.substring(0, today.length()-2);
    	String lastDayOfMonth = a + last;
    	//현재날짜의 월 말일을 구함
    	
    	System.out.println(lastDayOfMonth);
    	HashMap<String, String> hm = new HashMap<String,String>();
    	hm.put("sDate", today);
    	hm.put("fDate", lastDayOfMonth);
    	hm.put("emp_id", s.getEmp_id());
    	return esd.empSchedule(hm);// 현재날짜보다 스케줄종료일이 늦거나, 스케줄 시작일이 월 말일 보다 빠른 경우의 직원 스케줄을 가져옴
    }

    public List<Schedule> deptSchedule(Schedule s){
    	
    	
    	
    	String dept_id = esd.getDept(s);//직원의 부서아이디를 구해옴
    	s.setSchedule_dept(dept_id);
    	System.out.println("부서:"+s.getSchedule_dept());
    	//(없앨수 있을 듯)
    	
    	
    	
    	LocalDate date = LocalDate.now();
    	String today = date.toString().replace("-", "");
    	System.out.println(today);
    	//현재 날짜를 구함
    	int l = date.lengthOfMonth();
    	String last = String.valueOf(l);
    	
    	String a = today.substring(0, today.length()-2);
    	String lastDayOfMonth = a + last;//해당월의 말일을 구함
    	System.out.println("말일:"+lastDayOfMonth);
    	//부서아이디와 현재날짜 해당월의 말일로 스케줄을 검색함.
    	HashMap<String, String> hm = new HashMap<String,String>();
    	hm.put("sDate", today);
    	hm.put("fDate", lastDayOfMonth);
    	hm.put("schedule_dept", s.getSchedule_dept());
    	
    	return esd.deptSchedule(hm); // 현재날짜보다 스케줄종료일이 늦거나, 스케줄 시작일이 월 말일 보다 빠른 경우의 부서스케줄을 가져옴
    }
    public List<Consult> rgConsultSchedule(Schedule s){
    	//오늘의 우수고객상담 스케줄을 가져옴
    	LocalDate date = LocalDate.now();
    	String today = date.toString().replace("-", "");
    	return esd.regularConSchedule(today);
    }
    public List<Consult> mkConsultSchedule(Schedule s){
    	//오늘의 마케팅고객상담 스케줄을 가져옴
    	LocalDate date = LocalDate.now();
    	String today = date.toString().replace("-", "");
    	return esd.marketingConSchedule(today);
    }
}
