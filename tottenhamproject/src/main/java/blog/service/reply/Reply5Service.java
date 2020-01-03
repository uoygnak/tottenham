package blog.service.reply;

import java.util.List;


import blog.vo.reply.Reply5VO;



public interface Reply5Service {
	//댓글 조회
		public List<Reply5VO> readReply(int bno) throws Exception;
		
		//댓글 작성
		public void writdReply(Reply5VO vo) throws Exception;
		
		//댓글 수정
		public void updateReply(Reply5VO vo) throws Exception;
		
		//댓글 삭제
		public void deleteReply(Reply5VO vo) throws Exception;
			
		//선택된 댓글 조회
		public Reply5VO selectReply(int rno) throws Exception;
}
