package com.teamPjt.teamPtop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.teamPjt.teamPtop.domain.memberVO;
import com.teamPjt.teamPtop.service.MemberService;

import lombok.extern.java.Log;

@Log
@Controller // 클래스를 스프링에서 관리하는 컨르롤러 bean으로 생성
@RestController
@RequestMapping("/login")
public class LoginController {
	@Autowired
	 private MemberService memberService;

	// 로그인 폼 띄움
	@RequestMapping(value = "/login" )
	public String login() { // 로그인 페이지
		return "login"; // 로그인 폼 완성시 관련 쪽으로 이동
	}

	// 로그인 처리, 아이디와 패스워드가 맞는지 판별
	@GetMapping(value="/loginCheck" ,consumes ="application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> loginCheck(String id,String password, HttpSession session) {
		
		
		memberVO vo = new memberVO();
		vo.setId(id);
		vo.setPassword(password);
		int result = memberService.loginCheck(vo, session);
		System.out.println(result+"................................");
		return result == 1? new ResponseEntity<>("success",HttpStatus.OK) : 
            new ResponseEntity<>("nosuccess",HttpStatus.OK);
	}

	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//memberService.logout(session);
		session.invalidate();
		log.info("logout().....");
		
//		mav.setViewName("logout");
//		mav.addObject("msg", "로그아웃 완료");
		return "success";
	}

}
