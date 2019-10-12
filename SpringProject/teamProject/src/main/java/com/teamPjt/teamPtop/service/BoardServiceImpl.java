package com.teamPjt.teamPtop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teamPjt.teamPtop.domain.Criteria;
import com.teamPjt.teamPtop.domain.SaveFile;
import com.teamPjt.teamPtop.domain.boardVO;
import com.teamPjt.teamPtop.mapper.BoardMapper;
import com.teamPjt.teamPtop.mapper.FileMapper;

import lombok.Setter;
import lombok.extern.java.Log;

@Service
@Log
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper bmapper;
	@Setter(onMethod_ = @Autowired)
	private FileMapper fmapper;

	@Override
	public List<boardVO> getList(Criteria cri, @Param("category") String category) {
		// TODO Auto-generated method stub
		System.out.println("여기까지일단옴" + category);

		System.out.println(bmapper.getListWithPaging(cri, category));

		return bmapper.getListWithPaging(cri, category);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return bmapper.getTotalCount(cri);
	}

	@Transactional
	@Override
	public void register(boardVO vo, List<SaveFile> fileList) {
		// TODO Auto-generated method stub
		log.info("Service.register..." + vo);
		bmapper.register(vo);
		int bno = vo.getBno();
		registerFile(fileList, bno);
	}

	@Override
	public void registerFile(List<SaveFile> fileList, int bno) {
		// TODO Auto-generated method stub
		for (int i = 0; i < fileList.size(); i++) {
			SaveFile sFile = fileList.get(i);
			sFile.setBno(bno);
			fmapper.register(sFile);
			log.info("Save file:" + fileList.get(i));
		}
	}

	@Override
	public boardVO read(int bno) {
		// TODO Auto-generated method stub
		List<SaveFile> fileList = fmapper.getList(bno);
		boardVO vo = bmapper.get(bno);
		vo.setFileList(fileList);
		return vo;
	}

	@Override
	public List<boardVO> getListAll(Criteria cri) {
		// TODO Auto-generated method stub
		return bmapper.getListWithPagingAll(cri);
	}

}
