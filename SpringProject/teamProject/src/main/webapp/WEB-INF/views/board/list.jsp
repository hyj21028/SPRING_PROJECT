<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
      
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <style>
    	a.a_title{ text-decoration:none;color:#000000 }
 	a.a_title:hover, a.a_title:active {font-size: 100%;font-weight:bold; text-decoration:none;} 
    </style>
    <title>게시판</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>


<!--     <script src='main.js'></script> -->
</head>

        <table class="table table-hover">
            <thead>
                <tr>
                    <th width="10%">번호</th>
                    <th width="15%">카테고리</th>
                    <th width="50%">제목</th>
                    <th width="25%">닉네임</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="board">
                <tr style="cursor: pointer">
                    <td class="pag_num" width="10%">${board.bno }</td>
                    <td class="pag_categoty" width="15%">${board.categoryname }</td>
                    <td class="pag_title" width="50%"><a class="a_title" href="/board/get?bno=${board.bno }">${board.title }</a></td>
                    <td class="pag_name" width="25%">${board.writer }</td>
                </tr>
               </c:forEach> 
            </tbody>
        </table>
      
<!-- 			페이징 -->
   <div>
        <ul class="pagination" style="margin-left:20%">
                  			<c:if test="${pageMaker.prev }">
		    <li class="paginate_button">
		      <a href="${pageMaker.startPage-1 }" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		        <span class="sr-only">Previous</span>							    
		      </a>
		    </li>
		      </c:if>
		      <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
		    <li class="paginate_button ${pageMaker.cri.pageNum==num? "active":"" }"><a href="${num }">${num }</a></li>
		    
		    </c:forEach>
		   
		    <c:if test="${pageMaker.next }">
		     <li class="paginate_button">
		      <a href="${pageMaker.endPage+1 }" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		        <span class="sr-only">Next</span>
		        
		      		</a>
		      </li>
		    </c:if>
		  
	   </ul>
<!-- 	   페이지 클릭시 주소창에 값넘겨주기위해 -->
	    <form id="actionForm" action="/board/main" method="get">
	       	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	       	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
<%-- 	       	<input type="hidden" name="type" value="${pageMaker.cri.type }"> --%>
<%-- 	       	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"> --%>
	    </form>
	    	    <form id="actionForm" action="/main/category" method="get">
	       	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	       	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
<%-- 	       	<input type="hidden" name="type" value="${pageMaker.cri.type }"> --%>
<%-- 	       	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"> --%>
	    </form>
   </div>
<!--           페이징 end -->
</div>



<script type="text/javascript">

 	$(document).ready(function(){
	var result = '<c:out value="${result}"/>';
	var actionForm = $("#actionForm");


	$(".paginate_button a").on("click",function(e){
		e.preventDefault();
		console.log("click");
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
		});

});
</script>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- <script type="text/javascript" src="/p2p.js/boorstrap.js"></script> -->
<!-- <script type="text/javascript" src="/p2p.js/npm.js"></script> -->
<!-- <script type="text/javascript" src="/p2p.js/boorstrap.min.js"></script> -->
<!-- <script type="text/javascript" src="/p2p.js/p2p.js.js"></script> -->



