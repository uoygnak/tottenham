package blog.dao.reply;

import java.util.List;

import blog.vo.reply.Reply2VO;
import blog.vo.reply.ReplyVO;

public interface Reply2DAO {
	
	// 댓글 조회
		public List<Reply2VO> readReply(int bno) throws Exception;
		
		// 댓글 작성
		public void writdReply(Reply2VO vo) throws Exception;
		
		// 댓글 수정
		public void updateReply(Reply2VO vo) throws Exception;
		
		// 댓글 삭제
		public void deleteReply(Reply2VO vo) throws Exception;
		
		// 선택된 댓글 조회
		public Reply2VO selectReply(int rno) throws Exception;

}
