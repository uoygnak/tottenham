package blog.service;

import java.util.List;

import blog.vo.CellVO;
import blog.vo.SearchCriteria;

public interface CellService {

	// 게시글 작성
	public void write(CellVO cellVO) throws Exception;

	// 게시물 목록 조회
	public List<CellVO> list(SearchCriteria scri) throws Exception;

	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;

	// 게시물 조회
	public CellVO read(int bno) throws Exception;

	// 게시물 수정
	public void update(CellVO cellVO) throws Exception;

	// 게시물 삭제
	public void delete(int bno) throws Exception;

}
