package blog.dao;

import java.util.List;

import blog.vo.Criteria;
import blog.vo.MemberVO;
import blog.vo.SearchCriteria;

public interface MemberDAO {

	    // 회원가입
		public void register(MemberVO vo) throws Exception;
		
		// 로그인 
		public MemberVO login(MemberVO vo) throws Exception;
		
		// 회원정보수정 
		public void memberUpdate(MemberVO vo) throws Exception;
		
		// 회원탈퇴
		public void memberDelete(MemberVO vo) throws Exception;
		
	    // 탈퇴 비밀번호 체크 
		public int passChk(MemberVO vo) throws Exception;
		
		// 아이디 중복체크 
		public int idChk(MemberVO vo) throws Exception;
		
		// 회원목록 조회
		public List<MemberVO> memberList(SearchCriteria scri) throws Exception;
		
		// 회원수 
		public int listCount(SearchCriteria scri) throws Exception;
		
		// 관리자 버튼 한번으로 삭제
		public void delete(int bno) throws Exception;
		
	
		
}
