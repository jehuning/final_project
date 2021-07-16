package com.kh.pugis.service.consulting.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.pugis.service.consulting.domain.Criteria;
import com.kh.pugis.service.consulting.domain.CustomerQuestion;
import com.kh.pugis.service.consulting.domain.CustomerQuestionReply;
import com.kh.pugis.service.consulting.domain.PageMaker;
import com.kh.pugis.service.consulting.domain.SearchCriteria;
import com.kh.pugis.service.consulting.service.CustomerQuestionListReplyService;
import com.kh.pugis.service.consulting.service.CustomerQuestionListService;

@Controller
@RequestMapping(value = "/qna")
public class CustomerQuestionListController {
	
	@Autowired
	CustomerQuestionListService cs;
	
	@Autowired
	CustomerQuestionListReplyService rs;
	// 게시글 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
	//	logger.info("list");
		
		model.addAttribute("list", cs.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(cs.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "service/consulting/qna";
		
	}
	
	// 게시글 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(CustomerQuestion cqVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
	//	logger.info("read");
		
		model.addAttribute("read", cs.read(cqVO.getReg_id()));
		model.addAttribute("scri", scri);
		
		List<CustomerQuestionReply> replyList = rs.readReply(cqVO.getReg_id());
		model.addAttribute("replyList", replyList);
		
		return "service/consulting/qnaview";
	}

	// 게시글 삭제
	@RequestMapping(value = "/delete", method = {RequestMethod.POST, RequestMethod.GET})
	public String delete(CustomerQuestion cqVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
	//	logger.info("delete");
		
		System.out.println("삭제");
		
		cs.delete(cqVO.getReg_id());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/qna/list";
	}
	
	//댓글 작성
	@RequestMapping(value="/replyWrite", method = {RequestMethod.POST, RequestMethod.GET})
	public String replyWrite(CustomerQuestionReply cqrVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
	//	logger.info("reply Write");
		
		rs.writeReply(cqrVO);
		
		rttr.addAttribute("reg_id", cqrVO.getReg_id());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/qna/readView";
	}

	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = {RequestMethod.POST, RequestMethod.GET})
	public String replyDelete(@RequestParam(value="reply_id") int reply_id, CustomerQuestionReply cqrVO, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
	//	logger.info("reply Write");
		
		rs.deleteReply(reply_id);
		
		rttr.addAttribute("reg_id", cqrVO.getReg_id());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/qna/readView";
	}

}