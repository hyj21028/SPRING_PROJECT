package com.teamPjt.teamPtop.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public ReplyVO read(int rno);
	public int delete(ReplyVO vo);
	public int update(ReplyVO vo);
	public List<ReplyVO> getList(@Param("bno") int bno);
	public int getCountBno(int bno);
	public List<ReplyVO> getListWithpaging(Criteria cri, int bno);
	
	
}
