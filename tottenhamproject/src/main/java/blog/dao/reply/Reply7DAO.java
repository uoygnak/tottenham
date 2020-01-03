package blog.dao.reply;

import java.util.List;




import blog.vo.reply.Reply7VO;


public interface Reply7DAO {
	
	// 댓글 조회
		public List<Reply7VO> readReply(int bno) throws Exception;
		
		// 댓글 작성
		public void writeReply(Reply7VO vo) throws Exception;
		
		// 댓글 수정
		public void updateReply(Reply7VO vo) throws Exception;
		
		// 댓글 삭제
		public void deleteReply(Reply7VO vo) throws Exception;
		
		// 선택된 댓글 조회
		public Reply7VO selectReply(int rno) throws Exception;

}
