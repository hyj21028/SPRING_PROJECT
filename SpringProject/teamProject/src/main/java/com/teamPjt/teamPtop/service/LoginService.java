package com.teamPjt.teamPtop.service;

import javax.servlet.http.HttpSession;

import com.teamPjt.teamPtop.domain.memberVO;

public interface MemberService {
	public int loginCheck(memberVO vo, HttpSession session); // 로그인 체크

	public void logout(HttpSession session);//로그아웃
}
