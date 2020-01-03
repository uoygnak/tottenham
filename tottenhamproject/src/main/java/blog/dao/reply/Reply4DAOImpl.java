package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.reply.Reply4VO;
@Repository
public class Reply4DAOImpl implements Reply4DAO {

	@Inject SqlSession sql;
	
	@Override
	public List<Reply4VO> readReply(int bno) throws Exception {
		return sql.selectList("reply4Mapper.readReply", bno);
	}

	@Override
	public void writdReply(Reply4VO vo) throws Exception {
		sql.insert("reply4Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply4VO vo) throws Exception {
		sql.update("reply4Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply4VO vo) throws Exception {
		sql.delete("reply4Mapper.deleteReply", vo);

	}

	@Override
	public Reply4VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply4Mapper.selectReply", rno);
	}

}
