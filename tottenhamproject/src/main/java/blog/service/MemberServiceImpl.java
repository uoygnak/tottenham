package blog.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.dao.MemberDAO;
import blog.vo.Criteria;
import blog.vo.MemberVO;
import blog.vo.SearchCriteria;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO dao;

	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}

	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	// 회원정보업데이트
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		dao.memberUpdate(vo);

	}

	// 회원 탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		dao.memberDelete(vo);

	}

	// 회원탈퇴 패스워드 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = dao.passChk(vo);
		return result;
	}

	// 아이디 중복체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}

	// 회원정보조회 ㅋ
	@Override
	public List<MemberVO> memberList(SearchCriteria scri) throws Exception {
		return dao.memberList(scri);
	}

	// 관리자 버튼한방 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}

	// 회원수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		return dao.listCount(scri);
	}

}