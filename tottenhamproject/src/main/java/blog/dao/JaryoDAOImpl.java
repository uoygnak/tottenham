package blog.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.JaryoVO;
import blog.vo.SearchCriteria;
@Repository
public class JaryoDAOImpl implements JaryoDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void write(JaryoVO jaryoVO) throws Exception {
		sqlSession.insert("jaryoMapper.insert", jaryoVO);

	}

	@Override
	public List<JaryoVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("jaryoMapper.listPage", scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("jaryoMapper.listCount", scri);
	}

	@Override
	public JaryoVO read(int bno) throws Exception {
		return sqlSession.selectOne("jaryoMapper.read", bno);
	}

	@Override
	public void update(JaryoVO jaryoVO) throws Exception {
		sqlSession.update("jaryoMapper.update", jaryoVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("jaryoMapper.delete", bno);

	}

	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("jaryoMapper.insertFile", map);

	}

	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return sqlSession.selectList("jaryoMapper.selectFileList", bno);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("jaryoMapper.selectFileInfo", map);
	}

}
