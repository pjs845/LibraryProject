<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Single Product v4 | Bookworm</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/vendor/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body class="right-sidebar">
    <!--===== HEADER CONTENT =====-->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ====== -->
    <div class="page-header border-bottom">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center py-4">
                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">Shop Single</h1>
                <nav class="woocommerce-breadcrumb font-size-2">
                    <a href="../home/index.html" class="h-primary">Home</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                    <a href="../shop/v4.html" class="h-primary">Shop</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>Shop Single
                </nav>
            </div>
        </div>
    </div>
    <div class="site-content" id="content">
        <div class="container">
            <div class="row  space-top-2">
                <div id="primary" class="content-area">
                    <main id="main" class="site-main ">
                        <div class="product">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-5 woocommerce-product-gallery woocommerce-product-gallery--with-images images">
                                        <figure class="woocommerce-product-gallery__wrapper mb-0">
                                            <div class="js-slick-carousel u-slick"
                                            data-pagi-classes="text-center u-slick__pagination my-4">
                                                <div class="js-slide">
                                                    <img src="${books.detail.img}" alt="Image Description" class="mx-auto img-fluid">
                                                </div>
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="col-lg-7 pl-lg-0 summary entry-summary">
                                        <div class="px-lg-4 px-xl-6">
                                            <h1 class="product_title entry-title font-size-7 mb-3">${books.detail.title}</h1>
                                            <div class="font-size-2 mb-4">
                                            	<span class="ml-3 font-weight-medium">지은이</span>
                                                <span class="ml-2 text-gray-600">${books.detail.writer}</span>
                                                <br>
                                                
                                                
                                                <c:choose>
                                                      	<c:when test="${reviewAvg < 0.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       <c:when test="${reviewAvg >= 0.5 and reviewAvg < 1.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       <c:when test="${reviewAvg >= 1.5 and reviewAvg < 2.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       <c:when test="${reviewAvg >= 2.5 and reviewAvg < 3.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       <c:when test="${reviewAvg >= 3.5 and reviewAvg < 4.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="far fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       <c:when test="${reviewAvg >= 4.5}">
                                                        <span class="text-yellow-darker">
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                    <span class="fas fa-star"></span>
		                                                </span>
                                                       </c:when>
                                                       
                                                      </c:choose>
                                                
                                                
                                                <span class="ml-3">(${reviewTotal})</span>
                                                &nbsp;
                                               <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == books.detail.isbn}">
                                                              <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                                        <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                                <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                              </svg>
                                                                    </a>                                                                                                                   
                                                              </c:if>
                                                           </c:otherwise>
                                                        </c:choose>
                                                     </c:if>  
                                                    </c:forEach>
                                                  </c:when>
                                                  <c:otherwise>
                                                     <a href="javascript:addFav('${books.detail.isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${books.detail.isbn}" id="${books.detail.isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose>      
                                                
                                            </div>

                                            <div class="woocommerce-product-details__short-description font-size-2 mb-4">
                                                <p class="">${books.detail.description}</p>
                                            </div>

                                            <p class="price font-size-22 font-weight-medium mb-4">
                                                <span class="woocommerce-Price-amount amount">
                                                    <span class="woocommerce-Price-currencySymbol"></span>카테고리
                                                </span> <div></div>
                                                <span class="woocommerce-Price-amount amount">
                                                    <span class="woocommerce-Price-currencySymbol"></span>${books.detail.catgo}
                                                </span>
                                            

                                            <div class="mb-4">
                                                <label class="form-label font-size-2 font-weight-medium mb-3">상태 :&nbsp;</label>
                                                <c:choose>                                                
									   			    <c:when test="${Lbook.book_isbn == books.detail.isbn}">									   			    	
									   			    	<c:choose>                                                
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}">
											   			    	<label style="color:blue;"> 대출가능 (재고 : ${Lbook.book_count - Rbook_count}권)</label>						                	
											                </c:when>
											                <c:otherwise>
											                    <label style="color:red;"> 대출불가능 (재고 : ${Lbook.book_count - Rbook_count}권)</label>
											                </c:otherwise>
														</c:choose>						                	
									                </c:when>
									                <c:otherwise>
									                    <label style="color:red;"> 대출불가능 (도서관에 없는 도서입니다.)</label>
									                </c:otherwise>
												</c:choose>	
												<br>
												<c:choose>                                                
									   			    <c:when test="${Lbook.book_isbn == books.detail.isbn}">									   			    										   			    	                                                			
									   			    	<label>도서위치 : ${book_loc}</label>						                												                				                	
									                </c:when>									                
												</c:choose>             
                                            </div>
                                            
                                            <c:choose>
                                            	<c:when test="${Lbook.book_isbn == books.detail.isbn}"> <!-- 대출예약 여부 =  검색isbn과 db에있는 책 isbn과 비교 -->
                                            	<form action="/rental.ok" id="rental" name="rental" class="cart d-md-flex align-items-center" method="post">		                                            
		                                            <c:choose>
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}">
											   			    	<label for="date">반납예정일&nbsp;
																  <input type="date" id="ren_return" name="ren_return" onkeydown="return false">
																</label>																		                
											                </c:when>									       
														</c:choose>			                                                																																					   			    	
									   			    	<c:choose>
											   			    <c:when test="${Lbook.book_count - Rbook_count != 0}"> <!-- 대출예약 여부 =  db에 있는 재고량 - isbn의 값으로 대출예약테이블 count -->
											   			    	<button type="button" id="btn_rental" name="btn_rental" class="btn btn-blue border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약</button>											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <button type="button" id="btn_no_rental" name="btn_no_rental" class="btn btn-red border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">대출예약불가</button>
											                </c:otherwise>
														</c:choose>					                										                
														<c:choose>
											   			    <c:when test="${not empty member.mem_num}"> 
											   			    	<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}"> <!-- 로그인 멤버 넘버로 value변경 -->											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <input type="hidden" id="mem_num" name="mem_num" value="0"> <!-- 로그인 멤버 넘버로 value변경 -->
											                </c:otherwise>
														</c:choose>		                                                
		                                            	<input type="hidden" id="book_num" name="book_num" value="${Lbook.book_num}">		
		                                            </form> 
                                            	</c:when> 
                                            	<c:otherwise>
                                            			<form action="/request.ok" id="request" name="request" class="cart d-md-flex align-items-center" method="post">		                                            		                                                                                            																																					   			    										   			    												   			 
											                <button type="button" id="btn_request" name="btn_request" class="btn btn-green border-0 rounded-0 p-3 btn-block ml-md-4 single_add_to_cart_button button alt">도서신청</button>											               																		                										                
														<c:choose>
											   			    <c:when test="${not empty member.mem_num}"> 
											   			    	<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}"> <!-- 로그인 멤버 넘버로 value변경 -->											   			    							                	
											                </c:when>
											                <c:otherwise>
											                    <input type="hidden" id="mem_num" name="mem_num" value="0"> <!-- 로그인 멤버 넘버로 value변경 -->
											                </c:otherwise>
														</c:choose>		                                                
		                                            	<input type="hidden" id="br_title" name="br_title" value="${books.detail.title}">
		                                            	<input type="hidden" id="br_writer" name="br_writer" value="${books.author}">
		                                            	<input type="hidden" id="br_isbn" name="br_isbn" value="${books.isbn}">		
		                                            </form>                                             				
                                            	</c:otherwise>                                           
                                            </c:choose>                                  
                                        </div>
                                        <!-- <div class="px-lg-4 px-xl-7 py-5 d-flex align-items-center">
                                            <ul class="list-unstyled nav">
                                                <li class="mr-6 mb-4 mb-md-0">
                                                    <a href="#" class="h-primary"><i class="flaticon-heart mr-2"></i> Add to Wishlist</a>
                                                </li>                                                
                                            </ul>
                                        </div> -->
                                    </div>
                                </div>
                            </div>

                            <!-- Features Section -->
                            <div class="woocommerce-tabs wc-tabs-wrapper mb-10 row">
                                <!-- Nav Classic -->
                                <ul class="col-lg-4 col-xl-3 pt-9 border-top d-lg-block tabs wc-tabs nav justify-content-lg-center flex-nowrap flex-lg-wrap overflow-auto overflow-lg-visble" id="pills-tab" role="tablist">
                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
                                        <a class="py-1 d-inline-block nav-link font-weight-medium active" id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" role="tab" aria-controls="pills-one-example1" aria-selected="true">
                                        	인포그래픽
                                        </a>
                                    </li>
                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
                                        <a class="py-1 d-inline-block nav-link font-weight-medium" id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" role="tab" aria-controls="pills-two-example1" aria-selected="false">
                                           	상세정보
                                        </a>
                                    </li>   
                                    <c:if test="${book != 0}">                                   
	                                    <li class="flex-shrink-0 flex-lg-shrink-1 nav-item mb-3">
	                                        <a class="py-1 d-inline-block nav-link font-weight-medium" id="pills-four-example1-tab" data-toggle="pill" href="#pills-four-example1" role="tab" aria-controls="pills-four-example1" aria-selected="false">
												리뷰
	                                        </a>
	                                    </li>
                                    </c:if>
                                </ul>
                                <!-- End Nav Classic -->

                                <!-- Tab Content -->
                                <div class="tab-content col-lg-8 col-xl-9 border-top" id="pills-tabContent">
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9 show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                                        <!-- Mockup Block -->
                                        <canvas id="infoChart" height="200"></canvas>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-two-example1" role="tabpanel" aria-labelledby="pills-two-example1-tab">
                                        <!-- Mockup Block -->
                                        <div class="table-responsive mb-4">
                                            <table class="table table-hover table-borderless">
                                                <tbody>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">정보: </th>
                                                        <td class="">쪽수 | ${books.detail.page}p</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">사이즈</th>
                                                        <td>${books.detail.sizeWidth} x ${books.detail.sizeHeight} x ${books.detail.sizeDepth}mm | ${books.detail.weight}g</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">ISBN: </th>
                                                        <td>${books.detail.isbn}</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">출판일: </th>
                                                        <td>${books.detail.pubDate}</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="px-4 px-xl-5">출판사:</th>
                                                        <td>${books.detail.publisher}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-three-example1" role="tabpanel" aria-labelledby="pills-three-example1-tab">
                                        <!-- Mockup Block -->
                                        <div class="d-flex mb-8 justify-content-center">
                                            <a href="javascript:;" class="product__video js-fancybox d-block p-4 border position-relative max-width-234"
                                                data-src="//www.youtube.com/watch?v=u-0Z0iVBxUY?autoplay=0"
                                                data-speed="700">
                                                <span class="position-absolute-center text-dark font-size-10"><i class="flaticon-multimedia"></i></span>
                                                <div class="hover-area">
                                                    <img src="https://placehold.it/120x180" class="img-fluid d-block mx-auto mb-3" alt="image-description">
                                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-dark">Where The Crawdads Sing Overview</h2>
                                                    <div class="font-size-2 text-gray-700">Solomon</div>
                                                </div>
                                                <span class="text-white bg-dark px-3 py-1 position-absolute bottom-0 right-0">1:45</span>
                                            </a>
                                            <a href="javascript:;" class="product__video js-fancybox d-block p-4 border position-relative max-width-234"
                                                data-src="www.youtube.com/watch?v=F7yO1tYCYxQ?autoplay=0"
                                                data-speed="700">
                                                <span class="position-absolute-center text-dark font-size-10"><i class="flaticon-multimedia"></i></span>
                                                <div class="hover-area">
                                                    <img src="https://placehold.it/120x180" class="img-fluid d-block mx-auto mb-3" alt="image-description">
                                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-dark">Where The Crawdads Sing Overview</h2>
                                                    <div class="font-size-2 text-gray-700">Solomon</div>
                                                </div>
                                                <span class="text-white bg-dark px-3 py-1 position-absolute bottom-0 right-0">2:21</span>
                                            </a>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                    <div class="woocommerce-Tabs-panel panel entry-content wc-tab tab-pane fade border-left pl-4 pt-4 pl-lg-6 pt-lg-6 pl-xl-9 pt-xl-9" id="pills-four-example1" role="tabpanel" aria-labelledby="pills-four-example1-tab">
                                        <!-- Mockup Block  리뷰 -->
                                        <div id="cut">
                                        <h4 class="font-size-3">회원 리뷰 </h4>
                                        <div class="mb-8">
                                            <div class="mb-6">
                                                <div class="d-flex  align-items-center mb-4">
                                                    <span class="font-size-15 font-weight-bold">${reviewAvg}</span>
                                                    <div class="ml-3 h6 mb-0">
                                                        <span class="font-weight-normal">${reviewTotal} reviews</span>
                                                        <c:choose>
                                                        	<c:when test="${reviewAvg < 0.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 0.5 and reviewAvg < 1.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 1.5 and reviewAvg < 2.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 2.5 and reviewAvg < 3.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 3.5 and reviewAvg < 4.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="far fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        <c:when test="${reviewAvg >= 4.5}">
		                                                        <div class="text-yellow-darker">
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                            <small class="fas fa-star"></small>
		                                                        </div>
	                                                        </c:when>
	                                                        
                                                        </c:choose>
                                                    </div>
                                                </div>

                                                <div class="d-xl-flex">
                                                    <a type="button" href="#reviewcommit" class="d-block btn btn-outline-dark rounded-0 px-5 mb-3 mb-xl-0">리뷰 쓰러가기</a>
                                                    <!-- <a type="button" href="#reviewcommit" class="d-block btn btn-dark ml-xl-3 rounded-0 px-5">리뷰 쓰러가기</a> -->
                                                </div>
                                            </div>
                                            <div class="">
                                                <!-- Ratings -->
                                                <ul class="list-unstyled">
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">5 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${five/reviewTotal*100}%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${five}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">4 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${four/reviewTotal*100}%;" aria-valuenow="53" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${four}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">3 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${three/reviewTotal*100}%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${three}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">2 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${two/reviewTotal*100}%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${two}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="py-2">
                                                        <a class="row align-items-center mx-gutters-2 font-size-2" href="javascript:;">
                                                            <div class="col-auto">
                                                                <span class="text-dark">1 stars</span>
                                                            </div>
                                                            <div class="col px-0">
                                                                <div class="progress bg-white-100" style="height: 7px;">
                                                                    <div class="progress-bar bg-yellow-darker" role="progressbar" style="width: ${one/reviewTotal*100}%;" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100"></div>
                                                                </div>
                                                            </div>
                                                            <div class="col-2">
                                                                <span class="text-secondary">${one}</span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <!-- End Ratings -->
                                            </div>
                                        </div>

                                        <h4 class="font-size-3 mb-8">1-5 of ${reviewTotal} reviews </h4>
										<c:if test="${reviewTotal != 0}">
                                        <ul class="list-unstyled mb-8" id="ulul">
                                        	<!-- 리뷰 리스트 -->
                
                                        	<c:forEach items="${books.list}" var="list">
	                                            <li class="mb-4 pb-5 border-bottom">
	                                                <div class="d-flex align-items-center mb-3">
	                                                    <h6 class="mb-0">${list.member.mem_id}</h6>
	                                                   	<%-- 평점: ${list.brs_rating} --%>
	                                                   	<c:choose>
	                                                   		<c:when test="${list.brs_rating == 1}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 2}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 3}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 4}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="far fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                                   		<c:when test="${list.brs_rating == 5}">
	                                                   			<div class="text-yellow-darker ml-3">
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                        <small class="fas fa-star"></small>
			                                                    </div>
	                                                   		</c:when>
	                                            		</c:choose>
	                                                </div>
	                                                <p class="mb-4 text-lh-md">${list.brs_content}</p>
	                                                <div class="text-gray-600 mb-4"><fmt:formatDate pattern="yyyy-MM-dd kk:mm:ss" value="${list.brs_cdate}"/></div>
	                                                <ul class="nav">
	                                                    <li class="mr-7">
	                                                        <a onclick="update_like(${list.brs_num}, ${books.member.mem_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer;">
	                                                            <i id="like" class="font-size-5 flaticon-like-1"></i>
	                                                            <span id="likeCount" class="ml-2">${list.brs_like}</span>
	                                                        </a>
	                                                    </li>
	                                                    <li class="mr-7">
	                                                        <a onclick="update_hate(${list.brs_num}, ${books.member.mem_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer;">
	                                                            <i id="hate" class="font-size-5 flaticon-dislike"></i>
	                                                            <span id="hateCount" class="ml-2">${list.brs_hate}</span>
	                                                        </a>
	                                                    </li>
	                                                    <c:if test="${list.member.mem_id == books.member.mem_id}">
	                                                    <li class="mr-7">
	                                                        <a onclick="delete_review(${list.brs_num})" class="text-gray-600 d-flex align-items-center" style="cursor:pointer">
	                                                            <span class="material-icons" style="font-size: 30px; color:green">delete_forever</span>
	                                                        </a>
	                                                    </li>
														</c:if>
	                                                </ul>
	                                            </li>
                                            </c:forEach>
                                           
                                        </ul>
                                         </c:if>
                                        
                                        <c:if test="${reviewTotal > plusPage}">
                                        <div id="plusPage">
                                        	<div style="text-align:center;"><a onclick="list_review_plus(${book}, ${plusPage})" style="cursor:pointer" ><i class="fa-sharp fa-solid fa-plus"></i>더 보기</a></div>
										</div>
										</c:if>
										</div>
										
                                        <h4 id="reviewcommit" class="font-size-3 mb-4">리뷰 작성</h4>
                                        <div class="d-flex align-items-center mb-6" >
                                            <h6 class="mb-0">별점 표기</h6>
                                            <div class="text-yellow-darker ml-3 font-size-4">
                                                <small id="star1" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star2" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star3" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star4" class="far fa-star" style="cursor:pointer;"></small>
                                                <small id="star5" class="far fa-star" style="cursor:pointer;"></small>
                                                <input id="bn" type="hidden" value="${book}" name="book_num"/>
                                                <input id="mn" type="hidden" value="${member.mem_num}" name="mem_num"/>
                                                <input id="br" type="hidden" value="" name="brs_rating"/>
                                            </div>
                                        </div>
                                        <div class="js-form-message form-group mb-4">
                                            <label for="descriptionTextarea" class="form-label text-dark h6 mb-3">리뷰를 작성해 주세요.</label>
                                            <textarea class="form-control rounded-0 p-4" rows="7" name="brs_content" id="descriptionTextarea" placeholder="리뷰 내용 입력" required data-msg="Please enter your message." data-error-class="u-has-error" data-success-class="u-has-success"></textarea>
                                        </div>
                                        <!-- <div class="form-group mb-5">
                                            <label for="inputCompanyName" class="form-label text-dark h6 mb-3">Add a title</label>
                                            <input type="text" class="form-control rounded-0 px-4" name="companyName" id="inputCompanyName" placeholder="3000 characters remaining" aria-label="3000 characters remaining">
                                        </div> -->
                                        <div class="d-flex">
                                            <button id="reviewBtn" type="button" class="btn btn-dark btn-wide rounded-0 transition-3d-hover">작성 완료</button>
                                        </div>
                                        <!-- End Mockup Block -->
                                    </div>
                                </div>
                                <!-- End Tab Content -->
                            </div>
                            <!-- End Features Section -->

                        </div>
                    </main>
                </div>
                <div id="secondary" class="sidebar widget-area order-1" role="complementary">
                    <div id="widgetAccordion">
                        <div class="widget p-4d875 border mb-5">
                        <c:forEach items="${books.catgo.catgoBook}" var="catgo">
                            <div class="mb-5">
                                <div style="text-align:center;">
                                    <a class="d-block" href="/detail/book?isbn=${catgo.isbn}">
                                        <img class="img-fluid" src="${catgo.img}" alt="Image-Description">
                                    </a>                                    
                                </div>
                                <div class="media-body ml-3 pl-1">
                                        <h6 class="font-size-2 text-lh-md font-weight-normal" style="text-align:center;">
                                            <a href="/detail/book?isbn=${catgo.isbn}">${catgo.title}</a>
                                        </h6>
                                        <span class="font-weight-medium" style="text-align:center;">${catgo.writer}</span>
                                    </div>
                            </div>
                                 </c:forEach>
                        </div>                        
                    </div>
                </div>
            </div>
            <section class="space-bottom-3">
                <div class="container">
                    <header class="mb-5 d-md-flex justify-content-between align-items-center">
                        <h2 class="font-size-7 mb-3 mb-md-0">${books.author} 작가의 다른 작품</h2>
                    </header>

                     <div class="js-slick-carousel products no-gutters border-top border-left border-right"
                            data-arrows-classes="u-slick__arrow u-slick__arrow-centered--y"
                            data-arrow-left-classes="fas fa-chevron-left u-slick__arrow-inner u-slick__arrow-inner--left ml-lg-n10"
                            data-arrow-right-classes="fas fa-chevron-right u-slick__arrow-inner u-slick__arrow-inner--right mr-lg-n10"
                            data-slides-show="5"
                            data-responsive='[{
                               "breakpoint": 1500,
                               "settings": {
                                 "slidesToShow": 4
                               }
                            },{
                               "breakpoint": 1199,
                               "settings": {
                                 "slidesToShow": 3
                               }
                            }, {
                               "breakpoint": 992,
                               "settings": {
                                 "slidesToShow": 2
                               }
                            }, {
                               "breakpoint": 554,
                               "settings": {
                                 "slidesToShow": 2
                               }
                            }]'>
                            <c:forEach items="${books.writer.writerBook}" var="writer">
                            <div class="product">
                                <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                    <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                        <div class="woocommerce-loop-product__thumbnail">
                                            <a href="/detail/book?isbn=${writer.isbn}" class="d-block"><img src="${writer.img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                        </div>
                                        <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                            <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="../shop/single-product-v7.html"></a></div>
                                            <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${writer.isbn}">${writer.title}</a></h2>
                                            <div class="font-size-2  mb-1 text-truncate"><a href="../others/authors-single.html" class="text-gray-700">${writer.writer}</a></div>
                                            <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span></span>
                                            </div>
                                        </div>
                                        <div class="product__hover d-flex align-items-center">
                                            <a href="../shop/single-product-v7.html" class="text-uppercase text-dark h-dark font-weight-medium mr-auto">
                                                <span class="product__add-to-cart">ADD TO CART</span>
                                                <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                            </a>
                                            <a href="../shop/single-product-v7.html" class="mr-1 h-p-bg btn btn-outline-primary border-0">
                                                <i class="flaticon-switch"></i>
                                            </a>
                                            <a href="../shop/single-product-v7.html" class="h-p-bg btn btn-outline-primary border-0">
                                                <i class="flaticon-heart"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                            </c:forEach>                       
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- ====== END MAIN CONTENT ====== -->

    <!-- ========== FOOTER ========== -->
  		<%@ include file="/WEB-INF/views/footer.jsp" %>
    <!-- ========== END FOOTER ========== -->
    
    <script type="text/javascript">	                                                                   
    $(document).ready(function (e){
		$('#btn_rental').on("click", function(){
			var date = $('#ren_return').val();
			if(date.length>0){
				$('#rental').submit();
			}else{
				alert("반납예정일을 선택해주세요.");
			}
		});
		$('#btn_no_rental').on("click", function(){
			alert("대출이 불가능한 도서입니다.");
		});
		$('#btn_request').on("click", function(){
			var result = confirm("도서신청을 하시겠습니까?");
			if(result){
				$('#request').submit();
			}else{
				
			}
		});
	});                                          	
	</script>

    <!-- 반납예정일  -->
    <script>
		var now = new Date();
		var tomorrow = new Date(now.setDate(now.getDate() + 1));
		var month = new Date(now.setDate(now.getDate() + 30));
		var timeOff = new Date().getTimezoneOffset()*60000;
		var nextday = new Date(tomorrow-timeOff).toISOString().split("T")[0];	
		var monthday = new Date(month-timeOff).toISOString().split("T")[0];	
		document.getElementById("ren_return").setAttribute("min", nextday);	
		document.getElementById("ren_return").setAttribute("max", monthday);	
	</script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="/vendor/jquery/dist/jquery.min.js"></script>
    <script src="/vendor/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="/vendor/appear.js"></script>
    <script src="/vendor/fancybox/jquery.fancybox.min.js"></script>
    <script src="/vendor/multilevel-sliding-mobile-menu/dist/jquery.zeynep.js"></script>
    <script src="/vendor/hs-megamenu/src/hs.megamenu.js"></script>
    <script src="/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/vendor/slick-carousel/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>    
    <script src="/js/infochart.js"></script>
    

    <!-- JS HS Components -->
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.fancybox.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>
    <script src="/js/components/hs.onscroll-animation.js"></script>
    <script src="/js/components/hs.quantity-counter.js"></script>
    <script src="/js/components/hs.scroll-nav.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="/js/bookworm.js"></script> -->

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

            // initialization of popups
            $.HSCore.components.HSFancyBox.init('.js-fancybox');

            // initialization of quantity counter
            $.HSCore.components.HSQantityCounter.init('.js-quantity');

            // initialization of show animations
            $.HSCore.components.HSShowAnimation.init('.js-animation-link');

            // initialization of HSScrollNav component
            $.HSCore.components.HSScrollNav.init($('.js-scroll-nav'), {
              duration: 700
            });

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
    
    <script>
    	var rating = $('input[name=brs_rating]').val();
    
    	$('#star1').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '1');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star2').removeClass('fas');
    		$('#star2').addClass("far");
    		$('#star3').removeClass('fas');
    		$('#star3').removeClass('far');
    		$('#star3').addClass("far");
    		$('#star4').removeClass('fas');
    		$('#star4').removeClass('far');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('fas');
    		$('#star5').removeClass('far');
    		$('#star5').addClass("far");
    		
    		$('#star1').addClass("fas"); //색칠
    	});
    	$('#star2').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '2');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star3').removeClass('fas');
    		$('#star3').addClass("far");
    		$('#star4').removeClass('fas');
    		$('#star4').removeClass('far');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('fas');
    		$('#star5').removeClass('far');
    		$('#star5').addClass("far");
    		  		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    	});
    	$('#star3').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '3');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star4').removeClass('far');
    		$('#star4').removeClass('fas');
    		$('#star4').addClass("far");
    		$('#star5').removeClass('far');
    		$('#star5').removeClass('fas');
    		$('#star5').addClass("far");
    		  		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    	});
    	$('#star4').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '4');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star5').removeClass('fas');
    		$('#star5').addClass("far");
    		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    		$('#star4').addClass("fas");
    		
    	});
    	$('#star5').click(function(){
    		rating = $('input[name=brs_rating]').attr('value', '5');
    		rating = $('input[name=brs_rating]').val();
    		//alert(rating);
    		$('#star1').removeClass('far');
    		$('#star2').removeClass('far');
    		$('#star3').removeClass('far');
    		$('#star4').removeClass('far');
    		$('#star5').removeClass('far');    		
    		
    		$('#star1').addClass("fas");
    		$('#star2').addClass("fas");
    		$('#star3').addClass("fas");
    		$('#star4').addClass("fas");
    		$('#star5').addClass("fas");
    		
    	});
    	
    	var member = "${books.member.mem_id}";
    	$('#reviewBtn').click(function(){
    		
    		var bn = $('#bn').val();
    		var mn = $('#mn').val();
    		var br = $('#br').val();
    		var dt = $('#descriptionTextarea').val();
    		if(mn == ""){
    			alert("로그인이 필요한 기능입니다.");
    			$('#star1').removeClass("fas");
				$('#star2').removeClass("fas");
				$('#star3').removeClass("fas");
				$('#star4').removeClass("fas");
				$('#star5').removeClass("fas");
				$('#star1').addClass("far");
				$('#star2').addClass("far");
				$('#star3').addClass("far");
				$('#star4').addClass("far");
				$('#star5').addClass("far");
				$('#br').val("");
				$('#descriptionTextarea').val("");
    		}else if(br == ""){
    			alert("리뷰를 표기해주세요!");
    			
    		}else{
    			//alert("북넘버: "+bn+", 멤버넘버: "+mn+", 별점: "+br+", 내용: "+dt);
        		$.ajax({
        			url:'../detail/book/writereview',
        			type:'POST',
        			data:{'book_num':bn,'mem_num':mn,'brs_rating':br,'brs_content':dt},
        			dataType:'json',
        			success: function(data){
        				//alert("data: "+data);
        				//alert(data.brs_content);
        				if(data){
        					//alert("댓글 등록 성공");
        					
        					$('#star1').removeClass("fas");
        					$('#star2').removeClass("fas");
        					$('#star3').removeClass("fas");
        					$('#star4').removeClass("fas");
        					$('#star5').removeClass("fas");
        					$('#star1').addClass("far");
        					$('#star2').addClass("far");
        					$('#star3').addClass("far");
        					$('#star4').addClass("far");
        					$('#star5').addClass("far");
        					$('#br').val("");
        					$('#descriptionTextarea').val("");
        					
        					list_review();
        				}else if(!data){
        					//alert("실패");
        				}
        			},
        			error: function(err){
        				alert("댓글 등록 실패!");
        				//alert("에러"+err);
        			}
        		});
    		}
    		
    		
    	});
    	
    	
    	
    	function delete_review(brs_num){
    		alert(brs_num);
    		if(!confirm("댓글을 삭제하시겠습니까?")){
    			alert("취소 하셨습니다.")
    		}else{
    			//alert("확인 누름");
        		//alert("넘버: "+brs_num);
        		$.ajax({
        			url:'../detail/book/deletereview',
        			type:'POST',
        			data:{'brs_num':brs_num},
        			dataType:'json',
        			success: function(data){
        				alert("삭제 성공: "+data);
        				list_review();
        			},
        			error: function(err){
        				alert("삭제 오류:"+err)
        			}
        		});
    		}
    	}
    	
    	// 좋아요 업데이트
    	function update_like(br_num, mem_num){
    		var mn = $('#mn').val();
    		//alert("좋아요!!");
    		//alert(br_num);
    		//alert(mem_num);
    		//alert(mn);
    		if(mn == ""){
    			//alert("로그인이 필요한 기능입니다.");
    		}else{
    			$.ajax({
        			url:'../detail/book/reviewupdatelike',
        			type:'POST',
        			data:{'brs_num':br_num, 'mem_num':mem_num},
        			dataType:'json',
        			success: function(result){
        				//alert("좋아요 성공: "+result);
        				//alert("좋 성공후 dataExists: "+result.dataExists);
        				//alert("좋 성공후2 selectLike: "+result.selectLike);
        				if(result.dataExists == 1){
        					//alert("이미 좋아요를 누른 회원입니다.");
        					if(result.selectLike == 0){
        						//alert("좋아요 누르기 성공");
        						list_review();
        					}else if(result.selectLike == 1){
        						//alert("이미 좋아요를 눌러서 다시 1 다운");
        						list_review();
        					}
        				}else if(result.dataExists == 0){
        					//alert("좋아요를 누를 수 있는 권한 흭득.");
        					if(result.selectLike == 0){
        						//alert("좋아요 누르기 성공");
        						list_review();
        					}
        				}
        				//list_review();
        			},
        			error: function(err){
        				//alert("좋아요 실패[ERROR]: "+err);
        			}
        		});
    		}
    	}
    	//싫어요 업데이트
    	function update_hate(br_num, mem_num){
    		var mn = $('#mn').val();
    		//alert("싫어요!!");
    		//alert(br_num);
    		//$('#hate').css("color","red");
    		if(mn == ""){
    			alert("로그인이 필요한 기능입니다");
    		}else{
    			$.ajax({
        			url:'../detail/book/reviewupdatehate',
        			type:'POST',
        			data:{'brs_num':br_num, 'mem_num':mem_num},
        			dataType:'json',
        			success: function(result){
        				if(result.dataExists == 1){
        					//alert("이미 싫어요를 누른 회원입니다.");
        					if(result.selectHate == 0){
        						//alert("싫어요 누르기 성공");
        						list_review();
        					}else if(result.selectHate == 1){
        						//alert("이미 싫어요를 눌러서 다시 1 다운");
        						list_review();
        					}
        				}else if(result.dataExists == 0){
        					//alert("싫어요를 누를 수 있는 권한 흭득.");
        					if(result.selectHate == 0){
        						//alert("싫어요 누르기 성공");
        						list_review();
        					}
        				}
        				
        			},
        			error: function(err){
        				//alert("싫어요 실패[ERROR]: "+err);
        			}
        		});
    		}
    		
    	}
    	
    	function test(brs_num){
    		alert("TEST");
    		alert(brs_num);
    	}
    	
    	function list_review_plus(booknum, plusPage){
    		//alert("플러스 페이지");
    		//alert("book_num: "+booknum);
    		//alert("plusPage: "+plusPage);
    		$.ajax({
    			url:'../detail/book/listreviewplus',
    			type:'POST',
    			data:{'book_num':bookNum, 'plusPage':plusPage},
    			dataType:'json',
    			success: function(result){
    				
    				//alert("더보기 성공시 값: "+result);
    				//alert("더보기 result.length: "+result.review.length);
    				//alert("더보기 plusPage: "+ plusPage);
    				var htmll = "";
    				var plus = "";
    				if(result){
    					//alert("더보기 플러스 페이지 증가 테스트: "+result.plusPage);
    					for(let BookReviews of result.review){
    						//alert(result.member.mem_id);
    						htmll += "<li class='mb-4 pb-5 border-bottom'>";
    						htmll += "<div class='d-flex align-items-center mb-3'>";
    						htmll += "<h6 class='mb-0'>"+BookReviews.member.mem_id+"</h6>";
    						if(BookReviews.brs_rating == 1){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 2){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 3){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 4){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='far fa-star'></small>";
    							htmll += "</div>";
    						}else if(BookReviews.brs_rating == 5){
    							htmll += "<div class='text-yellow-darker ml-3'>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "<small class='fas fa-star'></small>";
    							htmll += "</div>";
    						}
    						htmll += "</div>";
    						htmll += "<p class='mb-4 text-lh-md'>"+BookReviews.brs_content+"</p>";
    						htmll += "<div class='text-gray-600 mb-4'>"+BookReviews.brs_cdate+"</div>";
    						htmll += "<ul class='nav'>";
    						htmll += "<li class='mr-7'>";
    						htmll += "<a onclick='update_like("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						htmll += "<i id='like' class='font-size-5 flaticon-like-1'></i>";
    						htmll += "<span id='likeCount' class='ml-2'>"+BookReviews.brs_like+"</span>";
    						htmll += "</a>";
    						htmll += "</li>";
    						htmll += "<li class='mr-7'>";
    						htmll += "<a onclick='update_hate("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						htmll += "<i id='hate' class='font-size-5 flaticon-dislike'></i>";
    						htmll += "<span id='hateCount' class='ml-2'>"+BookReviews.brs_hate+"</span>";
    						htmll += "</a>";
    						htmll += "</li>";
    						//alert(result.member);
							if(result.member){
								if(result.member.mem_id == BookReviews.member.mem_id){
	    							htmll += "<li class='mr-7'>";
	    							htmll += "<a onclick='delete_review("+BookReviews.brs_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
	    							htmll += "<span class='material-icons' style='font-size: 30px; color:green'>delete_forever</span>";
	    							htmll += "</a>";
	    							htmll += "</li>";
	    						}
							}
							htmll += "</ul>";
    						htmll += "</li>";
    						//alert("요기2");
			
    					}
    					$('#ulul').html(htmll);
    					if(result.plusPage >= result.reviewTotal){
    						//alert("더보기 그만");
    						$('#plusPage').hide();
    						
    					}else{
    						plus += "<div style='text-align:center;'>";
        					plus += "<a onclick='list_review_plus(${book}, "+result.plusPage+")' style='cursor:pointer' >";
        					plus += "<i class='fa-sharp fa-solid fa-plus'></i>";
        					plus += "더 보기</a>";
        					plus += "</div>";
        					$('#plusPage').html(plus);
        					//alert("더보기 그려지기 완료")
    					}
    					
    					
    				}else if(!result){
    					//alert("데이터 없음");
    				}
    			},
    			error: function(err){
    				alert("더보기 에러"+err);
    			}
    		});
    		
    	}
    	
    	
    	
    	var bookNum = $('#bn').val();
    	//var pp = $('#pp').val();

    	function list_review(){
    		//alert("리스트 불러오기");
    		//alert("book_num: "+bookNum);
    		//alert("plusPage: "+plusPage);
    		//alert("pp: "+pp);
    		$.ajax({
    			url:'../detail/book/listreview',
    			type:'POST',
    			data:{'book_num':bookNum},
    			dataType:'json',
    			success: function(result){
    				//alert("성공 result: "+result);
    				//alert("성공후 length: "+result.plusPage.length);
    				html = "";
    				if(result){
    					html += "<h4 class='font-size-3'>회원 리뷰 </h4>";
    					html += "<div class='mb-8' id='cut'>";
    					html += "<div class='mb-6'>";
    					html += "<div class='d-flex  align-items-center mb-4'>";
    					html += "<span class='font-size-15 font-weight-bold'>"+result.reviewAvg+"</span>";
    					html += "<div class='ml-3 h6 mb-0'>";
    					html += "<span class='font-weight-normal'>"+result.reviewTotal+" reviews</span>";
    					if(result.reviewAvg < 0.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 0.5 && result.reviewAvg < 1.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 1.5 && result.reviewAvg < 2.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 2.5 && result.reviewAvg < 3.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 3.5 && result.reviewAvg < 4.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='far fa-star'></small>";
        					html += "</div>";
    					}else if(result.reviewAvg >= 4.5){
    						html += "<div class='text-yellow-darker'>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "<small class='fas fa-star'></small>";
        					html += "</div>";
    					}
    					
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='d-xl-flex'>";
    					html += "<a type='button' href='#reviewcommit' class='d-block btn btn-outline-dark rounded-0 px-5 mb-3 mb-xl-0'>리뷰 쓰러가기</a>";
    					html += "</div>";
    					html += "</div>";// 버튼까지
    					html += "<div>"; //별점 bar 그래프
    					html += "<ul class='list-unstyled'>";
    					html += "<li class='py-2'>";//바 리스트 5점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>5 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.five/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.five+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 4점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>4 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.four/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.four+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 3점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>3 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.three/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.three+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 2점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>2 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.two/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.two+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>";
    					
    					html += "<li class='py-2'>";//바 리스트 1점짜리
    					html += "<a class='row align-items-center mx-gutters-2 font-size-2' href='javascript:;'>";
    					html += "<div class='col-auto'>";
    					html += "<span class='text-dark'>1 stars</span>";
    					html += "</div>";
    					html += "<div class='col px-0'>";
    					html += "<div class='progress bg-white-100' style='height: 7px;'>";
    					html += "<div class='progress-bar bg-yellow-darker' role='progressbar' style='width:"+result.one/result.reviewTotal*100+"%;' aria-valuenow='100' aria-valuemin='0' aria-valuemax='100'></div>";
    					html += "</div>";
    					html += "</div>";
    					html += "<div class='col-2'>";
    					html += "<span class='text-secondary'>"+result.one+"</span>";
    					html += "</div>";
    					html += "</a>";
    					html += "</li>"; // 바 리스트 끝
    					
    					html += "</ul>";
    					html += "</div>";
    					html += "</div>";
    					html += "<h4 class='font-size-3 mb-8'>1-5 of "+result.reviewTotal+" reviews </h4>";
    					html += "<ul class='list-unstyled mb-8' id='ulul'>";
    					
    					for(let BookReviews of result.review){
    						//alert(BookReviews.brs_num);
    						html += "<li class='mb-4 pb-5 border-bottom'>";
    						html += "<div class='d-flex align-items-center mb-3'>";
    						html += "<h6 class='mb-0'>"+BookReviews.member.mem_id+"</h6>";
    						if(BookReviews.brs_rating == 1){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 2){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 3){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 4){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='far fa-star'></small>";
    							html += "</div>";
    						}else if(BookReviews.brs_rating == 5){
    							html += "<div class='text-yellow-darker ml-3'>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "<small class='fas fa-star'></small>";
    							html += "</div>";
    						}
    						html += "</div>";
    						html += "<p class='mb-4 text-lh-md'>"+BookReviews.brs_content+"</p>";
    						html += "<div class='text-gray-600 mb-4'>"+BookReviews.brs_cdate+"</div>";
    						html += "<ul class='nav'>";
    						html += "<li class='mr-7'>";
    						html += "<a onclick='update_like("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						html += "<i id='like' class='font-size-5 flaticon-like-1'></i>";
    						html += "<span id='likeCount' class='ml-2'>"+BookReviews.brs_like+"</span>";
    						html += "</a>";
    						html += "</li>";
    						html += "<li class='mr-7'>";
    						html += "<a onclick='update_hate("+BookReviews.brs_num+", "+result.member.mem_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    						html += "<i id='hate' class='font-size-5 flaticon-dislike'></i>";
    						html += "<span id='hateCount' class='ml-2'>"+BookReviews.brs_hate+"</span>";
    						html += "</a>";
    						html += "</li>";
    						if(result.member.mem_id == BookReviews.member.mem_id){
    							html += "<li class='mr-7'>";
    							html += "<a onclick='delete_review("+BookReviews.brs_num+")' class='text-gray-600 d-flex align-items-center' style='cursor:pointer;'>";
    							html += "<span class='material-icons' style='font-size: 30px; color:green'>delete_forever</span>";
    							html += "</a>";
    							html += "</li>";
    						}
    						html += "</ul>";
    						html += "</li>";
    					}
    					html += "</ul>";
    					//alert(bookNum);
    					if(result.plusPage >= result.reviewTotal){
    						//alert("더보기 그만");
    						$('#plusPage').hide();
    						
    					}else{
    						html += "<div style='text-align:center;'><a onclick='list_review_plus("+bookNum+", "+result.plusPage+")' style='cursor:pointer' ><i class='fa-sharp fa-solid fa-plus'></i>더 보기</a></div>";
        					html += "</div>";
    					}
    					
    					
    					
    					$('#cut').html(html);		
    					//alert("그려지기 완료");
    					
    					
    				}else if(!result){
    					//alert("성공인데 데이터 없음")
    				}
    			},
    			error: function(err){
    				alert("에러: "+err);
    			}
    		});
    	}
    </script>
    <script>
    function addFav(isbn){    		
    	let memnum = "${member.mem_num}";
    	var favsuccess = false;
    	if($('#'+isbn+'').children('svg').attr('class') == "heart-empty"){//빈하트 클릭시    			
    		$.ajax({
    			url: "/ajax/fav/book.json", 
    			type: "GET", 
    			data: {isbn: isbn,
    				memnum: memnum
    				}, 
    			success: function(data){
    				if(!data){
    					alert("즐겨찾기할 수 없는 도서입니다.");
    					favsuccess = false;
    				}
    				if(data==true){ //db에 있는 도서 즐겨찾기(성공)    						  	
    					favsuccess = true;    						
    				}
    				else if(data==false){ //db에 없는 도서 즐겨찾기(실패)    						   
    					favsuccess = false;
    				}
    				if(favsuccess == true){
    	    			$('.'+isbn+'').empty();
    	        		$('.'+isbn+'-').empty();
    	    			$('.'+isbn+'').html('<svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');
    	    			$('.'+isbn+'-').html('<svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');    			    			    		    			
    	    		}
    			},
    			error: function(){
    				alert('서버에러');
    			}    				
    		});    	    				    		    
    	}else if($('#'+isbn+'').children('svg').attr('class') == "heart-fill"){
    		$.ajax({
    			url: "/ajax/favdel/book.json", 
    			type: "GET", 
    			data: {isbn: isbn,
    				memnum: memnum
    				}, 
    			success: function(data){
    				if(!data){
    					alert("존재하지않는 data");
    					return false;
    				}    					
    			},
    			error: function(){
    				alert('서버에러');
    			}
    		});    			
    		$('.'+isbn+'').empty();
    		$('.'+isbn+'-').empty();
    		$('.'+isbn+'').html('<svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');
    		$('.'+isbn+'-').html('<svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter"><path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path></svg>');    			
    	}    		
    }
    function login(){
    	alert("로그인을 해주세요");
    }
    </script>
</body>
</html>
