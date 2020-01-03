package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.BoardVO;
import blog.vo.QaVO;
import blog.vo.SearchCriteria;
@Repository
public class QaDAOImpl implements QaDAO {

	@Inject
	private SqlSession sqlSession;
	
	// 게시글 작성
	@Override
	public void write(QaVO qaVO) throws Exception {
		sqlSession.insert("qaMapper.insert", qaVO);
		
	}

	// 게시물 목록 조회
	@Override
	public List<QaVO> list(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("qaMapper.listPage", scri);
	}
	
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("qaMapper.listCount", scri);
	}

	
	
	// 게시물 조회
	@Override
	public QaVO read(int bno) throws Exception {
		
		return sqlSession.selectOne("qaMapper.read", bno);
	}

	// 게시물 수정
	@Override
	public void update(QaVO qaVO) throws Exception {
		
		sqlSession.update("qaMapper.update", qaVO);
	}

	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("qaMapper.delete", bno);
	}


}
