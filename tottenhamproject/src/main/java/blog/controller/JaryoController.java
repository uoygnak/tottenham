package blog.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import blog.service.JaryoService;
import blog.service.reply.Reply7Service;


import blog.vo.JaryoVO;
import blog.vo.PageMaker;
import blog.vo.SearchCriteria;

import blog.vo.reply.Reply7VO;

@Controller
@RequestMapping("/jaryo/*")
public class JaryoController {
	
private static final Logger logger = LoggerFactory.getLogger(JaryoController.class);
	
	@Inject
	JaryoService service;
	
	@Inject
	Reply7Service reply7Service;
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
		
	}
	
	// 게시판 글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(JaryoVO jaryoVO, MultipartHttpServletRequest mpRequest) throws Exception{
		logger.info("write");
		
		service.write(jaryoVO, mpRequest);
		
		return "redirect:/jaryo/list";
	}
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("list");
		
		model.addAttribute("list", service.list(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "jaryo/list";
		
	}
	
	// 게시판 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(JaryoVO jaryoVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read", service.read(jaryoVO.getBno()));
		model.addAttribute("scri", scri);
		
		List<Reply7VO> replyList = reply7Service.readReply(jaryoVO.getBno());
		model.addAttribute("replyList", replyList);
		
		List<Map<String, Object>> fileList = service.selectFileList(jaryoVO.getBno());
		model.addAttribute("file", fileList);
		
		return "jaryo/readView";
	}
	
	// 게시판 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(JaryoVO jaryoVO, @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update", service.read(jaryoVO.getBno()));
		model.addAttribute("scri", scri);
		
		return "jaryo/updateView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(JaryoVO jaryoVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("update");
		
		service.update(jaryoVO);
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/jaryo/list";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(JaryoVO jaryoVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception{
		logger.info("delete");
		
		service.delete(jaryoVO.getBno());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/jaryo/list";
	}
	
	
	//댓글 작성
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(Reply7VO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		reply7Service.writeReply(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/jaryo/readView";
	}
	
	// 파일다운 
	@RequestMapping(value="/fileDown")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception{
		Map<String, Object> resultMap = service.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\mp\\file\\"+storedFileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
	
	
	// 댓글 수정 GET
		@RequestMapping(value = "/replyUpdateView", method = RequestMethod.GET)
		public String replyUpdateView(Reply7VO vo, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");

			model.addAttribute("replyUpdate", reply7Service.selectReply(vo.getRno()));
			model.addAttribute("scri", scri);

			return "jaryo/replyUpdateView";
		}

		// 댓글 수정 POST
		@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
		public String replyUpdate(Reply7VO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");

			reply7Service.updateReply(vo);

			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());

			return "redirect:/jaryo/readView";
		}

		// 댓글 삭제 GET
		@RequestMapping(value = "/replyDeleteView", method = RequestMethod.GET)
		public String replyDeleteView(Reply7VO vo, SearchCriteria scri, Model model) throws Exception {
			logger.info("reply Write");

			model.addAttribute("replyDelete", reply7Service.selectReply(vo.getRno()));
			model.addAttribute("scri", scri);

			return "jaryo/replyDeleteView";
		}

		// 댓글 삭제
		@RequestMapping(value = "/replyDelete", method = RequestMethod.POST)
		public String replyDelete(Reply7VO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			logger.info("reply Write");

			reply7Service.deleteReply(vo);

			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());

			return "redirect:/jaryo/readView";
		}

}
