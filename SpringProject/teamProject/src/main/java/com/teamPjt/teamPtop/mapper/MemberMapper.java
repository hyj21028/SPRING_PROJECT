package com.teamPjt.teamPtop.mapper;

import javax.servlet.http.HttpSession;

import com.teamPjt.teamPtop.domain.memberVO;

public interface MemberMapper {
	
	public int loginCheck(memberVO vo); // 로그인 체크
	public memberVO loginMember(memberVO vo);
	
	public void logout(HttpSession session); //로그아웃
}
