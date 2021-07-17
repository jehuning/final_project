package com.kh.pugis.service.consulting.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.pugis.service.consulting.domain.Commute;
import com.kh.pugis.service.consulting.service.CommuteService;

@Controller
@RequestMapping(value = "/commute")
public class CommuteController
{
	@Autowired
	CommuteService cs;

    @RequestMapping(value = "/start")
    @ResponseBody
    public String startWork(HttpServletRequest req, Model model, @RequestParam("id") String emp_id, 
    						@RequestParam("start") String start_time){//출근 버튼
    	//String start_time = req.getParameter("start_time");
       // String emp_id = req.getParameter("emp_id");
    	Commute c = new Commute();
    	c.setStart_time(start_time);
    	c.setEmp_id(emp_id);
    	cs.startWork(c);
    	HttpSession session = req.getSession();
    	session.setAttribute("start_time", start_time);
    	return "성공";
    }
    @RequestMapping(value = "/leave")
    @ResponseBody
    public String leaveWork(HttpServletRequest req, Model model, @RequestParam("id") String emp_id, 
			@RequestParam("leave") String leave_time){//퇴근 버튼
    	//String leave_time = req.getParameter("leave_time");
       // String emp_id = req.getParameter("emp_id");
        Commute c = new Commute();
    	c.setLeave_time(leave_time);
    	c.setEmp_id(emp_id);
    	cs.leaveWork(c);
    	HttpSession session = req.getSession();
    	session.setAttribute("leave_time", leave_time);
    	//Ajax로 데이터 주고 받을 경우 리턴처리 어떻게 하는지 검색필요
    	return "성공";
    }
    @RequestMapping(value = "/history")
    public String commuteHistory(Model model, @RequestParam("id") String emp_id){//출퇴근 기록 상세조회 버튼
    	//일자별 조회 기능 추가 할 지 여부
    	//일단은 현재날짜부터 5일전까지 조회하는 기능
    	//String emp_id = req.getParameter("emp_id");
    	Commute c = new Commute();
     	c.setEmp_id(emp_id);
     	
     	List<Commute> chl = new ArrayList<Commute>();
     	chl = cs.commuteHistory(c);
     	 model.addAttribute("commuteList", chl);
     	 //새로 띄울 팝업창으로 리턴.
     	 return "service/consulting/commute_pop";
    }

   
}
