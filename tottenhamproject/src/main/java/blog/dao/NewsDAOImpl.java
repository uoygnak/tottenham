package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.NewsVO;
import blog.vo.SearchCriteria;
@Repository
public class NewsDAOImpl implements NewsDAO {
	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(NewsVO newsVO) throws Exception {
		sqlSession.insert("newsMapper.insert", newsVO);

	}

	@Override
	public List<NewsVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("newsMapper.listPage", scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("newsMapper.listCount", scri);
	}

	@Override
	public NewsVO read(int bno) throws Exception {
		return sqlSession.selectOne("newsMapper.read", bno);
	}

	@Override
	public void update(NewsVO newsVO) throws Exception {
		sqlSession.update("newsMapper.update", newsVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("newsMapper.delete", bno);

	}

}
