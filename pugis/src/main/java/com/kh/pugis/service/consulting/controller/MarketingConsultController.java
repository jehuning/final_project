package com.kh.pugis.service.consulting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.MarketingConsultService;




@Controller
@RequestMapping(value = "/mconsult")
public class MarketingConsultController
{

	@Autowired
	MarketingConsultService mcs;
	
	
	@RequestMapping(value = "/main")
    public String printMain(HttpServletRequest req, Model model)
    {	//마케팅고객상담 스케줄 메뉴 선택시 호출됨. 마케팅행사리스트 정보 담아서 메인페이지로 이동
    	
		//마케팅행사 목록 db에서 조회하는 메소드
		
        return "service/consulting/mconsult";
    }
	
	@RequestMapping(value = "/event")
	public void selectEvent(){
		
	}
	@RequestMapping(value = "/selectcustomer")
	public void selectCustomer(){
		//우수고객상담과 거의 유사하게 구현하면 됨
		mcs.selectCustomer();
	}
	@RequestMapping(value = "/save")
	public void saveSchedule(){
		//우수고객상담과 거의 유사하게 구현하면 됨
	}
}
