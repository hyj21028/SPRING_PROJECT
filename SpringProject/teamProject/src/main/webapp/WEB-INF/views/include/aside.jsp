<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
      
<aside>
        <div class="asidePage">

            <fieldset class="loginField">
                <div class="login_popup" id="login_popup">
                    <div class="login-window">


                                <!-- 로그인이 안되어 있으면 -->
								 <c:choose>
                                     <c:when test="${sessionScope.id == null }">
                                    <div class="txtId">
                                        <div class="Id_logo">
                                            <img src="/resources/image/user.svg" width="16px" alt="">
                                        </div>
                                        <input type="text" name="userId" class="login_id" id="userId" placeholder="아이디"
                                            maxlength="20">
                                    </div>
                                    <div class="txtPwd">
                                        <div class="Pwd_logo">
                                            <img src="/resources/image/lock.svg" width="16px" alt="">
                                        </div>
                                        <input type="password" name="userPwd" class="login_pwd" id="userPwd"
                                            placeholder="비밀번호" maxlength="20">
                                    </div>

                                    
                                    <div class="btnGroup">
                                        <div class="btnLogin">
                                            <input type="button" class="btn btn-outline-danger btn-sm" id="loginBtn" onclick="loginId"value="로그인">
                                        </div>
                                        <div class="btnJoin">
                                            <a  class="btn btn-outline-primary btn-sm" id="signUp"
                                                value="회원가입" width="10px" href="/member/SignUp">회원가입</a>
                                        </div>
                                    </div>
									</c:when>

                 
                         	<c:otherwise>
                                <div class="afterLog">
                                	<p> ${sessionScope.nickname} 님 환영합니다.</p>
                                    <div class="btnLogout">
                                        <input type="button" class="btn  btn-outline-success btn-sm" id="logout"
                                            value="로그아웃" />
                                    </div>
<!--                                     <div class="btnRevise"> -->
<!--                                         <input type="button" class="btn  btn-outline-info btn-sm" id="revise" -->
<!--                                             value="회원수정" /> -->
<!--                                     </div> -->
                                    <a class="btn btn-success" href="/board/register">파일올리기</a>
                                    
                                </div>
                                </c:otherwise>
								</c:choose>
                    </div>
                </div>

            </fieldset>
            <fieldset class="sideField" id="sideField">
                <!-- 사이드 바 시작 -->
                <div class="navbar_sidebar_fst" role="navigation" id="nonSelectedMenu">
                    <!-- 사이드 디자인 시작 -->
                    <div class="sidebar_navbar_collapse_fst" aria-expanded="false" id="sidebar_navbar">
                        <ul class="nav_fst">
                            <!-- 포인트 충전 -->
                            <li class="point_up"><a href="#"><img src="/resources/image/link_1.gif" alt="포인트충전"></a></li>
                            <li class="point_up"><a href="#"><img src="/resources/image/link_2.gif" alt="정액제충전"></a></li>
                            <li class="point_up"><a href="#"><img src="/resources/image/link_3.gif" alt="포인트 무료충전"></a></li>
                            <li class="bnnr1"><a href="#"><img src="/resources/image/link_4.jpg"></a>
                            </li>
                            <li class="bnnr2"><a href="#"><img src="/resources/image/link_5.jpg"></a>
                            </li>
                            <li class="bnnr3"><a href="#"><img src="/resources/image/link_6.jpg"></a></li>
                            <!-- 광고 배너 링크 -->
                            <li>
                                <a href="#"><img class="side_banner_link" src="/resources/image/link_7.jpg"></a>
                            </li>
                            <div class="main-customer"><img src="/resources/image/link_8.gif" alt="고객센터 1599 - 6221"></div>
                            <div class="main-request">
                                <ul class="btn">
                                    <li class="btn-l" style="float:left;"><a href="#"><img src="/resources/image/link_9.gif"
                                                alt="1:1 상담신청"></a></li>
                                    <li class="btn-r"><a href="#"><img src="/resources/image/link_10.gif" alt="원격지원신청"></a></li>
                                    <br>
                                    <li class="btn-down"><a href="#"><img src="/resources/image/link_11.gif"
                                                alt="다운로드 프로그램 수동설치"></a>
                                    </li>
                                </ul>
                            </div>
                        </ul>

                    </div>
                </div>
            </fieldset>
            <fieldset class="sideField2" id="sideField2">
                <!-- 사이드 바 시작 -->
                <div class="navbar_sidebar" role="navigation" id="selectMenu">
                    <!-- 사이드 디자인 시작 -->
                    <div class="sidebar_navbar_collapse" aria-expanded="false">
                        <ul class="nav" id="side-menu">
                            <!-- 19 성인 자료실 -->
                            <li>
                                <img class="side_adult_link" style="border: none;" img src="/resources/image/banner_4.gif" onclick="myPage()">
                            </li>
                            <!-- 파일 공유 박스 -->
                            <li>
                                <img class="share_box" src="/resources/image/banner_3.gif">
                            </li>
                            <!-- 파일 공유 홈 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"></span>
                                        파일공유
                                        홈</i></a>
                            </li>
                            <!-- 내가 받은 자료 링크 -->
                            <li>
                                <a href="javascript:alert('로그인해 주세요.')"><i class="sub_Link"><span
                                            class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                        내가받은자료</i></a>
                            </li>
                            <!-- 내가 받은 음악 링크 -->
                            <li>
                                <a href="javascript:alert('로그인해 주세요.')"><i class="sub_Link"><span
                                            class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                        내가받은음악</i></a>
                            </li>
                            <!-- 내가 찜한 자료 링크 -->
                            <li>
                                <a href="javascript:alert('로그인해 주세요.')"><i class="sub_Link"><span
                                            class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                        내가찜한자료</i></a>
                            </li>
                            <!-- 빠른 검색 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 빠른검색</i></a>
                            </li>
                            <!-- IT 디스크 기획전 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> IT디스크 기획전&nbsp;&nbsp;&nbsp;<img
                                            src="/resources/image/new_img.gif"></i></a>
                            </li>
                            <!-- 방송 편성표 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 방송편성표</i></a>
                            </li>
                            <!-- 시청률 정보 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 시청률정보&nbsp;&nbsp;&nbsp;<img
                                            src="/resources/image/new_img.gif"></i></a>
                            </li>
                            <!-- 요일별 편성표 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 요일별 편성표&nbsp;&nbsp;&nbsp;<img
                                            src="/resources/image/new_img.gif"></i></a>
                            </li>
                            <!-- IT 디스크 TOP100 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> IT디스크&nbsp;&nbsp;<strong
                                            style="color:#00a0f0; font-weight: bold;">TOP100</strong></i></a>
                            </li>
                            <!-- 인기 콘텐츠 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 인기 콘텐츠</i></a>
                            </li>
                            <!-- 자료 요청 링크 -->
                            <li>
                                <a href=""><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"
                                            aria-hidden="true"></span> 자료요청</i></a>
                            </li>
                            <!-- 포인트 충전 링크 -->
                            <li>
                                <img class="side_point_link" src="/resources/image/banner_2.jpg">
                            </li>
                            <!-- 광고 배너 링크 -->
                            <li>
                                <img class="side_banner_link" src="/resources/image/banner_1.jpg">
                            </li>
                        </ul>
                    </div>
                </div>
            </fieldset>
            <fieldset class="memberReivse">
                <div class="navbar_sidebar" role="navigation" id="ReviseMenu">
                    <div class="sidebar_navbar_collapse" aria-expanded="false">
                        <ul class="nav" id="revise-menu">
                            <li>
                                <img class="side_adult_link" style="border: none;" img src="/resources/image/myPage.gif">
                            </li>
                          <li> 
                                <a href="/member/memberRevise" id="modify"><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"></span>
                                        회원수정</i></a>
                            </li>
                            <li>
                                <a href="/member/withdraw" id="remove"><i class="sub_Link"><span class="glyphicon glyphicon-menu-right"></span>
                                        회원탈퇴</i></a>
                            </li>
                        </ul>
                    </div>
                    </div>
            </fieldset>
        </div>
    </aside>
    
<script type="text/javascript"> 
	function loginId(){
		document.getElementById("sideField").style.display = "none";
		document.getElementById("sideField2").style.display = "block";
		
	}
	function logoutId(){
		document.getElementById("sideField").style.display = "block";
		document.getElementById("sideField2").style.display = "none";
	}
	function myPage(){
		document.getElementById("sideField").style.display = "none";
		document.getElementById("sideField2").style.display = "none";
		document.getElementById("memberReivse").style.display = "block";
	}
</script>
<!--

    <!-- aside end -->