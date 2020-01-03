package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.GongjiVO;
import blog.vo.SearchCriteria;
@Repository
public class GongjiDAOImpl implements GongjiDAO {
	
	@Inject
	private SqlSession sqlSession;

	

	@Override
	public void write(GongjiVO gongjiVO) throws Exception {
		sqlSession.insert("gongjiMapper.insert", gongjiVO);
	}

	@Override
	public List<GongjiVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("gongjiMapper.listPage", scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("gongjiMapper.listCount", scri);
	}

	@Override
	public GongjiVO read(int bno) throws Exception {
		return sqlSession.selectOne("gongjiMapper.read", bno);
	}

	@Override
	public void update(GongjiVO gongjiVO) throws Exception {
		sqlSession.update("gongjiMapper.update", gongjiVO);
	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("gongjiMapper.delete", bno);

	}

}
