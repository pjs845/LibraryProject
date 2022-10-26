<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

 
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
        <div class="container" style="padding:50px">
        		<div class="col-md-12">
        			<h3 style="text-align: center;">공지사항</h3>
					  <ol class="breadcrumb" style="background-color:white">
					    <li class="breadcrumb-item"><a href="/">Home</a></li>
					    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
					  </ol>
        		</div>
        <div class="row" style="justify-content: center;">
        	<form action="PBoard">
				<select name="catgo">
					<c:choose>
						<c:when test="${!empty searchModeStr && searchModeStr eq 'T'}">
							<c:choose>
								<c:when test="${catgo eq 'pb_title'}">
									<option value="pb_title" selected>제목</option>
									<option value="mem_num">글쓴이</option>
									<option value="pb_content">내용</option>
								</c:when>
								<c:when test="${catgo eq 'mem_num'}">
									<option value="pb_title">제목</option>
									<option value="mem_num" selected>글쓴이</option>
									<option value="pb_content">내용</option>
								</c:when>
								<c:when test="${catgo eq 'pb_content'}">
									<option value="pb_title">제목</option>
									<option value="pb_num">글쓴이</option>
									<option value="pb_content" selected>내용</option>
								</c:when>
							</c:choose>
						</c:when>
						<c:otherwise>
							<option value="pb_title" selected>제목</option>
							<option value="mem_num">글쓴이</option>
							<option value="pb_content">내용</option>
						</c:otherwise>
					</c:choose>
				</select>
				<c:choose>  
					<c:when test="${!empty searchModeStr && searchModeStr eq 'T'}"> 
						<input type="text" name="keyword" size="40" required="required" id="keywordId" 
							value="${keyword}"/> 
					</c:when>
					<c:otherwise>
						<input type="text" name="keyword" size="40" required="required" id="keywordId"/>
					</c:otherwise>
				</c:choose> 
				
					<input type="hidden" name="cp" value="1"/>
					<input type="hidden" name="searchModeStr" value="T"/>
					<input type="submit" value="검색" id="submitBtn"/>
					<input type="button" value="초기화" id="resetBtn"/>
			
				</form>
			</div>  
        	<hr>
        		
        		
        	<div class="row" style="padding:5px">
			 <div class="col-md-10">전체<span> ${listResult.totalCount}</span>/ 검색 <span> ${listResult.totalCount}</span>
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
						   <td colspan="5">데이터가 하나도 없음</td>
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
	        						<a href="PBcontent?pb_num=${notice.pb_num}"><strong>${notice.pb_title}</strong></a>
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
	        				<a href="PBcontent?pb_num=${pboard.pb_num}">${pboard.pb_title}</a>
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
   
			<div class="container" style="padding:10px">
			  		<ul class="pagination" style="justify-content: center;">
			  			<c:if test="${listResult.cp != 1 }">
							<li class="page-item"><a class="page-link" href="PBoard?cp=${listResult.cp - 1}">Previous</a></li>
						</c:if>	
			  			<c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
			  				<li class="page-item ${listResult.cp == i ? "active":"" }"><a class="page-link" href="PBoard?cp=${i}">${i}</a></li>
			    		</c:forEach>
			    		<c:if test="${listResult.cp != listResult.totalPageCount}">
			    			<li class="page-item"><a class="page-link" href="PBoard?cp=${listResult.cp + 1 }">Next</a></li>
			    		</c:if>
			  		</ul>
			</div>
			<c:if test="${member.mem_pass eq 'admin'}">
			<div class="container"style="padding:5px; text-align: center;">
        		<form action="edit" id="t_1" method="GET">
        			<input type = "submit" value="글쓰기"/>
        		</form>
        	</div>
        	</c:if>
       	</div>
    </main>
    <!-- ====== END MAIN CONTENT ===== -->



    <!-- ===== END HEADER CONTENT ===== -->
	<footer class="site-footer_v8">
	
	        <div class="bg-dark space-2 space-lg-3">
	            <div class="container">
	                <div class="row">
	                    <div class="col-lg-4 mb-4 mb-md-0">
	                        <div class="pb-md-6">
	                            <a href="index.html" class="d-inline-block mb-5">
	                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="170px" height="30px">
	                                    <path fill-rule="evenodd" fill="#fff" d="M166.225,28.691 L165.065,15.398 L160.598,28.691 L158.229,28.691 L153.762,15.398 L152.590,28.691 L148.928,28.691 L150.405,11.052 L155.629,11.052 L159.389,22.124 L163.198,11.052 L168.422,11.052 L169.875,28.691 L166.225,28.691 ZM142.641,28.691 L138.051,20.928 L136.989,20.928 L136.989,28.691 L133.327,28.691 L133.327,11.052 L139.724,11.052 C140.692,11.052 141.546,11.189 142.287,11.461 C143.028,11.734 143.620,12.112 144.063,12.596 C144.507,13.081 144.840,13.636 145.064,14.263 C145.288,14.889 145.400,15.577 145.400,16.326 C145.400,17.506 145.078,18.472 144.436,19.225 C143.793,19.978 142.869,20.484 141.665,20.745 L146.975,28.691 L142.641,28.691 ZM141.896,16.204 C141.896,15.544 141.673,15.028 141.225,14.653 C140.777,14.279 140.086,14.092 139.150,14.092 L136.989,14.092 L136.989,18.303 L139.150,18.303 C140.981,18.303 141.896,17.603 141.896,16.204 ZM125.570,27.831 C124.206,28.567 122.666,28.936 120.949,28.936 C119.224,28.936 117.680,28.567 116.317,27.831 C114.953,27.094 113.881,26.034 113.100,24.651 C112.319,23.267 111.928,21.672 111.928,19.866 C111.928,18.051 112.319,16.454 113.100,15.074 C113.881,13.695 114.953,12.639 116.317,11.907 C117.680,11.174 119.224,10.808 120.949,10.808 C122.674,10.808 124.217,11.174 125.576,11.907 C126.935,12.639 128.005,13.695 128.786,15.074 C129.567,16.454 129.958,18.051 129.958,19.866 C129.958,21.672 129.567,23.267 128.786,24.651 C128.005,26.034 126.933,27.094 125.570,27.831 ZM124.807,15.715 C123.797,14.690 122.512,14.177 120.949,14.177 C119.387,14.177 118.101,14.690 117.092,15.715 C116.083,16.741 115.578,18.124 115.578,19.866 C115.578,21.616 116.083,23.005 117.092,24.034 C118.101,25.064 119.387,25.579 120.949,25.579 C122.512,25.579 123.797,25.064 124.807,24.034 C125.816,23.005 126.320,21.616 126.320,19.866 C126.320,18.124 125.816,16.741 124.807,15.715 ZM66.872,28.691 L61.391,21.196 L60.097,21.196 L60.097,28.691 L56.435,28.691 L56.435,11.052 L60.097,11.052 L60.097,17.986 L61.342,17.986 L66.872,11.052 L71.340,11.052 L64.504,19.487 L71.547,28.691 L66.872,28.691 ZM48.677,27.831 C47.314,28.567 45.774,28.936 44.057,28.936 C42.332,28.936 40.788,28.567 39.425,27.831 C38.061,27.094 36.989,26.034 36.208,24.651 C35.427,23.267 35.036,21.672 35.036,19.866 C35.036,18.051 35.427,16.454 36.208,15.074 C36.989,13.695 38.061,12.639 39.425,11.907 C40.788,11.174 42.332,10.808 44.057,10.808 C45.782,10.808 47.324,11.174 48.684,11.907 C50.043,12.639 51.113,13.695 51.894,15.074 C52.675,16.454 53.066,18.051 53.066,19.866 C53.066,21.672 52.675,23.267 51.894,24.651 C51.113,26.034 50.040,27.094 48.677,27.831 ZM47.915,15.715 C46.905,14.690 45.620,14.177 44.057,14.177 C42.495,14.177 41.209,14.690 40.200,15.715 C39.191,16.741 38.686,18.124 38.686,19.866 C38.686,21.616 39.191,23.005 40.200,24.034 C41.209,25.064 42.495,25.579 44.057,25.579 C45.620,25.579 46.905,25.064 47.915,24.034 C48.924,23.005 49.428,21.616 49.428,19.866 C49.428,18.124 48.924,16.741 47.915,15.715 ZM28.487,27.831 C27.124,28.567 25.584,28.936 23.867,28.936 C22.141,28.936 20.597,28.567 19.234,27.831 C17.871,27.094 16.799,26.034 16.018,24.651 C15.236,23.267 14.846,21.672 14.846,19.866 C14.846,18.051 15.236,16.454 16.018,15.074 C16.799,13.695 17.871,12.639 19.234,11.907 C20.597,11.174 22.141,10.808 23.867,10.808 C25.592,10.808 27.134,11.174 28.493,11.907 C29.852,12.639 30.922,13.695 31.704,15.074 C32.485,16.454 32.875,18.051 32.875,19.866 C32.875,21.672 32.485,23.267 31.704,24.651 C30.922,26.034 29.850,27.094 28.487,27.831 ZM27.724,15.715 C26.715,14.690 25.429,14.177 23.867,14.177 C22.304,14.177 21.018,14.690 20.009,15.715 C19.000,16.741 18.496,18.124 18.496,19.866 C18.496,21.616 19.000,23.005 20.009,24.034 C21.018,25.064 22.304,25.579 23.867,25.579 C25.429,25.579 26.715,25.064 27.724,24.034 C28.733,23.005 29.238,21.616 29.238,19.866 C29.238,18.124 28.733,16.741 27.724,15.715 ZM11.672,27.367 C10.736,28.250 9.361,28.691 7.546,28.691 L0.283,28.691 L0.283,11.052 L5.996,11.052 C7.875,11.052 9.314,11.478 10.311,12.328 C11.308,13.178 11.806,14.365 11.806,15.886 C11.806,16.676 11.633,17.374 11.287,17.980 C10.941,18.586 10.431,19.052 9.755,19.377 C11.969,19.988 13.076,21.445 13.076,23.748 C13.076,25.278 12.608,26.484 11.672,27.367 ZM7.827,14.647 C7.420,14.277 6.821,14.092 6.032,14.092 L3.811,14.092 L3.811,18.242 L6.191,18.242 C6.940,18.242 7.501,18.047 7.875,17.656 C8.250,17.266 8.437,16.753 8.437,16.118 C8.437,15.508 8.233,15.018 7.827,14.647 ZM8.876,21.709 C8.445,21.278 7.749,21.062 6.789,21.062 L3.811,21.062 L3.811,25.554 L6.862,25.554 C7.782,25.554 8.455,25.347 8.883,24.932 C9.310,24.517 9.523,23.988 9.523,23.345 C9.523,22.686 9.308,22.140 8.876,21.709 Z"></path>
	                                    <path fill-rule="evenodd" fill="#fff" d="M105.996,23.499 C105.995,26.752 103.950,29.265 100.749,29.950 C100.713,29.958 100.681,29.983 100.647,30.000 C100.588,30.000 100.529,30.000 100.471,30.000 C100.467,28.585 100.460,27.170 100.466,25.756 C100.467,25.675 100.550,25.565 100.626,25.518 C101.352,25.067 101.714,24.425 101.711,23.571 C101.707,22.020 101.710,20.468 101.710,18.891 C103.133,18.891 104.546,18.891 105.996,18.891 C105.996,18.989 105.996,19.092 105.996,19.196 C105.996,20.630 105.997,22.064 105.996,23.499 ZM101.715,17.089 C101.715,15.990 101.684,14.917 101.724,13.847 C101.767,12.679 102.761,11.806 103.931,11.838 C105.060,11.869 105.978,12.794 105.993,13.940 C106.005,14.954 105.995,15.968 105.995,16.983 C105.995,17.011 105.987,17.040 105.980,17.089 C104.569,17.089 103.157,17.089 101.715,17.089 ZM96.421,29.234 C94.322,27.983 93.199,26.136 93.155,23.703 C93.108,21.137 93.145,18.571 93.146,16.004 C93.146,15.957 93.153,15.909 93.159,15.840 C94.572,15.840 95.976,15.840 97.426,15.840 C97.426,15.948 97.426,16.060 97.426,16.172 C97.426,18.601 97.430,21.031 97.423,23.461 C97.421,24.363 97.757,25.065 98.548,25.540 C98.629,25.588 98.688,25.740 98.689,25.844 C98.699,27.122 98.695,28.400 98.696,29.679 C98.696,29.786 98.703,29.893 98.707,30.000 C98.648,30.000 98.590,30.000 98.531,30.000 C97.799,29.823 97.075,29.624 96.421,29.234 ZM93.145,14.043 C93.145,13.935 93.145,13.823 93.145,13.710 C93.145,11.318 93.137,8.926 93.149,6.534 C93.154,5.624 92.818,4.927 92.023,4.460 C91.961,4.423 91.894,4.331 91.894,4.264 C91.886,2.850 91.888,1.435 91.888,-0.000 C93.423,0.231 94.703,0.889 95.731,2.008 C96.833,3.208 97.413,4.629 97.421,6.261 C97.433,8.790 97.427,11.319 97.427,13.848 C97.427,13.906 97.421,13.964 97.416,14.043 C96.005,14.043 94.600,14.043 93.145,14.043 ZM89.588,4.782 C89.034,5.128 88.866,5.768 88.869,6.431 C88.876,8.061 88.870,9.692 88.869,11.322 C88.869,12.142 88.869,12.962 88.867,13.783 C88.867,13.868 88.857,13.954 88.851,14.051 C87.434,14.051 86.035,14.051 84.588,14.051 C84.588,13.957 84.588,13.865 84.588,13.774 C84.588,11.294 84.579,8.813 84.590,6.333 C84.605,3.158 86.853,0.542 90.000,0.017 C90.029,0.012 90.058,0.017 90.125,0.017 C90.125,0.639 90.125,1.243 90.125,1.848 C90.125,2.404 90.109,2.961 90.130,3.517 C90.149,4.031 90.126,4.446 89.588,4.782 ZM84.585,15.837 C86.015,15.837 87.420,15.837 88.868,15.837 C88.868,15.951 88.868,16.065 88.868,16.178 C88.868,18.608 88.849,21.038 88.873,23.468 C88.908,27.007 86.358,29.492 83.589,29.955 C83.552,29.961 83.518,29.984 83.482,30.000 C83.424,30.000 83.365,30.000 83.306,30.000 C83.310,28.634 83.319,27.268 83.313,25.902 C83.312,25.691 83.376,25.579 83.559,25.467 C84.268,25.030 84.587,24.370 84.587,23.548 C84.587,21.099 84.586,18.650 84.585,16.200 C84.585,16.085 84.585,15.970 84.585,15.837 ZM81.366,30.000 C80.875,29.844 80.361,29.739 79.898,29.524 C77.435,28.380 76.120,26.440 76.027,23.732 C75.974,22.192 76.017,20.649 76.016,19.107 C76.016,19.040 76.016,18.973 76.016,18.886 C77.447,18.886 78.859,18.886 80.303,18.886 C80.303,19.000 80.303,19.104 80.303,19.209 C80.303,20.662 80.308,22.116 80.302,23.570 C80.298,24.426 80.666,25.064 81.387,25.518 C81.463,25.566 81.547,25.675 81.547,25.756 C81.553,27.170 81.546,28.585 81.542,30.000 C81.484,30.000 81.425,30.000 81.366,30.000 ZM76.017,17.096 C76.017,16.539 76.017,15.996 76.017,15.453 C76.017,14.965 76.012,14.477 76.018,13.990 C76.030,12.831 76.911,11.892 78.032,11.838 C79.203,11.781 80.217,12.619 80.282,13.797 C80.341,14.884 80.294,15.978 80.294,17.096 C78.857,17.096 77.452,17.096 76.017,17.096 Z"></path>
	                                </svg>
	                            </a>
	                            <address class="font-size-2 mb-5">
	                                <span class="mb-2 font-weight-normal text-white">
	                                    1418 River Drive, Suite 35 Cottonhall, CA 9622 <br> United States
	                                </span>
	                            </address>
	                            <div class="mb-4">
	                                <a href="mailto:sale@bookworm.com" class="font-size-2 d-block text-white mb-1">sale@bookworm.com</a>
	                                <a href="tel:+1246-345-0695" class="font-size-2 d-block text-white">+1 246-345-0695</a>
	                            </div>
	                            <ul class="list-unstyled mb-0 d-flex">
	                                <li class="btn pl-0">
	                                    <a class="text-white" href="#">
	                                        <span class="fab fa-instagram"></span>
	                                    </a>
	                                </li>
	                                <li class="btn">
	                                    <a class="text-white" href="#">
	                                        <span class="fab fa-facebook-f"></span>
	                                    </a>
	                                </li>
	                                <li class="btn">
	                                    <a class="text-white" href="#">
	                                        <span class="fab fa-youtube"></span>
	                                    </a>
	                                </li>
	                                <li class="btn">
	                                    <a class="text-white" href="#">
	                                        <span class="fab fa-twitter"></span>
	                                    </a>
	                                </li>
	                                <li class="btn">
	                                    <a class="text-white" href="#">
	                                        <span class="fab fa-pinterest"></span>
	                                    </a>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                    <div class="col-lg-2 mb-5 mb-md-0">
	                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1 text-gray-500">Explore</h4>
	                        <ul class="list-unstyled mb-0">
	                            <li class="pb-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">About as</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Sitemap</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Bookmarks</a>
	                            </li>
	                            <li class="pt-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Sign in/Join</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="col-lg-2 mb-5 mb-md-0">
	                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1 text-gray-500">Customer Service</h4>
	                        <ul class="list-unstyled mb-0">
	                            <li class="pb-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Help Center</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Returns</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Product Recalls</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Accessibility</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Contact Us</a>
	                            </li>
	                            <li class="pt-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Store Pickup</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="col-lg-2 mb-5 mb-md-0">
	                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1 text-gray-500">Policy</h4>
	                        <ul class="list-unstyled mb-0">
	                            <li class="pb-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Return Policy</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Terms Of Use</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Security</a>
	                            </li>
	                            <li class="pt-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Privacy</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="col-lg-2 mb-5 mb-md-0">
	                        <h4 class="font-size-3 font-weight-medium mb-2 mb-xl-5 pb-xl-1 text-gray-500">Categories</h4>
	                        <ul class="list-unstyled mb-0">
	                            <li class="pb-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Action</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Comedy</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Drama</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Horror</a>
	                            </li>
	                            <li class="py-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Kids</a>
	                            </li>
	                            <li class="pt-2">
	                                <a class="font-size-2 text-white widgets-hover transition-3d-hover" href="#">Romantic Comedy</a>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </footer>
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