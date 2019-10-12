package com.teamPjt.teamPtop.service;

import java.util.List;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.ReplyPageDTO;
import com.teamPjt.teamPtop.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO vo);
	public ReplyVO get(int bno);
	public int modify(ReplyVO vo);
	public int remove(ReplyVO vo);
	public List<ReplyVO> getList( int bno);
	public ReplyPageDTO getListPage(Criteria cri, int bno);
}
