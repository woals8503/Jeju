<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>공지사항</title>
    <link rel="shortcut icon" href="/resources/assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="/resources/assets/images/fav.jpg">
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/assets/css/all.min.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css" />
    <script src="https://kit.fontawesome.com/422d96f707.js" crossorigin="anonymous"></script>
</head>
    <body>
        <header class="container-flui">
           <div class="header-top">
               <div class="container">
                    <div class="row">
                        <div class="col-md-4 d-none d-md-block mail-detail">
                        </div>
                        <div class="col-md-4 logo">
                            <img src="/resources/assets/images/logo.png" alt="">
                            <a data-toggle="collapse" data-target="#menu-jk" href="#menu-jk"><i class="fas d-block d-sm-block d-md-none small-menu fa-bars"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div    div id="menu-jk" class="header-nav d-none d-md-block">
                <div class="container">
                    <div class="row nav-row">
                        <ul>
                            <li><a href="/home">홈</a></li>
                            <li><a href="/notice/list">공지사항</a></li>
                            <li><a href="detail.html">숙소 리스트</a></li>
                            <li><a href="destinations.html">커뮤니티</a></li>
                            <li><a href="/mypage/myPage">마이페이지</a></li>
                        </ul>
                    </div>
                </div>
            </div> 
        </header>   
        
 <!--  ************************* Page Title Starts Here ************************** -->
        <div class="page-nav no-margin row">
            <div class="container">
                <div class="row">
                    <h2>공지사항</h2>
                    <ul>
                        <li> <a href="/home"><i class="fas fa-home"></i> 홈</a></li>
                        <li><i class="fas fa-angle-double-right"></i> 공지사항</li>
                    </ul>
                </div>
            </div>
        </div>

              
    <!--################### Destinations Starts Here #######################--->
    	<c:if test="${empty nList }">
	        <div class="destinations container-fluid">
	        	<div class="container">
	                <div class="session-title">
	                    <h5 style="font-weight: bold; color: rgb(78, 163, 215);">서비스 공지사항</h5>
	                    <hr>   
	                </div>
	                <div class="col-md-7 center" style="margin-bottom: 70px;">
	                    <div class="row g-0 position-relative test2">
	                        <div class="col-md-6 p-6 ps-md-0">
	                            <div style="float: left; font-size: 21px; font-weight: bold"><a href="#" onclick="contents();">공지사항이 존재 하지않습니다.</a></div>
	                        </div>
	                    </div>
	                </div>
	                <hr>
	            </div>
	        </div>
        </c:if>
        <c:if test="${!empty nList }">
		        <div class="destinations container-fluid">
		        	<div class="container">
		                <div class="session-title">
		                    <h5 style="font-weight: bold; color: rgb(78, 163, 215);">서비스 공지사항</h5>
		                    <hr>   
		                </div>
		                <c:forEach items="${nList }" var="notice">
		                <div class="col-md-7 center" style="margin-bottom: 70px;">
		                    <div class="row g-0 position-relative test2">
		                        <div class="col-md-6 p-6 ps-md-0">
		                            <div style="float: left; font-size: 21px; font-weight: bold"><a href="/notice/detail?noticeNo=${notice.noticeNo }&page=${currentPage }" >${notice.noticeTitle}</a></div>
		                        </div>
		                    </div>
		                    <div style="float: left; font-weight: bold; color: rgb(173, 173, 173);">${notice.regDate }  조회수${notice.noticeCount }</div>
		                </div>
		                <hr>
	                </c:forEach>
	                <nav aria-label="Page navigation example">
						<ul class="pagination" align="center">
							<li class="page-item">
								<c:if test="${currentPage > 5}">
					 				<a class="page-link" href="/notice/${urlVal }?page=${startNavi - 1 }" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
			      					</a>
			      				</c:if>
		    				</li>
							<c:forEach var="p" begin="${startNavi }" end="${endNavi }">	
							    <li class="page-item"><a class="page-link" href="/notice/${urlVal }?page=${p }">${p }</a></li>
		    				</c:forEach>
		    				<c:if test="${maxPage-4 > currentPage }">
							    <li class="page-item">
							    	<a class="page-link" href="/notice/${urlVal }?page=${endNavi + 1 }" aria-label="Next">
				        				<span aria-hidden="true">&raquo;</span>
				      				</a>
			    				</li>
			    			</c:if>
						</ul>
					</nav>
	            </div>
	        </div>    
        </c:if>
        <br>
        <!-- 관리자 ID 체크 후 버튼 뿌려주기 -->
        <div>
            <div style="text-align: center; margin-bottom: 100px;">
                <a class="btn btn-outline-success" href="/notice/writeForm" >공지사항 작성</a>
            </div>
        </div>   
<!--*************** Footer  Starts Here *************** -->   
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 fotblog">
                        <p class="fab fa-instagram"></p>
                        <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Instagram</a> <br>
                        <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84%EB%A7%9B%EC%A7%91/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Restaurant</a> <br>
                        <a href="https://www.instagram.com/explore/tags/%EC%A0%9C%EC%A3%BC%EB%8F%84%EC%B9%B4%ED%8E%98/?next=%2Fspecial_jejudo%2F" style="color: white;" target="_blank">Cafe</a>
                    </div>
                    <div class="col-md-3 fotblog">
                        <p class="fab fa-facebook-square"></p>
                        <a href="https://www.facebook.com/happyjejudo" style="color: white;" target="_blank">Facebook</a>
                    </div>
                    <div class="col-md-3 glink">
                        <p class="fab fa-twitter-square"></p>
                        <a href="https://twitter.com/happyjejudo" style="color: white;" target="_blank">Twiter</a>
                    </div>
                    <div class="col-md-3 tags">
                        <h2>Contect</h2>
                        <p>email@email.com</p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
    <script src="/resources/assets/js/jquery-3.2.1.min.js"></script>
    <script src="/resources/assets/js/popper.min.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script src="/resources/assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="/resources/assets/plugins/slider/js/owl.carousel.min.js"></script>
    <script src="/resources/assets/js/script.js"></script>
    
</html>