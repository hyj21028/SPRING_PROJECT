  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- footer -->
    <footer>

        <div class="cotainer">
            <div class="footer">
                <!-- 푸터 디자인 시작 -->
                <div id="pag_fot" class="pag_fot">
                    <div class="pag_fot_inside">
                        <!-- 푸터 메뉴 -->
                        <ul class="fot-meu">
                            <li class="chi">
                                <a href="">회사소개&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">이용약관&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">개인정보취급방침&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">청소년보호정책&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">광고제휴문의&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">피해구제센터&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">저작권보호센터&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="chi">
                                <a href="">고객센터&nbsp;&nbsp;&nbsp;|</a>
                            </li>
                            <li class="last-chi">
                                <a href="">원격지원신청&nbsp;&nbsp;&nbsp;</a>
                            </li>
                        </ul>
                        <!-- //푸터 메뉴 -->
                        <!-- 푸터 디자인 회사 정보 시작 -->
                        <p class="dign_info">
                            주식회사 &nbsp;부산IT &nbsp;|&nbsp; 대표 : John BER &nbsp;|&nbsp; 사업자등록번호 : 123-78-41016
                            &nbsp;|&nbsp;통신판매 : 제 2019-부산서면-7414 호 &nbsp;|&nbsp;특수한 유형의 부가통신사업 등록 번호 : 제 3-01-14-8852
                            호<br>
                            사업장 : 부산광역시 부산진구 부전2동 163-1 부산IT교육센터 506호 &nbsp;|&nbsp; 정보보호.청소년보호.저작권보호 책임자 : 홍길동 대표 /
                            dong123@javaIT.co.kr &nbsp;|&nbsp; TEL : 1577-6433 &nbsp;|&nbsp; FAX : 0111-522-7852<br>
                            Copyright 2019 <strong>JAVAIT</strong> .co., Ltd. All Right Reserved.<br>
                            <br>
                            아동ㆍ청소년이용음란물을 제작ㆍ배포ㆍ소지한 자는 「아동ㆍ청소년의 성보호에 관란 법률」 제 11조에 따라 형사처벌을 받을 수 있습니다.<br>
                            디지털 성폭력 영상 등 불법 촬영물의 업ㆍ다운로드는 명백한 범죄행위이므로 관련 법률에 근거, 형사처벌 받을 수 있습니다.
                        </p>
                        <!-- //푸터 디자인 회사 정보 시작 -->
                    </div>
                </div>
                <!-- //푸터 디자인 시작 -->
            </div>
        </div>
    </footer>


</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
<script src="http://nicesnippets.com/demo/jsCarousel-2.0.0.js" type="text/javascript"></script>
<!-- <script src="/resources/js/signUp.js" type="text/javascript"></script> -->
<!-- <script src="/resources/js/memberRevise.js" type="text/javascript"></script> -->
<!-- <script src="/resources/js/withdraw.js" type="text/javascript"></script> -->
<!-- <script src="/resources/js/aside.js" type="text/javascript"></script> -->
    <script>
    $(document).ready(function(){
    	
    	
    	$("#loginBtn").on("click",function(e){
    		var id = $(".login_id").val();
        	var pw = $(".login_pwd").val();
        	
    	e.preventDefault();
    	
    	$.ajax({
    		url : "/login/loginCheck",
    		type : "get",
    		contentType: 'application/json',
    		data : {
    			id : id,
    			password : pw
    			
    			},
    	success: function(result){
    		if(result == "success"){
    			location.reload();
    		}else{
    			alert("아이디,비밀번호를 확인해주세요");
    			var pw = $(".login_pwd").val("");
    		}
    	}
    	});
    	
    	
    	});
    	
    	$("#logout").on("click",function(e){
  
    	e.preventDefault();
    
    	$.ajax({
    		url : "/login/logout",
    		type : "get",
  
    	success: function(result){
    		if(result == "success"){
    			location.reload();
    		}
    	}
    	});
    	});
    	
    	$("#passwordok").keyup(function(){
    		var pw = $("#password").val();
    		var pwok = $("#passwordok").val();
    		var text ="";
    		if(pw == pwok){
    			text += '<p style="color:green;">비밀번호가 일치합니다</p>';
    			
    		}else{
    			text += '<p style="color:red;">비밀번호를 확인해주세요</p>';
    		}
    		$("#passwordoktext").html(text);
    	});
    	
    	$("#password").keyup(function(){
    		var pw = $("#password").val();
    		var pwok = $("#passwordok").val();
    		var text ="";
    		if(pw == pwok){
    			text += '<p style="color:green;">비밀번호가 일치합니다</p>';
    		}else{
    			text += '<p style="color:red;">비밀번호를 확인해주세요</p>';
    		}
    		$("#passwordoktext").html(text);
    	});
    	$("#reset").on("click",function(){
    		$("#passwordoktext").html("");
    	});


    });//(document)
	
	
	$("#signupBtn").on("click",function(){
		var pw = $("#password").val();
		var pwok = $("#passwordok").val();
		var idckhd = $("#idckhd").val();
		if(pw != pwok){
			alert("비밀번호를 확인해주세요");
			return false;
		}else if(idckhd == "no"){
			alert("아이디 중복체크를 해주세요");
			return false;
		}
		else{
		return true;
		}
	});
	$("#idokBtn").on("click",function(e){
		var idok = $("#idtext").val();
		e.preventDefault();
		$.ajax({
			url : "/member/idCheck",
			type : "get",
			contentType: 'application/json',
			data :{
				id : idok
			},
			success : function(result){
				if(result == "success"){
	    			alert("이미 사용하고있는 아이디입니다.");
	    		}else{
	    			alert("사용할수 있는 아이디입니다.");
	    			$("#idckhd").val("yes");	    		
	    		}
			}
		});
	});
    
    </script>

</html>