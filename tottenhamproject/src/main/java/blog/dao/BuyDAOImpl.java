package blog.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import blog.vo.BuyVO;
import blog.vo.SearchCriteria;

@Repository
public class BuyDAOImpl implements BuyDAO {
	
	@Inject
	private SqlSession sqlSession;
    
	// 구매글 작성
	@Override
	public void write(BuyVO buyVO) throws Exception {
		sqlSession.insert("buyMapper.insert", buyVO);
	}
	
    // 구매글 목록조회
	@Override
	public List<BuyVO> list(SearchCriteria scri) throws Exception {
		return sqlSession.selectList("buyMapper.listPage", scri);
	}
	
    // 구매글 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return sqlSession.selectOne("buyMapper.listCount", scri);
	}
    
	// 구매글 읽기 
	@Override
	public BuyVO read(int bno) throws Exception {
		return sqlSession.selectOne("buyMapper.read", bno);
	}
    
	// 구매글 수정
	@Override
	public void update(BuyVO buyVO) throws Exception {
		sqlSession.update("buyMapper.update", buyVO);

	}
    
	// 구매글 삭제
	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("buyMapper.delete", bno);

	}
	

	
}
