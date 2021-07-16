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
    public String empMain(Model model, @RequestParam("id") String emp_id)
    {	//직원 로그인시 호출되는 컨트롤러.세션에 저장됐던 로그인한 emp_id 전달받음.
    	// 화면에 출력될 직원정보, 직원스케줄, 부서스케줄 데이터를 직원 메인페이지로 리턴
		Employee e = new Employee();
		e.setEmp_id(emp_id);
		
		Schedule s = new Schedule();
		s.setEmp_id(emp_id);
		
		System.out.println("호출됨");
		System.out.println("테스트");
		System.out.println("리턴값:"+eis.empInfoSummary(e).getEmp_name());
		
        model.addAttribute("empSummary", eis.empInfoSummary(e));
        model.addAttribute("scheduleList", ess.empSchedule(s)); //직원스케줄 가져와서 화면 호출시 출력하도록 보내줌
      model.addAttribute("scheduleList", ess.deptSchedule(s)); //부서스케줄 가져오기  화면 호출시 출력 보내줌
      model.addAttribute("rgConsultList", ess.rgConsultSchedule(s)); //상담스케줄 가져오기  화면 호출시 출력 보내줌
      model.addAttribute("mkConsultList", ess.mkConsultSchedule(s)); //상담스케줄 가져오기  화면 호출시 출력 보내줌
  
      return "service/consulting/index";
    }
    
	@RequestMapping(value = "/specific")
    public void empInfoSpecific(Model model, @RequestParam("id") String emp_id)
    { //직원상세정보보기 버튼 클릭시 호출되는 컨트롤러
		Employee e = new Employee();
		e.setEmp_id(emp_id);
		
        model.addAttribute("empSpecific", eis.empInfoSpecific(e));
    }

   
}
