<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/aside.jsp" %>
<div class="container bootstrap snippet">

        <div class="row">
            <!--/col-3-->
            <div class="col-sm-9">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">정보수정</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="/update" method="post" id="registrationForm">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="id">
                                        <h4>아이디</h4>
                                    </label>
                                    <input type="text" class="form-control" name="userId" value="${member.id }" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password">
                                        <h4>비밀번호</h4>
                                    </label>
                                    <input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="name">
                                        <h4>이름</h4>
                                    </label>
                                    <input type="text" class="form-control" name="userName" id="userName" placeholder="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password_ok">
                                        <h4>비밀번호 확인</h4>
                                        <!-- <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                        <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div> -->
                                    </label>
                                    <input type="password" class="form-control" name="userPwdOk" id="userPwdOk" placeholder="password">
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
                                    <input type="button" class="btn btn-lg btn-info" onclick="mainBack();"><i class="glyphicon glyphicon-repeat"></i> 뒤로가기
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
<%@ include file="../include/footer.jsp" %>