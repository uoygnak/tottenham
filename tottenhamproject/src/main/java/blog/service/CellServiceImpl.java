package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import blog.dao.CellDAO;
import blog.vo.CellVO;
import blog.vo.SearchCriteria;

@Service
public class CellServiceImpl implements CellService {
	
	@Inject
	private CellDAO dao;
	
    // 판매글 작성
	@Override
	public void write(CellVO cellVO) throws Exception {
		dao.write(cellVO);

	}
    
	//판매글 목록
	@Override
	public List<CellVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}
    
	//판매글 글 개수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}
    
	// 판매글 일기
	@Override
	public CellVO read(int bno) throws Exception {
		return dao.read(bno);
	}
    
	// 판매글 수정
	@Override
	public void update(CellVO cellVO) throws Exception {
		dao.update(cellVO);

	}
    
	// 판매글 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

}
