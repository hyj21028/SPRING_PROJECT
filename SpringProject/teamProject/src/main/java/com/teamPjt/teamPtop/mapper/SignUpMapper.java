package com.teamPjt.teamPtop.mapper;

import com.teamPjt.teamPtop.domain.memberVO;

public interface SignUpMapper {
		//아이디 체크
		public int idCheck(String id);
		
		//회원가입
		public void signUp(memberVO vo);
		
		//회원정보 수정
		public int update(memberVO vo);
		
		//회원정보 삭제
		public int delete(int mno);
}
