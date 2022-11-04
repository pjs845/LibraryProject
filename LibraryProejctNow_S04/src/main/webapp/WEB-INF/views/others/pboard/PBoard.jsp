<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
    table {
	    width: 100%;
	    border-top: 1px solid #663300;
	    border-collapse: collapse;
	    border-width:2px;
  		}
  	th{
  		background-color: #F4F4F4;
  	}
    th, td {
    	border-bottom: 1px solid #dddddd;
    	border-left: 1px solid #dddddd;
    	padding: 10px;
 		}
  		th:first-child, td:first-child {
    	border-left: none;
 	 	}
 	 .tb_top_fixed{
 	 	background-color: #CCE5FF;

 	 } 	 	
 	 .top{
 	 	text-align:center;
 	 	
 	 }
 	 #writebtn{
 	 	width: 75px;
 	 	height: 45px;
 	 	background: royalblue;
 	 	border: 3px solid balck;
 	 	border-radius: 5px;
 	 	color:beige;
 	 }
 	 #content{
 	 	font-family:'Work Sans', sans-serif !important;
 	 	font-size: .9375rem;
 	 }
 	 select {
 	  width: 90px;
	  padding: .4em .3em;
	  font-family: inherit;
	  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
	  -moz-appearance: none;
	  appearance: none;
	  border: 1px solid #999;
	  border-radius: 0px;
 	 }
 	 #keywordId{
    	width: 400px;
    	height: 36px;
 	 }
 	 #submitBtn, #resetBtn{
 	 	width: 50px;
 	 	height: 45px;
 	 	background: #CCE5FF;
 	 	border-radius: 5px;
 	 	font-size: small;
 	 	color: black;
 	 	text-align: center;
 	 	
 	 }
    </style>
 
    <!-- Title -->
    <title>책 4조 도서관</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">
    
    <!-- 부트스트랩 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      
      <!-- 네이버 아이디로그인 SDK -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/font/flaticon.css">
    <link rel="stylesheet" href="/css/slick.css"/>
    <link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="/css/pboard.css">

    <!-- JS Front -->
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/hs.megamenu.css">
    

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
    
    <!-- 공지사항 CSS -->
    <link rel="stylesheet" href="/css/other.css">
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
    <script>
		$(function(){
		 	$("#resetBtn").on("click", function(){
		 		location.href="PBoard?cp=1&searchModeStr=F";
		 	});
		});
	</script>
	
</head>
<body>

    <!-- ===== HEADER CONTENT ===== -->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!-- End Categories Sidebar Navigation -->
	<main id="content">
        <div class="container" >
        <br>
        		<div class="col-md-12">
        		<div class="breadcrumb" style="background-color:white">
					    <div class="breadcrumb-item"><a href="/">
					    <img src="/img/home.png" alt="home" style="max-width: 20px;"></img>
					    </a>
					    </div>
					    <div class="breadcrumb-item active" aria-current="page">공지사항</div>
					    <br>
					    </div>
        			  <img src="/img/도서관2.jpg" width="100%"  height="320" style="opacity:0.7;"/>
             			<br><br><br>
             			<div class="col-xs-12" style="color:black; width: 100%; bottom:160px; font-size: 3em; font-weight: bold; position: absolute; text-align:center">공지사항</div>
        		</div>
        	<div class="row" style="padding:5px">
			 <div class="col-md-10">전체<span> ${listResult.totaldb}</span>/ 검색 <span> ${listResult.totalCount}</span>
			 </div>
			 
		<!-- 조회수 조회수  -->

        		<div class="col-md-12 col-xl-12">
        		<table class="table">
        			<colgroup>
        				<col style="width:10%">
        				<col style="width:55%">
        				<col style="width:10%">
        				<col style="width:15%">
        				<col style="width:10%">
        			</colgroup>
        			<thead class="top">
        				<tr>
        					<th>번호</th>
        					<th>제목</th>
        					<th>작성자</th>
        					<th>작성일</th>
        					<th>조회</th>
        				</tr>
        			</thead>
        			<c:if test="${empty listResult}">
						<tr align="center" noshade>
						   <td colspan="5">데이터가 하나도 없습니다</td>
						</tr>
					</c:if>
        			<thead class="tb_top_fixed">
	        			<c:forEach items="${notice}" var="notice">
	        				<c:if test="${notice.pb_top == 1 }">
	        				<tr>
	        					<td style="text-align:center" >
	        						<img src="/img/public.png" alt="공지" style="max-width: 20px;"></img>
	        					</td>
	        					<td>
	        						<a href="PBcontent?pb_num=${notice.pb_num}"><strong style="color:black">${notice.pb_title}</strong></a>
	        					</td>
	        				<c:if test="${notice.mem_num == 1}">
	        					<td style="text-align:center">관리자</td>
	        				</c:if>
	        				<td style="text-align:center">${notice.pb_rdate}</td>
	        				<td style="text-align:center">${notice.pb_view}</td>
	        				</tr>
	        				</c:if>
	        				</c:forEach>
        			</thead>
        			
        			<tbody>
        			<c:forEach items="${listResult.list}" var="pboard">
        				<c:if test="${pboard.pb_top != 1 }">
        				<tr>
	        				<td style="text-align:center">${pboard.pb_num}</td>
	        				<td>
	        				<a href="PBcontent?pb_num=${pboard.pb_num}" style="color:black">${pboard.pb_title}</a>
	        				</td>
	        				<c:choose>
		        				<c:when test="${pboard.mem_num == 1}">
		        					<td style="text-align:center">관리자</td>
		        				</c:when>
		        				<c:otherwise>
		        					<td style="text-align:center">${pboard.mem_num }</td>
		        				</c:otherwise>
	        				</c:choose>
	        				<td style="text-align:center">${pboard.pb_rdate}</td>
	        				<td style="text-align:center">${pboard.pb_view}</td>
	        			</tr>
	        			</c:if>
	        		</c:forEach>
        			</tbody>
        			</table>
        		</div>
        		<div class="col-md-12" style="text-align: center;">
        	<form action="PBoard">
				<select name="catgo">
					<c:choose>
						<c:when test="${!empty searchModeStr && searchModeStr eq 'T'}">
							<c:choose>
								<c:when test="${catgo eq 'pb_title'}">
									<option value="pb_title" selected>제목</option>
									<option value="pb_content">내용</option>
								</c:when>
								
								<c:when test="${catgo eq 'pb_content'}">
									<option value="pb_title">제목</option>
									<option value="pb_content" selected>내용</option>
								</c:when>
							</c:choose>
						</c:when>
						<c:otherwise>
							<option value="pb_title" selected>제목</option>
							<option value="pb_content">내용</option>
						</c:otherwise>
					</c:choose>
				</select>
				<c:choose>  
					<c:when test="${!empty searchModeStr && searchModeStr eq 'T'}"> 
						<input type="text" name="keyword" required="required" id="keywordId" 
							value="${keyword}"/>
					</c:when>
					<c:otherwise>
						<input type="text" name="keyword" required="required" id="keywordId" placeholder="키워드를 입력하세요"/>
					</c:otherwise>
				</c:choose> 
				
					<input type="hidden" name="cp" value="1"/>
					<input type="hidden" name="searchModeStr" value="T"/>
					<input type="submit" value="검색" id="submitBtn"/>
					<input type="button" value="초기화" id="resetBtn"/>
			
				</form>
			</div>  
			<div class="container" style="padding:10px">
			  		<ul class="pagination" style="justify-content: center;">
			  			<c:if test="${listResult.cp != 1 }">
							<li class="page-item">
							<a class="page-link" href="PBoard?cp=${listResult.cp - 1}" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
							</a>
							</li>
						</c:if>	
			  			<c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
			  				<li class="page-item ${listResult.cp == i ? "active":"" }"><a class="page-link" href="PBoard?cp=${i}">${i}</a></li>
			    		</c:forEach>
			    		<c:if test="${listResult.cp != listResult.totalPageCount}">
			    			<li class="page-item">
			    			<a class="page-link" href="PBoard?cp=${listResult.cp + 1 }" aria-label="Next">
			    				<span aria-hiddin="true">&raquo;</span>
			    				<span class="sr-only">Next</span>
			    			</a>
			    			</li>
			    		</c:if>
			  		</ul>
			</div>
			
			<div class="container"style="padding:5px; text-align: center;">
			<c:if test="${member.mem_pass eq 'admin'}">
        		<form action="edit" id="t_1" method="GET">
        			<input id="writebtn" type="submit" value="글쓰기"/>
        		</form>
				</c:if>
        	</div>
        	
       	</div>
    </main>
    <!-- ====== END MAIN CONTENT ===== -->



    <!-- ===== END HEADER CONTENT ===== -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	    <!-- ========== END FOOTER ========== -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="/js/jquery.min.js"></script>
	    <script src="/js/jquery-migrate.min.js"></script>
	    <script src="/js/popper.min.js"></script>
	    <script src="/js/bootstrap.min.js"></script>
	    <script src="/js/slick.min.js"></script>
	    <script src="/js/jquery.zeynep.js"></script>
	    <script src="/js/hs.megamenu.js"></script>
	    <script src="/js/bootstrap-select.min.js"></script>
	    <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
	
	    <!-- JS HS Components -->
	    <script src="/js/other.js"></script>
	    <script src="/js/hs.core.js"></script>
	    <script src="/js/components/hs.unfold.js"></script>
	    <script src="/js/components/hs.malihu-scrollbar.js"></script>
	    <script src="/js/components/hs.slick-carousel.js"></script>
	    <script src="/js/components/hs.selectpicker.js"></script>
	    <script src="/js/components/hs.show-animation.js"></script>
	
	    <!-- JS Bookworm -->
	    <!-- <script src="../../assets/js/bookworm.js"></script> -->
    
	
	    <script>
	        $(document).on('ready', function () {
	            // initialization of unfold component
	            $.HSCore.components.HSUnfold.init($('[data-unfold-target]'));
	
	            // initialization of select picker
	            $.HSCore.components.HSSelectPicker.init('.js-select');
	
	            // initialization of slick carousel
	            $.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');
	
	            // initialization of malihu scrollbar
	            $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));
	
	            // initialization of show animations
	            $.HSCore.components.HSShowAnimation.init('.js-animation-link');
	
	            // init zeynepjs
	            var zeynep = $('.zeynep').zeynep({
	                onClosed: function () {
	                    // enable main wrapper element clicks on any its children element
	                    $("body main").attr("style", "");
	
	                    console.log('the side menu is closed.');
	                },
	                onOpened: function () {
	                    // disable main wrapper element clicks on any its children element
	                    $("body main").attr("style", "pointer-events: none;");
	
	                    console.log('the side menu is opened.');
	                }
	            });
	
	            // handle zeynep overlay click
	            $(".zeynep-overlay").click(function () {
	                zeynep.close();
	            });
	
	            // open side menu if the button is clicked
	            $(".cat-menu").click(function () {
	                if ($("html").hasClass("zeynep-opened")) {
	                    zeynep.close();
	                } else {
	                    zeynep.open();
	                }
	            });
	        });
	    </script>
</body>
</html>