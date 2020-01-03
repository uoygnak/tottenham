package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.reply.Reply7VO;
@Repository
public class Reply7DAOImpl implements Reply7DAO {
	
	@Inject SqlSession sql;

	@Override
	public List<Reply7VO> readReply(int bno) throws Exception {
		return sql.selectList("reply7Mapper.readReply", bno);
	}

	@Override
	public void writeReply(Reply7VO vo) throws Exception {
		sql.insert("reply7Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply7VO vo) throws Exception {
		sql.update("reply7Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply7VO vo) throws Exception {
		sql.delete("reply7Mapper.deleteReply", vo);

	}

	@Override
	public Reply7VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply7Mapper.selectReply", rno);
	}

}
