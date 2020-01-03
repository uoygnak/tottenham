package blog.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import blog.service.GongjiService;
import blog.service.reply.ReplyService;
import blog.vo.GongjiVO;

import blog.vo.PageMaker;
import blog.vo.SearchCriteria;
import blog.vo.reply.ReplyVO;

@Controller
@RequestMapping("/gongji/*")
public class GongjiController {

private static final Logger logger = LoggerFactory.getLogger(GongjiController.class);
	
	@Inject
	GongjiService service;
	
	
	// 구매글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
	}
	
	// 구매글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(GongjiVO gongjiVO) throws Exception{
		logger.info("write");
		
		service.write(gongjiVO);
		
		return "redirect:/gongji/list";
	}
	
	// 구매글 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("list");
		
		model.addAttribute("list", service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "gongji/list";
		
	}
	
	// 구매글 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(GongjiVO gongjiVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read", service.read(gongjiVO.getBno()));
		model.addAttribute("scri", scri);
		
		
		
		return "gongji/readView";
	}
	
	// 게시판 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(GongjiVO gongjiVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update", service.read(gongjiVO.getBno()));
		model.addAttribute("scri", scri);
		
		return "gongji/updateView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(GongjiVO gongjiVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("update");
		
		service.update(gongjiVO);
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/gongji/list";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(GongjiVO gongjiVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("delete");
		
		service.delete(gongjiVO.getBno());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/gongji/list";
	}
	
	
	
	}



