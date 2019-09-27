package com.teamPjt.teamPtop.mapper;

import java.util.List;

import com.teamPjt.teamPtop.domain.SaveFile;


public interface FileMapper {
	public void register(SaveFile saveFile);
//	public void delete(int fno);
	public SaveFile get(int fno);
	public List<SaveFile> getList(int bno);
//	public void deleteList(int bno);

}
