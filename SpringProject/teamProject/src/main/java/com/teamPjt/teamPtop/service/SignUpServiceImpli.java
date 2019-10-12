package com.teamPjt.teamPtop.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamPjt.teamPtop.domain.memberVO;
import com.teamPjt.teamPtop.mapper.SignUpMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.java.Log;


@Service
@Log
@AllArgsConstructor
public class SignUpServiceImpli implements SignUpService {
	@Setter(onMethod_ =@Autowired )
	private SignUpMapper sMapper;

	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		int result = sMapper.idCheck(id);
		
		return result;
	}

	@Override
	public void signUp(memberVO vo) {
		// TODO Auto-generated method stub
		sMapper.signUp(vo);
		
	}

	@Override
	public boolean memberRevise(memberVO vo) {
		// TODO Auto-generated method stub
		log.info("modify...."+vo);
		return sMapper.update(vo) ==1;
	}

	@Override
	public boolean withdraw(int mno) {
		// TODO Auto-generated method stub
		log.info("remove...."+mno);
		return sMapper.delete(mno) == 1;
	
	}
}
