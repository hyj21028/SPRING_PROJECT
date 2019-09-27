package com.teamPjt.teamPtop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.memberVO;
import com.teamPjt.teamPtop.service.SignUpService;

import lombok.AllArgsConstructor;
import lombok.extern.java.Log;

@Controller
@Log	
@AllArgsConstructor
@RequestMapping("/member")
public class SignUpController {

	@Autowired
	private SignUpService service;
	
	
	 
	@GetMapping(value ="/SignUp")
	public String signUpForm(){
		return "/member/signUp";
	}
	
	
	@PostMapping(value = "/signUp")
	public String signUp(@ModelAttribute("member") memberVO vo) {
		
		service.signUp(vo);
		
		return "redirect:/board/main";
	}
	
	//produces는 ajax가 데이터 넘겨받을때 깨짐 방지
	@GetMapping(value = "idCheck",consumes ="application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	//public String idCheck(@ModelAttribute("vo") memberVO vo, Model model)throws Exception{
	public ResponseEntity<String> idCheck(String id) {
		
		int result=service.idCheck(id);
		return result == 1? new ResponseEntity<>("success",HttpStatus.OK) : 
            new ResponseEntity<>("nosuccess",HttpStatus.OK);
	}
	
	
	@PostMapping("/modify")
	public String modify(memberVO vo, RedirectAttributes rttr) {
		log.info("modify().."+vo);
		if(service.modify(vo)) {
			rttr.addFlashAttribute("mno",vo.getMno());
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:main";
	}
	
	@GetMapping("/remove")
	public String remove(@RequestParam("mno") int mno, RedirectAttributes rttr) {
		log.info("remove()..."+mno);
		if(service.remove(mno)) {
			rttr.addFlashAttribute("mno", mno);
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:main";
		
	}
	
//	@DeleteMapping(value="/{mno}", produces = {MediaType.TEXT_PLAIN_VALUE})
//	public ResponseEntity<String> remove(@PathVariable("mno") int mno){
//		
//		log.info("remove"+mno);
//		return service.remove(mno)? new ResponseEntity<String>("success", HttpStatus.OK) : 
//            							new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}
//	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, 
//					value="/{mno}",
//					consumes = "application/json", 
//					produces = {MediaType.TEXT_PLAIN_VALUE})
//	public ResponseEntity<String> modify(@RequestBody memberVO vo, @PathVariable("mno") int mno){
//		
//		vo.setMno(mno);
//		log.info("rno: "+mno);
//		log.info("modify: "+vo);
//		return service.modify(vo) ==1? new ResponseEntity<>("success", HttpStatus.OK) : 
//            							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}
}