package blog.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import blog.co.utill.FileUtils;
import blog.dao.BoardDAO;
import blog.dao.JaryoDAO;
import blog.vo.JaryoVO;
import blog.vo.SearchCriteria;

@Service
public class JaryoServiceImpl implements JaryoService {
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;

	@Inject
	private JaryoDAO dao;

	@Override
	public void write(JaryoVO jaryoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		dao.write(jaryoVO);
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(jaryoVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.insertFile(list.get(i)); 
		}

	}

	@Override
	public List<JaryoVO> list(SearchCriteria scri) throws Exception {
		return dao.list(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

	@Override
	public JaryoVO read(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void update(JaryoVO jaryoVO) throws Exception {
		dao.update(jaryoVO);

	}

	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);

	}

	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		return dao.selectFileList(bno);
	}

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		return dao.selectFileInfo(map);
	}

}
