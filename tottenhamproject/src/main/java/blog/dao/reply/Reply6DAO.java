package blog.dao.reply;

import java.util.List;



import blog.vo.reply.Reply6VO;


public interface Reply6DAO {
	
	// 댓글 조회
		public List<Reply6VO> readReply(int bno) throws Exception;
		
		// 댓글 작성
		public void writdReply(Reply6VO vo) throws Exception;
		
		// 댓글 수정
		public void updateReply(Reply6VO vo) throws Exception;
		
		// 댓글 삭제
		public void deleteReply(Reply6VO vo) throws Exception;
		
		// 선택된 댓글 조회
		public Reply6VO selectReply(int rno) throws Exception;

}
