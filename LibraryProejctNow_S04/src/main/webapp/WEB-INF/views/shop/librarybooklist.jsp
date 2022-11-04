<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Shop v1 | Bookworm</title>

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
    
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body class="left-sidebar">
    <!--===== HEADER CONTENT =====-->
	<%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ====== -->
    <div class="page-header border-bottom mb-8">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center py-4">
                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">소장도서 검색</h1>                
            </div>
        </div>
    </div>
    <div class="site-content space-bottom-3" id="content">
        <div class="container">
            <div class="row">
                <div id="primary" class="content-area order-2">
                    <div class="shop-control-bar d-lg-flex justify-content-between align-items-center mb-5 text-center text-md-left">
                        <div class="shop-control-bar__left mb-4 m-lg-0">
                            <c:if test="${listResult.cp == listResult.totalPageCount}">
                            <p class="woocommerce-result-count m-0">총 검색결과 ${listResult.totalCount}건 중 현재페이지 ${listResult.cp*listResult.ps-(listResult.ps-1)}-${listResult.totalCount} </p>
                            </c:if>
                            <c:if test="${listResult.cp != listResult.totalPageCount}">
                            <p class="woocommerce-result-count m-0">총 검색결과 ${listResult.totalCount}건 중 현재페이지 ${listResult.cp*listResult.ps-(listResult.ps-1)}-${listResult.cp*listResult.ps} </p>
                            </c:if>
                        </div>
                        <div class="shop-control-bar__right d-md-flex align-items-center">
                            

                            <form class="number-of-items ml-md-4 mb-4 m-md-0 d-none d-xl-block" method="get">
                                <!-- Select -->
                                <select class="js-select selectpicker dropdown-select orderby" name="orderby"
                                data-style="border-bottom shadow-none outline-none py-2"
                                data-width="fit" id="selected_show" onchange="select_show(this.value)">
                                    <option value="10">10개</option>
                                    <option value="12" selected="selected">12개</option>
                                    <option value="15">15개</option>
                                    <option value="20">20개</option>
                                    <option value="30">30개</option>
                                </select>
                                
                                <script>                                                               
                                var para = document.location.href.split("?");			
								var subPageStart = para[1].indexOf('=', para[1].indexOf('page'))+1;
								var subPageEnd = para[1].indexOf('&', para[1].indexOf('page'));	
								if(subPageEnd==-1){
									var page = para[1].substring(subPageStart);
								}else{
									var page = para[1].substring(subPageStart, subPageEnd);
								}								
				                    function select_show(num) {				                    	
										console.log("#num: " + num);
				                    	sessionStorage.setItem("show", num);				                    	
				                    	clickPage(1);
				                    }
				                    function select_qtype(type){
				                    	var qtype = type;
				                    	sessionStorage.setItem("qtype", qtype);					                    	
				                    	clickPage(1, qtype);
				                    }
			                    </script>
                                <!-- End Select -->
                            </form>

                            <ul class="nav nav-tab ml-lg-4 justify-content-center justify-content-md-start ml-md-auto" id="pills-tab" role="tablist">
                                <li class="nav-item border">
                                    <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active" id="pills-one-example1-tab" data-toggle="pill" href="#pills-one-example1" onclick="clickTab(true);" role="tab" aria-controls="pills-one-example1" aria-selected="true">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="17px" height="17px">
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,0.000 L10.000,0.000 L10.000,3.000 L7.000,3.000 L7.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,0.000 L17.000,0.000 L17.000,3.000 L14.000,3.000 L14.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,7.000 L10.000,7.000 L10.000,10.000 L7.000,10.000 L7.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,7.000 L17.000,7.000 L17.000,10.000 L14.000,10.000 L14.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,14.000 L10.000,14.000 L10.000,17.000 L7.000,17.000 L7.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M14.000,14.000 L17.000,14.000 L17.000,17.000 L14.000,17.000 L14.000,14.000 Z" />
                                        </svg>
                                    </a>
                                </li>
                                <li class="nav-item border">
                                    <a class="nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center" id="pills-two-example1-tab" data-toggle="pill" href="#pills-two-example1" onclick="clickTab(false);" role="tab" aria-controls="pills-two-example1" aria-selected="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="23px" height="17px">
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,0.000 L3.000,0.000 L3.000,3.000 L-0.000,3.000 L-0.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,0.000 L23.000,0.000 L23.000,3.000 L7.000,3.000 L7.000,0.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,7.000 L3.000,7.000 L3.000,10.000 L-0.000,10.000 L-0.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,7.000 L23.000,7.000 L23.000,10.000 L7.000,10.000 L7.000,7.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M-0.000,14.000 L3.000,14.000 L3.000,17.000 L-0.000,17.000 L-0.000,14.000 Z" />
                                            <path fill-rule="evenodd" fill="rgb(25, 17, 11)" d="M7.000,14.000 L23.000,14.000 L23.000,17.000 L7.000,17.000 L7.000,14.000 Z" />
                                        </svg>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <!-- Tab Content -->
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled row no-gutters row-cols-2 row-cols-lg-3 row-cols-wd-4 border-top border-left mb-6">
                                <c:forEach items="${listResult.bookList}" var="book">
                                <li class="product col">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                            <div class="woocommerce-loop-product__thumbnail">
                                                <a href="/detail/book?isbn=${book.book_isbn}" class="d-block"><img src="${book.book_img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                            </div>
                                            <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${book.book_isbn}">${book.book_publisher}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${book.book_isbn}">${book.book_title}</a></h2>
                                                <div class="font-size-2  mb-1 text-truncate"><a href="../others/authors-single.html" class="text-gray-700">${book.book_writer}</a></div>
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${book.classification.cf_name}</span>
                                                </div>
                                            </div>
                                            <div class="product__hover d-flex align-items-center">
                                                <a href="javascript:openPop('${book.book_isbn}')" class="text-uppercase text-dark h-dark font-weight-medium mr-auto" data-toggle="tooltip" data-placement="right" title="" data-original-title="대출예약" >
                                                    <span class="product__add-to-cart">대출예약</span>
                                                    <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                                </a>                                             
                                                <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == book.book_isbn}">
                                                              <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
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
                                                     <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose> 
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>                               
                            </ul>
                            <!-- End Mockup Block -->
                        </div>
                        <div class="tab-pane fade" id="pills-two-example1" role="tabpanel" aria-labelledby="pills-two-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled mb-6">
                            <c:forEach items="${listResult.bookList}" var="book">
                                <li class="product product__list">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link row position-relative">
                                            <div class="col-md-auto woocommerce-loop-product__thumbnail mb-3 mb-md-0">
                                                <a href="/detail/book?isbn=${book.book_isbn}" class="d-block"><img src="${book.book_img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description" style="width: 150px; height: 200px;"></a>
                                            </div>
                                            <div class="col-md woocommerce-loop-product__body product__body pt-3 bg-white mb-3 mb-md-0">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${book.book_isbn}">${book.book_publisher}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 crop-text-2 h-dark"><a href="/detail/book?isbn=${book.book_isbn}" tabindex="0">${book.book_title}</a></h2>
                                                <div class="font-size-2  mb-2 text-truncate"><a href="../others/authors-single.html" class="text-gray-700">${book.book_writer}</a></div>                                                
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${book.book_code}</span>
                                                </div>
                                            </div>
                                            <div class="col-md-auto d-flex align-items-center">
                                                <a href="javascript:openPop('${book.book_isbn}')" class="text-uppercase text-dark h-dark font-weight-medium mr-4" data-toggle="tooltip" data-placement="right" title="" data-original-title="대출예약">
                                                    <span class="product__add-to-cart">대출예약</span>
                                                    <span class="product__add-to-cart-icon font-size-4"><i class="flaticon-icon-126515"></i></span>
                                                </a>                                               
                                                <c:set var="loop_flag" value="false" />  
                                                  <c:choose>
                                                  <c:when test="${not empty member}">
                                                  <c:choose>
                                                  <c:when test="${not empty member.bookFavorite}">
                                                     <c:forEach items="${member.bookFavorite}" var="list" varStatus="status">    
                                                     <c:if test="${not loop_flag }">      
                                                   <c:choose>
                                                           <c:when test="${list.libraryBook.book_isbn == book.book_isbn}">
                                                              <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
                                                                  <svg class="heart-fill" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="#f75454" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                          <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                        </svg>
                                                              </a>
                                                              <c:set var="loop_flag" value="true" />
                                                           </c:when>                                                  
                                                           <c:otherwise>
                                                              <c:if test="${status.last}">
                                                                 <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
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
                                                     <a href="javascript:addFav('${book.book_isbn}')" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">                                            
                                                         <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                 <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                               </svg>
                                                     </a>
                                                  </c:otherwise>
                                                  </c:choose>                                                                 
                                              </c:when>
                                             <c:otherwise>
                                                   <a href="javascript:login()" class="h-p-bg btn btn-outline-primary border-0 ${book.book_isbn}" id="${book.book_isbn}" style="display: inline-flex;">
                                                                <svg class="heart-empty" role="img" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="-2 -2 26 26" fill="white" stroke="#161619" stroke-width="1.5" stroke-linecap="square" stroke-linejoin="miter">          
                                                       <path d="M12,21 L10.55,19.7051771 C5.4,15.1242507 2,12.1029973 2,8.39509537 C2,5.37384196 4.42,3 7.5,3 C9.24,3 10.91,3.79455041 12,5.05013624 C13.09,3.79455041 14.76,3 16.5,3 C19.58,3 22,5.37384196 22,8.39509537 C22,12.1029973 18.6,15.1242507 13.45,19.7149864 L12,21 Z"></path>
                                                     </svg>
                                                            </a>   
                                             </c:otherwise>
                                           </c:choose> 
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                            <!-- End Mockup Block -->
                        </div>
                    </div>
                    <!-- End Tab Content -->
                    <script>						
						function clickPage(page, qtype){							
						    var para = document.location.href.split("?");							
							var subIdStart = para[1].indexOf('=', para[1].indexOf('catgoId'))+1;
							var subIdEnd = para[1].indexOf('&', para[1].indexOf('catgoId'));
							if(subIdEnd==-1){
								var Id = para[1].substring(subIdStart);
							}else{
								var Id = para[1].substring(subIdStart, subIdEnd);
							}							
							var show = sessionStorage.getItem("show");							
							$(location).attr('href', "/library/category/book?catgoId="+Id+"&page="+page+"&show="+show);
						}
						//탭 박스클릭시 유지 로직
						function clickTab(click){
							sessionStorage.setItem("option", click);						
						}
						var option = sessionStorage.getItem("option");						
						if(option=="true"){
							$("#pills-one-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active");
							$("#pills-one-example1-tab").attr("aria-selected", "true");
							$("#pills-one-example1").attr("class", "tab-pane fade show active");
							$("#pills-two-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center");
							$("#pills-two-example1-tab").attr("aria-selected", "false");
							$("#pills-two-example1").attr("class", "tab-pane fade");							
						}else{
							$("#pills-one-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center");
							$("#pills-one-example1-tab").attr("aria-selected", "false");
							$("#pills-one-example1").attr("class", "tab-pane fade");
							$("#pills-two-example1-tab").attr("class", "nav-link p-0 height-38 width-38 justify-content-center d-flex align-items-center active");
							$("#pills-two-example1-tab").attr("aria-selected", "true");
							$("#pills-two-example1").attr("class", "tab-pane fade show active");
						}						
						$('#selected_show').val("${listResult.ps}").prop("selected", true);						
					</script>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination pagination__custom justify-content-md-center flex-nowrap flex-md-wrap overflow-auto overflow-md-visble">
                            <c:if test="${listResult.startpaging != 1 }">
                        			<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.startpaging});">Previous</a></li>
							</c:if>
						    <c:forEach begin="${listResult.startpaging }" end="${listResult.endpaging }" var="i">
						        <a href="list.do?ps=${ps}&cp=${i}">
						   			<c:choose>
						   			    <c:when test="${i==listResult.cp}">
						   			    	<li class="flex-shrink-0 flex-md-shrink-1 page-item active" aria-current="page"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i});">${i}</a></li>						                	
						                </c:when>
						                <c:otherwise>
						                    <li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${i});">${i}</a></li>
						                </c:otherwise>
									</c:choose>				
						    </c:forEach>
						    <c:if test="${listResult.endpaging != listResult.totalPageCount}">						
									<li class="flex-shrink-0 flex-md-shrink-1 page-item"><a class="page-link" href="javascript:void(0);" onclick="clickPage(${listResult.endpaging+1});">Next</a></li>
							</c:if>
                        </ul>
                    </nav>
                </div>
                
                <script>
                	function clickcatgo(catgo){
                		var show = sessionStorage.getItem("show");
                		$(location).attr('href', "/library/category/book?catgoId="+catgo+"&page=1&show="+show);                		
                	}
                </script>
                
                <div id="secondary" class="sidebar widget-area order-1" role="complementary">
                    <div id="widgetAccordion">
                        <div id="woocommerce_product_categories-2" class="widget p-4d875 border woocommerce widget_product_categories">
                            <div id="widgetHeadingOne" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                    data-toggle="collapse"
                                    data-target="#widgetCollapseOne"
                                    aria-expanded="true"
                                    aria-controls="widgetCollapseOne">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">국내도서</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                    </svg>
                                </a>
                            </div>
                            <div id="widgetCollapseOne" class="mt-3 widget-content collapse show"
                                aria-labelledby="widgetHeadingOne"
                                data-parent="#widgetAccordion">
                                <ul class="product-categories">
                                    <li class="cat-item cat-item-9 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(1);">소설</a></li>
                                    <li class="cat-item cat-item-69 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(2);">에세이</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(3);">과학</a></li>
                                    <li class="cat-item cat-item-11 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(4);">인문학</a></li>
                                    <li class="cat-item cat-item-12"><a href="javascript:void(0);" onclick="clickcatgo(5);">예술/대중문화</a></li>                                    
                                </ul>
                            </div>
                        </div>
                        
                        <div id="Format" class="widget p-4d875 border">
                            <div id="widgetHeading23" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark collapsed" href="#" data-toggle="collapse" data-target="#widgetCollapse23" aria-expanded="false" aria-controls="widgetCollapse23">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">외국도서</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z"></path>
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z"></path>
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapse23" class="mt-3 widget-content collapse" aria-labelledby="widgetHeading23" data-parent="#widgetAccordion" style="">
                                <ul class="product-categories">
                                    <li class="cat-item cat-item-9 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(6);">소설</a></li>
                                    <li class="cat-item cat-item-69 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(7);">어린이</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(8);">일본도서</a></li>
                                    <li class="cat-item cat-item-65 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(9);">중국도서</a></li>
                                    <li class="cat-item cat-item-11 cat-parent"><a href="javascript:void(0);" onclick="clickcatgo(10);">예술/대중문화</a></li>                                    
                                </ul>
                            </div>
                        </div>
                        
                        <script>
						jQuery(function($) {
							$("#author").keydown(function(e) {		// 메인 페이지 중간 검색어 입력박스 엔터-키 처리
								if (e.keyCode == 13) {
									$("#author_button").trigger( "click" );
								}
							});
							$("#author_button").click(function(e) {					// 메인 페이지 검색어 입력박스 옆 전송버튼 클릭시
								let terms = $("#author").val().trim();								
								if (terms == '') {
									alert("검색어를 입력하세요.");
									return false;
								}
								var show = sessionStorage.getItem("show");
								if(sessionStorage.getItem("show")==null){
									show = 12; //페이지 초기값 지정
								}
								$(location).attr('href', "/library/category/book?&catgoId=-1&keyword="+terms+"&page=1&show="+show);
								return false;
							});
						});
					</script>

                        <div id="Authors" class="widget widget_search widget_author p-4d875 border">
                            <div id="widgetHeading21" class="widget-head">
                                <a class="d-flex align-items-center justify-content-between text-dark" href="#"
                                    data-toggle="collapse"
                                    data-target="#widgetCollapse21"
                                    aria-expanded="true"
                                    aria-controls="widgetCollapse21">

                                    <h3 class="widget-title mb-0 font-weight-medium font-size-3">작가검색</h3>

                                    <svg class="mins" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="2px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M0.000,-0.000 L15.000,-0.000 L15.000,2.000 L0.000,2.000 L0.000,-0.000 Z" />
                                    </svg>

                                    <svg class="plus" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="15px" height="15px">
                                        <path fill-rule="evenodd" fill="rgb(22, 22, 25)" d="M15.000,8.000 L9.000,8.000 L9.000,15.000 L7.000,15.000 L7.000,8.000 L0.000,8.000 L0.000,6.000 L7.000,6.000 L7.000,-0.000 L9.000,-0.000 L9.000,6.000 L15.000,6.000 L15.000,8.000 Z" />
                                    </svg>
                                </a>
                            </div>

                            <div id="widgetCollapse21" class="mt-4 widget-content collapse show"
                                aria-labelledby="widgetHeading21"
                                data-parent="#widgetAccordion">
                                <form class="form-inline my-2 overflow-hidden">
                                    <div class="input-group flex-nowrap w-100">
                                        <div class="input-group-prepend">
                                            <i class="glph-icon flaticon-loupe py-2d75 bg-white-100 border-white-100 text-dark pl-3 pr-0 rounded-0"></i>
                                        </div>
                                        <input id="author" class="form-control bg-white-100 py-2d75 height-4 border-white-100 rounded-0" type="search" placeholder="작가검색" aria-label="Search" autocomplete="off">
                                    </div>
                                    <button id="author_button" class="btn btn-outline-success my-2 my-sm-0 sr-only" type="submit">검색</button>
                                </form>                                
                            </div>
                        </div>                                                          
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ====== END MAIN CONTENT ====== -->

    <!-- ========== FOOTER ========== -->
    	<%@ include file="/WEB-INF/views/footer.jsp" %>
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
<div class="popup_layer" id="popup_layer" style="display: none;">
    	<div id="popup_box" class="popup_box">
    		<div style="height: 10px; width: 375px; float: top;">
    			<a href="javascript:closePop();"><img src="/img/ic_close.svg" class="m_header-banner-close" width="60px" height="60px"></a>
    		</div>
    		<!--팝업 컨텐츠 영역-->
    		<div class="popup_cont">
    			<div id="popup_primary" class="popup_content-area">
    				<main id="main" class="site-main ">
    					<div class="product">
    						<div class="container"> 
    							<div class="row">
    								<div class="col-lg-5 woocommerce-product-gallery woocommerce-product-gallery--with-images images">
    									<figure id="figure_slick" class="woocommerce-product-gallery__wrapper mb-0">
    										
    									</figure>
    								</div>
    								<div class="col-lg-7 pl-lg-0 summary entry-summary">
    									<div class="px-lg-4 px-xl-6">
    										<h1 id="book_title" class="product_title entry-title font-size-7 mb-3"></h1>
    										<div class="font-size-2 mb-4">
    										<span class="ml-3 font-weight-medium">지은이</span>
    											<span id="book_author" class="ml-2 text-gray-600"></span>
    											<br>
    											<span class="text-yellow-darker">
    												<span class="fas fa-star"></span>
    												<span class="fas fa-star"></span>
    												<span class="fas fa-star"></span>
    												<span class="fas fa-star"></span>
    												<span class="fas fa-star"></span>
    											</span>
    											<span class="ml-3">(3,714)</span>
    											&nbsp;
    											<span class="mr-6 mb-4 mb-md-0" id="popupFav" style="display:content;">			   											
												</span>     											
    										</div>    										
    										<div class="woocommerce-product-details__short-description font-size-2 mb-4">
    											<p id="book_desc" class=""></p>
    										</div>
    										
    										 <p class="price font-size-22 font-weight-medium mb-4">                                      
											     <span class="woocommerce-Price-amount amount">                                          
											         <span class="woocommerce-Price-currencySymbol"></span>카테고리                          
											     </span> <div></div>                                                                 
											     <span class="woocommerce-Price-amount amount">                                          
											         <span id="book_catgo" class="woocommerce-Price-currencySymbol"></span>
											     </span>       
											                                                                           
											   
											 
											 <div class="mb-4">                                                                 
    											<label class="form-label font-size-2 font-weight-medium mb-3">상태 &nbsp;</label>
    											<!-- 대출가능 도서 label -->
    											<label id="rental_book_count"></label>
    											<!--  도서위치 label -->
    											<label id="rental_book_fac"></label>
    										</div>
    										
    										<form action="/rental.ok" id="rental" name="rental" class="cart d-md-flex align-items-center" method="post">    										
    										</form>							                                                                                  
    									</div>    									
    								</div>
    							</div>
    						</div>
    					</div> 
    				</main>
    			</div>
    		</div>
    		<div class="popup_btn" style="float: bottom; margin-top: 20px;">
	          <a href="javascript:closePop();">닫기</a>   
	      </div>
    	</div>
    </div>
    <div id="btn_script"></div>
    
<!-- Popup -->
    <link rel="stylesheet" type="text/css" href="/css/popup.css">
    <script src="/js/popup.js" type="text/javascript"></script>
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
</html>
