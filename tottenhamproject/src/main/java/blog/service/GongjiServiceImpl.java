package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.GongjiDAO;

import blog.vo.GongjiVO;
import blog.vo.SearchCriteria;
@Service
public class GongjiServiceImpl implements GongjiService {
	
	@Inject
	private GongjiDAO dao;

	@Override
	public void write(GongjiVO gongjiVO) throws Exception {
		dao.write(gongjiVO);

	}

	@Override
	public List<GongjiVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public GongjiVO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(GongjiVO gongjiVO) throws Exception {
		dao.update(gongjiVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

}
