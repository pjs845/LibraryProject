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
    
</head>
<body>

    <!-- ===== HEADER CONTENT ===== -->
	<%@ include file="/WEB-INF/views/mainheader.jsp" %>
    <!-- ===== END HEADER CONTENT ===== -->
    <%@ include file="/WEB-INF/views/chatbot.jsp" %>

    <!--===== MAIN CONTENT ===== -->
    <section class="mb-8">
        <div class="container">
        <!-- 새알림 -->
		     
        <!-- 새알림 끝 -->
       <!-- 공지사항 알림 -->
        <ul class="products list-unstyled mb-0 row row-cols-1 row-cols-md-1 row-cols-xl-2 row-cols-wd-2">
            
                 <li class="col">
                 	<div class="frontpage-section-group frontpage-notice">
						<div class="frontpage-section frontpage-notice-main" id="frontpage-notice-main">
							<div class="section-header d-flex justify-content-between align-items-center" style="margin-top: 58px;">
								<h3 class="section-title" style="font-family: 'MICEGothic Bold';">공지사항</h3>
								<a class="more" href="/others/PBoard">더보기<i class="fa-solid fa-plus"></i></a>
							</div><!-- .section-header -->				
								<div class="section-content">
									<ul>
										<c:forEach items="${notice}" var="notice">
										<li class="d-flex justify-content-between align-items-center">
											<a href="/others/PBcontent?pb_num=${notice.pb_num}" style="font-weight: bold;">
											<i class="material-icons" title="공지">campaign</i>&nbsp;&nbsp;${notice.pb_title}</a>
											<span>
											<fmt:formatDate value="${notice.pb_rdate}" pattern="MM-dd"/>
											</span>
										</li>
										</c:forEach>
										<c:forEach items="${newlist}" var="newlist">
										<li class="d-flex justify-content-between align-items-center">
											<a href="/others/PBcontent?pb_num=${newlist.pb_num}">${newlist.pb_title}</a>
											<span>
											<fmt:formatDate value="${newlist.pb_rdate}" pattern="MM-dd"/>
											</span>
										</li>
										</c:forEach>
									</ul>
								</div><!-- .section-content -->
			
											<!-- .section-content -->
									</div><!-- #frontpage-notice-main -->
						<div class="frontpage-section frontpage-notice-other" id="frontpage-notice-other">
							<div class="section-header d-flex justify-content-between align-items-center" style="margin-top:60px;">
								<h3 class="section-title" style="font-family: 'MICEGothic Bold';">자유게시판</h3>
								<a class="more" href="/others/read.do">더보기<i class="fa-solid fa-plus"></i></a>
							</div><!-- .section-header -->
							
											
							<div class="section-content">
								<ul>
								<c:forEach items="${readL}" var="Board" varStatus="status">								
									<li class="d-flex justify-content-between align-items-center">
										<a href="/others/view.do?b_num=${Board.b_num}">
										${Board.b_title}</a>
										<span>${Board.b_rdate}</span>
									</li>	
								</c:forEach>																	
								</ul>
							</div><!-- .section-content -->
			
			
							<!-- .section-content -->
						</div><!-- #frontpage-notice-other -->
					</div>                 	   
                </li>
                
                <li class="col">                                 
		        <div class="space-bottom-3 space-bottom-lg-4">
		            <div class="container">
		                <header class="mb-5 d-md-flex align-items-center" style="padding-top: 50px;">
		                    <h2 class="font-size-7 mb-3 mb-md-0">인포그래픽</h2>		                    		                    
		                </header>
		                <div class="js-slick-carousel u-slick u-slick--gutters-3 products"
		                    data-pagi-classes="text-center u-slick__pagination mt-7 position-absolute right-0 left-0"
		                    data-slides-show="1"
		                    data-responsive='[{
		                       "breakpoint": 1199,
		                       "settings": {
		                         "slidesToShow": 1
		                       }
		                    }, {
		                       "breakpoint": 992,
		                       "settings": {
		                         "slidesToShow": 1
		                       }
		                    }, {
		                       "breakpoint": 554,
		                       "settings": {
		                         "slidesToShow": 1
		                       }
		                    }]'>
		                    <div class="product product__card product__space product__space-primary border rounded-md bg-white">
		                        <div class="media p-3 p-md-4d875" style="height: 400px;">
		                     		<canvas id="lineChart"></canvas>                
		                        </div>
		                    </div>
		                    <div class="product product__card product__space product__space-primary border rounded-md bg-white">
		                        <div class="media p-3 p-md-4d875" style="height: 400px;">	
		                        	<canvas id="PieChart" width="350"></canvas>	                            
		                        </div>		                        
		                    </div>
		                    <div class="product product__card product__space product__space-primary border rounded-md bg-white">
		                        <div class="media p-3 p-md-4d875" style="height: 400px;">	
		                        	<canvas id="BarChart"></canvas>	                            
		                        </div>		                        
		                    </div>   
		                    <div class="product product__card product__space product__space-primary border rounded-md bg-white">
		                        <div class="media p-3 p-md-4d875" style="height: 400px;">	
		                        	<canvas id="VerticalBarChart"></canvas>	                            
		                        </div>		                        
		                    </div>   		                           
		                </div>
		            </div>
		        </div>    
                   <!--  <div id="AreaChart" style="width: 500px; height: 400px"></div> -->
                </li>
                
            </ul>       
        <!-- 공지사항 알림 끝 --> 
       </div>
    </section>

    <section class="space-bottom-3">
        <div class="container">
            <header class="d-md-flex justify-content-between align-items-center mb-5">
                <h2 class="font-size-7 mb-4 mb-md-0">추천 도서</h2>
                <a href="/recommend/more" class="d-flex align-items-center h-primary">더 보기</a>
            </header>
            <ul class="products list-unstyled mb-0 row row-cols-2 row-cols-md-3 row-cols-xl-4 row-cols-wd-5">
            <c:forEach items="${listRecomend}" var="list">
                <li class="col">
                    <div class="product product__space product__space-primary border rounded-md bg-white mb-5" style="height:500px;">
                        <div class="product__inner overflow-hidden p-3 p-md-4d875">
                            <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                <div class="woocommerce-loop-product__thumbnail">
                                    <a href="/detail/book?isbn=${list.book_isbn}" class="d-block"><img src="${list.book_img }" class="d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                </div>
                                <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                    <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${list.book_isbn}">${list.book_publisher}</a></div>
                                    <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${list.book_isbn}">${list.book_title}</a></h2>
                                    <div class="font-size-2  mb-1 text-truncate"><a href="/search/book?type=3&keyword=${list.book_writer}&page=1" class="text-gray-700">${list.book_writer}</a></div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
    </section>
    <section class="space-bottom-3">
        <div class="container">
            <header class="d-md-flex justify-content-between align-items-center mb-6">
                <h2 class="font-size-7 mb-4 mb-lg-0">사이트맵</h2>
            </header>
            <div class="row row-cols-md-3 row-cols-xl-6 mb-10">
                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="/library/category/book?catgoId=0&page=1&show=12">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-primary-indigo bg-indigo-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-book-half font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4 font-weight-medium text-dark">소장도서</span>
                        </a>
                    </div>
                </div>

                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="library/category/dvd?page=1&show=12">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-tangerine bg-tangerine-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-disc-fill font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4 font-weight-medium text-dark">DVD</span>
                        </a>
                    </div>
                </div>

                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="#" onclick="rezSave();">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-chili bg-chili-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-pencil-square font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4 font-weight-medium text-dark">열람실 예약</span>
                        </a>
                    </div>
                </div>

                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="/others/PBoard">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-carolina bg-carolina-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-megaphone-fill font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4 font-weight-medium text-dark">공지사항</span>
                        </a>
                    </div>
                </div>

                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="/others/read.do">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-punch bg-punch-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-clipboard-fill font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4  font-weight-medium text-dark">게시판</span>
                        </a>
                    </div>
                </div>

                <div class="col mb-5 mb-xl-0">
                    <div class="text-center">
                        <a href="http://13.209.64.211:80">
                            <div class="d-flex align-items-center justify-content-center mb-0 width-100 height-100 text-chili bg-chili-light rounded-circle mx-auto mb-4">
                                <i class="bi bi-universal-access-circle font-size-12"></i>
                            </div>
                            <span class="tabtext font-size-4 font-weight-medium text-dark">독서클럽</span>
                        </a>
                    </div>
                </div>
            </div>            
            </div>
        </div>
    </section>
    
    <section class="space-bottom-3">
        <div class="container">
            <header class="mb-5">
                <h2 class="font-size-7 mb-0">대출 인기도서</h2>
            </header>
            <ul class="js-slick-carousel products list-unstyled u-slick--gutters-3 my-0"
                data-pagi-classes="d-xl-none text-center u-slick__pagination mb-0 mt-3 mt-lg-5"
                data-arrows-classes="d-none d-lg-block u-slick__arrow u-slick__arrow-centered--y border-0 h-dark-white"
                data-arrow-left-classes="bi bi-arrow-left-square-fill u-slick__arrow-inner u-slick__arrow-inner--left ml-lg-n10"
                data-arrow-right-classes="bi bi-arrow-right-square-fill u-slick__arrow-inner u-slick__arrow-inner--right mr-lg-n10"
                data-slides-show="6"
                data-responsive='[{
                   "breakpoint": 1500,
                   "settings": {
                     "slidesToShow": 4
                   }
                }, {
                   "breakpoint": 1199,
                   "settings": {
                     "slidesToShow": 4
                   }
                }, {
                   "breakpoint": 992,
                   "settings": {
                     "slidesToShow": 3
                   }
                },{
                   "breakpoint": 554,
                   "settings": {
                     "slidesToShow": 1
                   }
                }]'>   
                <c:forEach items="${monthRentalList}" var="list">
                <li class="product product__space product__space-primary border rounded-md bg-white">
                    <div class="product__inner overflow-hidden p-4d875">
                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                            <div class="woocommerce-loop-product__thumbnail">
                                <a href="/detail/book?isbn=${list.book_isbn}" class="d-block"><img src="${list.book_img }" class="d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                            </div>
                            <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="/detail/book?isbn=${list.book_isbn}">${list.book_publisher}</a></div>
                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="/detail/book?isbn=${list.book_isbn}">${list.book_title}</a></h2>
                                <div class="font-size-2  mb-1 text-truncate"><a href="../other/authors-single.html" class="text-gray-700">${list.book_writer}</a></div>
                                <div class="price d-flex align-items-center font-weight-medium font-size-3">                                                                 
                                </div>
                                
                            </div>
                            <div class="product__hover d-flex align-items-center">
                                
                            </div>
                        </div>
                    </div>
                </li>                
                </c:forEach>                               
            </ul>
        </div>
    </section>
    <!---===== END MAIN CONTENT ===== -->
    <!-- ========== FOOTER ========== -->
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
    <script src="/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>      
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>    
    
    <script src="/js/chart.js"></script> 
    

    <!-- JS HS Components -->
    <script src="/js/other.js"></script>
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>	   

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

    <!-- 자동완성 js -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
	<script src="/js/autocomplete.js" type="text/javascript"></script>
	<script src="/js/login.js" type="text/javascript"></script>

</body>
</html>
