<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
	<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ONDISK</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

</head>
    <%@ include file ="../include/header.jsp" %>
    <%@ include file ="../include/aside.jsp" %>



	<section id="mainList">
	<form class="form" role="form" action="signUp" method="post" id="registrationForm">
    <div class="container">
  
        <div class="row">
            <!--/col-3-->
            <div class="col-sm-9" style="margin:360px;margin-top:-2px;">
               
                 <Strong class="title display-3" style="font-family: dotum;">회원가입</Strong>
                
                <div class="tab-content">

                        <hr>
                        
                            <div class="form-group">

                                    <label for="id">
                                        <h4>아이디 </h4>
                                    </label>
                                    <input type="text" class="form-control" name="id" id="idtext" value="" style="width:400px;">
                                    <button class="btn btn-danger" id="idokBtn" style="position:absolute; margin:410px; margin-top:-34px;"> 중복확인</button>
                                    <input type="hidden" id="idckhd" value="no">
                                </div>

                   
                            
                            <div class="form-group">

                                    <label for="password">
                                        <h4>비밀번호</h4>
                                    </label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="password" style="width:400px;">

                            </div>
                                          <div class="form-group">

                                    <label for="password_ok">
                                        <h4>비밀번호 확인</h4><div id="passwordoktext"></div>

                                    </label>
                                    <input type="password" class="form-control" name="passwordok" id="passwordok" placeholder="password" style="width:400px;">

                            </div>
                            <div class="form-group">

                                    <label for="name">
                                        <h4>이름</h4>
                                    </label>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="name" style="width:400px;">
                                </div>
                            </div>
              
                            <div class="form-group">

                                    <label for="id">
                                        <h4>닉네임</h4>
                                    </label>
                                    <input type="text" class="form-control" name="nickname" id="nickname" value=""  placeholder="yourninkname"" style="width:400px;">

                            </div>
                            <div class="form-group">
<!--                                 <div class="col-xs-6"> -->
                                    <label for="email">
                                        <h4>이메일</h4>
                                    </label>
                                    <input type="email" class="form-control" name="mail" id="mail" placeholder="your@email.com" style="width:400px;">

                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                   
                                    <button class="btn btn-lg btn-success" id="signupBtn" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> 가입하기</button>
                                    <button class="btn btn-lg btn-danger" id="reset" type="reset"><i class="glyphicon glyphicon-repeat"></i> 초기화</button>
                                    <a class="btn btn-lg btn-info" type="reset" href="/board/main"><i class="glyphicon glyphicon-repeat"></i> 뒤로가기</a>
                                </div>
                                 
                            </div>
                            
                       
                    </div>
                    
                </div>
               
       </div>
       </form>
</section>

 <%@ include file ="../include/footer.jsp" %>