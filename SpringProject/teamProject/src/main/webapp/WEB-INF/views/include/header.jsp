<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- <link rel='stylesheet' type='text/css' media='screen' href='main.css'> -->
    <link rel="short icon" href="/resources/image/save.png" type="image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        type="text/css" />
    <link rel="stylesheet" media='screen' type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" media='screen'type="text/css" href="/resources/css/footer.css">
    <link rel="stylesheet" media='screen' type="text/css" href="/resources/css/header.css">
<!--     <link rel="stylesheet" media='screen' href="/resources/css/aside.css"> -->
	<link rel="stylesheet" media='screen' type="text/css" href="/resources/css/signUp.css">
    <link rel="stylesheet" media='screen' type="text/css" href="/resources/css/Movie_List.css">
	<link rel="stylesheet" media='screen' type="text/css" href="/resources/css/withdraw.css">
	<link rel="stylesheet" href="/resources/css/p2p.css">
	

<body>
    <!--Header 부분-->
    <header>
        <div class="container">
            <div><a class="cursor" href=""><img src="/resources/image/LOGO.PNG" style="height:80px" alt="" srcset=""></a></div>
            <nav class="navbar navbar-expand-lg navbar-light bg-primary">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <a class="navbar-brand" href="#">ITDISK</a>
                    <ul class="navbar-nav cursor">
                        <li class="nav-item"><a class="nav-link glyphicon glyphicon-inbox" href="">TOP 100</a></li>
                        <li class="nav-item"><a class="nav-link glyphicon glyphicon-book" href="">FILESHARE </a></li>
                        <li class="nav-item"><a class="nav-link glyphicon glyphicon-chevron-left" href="">COMUNITY </a>
                        </li>
                        <li class="nav-item"><a class="nav-link glyphicon glyphicon glyphicon-bell" href="">EVENT </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <!-- 검색부분 -->
    <section class="search">
        <div class="container">
            <fieldset class="searchField">
                <form id="searchForm" class="searchForm" action="list" method="get">
                    <select name="type" class="typeSelected cursor">
                        <!-- <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }" />--</option> -->
                        <option value="T"> <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }" />제목</option>
                        <option value="C"> <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }" />내용</option>
                        <option value="W"> <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }" />작성자</option>
                        <option value="TC"> <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }" />제목 OR 내용
                        </option>
                        <option value="TW" ><c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }" />제목 OR 작성자
                        </option>
                        <option value="TWC"> <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':'' }" />제목 OR 내용 OR
                        작성자
                        </option>
                    </select>
                    <input type="text" class="keyword" name="keyword" />
                    <input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum }'>
                    <input type="hidden" name="amount" value='${pageMaker.cri.amount }'>
                    <button class='btn btn-danger'>Search</button>
                </form>
                <div class="d-flex justify-content-center cursor">
                                      <div class="p-2 bd-highlight click"><a class="categorylink bord" id="fon" href="/board/main?category=전체">전체 &nbsp;</a>
                    </div>
                    <div class="p-2 bd-highlight click"><a class="categorylink bord" id="fon" href="/board/main?category=영화">영화 &nbsp;</a>
                    </div>
                    <div class="p-2 bd-highlight click"><a class="categorylink bord" id="fon" href="/board/main?category=드라마">드라마 &nbsp;</a>
                    </div>
                    <div class="p-2 bd-highlight click"><a class="categorylink bord" id="fon" href="/board/main?category=음악">음악 &nbsp;</a>
                    </div>
                    <div class="p-2 bd-highlight click"><a class="categorylink" id="fon" href="/board/main?category=유틸">유틸</a></div>
                </div>
            </fieldset>
        </div>
    </section>
    <section class="silde">
        <div class="container">
            <fieldset class="sildebar">
                <div class="wordflex">
                    <div class="product-desc">
                        <h3> 인기 영화 리스트</h3>
                    </div>
                    <div class="product-desc">
                        <h4> Contents</h4>
                    </div>
                </div>
                <div id="product-slider">
                    <div class="product-box">
                        <img src="/resources/image/post1.jpg" />
                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post2.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post3.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post4.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post5.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post6.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post7.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post8.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post9.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post10.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post11.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post12.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post13.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post14.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post15.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post16.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post17.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post18.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post19.jpg" />

                    </div>
                    <div class="product-box">
                        <img src="/resources/image/post20.jpg" />

                    </div>
                </div>

            </fieldset>
        </div>
    </section>