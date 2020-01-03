package blog.dao.reply;

import java.util.List;

import blog.vo.reply.Reply4VO;


public interface Reply4DAO {
	
	// 댓글 조회
		public List<Reply4VO> readReply(int bno) throws Exception;
		
		// 댓글 작성
		public void writdReply(Reply4VO vo) throws Exception;
		
		// 댓글 수정
		public void updateReply(Reply4VO vo) throws Exception;
		
		// 댓글 삭제
		public void deleteReply(Reply4VO vo) throws Exception;
		
		// 선택된 댓글 조회
		public Reply4VO selectReply(int rno) throws Exception;

}
