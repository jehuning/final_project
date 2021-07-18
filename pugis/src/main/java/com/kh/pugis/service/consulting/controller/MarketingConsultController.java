package com.kh.pugis.service.consulting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.pugis.service.consulting.domain.ConsultScheduleDate;
import com.kh.pugis.service.consulting.domain.CustomerInfo;
import com.kh.pugis.service.consulting.domain.PageInfo;
import com.kh.pugis.service.consulting.domain.PageMoveInfo;
import com.kh.pugis.service.consulting.service.AllConsultSearchService;
import com.kh.pugis.service.consulting.service.MarketingConsultService;




@Controller
@RequestMapping(value = "/mconsult")
public class MarketingConsultController
{

	@Autowired
	MarketingConsultService mcs;
	@Autowired
	AllConsultSearchService acss;
	
	@RequestMapping(value = "/main")
    public String printMain(HttpServletRequest req, Model model)
    {	//마케팅고객상담 스케줄 메뉴 선택시 호출됨. 마케팅행사리스트 정보 담아서 메인페이지로 이동
		model.addAttribute("mkConList", acss.getMKConsult());
		//마케팅행사 목록 db에서 조회하는 메소드
		
        return "service/consulting/marketing";
    }
	
	@RequestMapping(value = "/customer")
	public String selectCustomer(Model model,@RequestParam(value="p", defaultValue="1") int currentPage,
    		@RequestParam(value="plsize") int pageListSize, 
    		@RequestParam(value="selectSize")int selectSize){
		//우수고객상담과 달리 랜덤으로 고객 선정하여 리스트 반환, 랜덤으로 선정할 고객수:selectSize
		
	
        PageInfo pi = new PageInfo();
        pi.setPageListSize(pageListSize);
        pi.setCurrentPage(currentPage);
        
		
		model.addAttribute("customerList", mcs.selectCustomer(pi,selectSize));
		
		PageMoveInfo pmi = mcs.CustomerPageMove(pi,selectSize);
        pmi.setPi(pi);
		
        
        model.addAttribute("pageList", pmi);
		
		return "service/consulting/customerList_back";
	}
	@RequestMapping(value = "/save")
	@ResponseBody
	public String saveSchedule(Model model,@RequestParam("start") String start_date,
    		@RequestParam("finish") String finish_date , 
    		@RequestParam(value="cList[]") List<String> cList, @RequestParam("mk_code") String consult_code){
		//날짜와 마케팅상담코드, 고객리스트를 넘겨주어 디비에 스케줄 생성
		ConsultScheduleDate rcsd = new ConsultScheduleDate();
        rcsd.setStart_date(start_date);
        rcsd.setFinish_date(finish_date);
        rcsd.setConsult_code(consult_code);
        
        System.out.println(cList.size());
        
        String result = mcs.saveSchedule(rcsd, cList);//스케줄날짜와 화면에서 선택되어 넘어온 고객 아이디 리스트를 메소드에 전달. 스케줄 생성 여부를 문자열로 반환
        System.out.println(result);
		
		return "스케줄 생성에 성공했습니다.";
	}
}
