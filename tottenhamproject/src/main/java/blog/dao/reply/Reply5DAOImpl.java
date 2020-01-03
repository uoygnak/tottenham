package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import blog.vo.reply.Reply5VO;
@Repository
public class Reply5DAOImpl implements Reply5DAO {

	@Inject SqlSession sql;
	
	@Override
	public List<Reply5VO> readReply(int bno) throws Exception {
		return sql.selectList("reply5Mapper.readReply", bno);
	}

	@Override
	public void writdReply(Reply5VO vo) throws Exception {
		sql.insert("reply5Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply5VO vo) throws Exception {
		sql.update("reply5Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply5VO vo) throws Exception {
		sql.delete("reply5Mapper.deleteReply", vo);

	}

	@Override
	public Reply5VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply5Mapper.selectReply", rno);
	}

}
