package com.kh.pugis.service.consulting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.pugis.service.consulting.domain.Consult;
import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
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
    	
		model.addAttribute("mkConList", acss.getMKConsult());
		
        return "service/consulting/searchconsult";
    }
    @RequestMapping(value = "/do")
    public String ConsultSearch(Model model, String condition, @RequestParam("start") String start_date,@RequestParam("finish") String finish_date)
    {
    	
    	//condition = "전체";//검색조건 임시 설정
    	//start_date = "20210208";
    	//finish_date = "20210209"; 
    	//선택된날짜를 받아서 객체에 담는다.
    	ConsultScheduleDate rsd = new ConsultScheduleDate();
    	rsd.setStart_date(start_date);
    	rsd.setFinish_date(finish_date);
    	
    	//선택자를 통해 검색 조건을 구분한다.(전체 상담을 날짜 기준으로만 선택하거나/우수 고객상담만을 날짜기준으로 / 마케팅 상담만을 행사 기준으로 선택하거나) 
    	// 마케팅 행사 종류를 선택해서 검색할 경우, 날짜가 필요한가? 주어지는 기간 내에서 선택 가능하게 하면 될듯.
	    	
    	model.addAttribute("consultList", acss.consultSearch(condition, rsd));
    	
	   
    	
    	//날짜름 담고, 선택자에 따른 스케줄조회 메소드 3개 중 하나 호출
    	
    	//ajax로 스케줄 조회 결과 리턴
    	return "service/consulting/consultList_back";
    }
    @RequestMapping(value = "/execute",produces = "application/text; charset=utf8")
    @ResponseBody
    public String executeConsult(Model model, @RequestParam("id") String consult_schedule_id, @RequestParam("content") String consult_content  )
    {	
    	
    	Consult c = new Consult();
    	c.setConsult_schedule_id(consult_schedule_id);
    	c.setConsult_content(consult_content);
    	//해당 스케줄의 스케줄 아이디와 입력한 내용을 받아온다.
    	acss.executeConsult(c);
    	//db에 해당 내용을 update하는 메소드 호출
    	//ajax로 update결과를 돌려줌
    	return "상담내용 저장 완료";
    }

    
}
