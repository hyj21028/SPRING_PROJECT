package com.teamPjt.teamPtop.domain;

import java.sql.Clob;
import java.util.Date;
import java.util.List;



import lombok.Data;

@Data
public class boardVO {
	private int bno;
	private String categoryname;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;
	private List<SaveFile> fileList;
	

}
