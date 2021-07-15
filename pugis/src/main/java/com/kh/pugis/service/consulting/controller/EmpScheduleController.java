package com.kh.pugis.service.consulting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.EmpScheduleService;



@Controller
@RequestMapping(value = "/Schedule")
public class EmpScheduleController
{

	@Autowired 
	EmpScheduleService ess;
	
	@RequestMapping(value = "/calendar")
	public void scheduleCalendar(){
		//달력의 월을 이동 했을 때 호출..
		
		ess.scheduleCalendar();
	}
	@RequestMapping(value = "/emp")
	public void empSchedule(Model model,HttpServletRequest req){
		 String emp_id = req.getParameter("emp_id");
		
	}
	@RequestMapping(value = "/dep")
	public void deptSchedule(Model model,HttpServletRequest req){
		
		
	}
	
	
}
