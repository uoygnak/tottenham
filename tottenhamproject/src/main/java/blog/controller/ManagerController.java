package blog.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import blog.service.MemberService;
import blog.vo.BoardVO;
import blog.vo.MemberVO;
import blog.vo.PageMaker;
import blog.vo.SearchCriteria;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
private static final Logger logger = LoggerFactory.getLogger(ManagerController.class);
	
	@Inject
	MemberService memberService;
	
		// 회원 목록 조회
		@RequestMapping(value = "/memberlist" , method = RequestMethod.GET)
		public String memberList(Model model) throws Exception{
			List<MemberVO> list = memberService.memberList();
			model.addAttribute("list", list);
			return "manager/memberlist";
			
		}
		
		// 회원 삭제
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public String delete(MemberVO memberVO) throws Exception{
			logger.info("delete");
			memberService.delete(memberVO.getBno());
			
			return "redirect:/manager/memberlist";
		}
		
		

}
