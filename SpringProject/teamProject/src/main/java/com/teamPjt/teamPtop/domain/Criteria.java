package com.teamPjt.teamPtop.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	 private int PageNum; // 페이지번호
	   private int Amount;  // 페이지 총합
	   
	   private String type; //검색시 타입
	   private String keyword; // 검색 키워드
	   
	   public Criteria(int pageNum, int amount) {
	      // TODO Auto-generated constructor stub
	      this.PageNum = pageNum;
	      this.Amount = amount;
	   }
	   public Criteria() {
	      this(1,20); //시작페이지 1, 페이지당 20개
	   }
	   
	   public String [] getTypeArr() {
	      
	      return type ==null? new String[] {}: type.split("");
	      
	   }
}
