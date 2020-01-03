package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.CellVO;
import blog.vo.SearchCriteria;
@Repository
public class CellDAOImpl implements CellDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(CellVO cellVO) throws Exception {
		sqlSession.insert("cellMapper.insert", cellVO);

	}

	@Override
	public List<CellVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("cellMapper.listPage", scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("cellMapper.listCount", scri);
	}

	@Override
	public CellVO read(int bno) throws Exception {
		return sqlSession.selectOne("cellMapper.read", bno);
	}

	@Override
	public void update(CellVO cellVO) throws Exception {
		sqlSession.update("cellMapper.update", cellVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("cellMapper.delete", bno);

	}

}
