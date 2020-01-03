package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.reply.Reply7DAO;
import blog.vo.reply.Reply7VO;
@Service
public class Reply7ServiceImpl implements Reply7Service {
	
	@Inject
	private Reply7DAO dao;

	@Override
	public List<Reply7VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writeReply(Reply7VO vo) throws Exception {
		dao.writeReply(vo);

	}

	@Override
	public void updateReply(Reply7VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply7VO vo) throws Exception {
		dao.deleteReply(vo);

	}

	@Override
	public Reply7VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
