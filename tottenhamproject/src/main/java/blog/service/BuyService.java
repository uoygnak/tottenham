package blog.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import blog.vo.BuyVO;
import blog.vo.SearchCriteria;

public interface BuyService {

	// 게시글 작성
	public void write(BuyVO buyVO) throws Exception;

	// 게시물 목록 조회
	public List<BuyVO> list(SearchCriteria scri) throws Exception;

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;

	// 게시물 조회
	public BuyVO read(int bno) throws Exception;

	// 게시물 수정
	public void update(BuyVO buyVO) throws Exception;

	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	

	

}
