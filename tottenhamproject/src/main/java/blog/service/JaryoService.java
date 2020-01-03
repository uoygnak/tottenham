package blog.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;


import blog.vo.JaryoVO;
import blog.vo.SearchCriteria;

public interface JaryoService {
	
	// 게시글 작성
		public void write(JaryoVO jaryoVO, MultipartHttpServletRequest mpRequest) throws Exception;

		// 게시물 목록 조회
		public List<JaryoVO> list(SearchCriteria scri) throws Exception;
		
		// 게시물 총 갯수
		public int listCount(SearchCriteria scri) throws Exception;
		
		// 게시물 조회
		public JaryoVO read(int bno) throws Exception;
		
		// 게시물 수정
		public void update(JaryoVO jaryoVO) throws Exception;
		
		// 게시물 삭제
		public void delete(int bno) throws Exception;
		
		// 첨부파일 조회
		public List<Map<String, Object>> selectFileList(int bno) throws Exception;
		
		// 첨부파일 다운
		public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;

}
