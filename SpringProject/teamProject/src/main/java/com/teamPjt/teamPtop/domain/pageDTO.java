package com.teamPjt.teamPtop.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class pageDTO {
		private int startPage;
		private int endPage;
		private boolean prev,next;
		private int total;
		private Criteria cri;
		
		public pageDTO(Criteria cri, int total) {
			this.cri = cri;
			this.total = total;
			this.endPage = (int)(Math.ceil((cri.getPageNum()*1.0)/cri.getAmount())*cri.getAmount());
			this.startPage = this.endPage - (this.cri.getAmount()-1);
//			
//			this.startPage = (int)(Math.ceil((cri.getPageNum()*1.0)/cri.getAmount()));
//			this.endPage = this.startPage + (cri.getAmount()-1);
//			
			int realEnd = (int) (Math.ceil((total*1.0)/cri.getAmount()));
			if(realEnd < this.endPage) {
				this.endPage = realEnd;
			}
			this.prev = this.startPage > 1;
			this.next = this.endPage < realEnd;
			
		}
		
}
