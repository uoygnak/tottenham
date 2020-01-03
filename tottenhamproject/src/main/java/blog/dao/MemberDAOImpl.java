package blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;


import blog.vo.MemberVO;
import blog.vo.SearchCriteria;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject SqlSession sql;
	
	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}
    // 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne("memberMapper.login", vo);
	}
    // 회원정보수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		 sql.update("memberMapper.memberUpdate", vo);
		
	}
	
	// 회원탈퇴
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sql.delete("memberMapper.memberDelete", vo);
		
	}
	
	// 회원 탈퇴 비밀번호 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.passChk", vo);
		return result;
	}
	
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
	
	// 회원 목록 조회
	@Override
	public List<MemberVO> memberList() throws Exception {
		return sql.selectList("memberMapper.memberList");
	}
	
	// 관리자 버튼한번 삭제
	@Override
	public void delete(int bno) throws Exception {
		sql.delete("memberMapper.delete", bno);
	}
	

	
	
	
	

	
}