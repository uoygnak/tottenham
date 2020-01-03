package blog.dao.reply;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



import blog.vo.reply.Reply6VO;
@Repository
public class Reply6DAOImpl implements Reply6DAO {

	@Inject SqlSession sql;
	
	@Override
	public List<Reply6VO> readReply(int bno) throws Exception {
		return sql.selectList("reply6Mapper.readReply", bno);
	}

	@Override
	public void writdReply(Reply6VO vo) throws Exception {
		sql.insert("reply6Mapper.writeReply", vo);

	}

	@Override
	public void updateReply(Reply6VO vo) throws Exception {
		sql.update("reply6Mapper.updateReply", vo);

	}

	@Override
	public void deleteReply(Reply6VO vo) throws Exception {
		sql.delete("reply6Mapper.deleteReply", vo);

	}

	@Override
	public Reply6VO selectReply(int rno) throws Exception {
		return sql.selectOne("reply6Mapper.selectReply", rno);
	}

}
