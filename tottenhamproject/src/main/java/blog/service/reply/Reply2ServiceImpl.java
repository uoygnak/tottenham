package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.reply.Reply2DAO;
import blog.dao.reply.ReplyDAO;
import blog.vo.reply.Reply2VO;
@Service
public class Reply2ServiceImpl implements Reply2Service {
	
	@Inject
	private Reply2DAO dao;


	@Override
	public List<Reply2VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writdReply(Reply2VO vo) throws Exception {
		dao.writdReply(vo);

	}

	@Override
	public void updateReply(Reply2VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply2VO vo) throws Exception {
		dao.deleteReply(vo);
	}

	@Override
	public Reply2VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
