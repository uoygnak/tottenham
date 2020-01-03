package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;



import blog.dao.reply.Reply6DAO;

import blog.vo.reply.Reply6VO;
@Service
public class Reply6ServiceImpl implements Reply6Service {
	
	@Inject
	private Reply6DAO dao;


	@Override
	public List<Reply6VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writdReply(Reply6VO vo) throws Exception {
		dao.writdReply(vo);

	}

	@Override
	public void updateReply(Reply6VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply6VO vo) throws Exception {
		dao.deleteReply(vo);
	}

	@Override
	public Reply6VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
