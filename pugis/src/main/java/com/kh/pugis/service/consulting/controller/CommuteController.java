package com.kh.pugis.service.consulting.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.domain.Commute;
import com.kh.pugis.service.consulting.service.CommuteService;

@Controller
@RequestMapping(value = "/commute")
public class CommuteController
{
	@Autowired
	CommuteService cs;

    @RequestMapping(value = "/start")
    public void startWork(Model model,HttpServletRequest req){//출근 버튼
    	String start_time = req.getParameter("start_time");
        String emp_id = req.getParameter("emp_id");
    	Commute c = new Commute();
    	c.setStart_time(start_time);
    	c.setEmp_id(emp_id);
    	cs.startWork(c);
    }
    @RequestMapping(value = "/leave")
    public void leaveWork(Model model,HttpServletRequest req){//퇴근 버튼
    	String leave_time = req.getParameter("leave_time");
        String emp_id = req.getParameter("emp_id");
        Commute c = new Commute();
    	c.setLeave_time(leave_time);
    	c.setEmp_id(emp_id);
    	cs.leaveWork(c);
    	//Ajax로 데이터 주고 받을 경우 리턴처리 어떻게 하는지 검색필요
    }
    @RequestMapping(value = "/history")
    public void commuteHistory(Model model,HttpServletRequest req){//출퇴근 기록 상세조회 버튼
    	//일자별 조회 기능 추가 할 지 여부
    	//일단은 현재날짜부터 5일전까지 조회하는 기능
    	String emp_id = req.getParameter("emp_id");
    	Commute c = new Commute();
     	c.setEmp_id(emp_id);
     	
     	List<Commute> chl = new ArrayList<Commute>();
     	chl = cs.commuteHistory(c);
     	 model.addAttribute("commuteList", chl);
     	 //새로 띄울 팝업창으로 리턴문 선언
    }

   
}
