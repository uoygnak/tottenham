package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.reply.Reply2VO;
@Repository
public class Reply2DAOImpl implements Reply2DAO {

	@Inject SqlSession sql;
	
	@Override
	public List<Reply2VO> readReply(int bno) throws Exception {
		return sql.selectList("reply2Mapper.readReply", bno);
	}

	@Override
	public void writdReply(Reply2VO vo) throws Exception {
		sql.insert("reply2Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply2VO vo) throws Exception {
		sql.update("reply2Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply2VO vo) throws Exception {
		sql.delete("reply2Mapper.deleteReply", vo);

	}

	@Override
	public Reply2VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply2Mapper.selectReply", rno);
	}

}
