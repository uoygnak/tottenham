package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.InsaVO;
import blog.vo.SearchCriteria;
@Repository
public class InsaDAOImpl implements InsaDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(InsaVO insaVO) throws Exception {
		sqlSession.insert("insaMapper.insert", insaVO);

	}

	@Override
	public List<InsaVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("insaMapper.listPage", scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("insaMapper.listCount", scri);
	}

	@Override
	public InsaVO read(int bno) throws Exception {
		return sqlSession.selectOne("insaMapper.read", bno);
	}

	@Override
	public void update(InsaVO insaVO) throws Exception {
		sqlSession.update("insaMapper.update", insaVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("insaMapper.delete", bno);

	}

}
