package blog.service;

import java.util.List;


import blog.vo.Criteria;
import blog.vo.QaVO;
import blog.vo.SearchCriteria;

public interface QaService {

	  // 게시글 작성
		public void write(QaVO qaVO) throws Exception;
		
		// 게시물 목록 조회
		public List<QaVO> list(SearchCriteria scri) throws Exception;

		// 게시물 총 갯수
		public int listCount(SearchCriteria scri) throws Exception;
		
		// 게시물 조회
		public QaVO read(int bno) throws Exception;
		
		// 게시물 수정
		public void update(QaVO QaVO) throws Exception;
		
		// 게시물 삭제
		public void delete(int bno) throws Exception;
}
