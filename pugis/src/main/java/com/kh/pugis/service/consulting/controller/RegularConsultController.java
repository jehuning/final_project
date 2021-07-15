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
import org.springframework.web.bind.annotation.RequestParam;


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
    public String printMain()
    {	//우수고객상담 스케줄 메뉴 선택시 호출됨. 메인페이지로 이동
    	
    	
    	//페이지 호출 시 전체 상담 스케줄 리스트 정보를 넘겨줌.
    	
        return "service/consulting/regular";
    }
	@RequestMapping(value = "/customer")
    public String selectCustomer(Model model, 
    		@RequestParam(value="p", defaultValue="1") int currentPage,
    		@RequestParam(value="plsize") int pageListSize,
    		@RequestParam(value="address")  String address,
    		@RequestParam(value="grade" )  String grade)
		{//고객조회버튼 클릭시 ajax통해 호출. 고객조회 조건 넘겨받아서 db조회
		System.out.println("호출됨");
       
		//pageListSize = 5; //페이지당 출력 개수
        address = "1"; //고객주소
        //grade = "1"; //고객등급
        
        CustomerInfo ci = new CustomerInfo();
        PageInfo pi = new PageInfo();
        ci.setCustomer_address(address);
        ci.setCustomer_grade(grade);
        
        pi.setPageListSize(pageListSize);
        pi.setCurrentPage(currentPage);
        
        ArrayList<CustomerInfo> al = (ArrayList<CustomerInfo>) rcs.selectCustomer(ci, pi);
        
        
        PageMoveInfo pmi = rcs.CustomerPageMove(ci, pi);
        pmi.setPi(pi);
        pmi.setCi(ci);
        model.addAttribute("customerList", al);
        model.addAttribute("pageList", pmi);
        
        //db에서 조회된 고객리스트 ajax로 리턴
        return "service/consulting/customerList_back";
    }
	@RequestMapping(value = "/schedule")
    public String saveSchedule(Model model,@RequestParam("start") String start_date,@RequestParam("finish") String finish_date , CustomerInfoListDto cil)
    {	//스케줄 생성버튼 클릭 시 ajax를 통해 호출
		
//		String start_date = (String)req.getParameter("start_date");
//		String finish_date = (String)req.getParameter("finish_date");
		start_date ="2021-02-08";
		finish_date ="2021-03-05";
		
        ConsultScheduleDate rcsd = new ConsultScheduleDate();
        rcsd.setStart_date(start_date);
        rcsd.setFinish_date(finish_date);
        System.out.println((new StringBuilder("\uACE0\uAC1D\uC544\uC774\uB514")).append(((CustomerInfo)cil.getSelecetedId().get(0)).getCustomer_id()).toString());
        System.out.println(cil.getSelecetedId().size());
        
        String result = rcs.saveSchedule(rcsd, cil);//스케줄날짜와 화면에서 선택되어 넘어온 고객 아이디 리스트를 메소드에 전달. 스케줄 생성 여부를 문자열로 반환
        System.out.println(result);
        //ajax로 스케줄 생성 여부를 문자열로 리턴
        return "service/consulting/customerList_back";
    }

}
