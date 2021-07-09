package com.kh.pugis.service.consulting.controller;

import com.kh.pugis.service.consulting.domain.Employee;
import com.kh.pugis.service.consulting.domain.Schedule;
import com.kh.pugis.service.consulting.service.EmpInfoService;
import com.kh.pugis.service.consulting.service.EmpScheduleService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/emp")
public class EmpInfoController
{
	@Autowired
	EmpInfoService eis;
	@Autowired
	EmpScheduleService ess;
    public EmpInfoController() { }
    
	@RequestMapping(value = "/main")
    public String empInfoSummary(Model model,@RequestParam("emp_id") String emp_id)
    {	
		Employee e = new Employee();
		e.setEmp_id(emp_id);
		Schedule s = new Schedule();
		s.setEmp_id(emp_id);
		
		System.out.println("호출됨");

	
        model.addAttribute("empSummary", eis.empInfoSummary(e));
//        model.addAttribute("scheduleList", ess.empSchedule(s));

        return "service/consulting/index";
    }
	@RequestMapping(value = "/specific")
    public void empInfoSpecific()
    {
		
		
		
    }

   
}
