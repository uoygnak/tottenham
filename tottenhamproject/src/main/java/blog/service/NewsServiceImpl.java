package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import blog.dao.BoardDAO;
import blog.dao.NewsDAO;
import blog.vo.NewsVO;
import blog.vo.SearchCriteria;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Inject
	private NewsDAO dao;

	@Override
	public void write(NewsVO newsVO) throws Exception {
		dao.write(newsVO);

	}

	@Override
	public List<NewsVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public NewsVO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(NewsVO newsVO) throws Exception {
		dao.update(newsVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

}
