<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/resources/css/p2p.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!-- 사이트 이름 -->
    <title>영화 다운로드</title>
    
    <script>
      function down_close() {
         document.getElementById('down-popup').style.display = 'none';
      }
      function down_open() {
         document.getElementById('down-popup').style.display = 'block';
      }
     
   </script>
  
</head>

<body style="background-color: #e9ebee;">

<!-- 다운로드 폼 -->
<div id="down-popup" class="down-popup" style="display:none;position: fixed;z-index: 1;left: 0;top: 0;width: 100%;height: 100%;
    background-color: rgb(48, 48, 48, 0.7);padding-top: 50px;">
      <div class="down-window" style="width: 568px;height: 368px;padding: 32px;background-color: white;position: absolute;
    top: 50%;left: 50%;transform: translate(-50%,-50%);">
    				<p class="top_title"style="font-size:25px;background-color:#000000;color:white;">파일 목록</p><br>
    				
    				<table class="jumbotron">
      				<c:forEach items="${board.fileList }" var="fileName">
      				<tr>
      				<th>
					<a href="download?fileName=${fileName.filename }">${fileName.filename }</a><br>
					</th>
					</tr>
					</c:forEach><br>
					</table><br>
					<div class="cte_Guide1">
                            <p class="careMsg" style="color:#ff0000;">
                               파일명을 클릭 하시면 다운로드가 실행됩니다.
                            </p>
                        </div>
					<br>
					<div class="cte_Guide1">
                            <p class="careMsg">
                                해당 콘텐츠는 저작권자와 제휴를 통해 <strong class="caMsg">권리를 위임받은 컨텐츠</strong>입니다.
                            </p>
                        </div>
					<div class="text-center">
					<button type="button" class="btn btn-danger" onclick="down_close()">취소</button>
					</div>
      </div>
      </div>
      
      
 <header id="main-page" class="main-page">
        <div class="container">         
            <div class="top_header">
                <d class="top_title">IT디스크 등록정보</d>
            </div>
            <div id="ctView-container">
                <!-- 상단 고정 영역 -->
                <div id="ctView-fixed">
                    <!-- 제목 -->
                    <div class="ctvTitle">
                        <h2>
                            <img src="/resources/image/partnership.gif" alt="제휴">
                            <span id="title_link" class="title_txt">
                                <!-- [고화질] 사자 (The Divine Fury.2019.1080p.FHD) -->
                                ${board.title }
                            </span>
                        </h2>
                        <p class="ctLink">
                            <a href="" class="btnDibs"><img src="/resources/image/choice.gif"></a>
                            <a href="" class="btnNotify"><img src="/resources/image/notify.gif" alt="신고"></a>
                        </p>
                    </div>
                    <!-- //제목 -->
                    <!-- 판매정보 수정 -->
                    <div class="ctInfo">
                        <table class="ctTbl">
                            <tbody>
                                <tr>
                                    <!-- 판매정보 수정 '고정' 타입 -->
                                    <th class="Info" scope="row">
                                        번호
                                    </th>
                                    <!-- 판매정보 수정 '변환' 타입 -->
                                    <td class="num1"> ${board.bno }</td>
                                    <!-- 판매정보 수정 '고정' 타입 -->
                                    <th class="Info" scope="row">
                                        등록날짜
                                    </th>
                                    <!-- 판매정보 수정 '변환' 타입 -->
                                    <td class="num1"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.regdate }"/></td>
                                    <!-- 판매정보 수정 '고정' 타입 -->
                                    <th class="Info" scope="row">
                                        포인트
                                    </th>
                                    <!-- 판매정보 수정 '변환' 타입 -->
                                    <td class="point">
                                        <strong class="ctPoint"><a href=""></a></strong>
                                    </td>
                                    <!-- 판매정보 수정 '고정' 타입 -->
                                    <th class="Info" scope="row">
                                        판매자정보			
                                    </th>
                                    <td>
                                        <div class="ctName" style="margin-left: 10px;">
                                            <!-- 판매자 닉네임 변환 타입 -->
                                            <strong class="name">
                                                <a href="" id="info_btn">
                                                    ${board.writer }
                                                </a>
                                            </strong>
                                            <!-- <span class="line">/</span> -->
                                            <!-- 판매 신용도를 나타내는 별 -->
                                            <!-- <span class="star"><img src="http://image.ondisk.co.kr/images/popup/ctview_icon_starPoint5.gif"></span> -->
                                        </div>
                                    </td>
                                </tr>
                                <!-- 파일 목록 -->
                                <tr>
                                    <th class="file_mu" colspan="1" scope="row">
                                        파일목록
                                    </th>
                                    <td colspan="7" class="ctTd3">
                                        <div class="ctListBox">
                                            <div class="boxSkin">
                                                <ul>
                                                    <li>
                                                    <c:forEach items="${board.fileList }" var="fileName">
													${fileName.filename }<br>
													</c:forEach>
                                                        <!-- <img class="file_namee" src="http://image.ondisk.co.kr/images/popup/ctview_icon_disk.gif" alt="파일">
                                                            사자 (The Divine Fury.2019.1080p.FHD).mp4
                                                        <span class="capacity">4,061M</span> -->
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <!-- //파일 목록 -->
                            </tbody>
                        </table>
                        <!-- //판매정보 수정 -->
                        <!-- 다운로드 버튼 -->
                        <br>
                        <!-- <div class="ctvDownBtn" style="position: absolute;">
                                <a class="left" onclick="page_move('pre')" style="cursor: pointer;"><img alt="이전 페이징" src="http://image.ondisk.co.kr/images/popup/ctview_paging_left.gif"> 
                                </a>
                        </div> -->
                        <!-- <div class="ctvDownBtn1">
                                <a class="right" onclick="page_move('next')" style="cursor:pointer;"><img alt="다음 페이징" src="http://image.ondisk.co.kr/images/popup/ctview_paging_right.gif"> 
                                </a>
                        </div> -->
                       
                        <div class="dw_btn">
                            <!-- Contextual button for informational alert messages -->
                            <c:choose>
                            <c:when test="${sessionScope.id != null }">
                            <button type="button" class="btn btn-info" onclick="down_open()">다운로드</button>
                            </c:when>
                            <c:otherwise>
                            	<p style="color:#ff0000;">로그인후 다운로드 이용가능합니다</p><br>
                            </c:otherwise>
                            </c:choose>
                            <a class="btn btn-success" href="/board/main">목록</a>
                            <!-- Indicates a successful or positive action -->
                            <!-- <button type="button" class="btn btn-success">보너스로 받기</button> -->
                            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                            <!-- <button type="button" class="btn btn-primary">쿠폰 사용</button> -->
                        </div>
                        <!-- //다운로드 버튼 -->
                    </div>
                    <br>
                    <br>
                </div>
                <!-- //상단 고정 영역 -->
                <!-- 컨테츠 상세 -->
                <div id="cteView">
                    <div id="cte_inside">
                        <!-- 저작권 설명글 -->
                        <div class="cte_Guide1">
                            <p class="careMsg">
                                해당 콘텐츠는 저작권자와 제휴를 통해 <strong class="caMsg">권리를 위임받은 컨텐츠</strong>입니다.
                            </p>
                        </div>
                        <!-- //저작권 설명글 -->
                        <!-- 영화 사진 -->
                        <div id="contents_str" class="cont_Img">
                        ${board.content }
                            <br>
                            <br>
                          
                        </div>
                        <!-- //영화 사진 -->
                        <br>
                        <br>
                        <!-- 음란물 설명글 -->
                        <div class="cte_Guide2">
                            <p class="guide_Msg">
                                아동·청소년이용음란물을 제작·배포·소지한 자는「아동·청소년의 성보호에 관한 법률」제 11조에 따라 형사처벌을 받을 수 있습니다.<br>개인영상 및 몰카 등
                                불법 촬영물의 업ㆍ다운로드는 명백한 범죄행위이므로 관련 법률에 근거, 처벌 받을 수 있습니다.
                            </p>
                        </div>
                        <!-- //음란물 설명글 -->
                    </div>
                </div>
                <!-- //컨테츠 상세 -->
            </div>
            <!-- 댓글 서비스 -->
                <div class="com_service">
                 	 <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
            	<form>
                	<table class="table">                    
                    <tr>
                        <td>
                         <c:if  test="${sessionScope.id != null }">
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                           
                                <button class="btn pull-right btn-success" id="replyBtn">등록</button>
                                </c:if>
                                 <c:if  test="${sessionScope.id == null }">
                                 <p style="color:#ff0000">로그인후 댓글 작성 이용해주세요</p>
                                </c:if>
                            </div>
                        </td>
                    </tr>
                	</table>
                </form>
            </div>
        </div>
        <input type="hidden" id="bno" name="bno" value="${board.bno }" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>

              <div class="panel-footer"></div><!-- 댓글 페이지 영역  -->  
                </div>
             <!-- //댓글 서비스 -->
        </div>
        <input type="hidden" id="nickname" value="${sessionScope.nickname }">
         
    </header>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  	<script type="text/javascript" src="/resources/js/reply.js"></script>
    <script>
		
   
    	
 
        $(document).ready(function(){
        	
        	var bno='<c:out value="${board.bno}"/>';
        	var replyer = $("#nickname").val();
        	commentList(bno);
//         	댓글리스트 ajax
            function commentList(bno){
            	
            	$.ajax({
            		url : '/reply/replyList',
            		type : 'get',
            		data :{
            			bno : bno
            		},
            		dataType :'json',
            		success : function(data){
            			
            			var a="";
            			$.each(data,function(key,value){
            				a += '<div> <p> 작성자 : '+ value.replyer +'</p><br>' ;
            				a +=  '<p> 댓글 : '+value.reply+'</p>';

            				if(value.replyer==replyer){
							a += ' <a class="btn btn-danger" href="/board/replydelete?bno=${board.bno}&rno='+value.rno+'">삭제</a>';
            				}

            				a += '<input type="hidden"  value="${value.rno}" >';
            				a += '<hr></div>';
            			});
            			console.log(a);
            			$("#comment").val("");
            			$("#commentList").html(a);
            		}
            	});
            }

            //댓글 작성 ajax
            $("#replyBtn").on("click",function(e){
            	var reply = $("#comment").val();
            
            	
            	e.preventDefault();
            	$.ajax({
            		type : 'post',
            		url : '/reply/new',
            		contentType: 'application/json',
            		data : JSON.stringify({
            			reply : reply ,
            			bno : bno,
            			replyer : replyer
            			}),
            		success : function(result){
            			
            			if(result =="success"){
            			console.log();
            			alert("댓글이 등록 되었습니다.");
            			commentList(bno);
            			}
            			
            		}
            	});
            
    		});
            
           $("#deleteReply").on("click",function(e){
             	var rno='<c:out value="${value.rno}"/>';
             	e.preventDefault();
             	alert(rno+",,,,"+bno);
             	$.ajax({
             		type : 'post',
             		url : '/board/replydelete',
             		contentType : 'application/json',
            		data : JSON.stringify({
             			rno : rno ,
             			bno : bno
             			}),
            		success : function(result){
            			if(result =="success"){
                 			console.log();
                 			alert("댓글이 삭제 되었습니다.");
                 			commentList(bno);
             		}
             		}
             });
            
            }); 
         //댓글 페이지 번호 출력
       	var pageNum = 1;
       	var replyPageFooter = $(".panel-footer");
       	
       	function showReplyPage(replyCnt){
       		var endNum = Math.ceil(pageNum/10.0)*10;
       		var startNum = endNum -9;
       		
       		console.log("startNum:"+ startNum);
       		
       		var prev = startNum !=1;
       		var next = false;
       		
       		if(endNum * 10 >= replyCnt){
       			endNum = Math.ceil(replyCnt/10.0);
       		}
       		console.log("endNum" + endNum);
       		if(endNum * 10 < replyCnt){
       			next = true;
       		}
       		
       		var str="<ul class='pagination pull-right'>";
       		
       		if(prev){
       			str+= "<li class ='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a><li>";
       		}
       		
       		for(var i = startNum; i <=endNum; i++){
       			var active=pageNum==i?"active":"";
       			str+= "<li class='page-item "+active +"'><a class='page-link' href='"+i+"'>"+i+"</a></li>";
       		}
       		if(next){
       			str+= "<li class='page-item'><a class='page-link' href='"+(endNum+1)+"'>Next</a></li>";
       		}
       		
       		str += "</ul></div>"
       		
       		console.log(str);
       		replyPageFooter.html(str);
       	}
       	
       	replyPageFooter.on("click","li a", function(e){
       		 e.preventDefault();
       		console.log("page click");
       		
       		var targetPageNum = $(this).attr("href");
       		
       		console.log("targetPageNum: " + targetPageNum);
       		pageNum = targetPageNum;
       		showList(pageNum);
       	});
        	
        });
    </script>
    
<script type="text/javascript" src="/resources/js/reply.js"></script>
</body>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>