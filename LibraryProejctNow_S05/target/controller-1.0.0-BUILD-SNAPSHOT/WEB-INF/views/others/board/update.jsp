<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Contact Us | Bookworm</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
    <!-- 게시판 css -->
    <style type="text/css">
    body{
        line-height:2em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:0;
}

    #mainWrapper{
        width: 75%;
        margin: 0 auto; /*가운데 정렬*/
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:10px;}
    

    #ulTable > li:first-child > ul > li {
        background-color:#c9c9c9;
        font-weight:bold;
        text-align:center;
}

    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:10pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

    #ulTable > li > ul > li:first-child               {width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:45%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     {width:15%;} /*작성자 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/

    #divPaging {
          clear:both; 
        margin:0 auto; 
        width:220px; 
        height:50px;
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
}

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}

    .left {
        text-align : left;
}
@font-face {
    font-family: 'MapoFlowerIsland';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoFlowerIslandA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

*{
	font-family: 'MapoFlowerIsland';
}
@font-face {
    font-family: '국립박물관문화재단클래식B';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/국립박물관문화재단클래식B.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
#font{
	 font-family: '국립박물관문화재단클래식B';
}

</style>
</head>
<body>
    <!--===== HEADER CONTENT =====-->
 	
 		<jsp:include page="/WEB-INF/views/subheader.jsp" />
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ===== -->
    <main id="content">
		<div class="py-1 py-lg-7" style="position: relative;">
             <h6 class="font-weight-medium font-size-7 text-center my-1">
             <img  src="/img/도서관4.jpg" width="80%"  height="320"/>
             <br><br><br>
        <div id="font"style="color:#112237; left: 40%; width: 20%; height:25%; bottom: 220px; font-size: 1.7em; font-weight: bold;   position: absolute">수정하기</div></h6>
        </div>
        <div id="mainWrapper">
			<div class="mb-3">
				<label for="reg_id"><b>작성자:</b></label>					
				${bo.member.mem_name} |
				<label for="reg_date"><b>작성일:</b></label>					
				${bo.b_rdate} |
				<label for="reg_view"><b>조회수:</b></label>
				${bo.b_view}	
			</div>
			<hr width = "100%" color = "#5499b7" size = "3">
			<article>		
				<div  class="container" role="main">
					<form name="form" id="form" role="form" method="post" action="/others/update.do">	
					<input type="hidden" name="b_num" value="${bo.b_num}">
					<input type="hidden" class="form-control" name="mem_num" id="mem_num" readonly value="${member.mem_num}"/>
						<div class="mb-3" id="box" >
						<label for="b_title">제목</label>
						<input type="text" class="form-control" name="b_title" id="b_title" value="${bo.b_title}">	
						</div>
						<div class="mb-3" id="box" >
							<label for="b_content">내용</label>	
							<textarea class="form-control" rows="5" name="b_content" id="b_content">${bo.b_content}</textarea>	
						</div>	
					</form>	
					
					<button type="submit"  class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnSave" form="form">수정</button>
					<button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnDel" onclick="location.href='/others/del.do?b_num=${bo.b_num}'">삭제</button>
					<button type="button" style="float:right;" class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnList" onclick="location.href='/others/read.do'">목록</button>
			
			<br><br>
				</div>	
			</article>
     
<br><br>
     
    </div>
   
    <!-- ====== END MAIN CONTENT ===== -->

    <!-- ========== FOOTER ========== -->
  <footer>
        <div class="border-top space-top-2"style="background-color:Gainsboro !important"><!-- style="background: darkgray;" -->
<!--         푸터(footer)는 보통 <footer> 요소가 포함되어 있는 문서나 섹션에 대한 아래와 같은 정보를 포함합니다.

		- 저자(author) 정보
		- 저작권 정보
		- 연락처
		- 사이트맵(sitemap)
		- 페이지 맨 위로 되돌아갈 수 있는 Top 버튼
		- 연관 페이지 등 -->
          <!--   <div class="border-bottom pb-2"> -->
                <div class="container">

                    <div class="row">
                        <div class="col-lg-3 mb-4 mb-lg-0">
                            <div class="pb-1"id="map" style="width:200%;height:50%;">
                                <a href="../" class="d-inline-block mb-5">
									<img src='https://ifh.cc/g/syLZZr.png' border='100%;'width="300;"></a>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-5 mb-6 mb-lg-0">
                           	    <address class="font-size-2">
                                    <span class="mb-2 font-weight-normal text-dark">
                                        (153-759) 서울시 금천구 가산동 426-5 월드메르디앙 2차 415호 
                                        <br>
                                        15강의실
                                        <br>
                                         TEL : 02-2025-8523 
                                         <br>
                                         FAX : 02-2025-4113
                                    </span>
                                </address> 
                        </div>
                        <!-- <div class="col-lg-3 mb-4 mb-lg-0"style="float: right; ">
                            * 카카오맵 - 지도퍼가기
							1. 지도 노드
							<div id="daumRoughmapContainer1666601305997" class="root_daum_roughmap root_daum_roughmap_landing" style="border: 1px;"></div>							
							
								2. 설치 스크립트
								* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
							
							<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
							
							3. 실행 스크립트
							<script charset="UTF-8">
								new daum.roughmap.Lander({
									"timestamp" : "1666601305997",
									"key" : "2c6se",
									"mapWidth" : "350",
									"mapHeight" : "170"
								}).render();
							</script>
							<br><br><br>
                        </div> -->
                        
                    </div>
                </div>
           <!--  </div> -->
        </div>
    </footer>
    <!-- ========== END FOOTER ========== -->

   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/vendor/slick-carousel/slick/slick.min.js"></script>
    <script src="/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js"></script>
    <script src="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>


    <!-- JS HS Components -->
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.header.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="/js/bookworm.js"></script> -->
    <script>
        $(document).on('ready', function () {
            // initialization of unfold component
            $.HSCore.components.HSUnfold.init($('[data-unfold-target]'));

            // initialization of slick carousel
            $.HSCore.components.HSSlickCarousel.init('.js-slick-carousel');

            // initialization of header
            $.HSCore.components.HSHeader.init($('#header'));

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
