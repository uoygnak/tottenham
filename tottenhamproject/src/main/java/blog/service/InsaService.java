package blog.service;

import java.util.List;

import blog.vo.InsaVO;
import blog.vo.SearchCriteria;

public interface InsaService {
	// 게시물 작성
	public void write(InsaVO insaVO) throws Exception;
	
	// 게시물 목록 조회
	public List<InsaVO> list(SearchCriteria scri) throws Exception;

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 게시물 조회
	public InsaVO read(int bno) throws Exception;
	
	// 게시물 수정
	public void update(InsaVO insaVO) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
}
