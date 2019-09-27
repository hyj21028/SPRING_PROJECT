package com.teamPjt.teamPtop.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonArray;
import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.ReplyPageDTO;
import com.teamPjt.teamPtop.domain.boardVO;
import com.teamPjt.teamPtop.domain.ReplyVO;
import com.teamPjt.teamPtop.service.BoardService;
import com.teamPjt.teamPtop.service.BoardServiceImpl;
import com.teamPjt.teamPtop.service.ReplyService;
import com.teamPjt.teamPtop.service.ReplyServiceImpli;

import lombok.AllArgsConstructor;
import lombok.extern.java.Log;

@RestController
@RequestMapping("/reply")
@Log
@AllArgsConstructor
public class ReplyController {
	 ReplyService service;
	//댓글작성 ajax처리
	@PostMapping(value="/new",consumes ="application/json" , produces = {MediaType.TEXT_PLAIN_VALUE})
		public ResponseEntity<String> create(@RequestBody ReplyVO replyVO){
		
		System.out.println("replyer............"+replyVO.getReplyer());
			
	
			log.info("replyVO: "+replyVO);
			int insertCount = service.register(replyVO);
			log.info("reply insert count...." + insertCount);
			
		
		return insertCount == 1? new ResponseEntity<>("success",HttpStatus.OK) : 
			                     new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//댓글 전체 ajax처리
	@GetMapping(value="/replyList", produces= {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
		public ResponseEntity<List<ReplyVO>> getList(int bno){
			
			log.info("Reply Bno...."+bno );
			log.info("replyList ......."+service.getList(bno));
			
			return new ResponseEntity<>(service.getList(bno),HttpStatus.OK);
	}
//	
//	@GetMapping(value="/{rno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
//	public ResponseEntity<replyVO> get(@PathVariable("rno") int rno){
//		
//		log.info("get"+rno);
//		return new ResponseEntity<replyVO>(service.get(rno), HttpStatus.OK);
//	}
//	@PostMapping(value="/replydelete",consumes ="application/json" , produces = {MediaType.TEXT_PLAIN_VALUE})
//	public ResponseEntity<String> remove(@RequestBody ReplyVO replyVO){
//		
//		log.info("remove........."+replyVO);
//		int deleteConunt = service.remove(replyVO);
//		log.info("deleteConunt........." + deleteConunt);
//		return deleteConunt ==1? new ResponseEntity<>("success", HttpStatus.OK) : 
//            							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}

//	@RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, 
//					value="/{rno}",
//					consumes = "application/json", 
//					produces = {MediaType.TEXT_PLAIN_VALUE})
//	public ResponseEntity<String> modify(@RequestBody replyVO vo, @PathVariable("rno") int rno){
//		
//		vo.setRno(rno);
//		log.info("rno: "+rno);
//		log.info("modify: "+vo);
//		return service.modify(vo) ==1? new ResponseEntity<>("success", HttpStatus.OK) : 
//            							new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}

}


	

