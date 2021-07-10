package com.kh.pugis.service.consulting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pugis.service.consulting.service.AllConsultSearchService;

@Controller
@RequestMapping(value = "/consultsearch")
public class AllConsultSearchController
{
	@Autowired
	AllConsultSearchService acss;
	@RequestMapping(value = "/main")
    public String printMain(HttpServletRequest req, Model model)
    {	//전체 고객상담 조회 메뉴 선택시 호출됨. 마케팅행사리스트 정보 담아서 메인페이지로 이동
    	
		
        return "service/consulting/searchallconsult";
    }
    @RequestMapping(value = "/all")
    public void allConsultSearch()
    {
    }
    @RequestMapping(value = "/execute")
    public void executeConsult()
    {
    }

    
}
