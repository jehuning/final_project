package com.kh.pugis.service.consulting.controller;

import com.kh.pugis.service.consulting.domain.*;
import com.kh.pugis.service.consulting.service.RegularConsultService;


import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/rconsult")
public class RegularConsultController
{
	@Autowired
    RegularConsultService rcs;

    public RegularConsultController()
    {
    }
    @RequestMapping(value = "/main")
    public String printMain(HttpServletRequest req, Model model)
    {	//우수고객상담 스케줄 메뉴 선택시 호출됨. 메인페이지로 이동
    	
        return "service/consulting/rconsult";
    }
	@RequestMapping(value = "/selectcustomer")
    public String selectCustomer(HttpServletRequest req, Model model)
    {	//고객조회버튼 클릭시 ajax통해 호출. 고객조회 조건 넘겨받아서 db조회
		
        int currentPage = Integer.parseInt(req.getParameter("currentPage"));
       
		int pageListSize = 2; //페이지당 출력 개수
        String address = "1"; //고객주소
        String grade = "1"; //고객등급
        
        CustomerInfo ci = new CustomerInfo();
        PageInfo pi = new PageInfo();
        ci.setCustomer_address(address);
        ci.setCustomer_grade(grade);
        pi.setPageListSize(pageListSize);
        pi.setCurrentPage(currentPage);
        ArrayList al = (ArrayList)rcs.selectCustomer(ci, pi);
        System.out.println(((CustomerInfo)al.get(0)).getCustomer_id());
        PageMoveInfo pmi = rcs.CustomerPageMove(ci, pi);
        pmi.setPi(pi);
        pmi.setCi(ci);
        model.addAttribute("customerList", al);
        model.addAttribute("pageList", pmi);
        
        //db에서 조회된 고객리스트 ajax로 리턴
        return "service/consulting/customerList_back";
    }
	@RequestMapping(value = "/schedule")
    public String saveSchedule(HttpServletRequest req, Model model, CustomerInfoListDto cil)
    {	//스케줄 생성버튼 클릭 시 ajax를 통해 호출
		
		String start_date = (String)req.getParameter("start_date");
		String finish_date = (String)req.getParameter("finish_date");
		
        RegularConsultSelectDate rcsd = new RegularConsultSelectDate();
        rcsd.setStart_date("2021-02-08");
        rcsd.setFinish_date("2021-03-05");
        System.out.println((new StringBuilder("\uACE0\uAC1D\uC544\uC774\uB514")).append(((CustomerInfo)cil.getSelecetedId().get(0)).getCustomer_id()).toString());
        System.out.println(cil.getSelecetedId().size());
        
        String result = rcs.saveSchedule(rcsd, cil);
        System.out.println(result);
        //ajax로 스케줄 생성 여부를 문자열로 리턴
        return "service/consulting/customerList_back";
    }

}
