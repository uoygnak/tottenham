package blog.dao;

import java.util.List;


import blog.vo.NewsVO;
import blog.vo.SearchCriteria;

public interface NewsDAO {
	
	   // 게시글 작성
		public void write(NewsVO newsVO) throws Exception;
		
		// 게시물 목록 조회
		public List<NewsVO> list(SearchCriteria scri) throws Exception;

		// 게시물 총 갯수
		public int listCount(SearchCriteria scri) throws Exception;
		
		// 게시물 조회
		public NewsVO read(int bno) throws Exception;
		
		// 게시물 수정
		public void update(NewsVO newsVO) throws Exception;
		
		// 게시물 삭제
		public void delete(int bno) throws Exception;

}
