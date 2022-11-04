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
 	 	background-color: #99CC99;
 	 } 	 	
 	 .top{
 	 	text-align:center;
 	 }
 	  #btnSave, #wbtn{
 	 	width: 75px;
 	 	height: 45px;
 	 	backgroud-color: gold;
 	 	border: 3px solid balck;
 	 	border-radius: 5px;
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
	<script>
		function fcheck(){
			var title = tform.pb_title;
			if(title.value == null || title.value == "" ){	
				alert("제목을 입력하세요");
				setTimeout(title.focus());
				return false;
			}
			if(CKEDITOR.instances.editor.getData() == "" 
					||CKEDITOR.instances.editor.getData().length == 0 ){
				alert("내용을 입력하세요");
				return false;
			}
			return true;
		}
	</script>
</head>
<body>

    <!-- ===== HEADER CONTENT ===== -->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!-- End Categories Sidebar Navigation -->
	<main id="content">
        <div class="container" style="padding:50px">
        	<!-- <div class="container"style="padding:5px; text-align-last: right;">
        		<a href="#" class="btn btn-dark btn-sm">글쓰기</a>
        	</div> -->
        		
        	<div class="container">
        	<h3><strong>작성</strong></h3>
        	<br/><br/>
        		<div class="mb-3">
        			<form name="tform" action="edit.do" method="post" enctype="multipart/form-data" onsubmit="return fcheck();">
        				<lable class="form-label">제목</lable>
        					<input name="pb_title" class="form-control" id="exampleFormControlInput1" />
        				<label class="form-label">작성자</label>
        					<input name="mem-name" class="form-control" id="exampleFormControlInput1" readonly value="${member.mem_name}" style="background:#CCCCCC; width:150px;">
        					<input type="hidden" name="mem_num" value="${member.mem_num}" />
        				<label class="form-label">내용</label>
        					<textarea class="form-control" name="pb_content" id="editor"></textarea>
        				<label class="form-label">첨부파일</label>
        				<input class="form-control" type="file" id="formFileMultiple" multiple name="uploadFile" />
        				<p style="float: right">
        				<input type="checkbox" name="pb_top" id="check" value="1">&nbsp; 상단고정 &nbsp;&nbsp;</input>
	   					<input type="button" value="취소" id=btnSave onclick="location.href='PBoard'" style="float: right">
	   					<input type="submit" value="작성" id=wbtn style="float: right">
	   					</p>
        			</form>
        		</div>
        		
			</div>
			
		<!-- ---------------------------------------------------------------------- -->
        	
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
    	<!-- ckeditor -->
    	<!--  <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
    	<script>
    		ClassicEditor
    		.create( document.querySelector( '#editor' ), {
    		    language: "ko"
    		  } );
		</script>-->
		
		<script src="/js/ckeditor/ckeditor.js"></script>
		<script>
			CKEDITOR.replace('editor')
			CKEDITOR.config.height = "600px";
		</script>
	
	
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