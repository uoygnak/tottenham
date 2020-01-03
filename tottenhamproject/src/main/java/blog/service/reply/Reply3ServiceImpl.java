package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.reply.Reply3DAO;
import blog.vo.reply.Reply3VO;
@Service
public class Reply3ServiceImpl implements Reply3Service {
	
	@Inject
	private Reply3DAO dao;


	@Override
	public List<Reply3VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writdReply(Reply3VO vo) throws Exception {
		dao.writdReply(vo);

	}

	@Override
	public void updateReply(Reply3VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply3VO vo) throws Exception {
		dao.deleteReply(vo);
	}

	@Override
	public Reply3VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
