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
    	border-right: 1px solid #dddddd;
 		}
  		th:first-child, td:first-child {
    	border-left: none;
 	 	}
 	 .tb_top_fixed{
 	 	background-color: #99CC99;
 	 } 	 	
 	 .top{
 	 	text-align:center;
 	 }
 	 div.prv_next_title{
 	 	width: 100%;
 	 }
 	 div.prv_title{
 	 	width: 50%;
 	 	float: left;

 	 }
 	 div.next_title{
 	 	width:50%;
 	 	float: right;
 	 }
 	 .board_detail{
 	 	border-left: thin solid #bbb;
 	 	border-right: thin solid #bbb;
 	 	border-bottom: thin solid #bbb;
 	 }
 	 div.minimalistBlack{
		border: thin solid #bbb;
		width: 100%;
		text-align: left;
		border-collapse: collapse;	
 	 }
 	 h1.title_1{
 	 	font-size:1.125rem;
 	 }
 	 h2.public{
 	 	font-size:1.5rem;
 	 }
 	 #content{
 	 	font-family:'Work Sans', sans-serif !important;
 	 	font-size: .9375rem;
 	 }
 	 #listBtn, #eBtn, #dBtn{
 	 	width: 50px;
 	 	height: 45px;
 	 	background: #CCE5FF;
 	 	border-radius: 5px;
 	 	font-size: small;
 	 	color: black;
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
    <!-- End Cart Sidebar Navigation -->


    <!-- End Categories Sidebar Navigation -->
	<main id="content">
        <div class="container" style="padding:50px">
        		<div class="col-md-12">
					  <div class="breadcrumb" style="background-color:white">
					    <div class="breadcrumb-item"><a href="/">
					    <img src="/img/home.png" alt="home" style="max-width: 20px;"></img>
					    </a>
					    </div>
					    <div class="breadcrumb-item"><a href="PBoard">공지사항</a></div>
					    <div class="breadcrumb-item active" aria-current="page">알림</div>
					  </div>
					  <br>
					  <img src="/img/도서관2.jpg" width="100%"  height="320" style="opacity:0.7;"/>
             			<br><br><br>
             			<div style="color:black; left: 40%; width: 20%; bottom: 130px; font-size: 60px; font-weight: bold;   position: absolute; text-align: center;">알림</div>
				</div>
        	<!-- <div class="container"style="padding:5px; text-align-last: right;">
        		<a href="#" class="btn btn-dark btn-sm">글쓰기</a>
        	</div> -->
       	<div class="container">
       		<!-- ADD START -->
       		<div class="content">
       				<form id="frm" method="Post" action="delete.do?pb_num=${pboard.pb_num}">
     					<table class="board_detail">
                <colgroup>
                    <col width="15%"/>
                    <col width="35%"/>
                    <col width="15%"/>
                    <col width="35%"/>
                </colgroup>
                <div>
                <h1 class="title_1">
                <img src="/img/title.png" alt="제목" style="max-width: 30px;"></img>
                <strong style="font-size: xx-large;">&nbsp;${pboard.pb_title}</strong></h1>
                </div>
                <tbody>
                    <tr>
                    	<th scope="row">글번호</th>
                        <td>${pboard.pb_num}</td>
                        <th scope="row">조회수</th>
                        <td>${pboard.pb_view }</td>
                    </tr>
                    <tr>
                   		<th scope="row">작성자</th>
                        <c:choose>
		        				<c:when test="${pboard.mem_num == 1}">
		        					<td>관리자</td>
		        				</c:when>
		        				<c:otherwise>
		        					<td>${pboard.mem_num }</td>
		        				</c:otherwise>
	        				</c:choose>
                        <th scope="row">작성일</th>
                        <td >${pboard.pb_rdate}</td>
                    </tr>
                    <tr>
                        <td colspan="4" class="view_text" style="width:100%; height: 400px;vertical-align: text-top;">
                            ${pboard.pb_content}
                        </td>
                    </tr>
                </tbody>
            </table>
       		 <div class="divTable minimalistBlack">
            	<div clss="divTableHeading">
					  <div class="divTableRow">
					  	<div class="divTableHead"><strong>첨부파일:</strong></div>
					  		<c:forEach var="filelist" items="${list}">	
                     			<c:if test="${!empty filelist.f_fname}">
                       		<div class="divTableHead">
                       		<a href="download?f_rname=${filelist.f_rname}">${filelist.f_rname}</a>
                       		</div>
                     		</c:if>
						</c:forEach>
					  	</div>
					 </div>
				 </div>
      			<div class="my-3 p-3 bg-white rounded shadow-sm">
					<c:choose >
					<c:when test="${move.next != 0}">
						<a style="color: #bbb;"> ▲ 다음글 | &nbsp;</a>
						<a href="/others/PBcontent?pb_num=${move.next}" style="color: black"> ${move.nexttitle} </a>
					</c:when>
					<c:when test="${move.next == 0}">
						<a style="color: #bbb;">다음글이 없습니다</a>
					</c:when>
					</c:choose>
					<br/><hr>
					<c:choose>
					<c:when test="${move.last != 0}">
						<a style="color: #bbb;">▼ 이전글 | &nbsp;</a>
						<a href="/others/PBcontent?pb_num=${move.last}" style="color: black"> ${move.lasttitle} </a>
					</c:when>
					<c:when test="${move.last == 0}">
						<a style="color: #bbb;">이전글이 없습니다</a>
					</c:when>
					</c:choose>
				</div>
				
            <div class="row" style="margin: auto; padding: 10px; justify-content: right;">
            <!-- ADD START -->
            <input type="hidden" name="pboardpb_num" value="${pboard.pb_num}">
            <td colspan='2' align='center'>
				<input type="button" id="listBtn" value="목록" onclick="location.href='PBoard'">
			<c:if test="${member.mem_pass eq 'admin'}">
				<input type="button" id="eBtn"value="수정" onclick="location.href='Update?pb_num=${pboard.pb_num}'">
				<input type="submit" id="dBtn" value="삭제">
			</c:if>
			</td>
			</div>
        			</form>
        		</div>
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