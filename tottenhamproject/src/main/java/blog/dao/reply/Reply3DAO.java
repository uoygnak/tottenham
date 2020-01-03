package blog.dao.reply;

import java.util.List;

import blog.vo.reply.Reply3VO;


public interface Reply3DAO {
	
	// 댓글 조회
		public List<Reply3VO> readReply(int bno) throws Exception;
		
		// 댓글 작성
		public void writdReply(Reply3VO vo) throws Exception;
		
		// 댓글 수정
		public void updateReply(Reply3VO vo) throws Exception;
		
		// 댓글 삭제
		public void deleteReply(Reply3VO vo) throws Exception;
		
		// 선택된 댓글 조회
		public Reply3VO selectReply(int rno) throws Exception;

}
