package com.teamPjt.teamPtop.service;



import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.ReplyPageDTO;
import com.teamPjt.teamPtop.domain.ReplyVO;
import com.teamPjt.teamPtop.mapper.BoardMapper;
import com.teamPjt.teamPtop.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.java.Log;

@Log
@Service
@AllArgsConstructor
public class ReplyServiceImpli implements ReplyService {
	
	private ReplyMapper rMapper;

	private BoardMapper bMapper;
		
	
	@Override
	public int register(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("register.."+vo);
//		bMapper.updateReplyCnt(vo.getBno(), 1);
		return rMapper.insert(vo);
	}

	@Override
	public ReplyVO get(int bno) {
		// TODO Auto-generated method stub
		log.info("get..."+bno);
		return rMapper.read(bno);
	}

	@Override
	public int modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("modify..."+vo);
		return rMapper.update(vo);
	}
	
	@Override
	public int remove(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("remove..."+vo);
		return rMapper.delete(vo);
	}

	@Override
	public List<ReplyVO> getList(int bno) {
		// TODO Auto-generated method stub
		log.info("getList..."+bno);
		return rMapper.getList( bno);
	}


	
	@Override
	public ReplyPageDTO getListPage(Criteria cri,int bno) {
		// TODO Auto-generated method stub
		return new ReplyPageDTO(rMapper.getCountBno(bno), rMapper.getListWithpaging(cri, bno));
	}

}
