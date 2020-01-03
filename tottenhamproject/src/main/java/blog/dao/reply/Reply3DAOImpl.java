package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.reply.Reply2VO;
import blog.vo.reply.Reply3VO;
@Repository
public class Reply3DAOImpl implements Reply3DAO {

	@Inject SqlSession sql;
	
	@Override
	public List<Reply3VO> readReply(int bno) throws Exception {
		return sql.selectList("reply3Mapper.readReply", bno);
	}

	@Override
	public void writdReply(Reply3VO vo) throws Exception {
		sql.insert("reply3Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply3VO vo) throws Exception {
		sql.update("reply3Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply3VO vo) throws Exception {
		sql.delete("reply3Mapper.deleteReply", vo);

	}

	@Override
	public Reply3VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply3Mapper.selectReply", rno);
	}

}
