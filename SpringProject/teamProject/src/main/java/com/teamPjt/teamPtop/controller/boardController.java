package com.teamPjt.teamPtop.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.SaveFile;
import com.teamPjt.teamPtop.domain.boardVO;
import com.teamPjt.teamPtop.domain.pageDTO;
import com.teamPjt.teamPtop.domain.ReplyVO;
import com.teamPjt.teamPtop.service.BoardService;
import com.teamPjt.teamPtop.service.BoardServiceImpl;
import com.teamPjt.teamPtop.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.java.Log;

@Controller
@RequestMapping("/board")
@Log
public class boardController {
	@Setter(onMethod_=@Autowired)
	private BoardService service;
	@Setter(onMethod_=@Autowired)
	private ReplyService rservice;
	//파일경로
	private String uploadFolder="/Users/HwangC/Downloads/upload";
	
	//메인호출
	@RequestMapping("/main")
	public void list(Criteria cri,String category ,Model model) {
		System.out.println(category);
		log.info("list ...."+cri);
		
		
		if(category==null || category.equals("전체")) {
			model.addAttribute("list", service.getListAll(cri)); //서비스에서 getList불러오기
			model.addAttribute("pageMaker", new pageDTO(cri, service.getTotalCount(cri)));
		}
		else {
			model.addAttribute("list", service.getList(cri,category)); //서비스에서 getList불러오기
			model.addAttribute("pageMaker", new pageDTO(cri, service.getTotalCount(cri)));
		}

	}
//	@GetMapping("/list")
//	public void List(Criteria cri, Model model) {
//		log.info("list:" +cri);
//		model.addAttribute("list", service.getList(cri));
//		log.info("list"+service.getList(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri,service.getTotalCount(cri)));
//		log.info("page"+new PageDTO(cri,service.getTotalCount(cri)));
//	}
//	
	
	//메인호출
	@RequestMapping("/main/category")
	public String list2(String categoryname, Criteria cri,Model model) {
		System.out.println(categoryname);
		System.out.println(".........."+cri);

		model.addAttribute("list", service.getList(cri,categoryname)); //서비스에서 getList불러오기
		model.addAttribute("pageMaker", new pageDTO(cri, service.getTotalCount(cri)));

		return "/board/main";
	}

	
	
	//글작성 폼
	@GetMapping("/register")
	public void register() {
		log.info("register form");
	}
	//글작성후 처리
	@PostMapping("/register")
	public String register(MultipartFile[] uploadFile,
			@ModelAttribute("board") boardVO board) {
		log.info("board:"+board);
		
		//파일 서버저장 처리
		List<SaveFile> fileList=new ArrayList<SaveFile>();
		UUID uuid=UUID.randomUUID();
		for(MultipartFile multipartFile : uploadFile) {
			String fileName=multipartFile.getOriginalFilename();
			fileName=uuid+"_"+fileName;
			log.info("================================");
			log.info("upload file name:"+fileName);
			log.info("upload file size:"+multipartFile.getSize());
			SaveFile saveFile1=new SaveFile();
			saveFile1.setBno(board.getBno());
			saveFile1.setFilename(fileName);
			fileList.add(saveFile1);
			
			
			
			File saveFile=new File(uploadFolder,fileName);
			try {
				multipartFile.transferTo(saveFile);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		//제목 , 카테고리 , 콘텐츠 저장
		service.register(board, fileList);
		return "redirect:main";
	}
	//글 내용 불러오기
	@GetMapping("/get")
	public void get(@Param("bno") int bno,@ModelAttribute("cri") Criteria cri ,Model model) {
		log.info("get..."+bno);
		model.addAttribute("board", service.read(bno));
	}
	//다운로드 처리
	@GetMapping(value="/download",produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(String fileName){
		log.info("download file : "+fileName);
		Resource resource = new FileSystemResource("/Users/HwangC/Downloads/upload"+fileName);
		log.info("resource : "+resource);
		String resourceName = resource.getFilename(); 
		HttpHeaders headers = new HttpHeaders();
		try {
			headers.add("Content-Disposition","attachment;filename="+new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource,headers,HttpStatus.OK);
	}
	
	//댓글 삭제 처리
	@GetMapping(value="/replydelete")
	public String remove(@Param("bno")int bno, @Param("rno")int rno ){
		ReplyVO replyVO = new ReplyVO();
		replyVO.setBno(bno);
		replyVO.setRno(rno);
		log.info("deletereply1...."+replyVO);
		rservice.remove(replyVO);
		log.info("deletereply2...."+replyVO);
		
		return "redirect:get?bno="+bno;
	}
//	@GetMapping("/main")
//	public void mainForm() {
//		
//	}

	
}
