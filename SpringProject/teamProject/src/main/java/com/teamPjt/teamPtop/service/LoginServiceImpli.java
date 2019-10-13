package com.teamPjt.teamPtop.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teamPjt.teamPtop.domain.memberVO;
import com.teamPjt.teamPtop.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.java.Log;


@Service
@Log
@AllArgsConstructor
public class MemberServiceImpli implements MemberService {
	
	@Autowired
	 MemberMapper mMapper;
	
	
	@Override
	public int loginCheck(memberVO vo, HttpSession session) { //회원체크
		// TODO Auto-generated method stub
		int result = mMapper.loginCheck(vo);
		log.info("result vo ........... "+vo);
		memberVO voo = new memberVO();
		voo = mMapper.loginMember(vo);
		
		if(result == 1) { //true일 경우 세션등록
			
			session.setAttribute("nickname", voo.getNickname());
			session.setAttribute("id", voo.getId());
			session.setAttribute("pw", voo.getPassword());
		}
		System.out.println("session........."+voo);
		return result;
	}


	@Override
	public void logout(HttpSession session) { //로그아웃 , 세션 정보 초기화
		// TODO Auto-generated method stub
		log.info("logout....");
		session.invalidate();
		
	}

}
