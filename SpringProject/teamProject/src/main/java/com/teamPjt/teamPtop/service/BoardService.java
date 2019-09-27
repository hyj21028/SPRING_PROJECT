package com.teamPjt.teamPtop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.boardVO;

public interface BoardService {
	public List<boardVO> getList(Criteria cri,@Param("category") String category); //게시판 불러오기
	public List<boardVO> getListAll(Criteria cri); //게시판 불러오기
	public int getTotalCount(Criteria cri);//게시물 토탈 카운트 서비스
	public void register(boardVO vo, List<com.teamPjt.teamPtop.domain.SaveFile> fileList); //글부분 저장
	public void registerFile(List<com.teamPjt.teamPtop.domain.SaveFile> fileList, int bno); //파일 부분 저장
	public boardVO read(int bno);
}
