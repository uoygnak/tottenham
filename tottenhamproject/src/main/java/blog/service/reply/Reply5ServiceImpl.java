package blog.service.reply;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import blog.dao.reply.Reply5DAO;

import blog.vo.reply.Reply5VO;
@Service
public class Reply5ServiceImpl implements Reply5Service {
	
	@Inject
	private Reply5DAO dao;


	@Override
	public List<Reply5VO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writdReply(Reply5VO vo) throws Exception {
		dao.writdReply(vo);

	}

	@Override
	public void updateReply(Reply5VO vo) throws Exception {
		dao.updateReply(vo);

	}

	@Override
	public void deleteReply(Reply5VO vo) throws Exception {
		dao.deleteReply(vo);
	}

	@Override
	public Reply5VO selectReply(int rno) throws Exception {
		return dao.selectReply(rno);
	}

}
