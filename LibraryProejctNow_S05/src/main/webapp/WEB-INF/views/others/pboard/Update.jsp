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
    	border-bottom:  thin solid #bbb;
    	border-left:  thin solid #bbb;
    	padding: 10px;
    	border-right: thin solid #bbb;
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
			var title = tfr.pb_title.value;
			var content = tfr.pb_content.value;
			if(title == "" || title == null ){	
				alert("제목을 입력하세요");
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
	<script type="text/javascript">
		$(document).ready(function(){
			$("a[name='file-delete']").on("click", function(e){
				e.preventDefault();
				deleteFile($(this))
			});
			
		})
		function deleteFile(obj){
			obj.parent().remove();
		}
	</script>
</head>
<body>

    <!-- ===== HEADER CONTENT ===== -->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!-- End Categories Sidebar Navigation -->
	<main id="content">
        <div class="container" style="padding:50px">
        		<div class="col-md-12">
        			<h3>수정</h3>
        			<br/>
				</div>
        	<!-- <div class="container"style="padding:5px; text-align-last: right;">
        		<a href="#" class="btn btn-dark btn-sm">글쓰기</a>
        	</div> -->
        	<div class="container">
        <!-- ADD START -->
        <form id="tfr" method="post" action="Update.do?pb_num=${pboard.pb_num}" enctype="multipart/form-data" onsubmit="return fcheck()">
        <!-- ADD END -->
            <table class="board_detail">
                <colgroup>
                    <col width="15%"/>
                    <col width="35%"/>
                    <col width="15%"/>
                    <col width="35%"/>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">글 번호</th>
                        <td>${pboard.pb_num}</td>
                        <th scope="row">조회수</th>
                        <td>${pboard.pb_view}</td>
                    </tr>
                    <tr>
                        <th scope="row">작성자</th>
                       	<td>
                       		<input type="text" name="mem_name" readonly value="${member.mem_name}" style="background: #CCCCCC;"/>
            				<input type="hidden" name="mem_num" value="${member.mem_num}"/>
            			</td>
                        <th scope="row">작성일</th>
                        <td >${pboard.pb_rdate}</td>
                    </tr>
                    <tr>
                        <th scope="row">제목</th>
                        <td><input type="text" id="title" name="pb_title" style="width:100%" value="${pboard.pb_title}"/></td>
                        <th>첨부파일</th>
						<td align="left">
							<input type="file" multiple="multiple" name="uploadFile"/>
                    </tr>
                    <tr>
                    <th>내용</th>
                        <td colspan="4" class="view_text">
                            <textarea title="내용" id="editor" name="pb_content" style="width: 100%; height: 300px;">${pboard.pb_content}</textarea>
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
                       		<a>${filelist.f_rname}</a>
                       		<input type="hidden" id="FNUM" name="FNUM" value="${filelist.f_num}"/>
	                       	<a href="#this" name='file-delete'>삭제</a>
                       		</div>
                     			</c:if>
						</c:forEach>
					  	</div>
					 </div>
				 </div>
                       
            <!-- ADD START -->
            <input type="hidden" name="boardpb_num" value="${pboard.pb_num}">
           	<p style="text-align: right;">
           	<p style="float: right">
        		<c:choose>
					<c:when test="${pboard.pb_top == 1 }">
						<input type="checkbox" name="pb_top" id="check_top" value="1" checked="checked"/>&nbsp; 상단고정 &nbsp;
					</c:when>
					<c:otherwise>
						<input type="checkbox" name="pb_top" id="check_top" value="1"/>&nbsp; 상단고정 &nbsp;
					</c:otherwise>
				</c:choose>
				<input type='submit' value='확인'>
				<input type="button" value="취소" onclick="location.href='PBcontent?pb_num=${pboard.pb_num}'">
			</p>
        </form>
     
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
	    <script src="/js/ckeditor/ckeditor.js"></script>
		<script>
			CKEDITOR.replace('editor')
			CKEDITOR.config.height = "600px";
			</script>
</body>
</html>