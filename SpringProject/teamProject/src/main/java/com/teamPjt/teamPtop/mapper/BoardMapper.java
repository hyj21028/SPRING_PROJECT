package com.teamPjt.teamPtop.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.boardVO;


public interface BoardMapper {

	public List<boardVO> getListWithPaging(Criteria cri,@Param("category") String category); //게시판불러오기 페이지 적용
	public List<boardVO> getListWithPagingAll(Criteria cri); //게시판불러오기 페이지 적용
	
	public int getTotalCount(Criteria cri); //게시물 토탈 카운트 
	
	public void register(boardVO vo); //글쓰기
	
	public boardVO get(int bno); //read
	
	public void updateReplyCnt(@Param("bno") int bno, @Param("amount") int amount); //Mapper로 갈때는 한덩어리로 가야함
}
