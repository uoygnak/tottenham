package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import blog.dao.InsaDAO;
import blog.vo.InsaVO;
import blog.vo.SearchCriteria;
@Service
public class InsaServiceImpl implements InsaService {
	
	@Inject
	private InsaDAO dao;

	@Override
	public void write(InsaVO insaVO) throws Exception {
		dao.write(insaVO);

	}

	@Override
	public List<InsaVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public InsaVO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(InsaVO insaVO) throws Exception {
		dao.update(insaVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

}
