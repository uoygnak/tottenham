package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.reply.Reply4DAO;
import blog.vo.reply.Reply4VO;
@Service
public class Reply4ServiceImpl implements Reply4Service {
	
	@Inject
	private Reply4DAO dao;


	@Override
	public List<Reply4VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writdReply(Reply4VO vo) throws Exception {
		dao.writdReply(vo);

	}

	@Override
	public void updateReply(Reply4VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply4VO vo) throws Exception {
		dao.deleteReply(vo);
	}

	@Override
	public Reply4VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
