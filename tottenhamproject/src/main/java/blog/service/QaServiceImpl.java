package blog.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import blog.dao.QaDAO;

import blog.vo.Criteria;
import blog.vo.QaVO;
import blog.vo.SearchCriteria;

@Service
public class QaServiceImpl implements QaService {
	
	@Inject
	private QaDAO dao;

	@Override
	public void write(QaVO qaVO) throws Exception {
		dao.write(qaVO);
		
	}

	@Override
	public List<QaVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public QaVO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(QaVO qaVO) throws Exception {
		dao.update(qaVO);
		
	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
		
	}




}















