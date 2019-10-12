<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/aside.jsp" %>
<div class="container bootstrap snippet">

        <div class="row">
            <!--/col-3-->
            <div class="col-sm-9" id="reviseFrame" style="margin-top:20vh">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="/member/memberRevise">정보수정</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="memberRevise" method="post" id="registrationForm">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="id">
                                        <h4>아이디</h4>
                                    </label>
                                    <input type="text" class="form-control" name="id" id="id" >
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password">
                                        <h4>비밀번호</h4>
                                    </label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="name">
                                        <h4>이름</h4>
                                    </label>
                                    <input type="text" class="form-control" name="name" id="name" placeholder="name">
                                </div>
                            </div>
                        <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="name">
                                        <h4>닉네임</h4>
                                    </label>
                                    <input type="text" class="form-control" name="nickname" id="nickname" placeholder="nickname">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="email">
                                        <h4>이메일</h4>
                                    </label>
                                    <input type="email" class="form-control" name="userEmail" id="userEmail" placeholder="your@email.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br>
                                    <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> 저장</button>
                                    <button class="btn btn-lg btn-danger" type="reset"><i class="glyphicon glyphicon-repeat"></i> 초기화</button>
                                    <button class="btn btn-lg btn-info" id="mainBack"><i class="glyphicon glyphicon-repeat"></i> 뒤로가기</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
    
    <script>
    $('#mainBack').click(function() {
		location.href = "/board/main";
	});
    </script>
<%@ include file="../include/footer.jsp" %>