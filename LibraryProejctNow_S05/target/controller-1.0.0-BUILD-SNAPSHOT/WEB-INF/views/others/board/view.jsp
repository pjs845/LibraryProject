<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
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
    .form-control:read-only{
    	background:#f7f7f7 !important;
    }
    
    body{
        line-height:2em;        
}

    #mainWrapper{
        width: 55%;
        margin: 0 auto; /*가운데 정렬*/
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
}
    #reviewWrapper{
        width: 55%;
        margin: 0 auto; /*가운데 정렬*/
    }

    #reviewWrapper > ul > li:first-child {
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
	<%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ===== -->
    <main id="content">
		<div class="py-1 py-lg-7" style="position: relative;">
             <h6 class="font-weight-medium font-size-7 text-center my-1">
             <img  src="/img/도서관2.jpg" width="80%"  height="320"/>
             <br><br><br>
          <div id="font"style="color:#112237; left: 40%; width: 20%; height:25%; bottom: 220px; font-size: 1.7em; font-weight: bold;   position: absolute">게시글 상세보기</div></h6>
        </div>
        <div id="mainWrapper">
			<article>		
				<div class="container" role="main">
					<form name="form" id="form" role="form" method="post" action="/others/view.do">	
					<input type="hidden" name="b_num" value="${bo.b_num}">
						<div class="mb-3">
						<h2><b>${bo.b_title}</b></h2>
						
						</div>
						<div class="mb-3">
							<label for="reg_id"><b>작성자:</b></label>					
							${bo.member.mem_name} |
							<label for="reg_date"><b>작성일:</b></label>					
							${bo.b_rdate} |
							<input type="hidden" name="b_num" value="${bo.b_num}">
							<label for="reg_view"><b>조회수:</b></label>
							${bo.b_view}	
						</div>
						<hr width = "100%" color = "#5499b7" size = "3">
						<div class="mb-3">
							<label for="content"><b>내용</b></label>	
							<textarea class="form-control" style=" text-align: left; line-height: 180%; font-size: larger;" rows="5" name="content" id="content" readonly >${bo.b_content}</textarea>	
						</div>	
						
					</form>	
					<form name="form10" id="form10" role="form10" method="post">
					<input type="hidden" name="b_num" value="${bo.b_num}">
					<c:set var="loginId" value="${sessionScope.member.mem_name}"/>
					
					<button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnList" onclick="location.href='/others/read.do'">목록</button>
					<c:if test="${loginId==bo.member.mem_name}">   
					<span style="float:right; padding-top: 10px;">
					<button type="button"  class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnSave" onclick="location.href='/others/update?b_num=${bo.b_num}'">수정</button>
					<button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" id="btnDel" onclick="delok0(${bo.b_num})">삭제</button>
					</span>
					</c:if>
             		  <script>
                              function delok0(bo){
                                 var delConfirm0 = confirm("삭제하시면 복구 할 수 없습니다. 게시물을  삭제하시겠습니까?");
                                 if(delConfirm0){
                                   location.href='/others/del.do?b_num='+bo;
                                     alert('삭제되었습니다');
                                 }else{
                                    alert('삭제가 취소되었습니다');
                                 }
                              }
                    </script>
					</form>
			<br><br>
			<form name="form" id="form" role="form" method="post" action="/others/view.do">
			<c:if test="${pre != null}">
			<div style="display: flex; align-items: stretch; height: 41px; border-right: 1px solid #e2e2e2; border-left: 1px solid #e2e2e2; border-top: 1px solid #e2e2e2; border-bottom: 1px solid #e2e2e2;">

				<a style=" border: solid transparent; border-radius: 4px;  background-color: #d0d0d0;  width: 110px; height: auto; color: #646464; background-color: #f5f5f5;   display: inline-flex;  justify-content: center; align-items: center; min-width: 40px; height: 40px; color: #000; font-size: 14px; font-weight: 400; line-height: 100%; vertical-align: middle;"><b>▲이전글</b></a>
				<a class="link-black-100 mb-1" href="/others/view.do?b_num=${pre.b_num}">&nbsp<b>${pre.b_title}</b></a>
				
			</div>
			</c:if>
			<c:if test="${next != null}">
			<div style="display: flex; align-items: stretch; height: 41px; border-right: 1px solid #e2e2e2; border-left: 1px solid #e2e2e2; border-top: 1px solid #e2e2e2; border-bottom: 1px solid #e2e2e2;">
					
				<a style=" border: solid transparent; border-radius: 4px;  background-color: #d0d0d0;  width: 110px; height: auto; color: #646464; background-color: #f5f5f5;   display: inline-flex;  justify-content: center; align-items: center; min-width: 40px; height: 40px; color: #000; font-size: 14px; font-weight: 400; line-height: 100%; vertical-align: middle;"><b>▼다음글</b></a>
				<a class="link-black-100 mb-1" href="/others/view.do?b_num=${next.b_num}" >&nbsp<b>${next.b_title}</b></a>
				
			</div>
				</c:if>
				<br><br>
		
			</form>	
		</div>	
		
			</article>  
    </div>
   <!-- Features Section -->
   <div id="reviewWrapper">
                   <!-- Nav Classic -->					
                        <hr width = "100%" color = "#5499b7" size = "5">   
                        <h4 > 댓글(<b style="color:#5499b7 ;"> ${count} </b>)
                        
                        </h4>
                        
                                  <br>
                   <!-- End Nav Classic -->
                    <!-- Tab Content -->
                    <div class="tab-content container" id="pills-tabContent">
                        <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade pt-9" id="pills-three-example1" role="tabpanel" aria-labelledby="pills-three-example1-tab">
                          
                            <!-- End Mockup Block -->
                        </div>
                            <!-- Mockup Block -->
                            <!-- <h4 class="font-size-3 mb-8">1-5 of 44 reviews</h4> -->
                            <form id="submitForm" name="form" id="contentform" role="form" method="post" action="/others/create.do">  
                            <input type="hidden" name="seq" id="seq" value=""/>
        
                               <div class="js-form-message form-group mb-4">
                                   <label for="content" class="form-label text-dark h6 mb-3">댓글</label>
                                   <textarea name="content"class="form-control rounded-0 p-4" rows="4" id="descriptionTextarea" placeholder="댓글을 입력해주세요" required data-msg="Please enter your message." data-error-class="u-has-error" data-success-class="u-has-success"></textarea>
                                   <!--<c:if test="${empty id }">로그인이 필요합니다.</c:if>-->
                               <!-- </div>
                               <div class="form-group mb-5">
                                -->
                                <br>
                                
                                   <input  type="hidden"  for="writer" class="form-label text-dark h6 mb-3" name="writer" id="writer" value=${member.mem_name}>작성자&nbsp:&nbsp&nbsp<b>${member.mem_name}</b></input>
                                   
                                   <button type="button"class="btn btn-primary btn-sm-wide transition-3d-hover"  style="float:right;" id="btnComment" form="contentform">댓글 달기</button>
                               </div>
                               </form>
                               
                            <hr width = "100%" color = "#5499b7" size = "5">

							<br><br>
                            <div id="reviewTable">
                            <c:forEach items="${list}" var="Review">
                                <li class="border-bottom" >
                                    <div class="d-flex align-items-center mb-3">
                                        <h5 class="mb-0" style="font-weight: bold;">${Review.writer}</h5>
                                        <a class="text-gray-600">&nbsp|&nbsp${Review.regdate}</a>
                                       <input type="hidden" name="b_num" value="${bo.b_num}">
			                           <c:set var="loginId" value="${sessionScope.member.mem_name}"/>
			                           <c:if test="${loginId==Review.writer}">   
			                                <button type="button" style="float:right; font-size: 12px; line-height: 16px; padding: 0px 12px; height: 28px;  background-color: var(--gray0);  border-width: 1px; border-style: solid; border-image: initial;  border-color: var(--gray250); display: inline-block;  vertical-align: middle; border-radius: 4px; background-repeat: no-repeat; background-position: center center; color: var(--gray400);"  id="btnList" onclick="delok(${Review.num},${writer})">삭제</button>
			                          </c:if>    
                                    </div>
                                    
                                    <div id="${Review.content}">
                                    	<p id="${Review.content}1" class="mb-0 text-lh-md"style="text-align:left;">${Review.content}</p>                                	
                                    </div>
                          			<script>
                                    function delok(Review, writer){
                                   	 var delConfirm = confirm("삭제하시면 복구 할 수 없습니다. 삭제하시겠습니까?");
                                   	 if(delConfirm){
                                   		 location.href='/others/delete?num='+Review;
                                 			 alert('삭제되었습니다');
                                   	 }else{
                                   		 alert('삭제가 취소되었습니다');
                                   	 }
                                    }
                          			</script>
                           </c:forEach>
                          
                            </div> 
                            <div style="text-align: center" id="addbtn">
                             <c:if test="${ count >4}">
                            		<button onClick="add()"style="float:center; font-size: 18px; line-height: 16px; padding: 0px 12px; width: 120px; height: 45px;  background-color: var(--gray0);  border-width: 1px; border-style: solid; border-image: initial;  border-color: var(--gray250); display: inline-block;  vertical-align: middle; border-radius: 4px; background-repeat: no-repeat; background-position: center center; color: var(--gray400);" >더보기</button>
                            </c:if>
                            </div>
                            <br>

                            <!-- Script -->
                                                        <!-- Script -->
                             <script>
                             
                                  var para = document.location.href.split("?");         
                                  var subPageStart = para[1].indexOf('=', para[1].indexOf('seq'))+1;
                                  var subPageEnd = para[1].indexOf('&', para[1].indexOf('seq'));   
                                  if(subPageEnd==-1){
                                     var page = para[1].substring(subPageStart);
                                  }else{
                                     var page = para[1].substring(subPageStart, subPageEnd);
                                  }
                                  $('#seq').attr('value', page);
                                  
                                  $(document).ready(function (e){
                                   $('#btnComment').on("click", function(){
                                      if("${member}".length>0){
                                         if($("#descriptionTextarea").val() != ""){
                                            $('#submitForm').submit();
                                         }else{
                                            alert("내용을 적어야 됩니다")
                                         }
                                         
                                      }else{
                                         console.log("member없음");
                                         alert("로그인을 하셔야 이용하실 수 있습니다");
                                         location.href='/';
                                      }
                                   });  
                                  });
                                  
                          var i=0;
                          function add(){
                          
                          i++;
                          console.log(i*5);
                          console.log(i*5 + 5);
                            var info = {
                                  startRow: i*5,
                                  endRow: i*5 + 5,
                                  seq:${bo.b_num}
                                
                              }
                            
                             $.ajax({
                                  url : "/others/add",
                                  type : 'post',
                                  contentType: "application/json;charset=UTF-8",
                                  data : JSON.stringify(info),
                                  success : function(data) {
                                     //alert("성공");
                                     var review = JSON.parse(data);
                                     
                                     console.log(review);
                                     for(var i=0; i<review.review.length; i++){
                                            var html = '<div class="d-flex align-items-center mb-3">'+'<h5 class="mb-0" style="font-weight: bold;">'+review.review[i].writer+'</h5>'
                                            html += '<a class="text-gray-600">&nbsp;|&nbsp;'+review.review[i].regdate+'</a>'
                                            +' <input type="hidden" name="b_num" value="${bo.b_num}">'
                                            +'<c:set var="loginId" value="${sessionScope.member.mem_name}"/>'
                                            if("${sessionScope.member.mem_name}" == review.review[i].writer){
                                        html += '&nbsp&nbsp <button type="button" style="float:right; font-size: 12px; line-height: 16px; padding: 0px 12px; height: 28px;  background-color: var(--gray0);  border-width: 1px; border-style: solid; border-image: initial;  border-color: var(--gray250); display: inline-block;  vertical-align: middle; border-radius: 4px; background-repeat: no-repeat; background-position: center center; color: var(--gray400);"  id="btnList" onclick="delok('+review.review[i].num+',$(writer))">삭제</button>'
                                       }
                                            html +='</div>'
                                            html += '<div id="${Review.content}">'+'<p id="${Review.content}1" class="mb-0 text-lh-md" style="text-align:left;">'+review.review[i].content+'</p>'+'</div>'

                                           var newDiv = document.createElement("li")
                                            newDiv.setAttribute("class", "border-bottom")
                                            newDiv.innerHTML = html
                                          
                                           const elementParent = document.getElementById("reviewTable")
                                            elementParent.appendChild(newDiv)                                               
                                            var endrow = info["endRow"];
                                            var count = review.count;                                                                                     
                                            if(endrow>count || endrow===4){
                                               $('#addbtn').empty();                                               
                                            }
                                     }
                                    },
                                  error : function() {
                                     alert("error");
                                  }
                               });                                                                                         
                       }
                               </script>
                    
                    </div>
                    <!-- End Tab Content -->
         </div>      
   </article>
   
    <!-- ====== END MAIN CONTENT ===== -->
   <!-- 상단으로 이동하기 버튼 -->
<a href="#" class="btn_gotop">
  <span class="glyphicon glyphicon-chevron-up">
  <img src="/img/화살표.png" style="width:55px"></img> 
  </span>
</a>

<style> 
.btn_gotop { 
	position: fixed; 
	bottom: 35px; /* 탑버튼을 화면의 가장 아래에서 몇 픽셀 떨어뜨릴 것인지 정하세요*/ 
	right: 30px; /* 탑버튼을 화면의 가장 오른쪽에서 몇 픽셀 떨어뜨릴 것인지 정하세요*/ 
	z-index: 999; 
	outline: none; 
	/* background-color: white;  */
	cursor: pointer; 
} 
</style>

<script>
	$(window).scroll(function(){
		if ($(this).scrollTop() > 900){
			$('.btn_gotop').show();
		} else{
			$('.btn_gotop').hide();
		}
	});
	$('.btn_gotop').click(function(){
		$('html, body').animate({scrollTop:0},400);
		return false;
	});
</script>
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
									<a><img src='https://ifh.cc/g/syLZZr.png' border='100%;'width="300;"></a>
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
