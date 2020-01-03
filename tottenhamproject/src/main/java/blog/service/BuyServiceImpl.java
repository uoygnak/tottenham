package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.BuyDAO;
import blog.vo.BuyVO;
import blog.vo.SearchCriteria;

@Service
public class BuyServiceImpl implements BuyService {
	
	@Inject
	private BuyDAO dao;
    
	// 게시물 작성
	@Override
	public void write(BuyVO buyVO) throws Exception {
		dao.write(buyVO);
	}
    
	// 게시물 목록 조회
	@Override
	public List<BuyVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
    
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
    
	// 게시물 읽기
	@Override
	public BuyVO read(int bno) throws Exception {
		return dao.read(bno);
	}
    
	// 게시물 업데이트
	@Override
	public void update(BuyVO buyVO) throws Exception {
		dao.update(buyVO);
	}
    
	// 게시물 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

}
