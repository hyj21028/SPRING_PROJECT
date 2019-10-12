package com.teamPjt.teamPtop.service;

import com.teamPjt.teamPtop.domain.memberVO;

public interface SignUpService {
	
	//아이디 중복 체크
	public int idCheck(String id);
	
	//회원 가입
	public void signUp(memberVO vo);
	
	//회원 정보 수정
	public boolean memberRevise(memberVO vo);
	
	//회원 정보 삭제
	public boolean withdraw(int mno);

	
}