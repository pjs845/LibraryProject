<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <!-- Title -->
    <title>Shop Checkout | Bookworm</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/img/favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/vendor/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/vendor/slick-carousel/slick/slick.css"/>
    <link rel="stylesheet" href="/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
 	<!-- CSS -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css"/>
    <!-- seat CSS-->
    <link rel="stylesheet" href="/resources/seat/seat.css"/>

    <!-- layer Popup CSS-->
    <link rel="stylesheet" href="/resources/seat/layerPopup.css"/>   
    <!-- CSS Bookworm Template -->
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body class="right-sidebar woocommerce-checkout">
    <!--===== HEADER CONTENT =====-->
   	<%@ include file="/WEB-INF/views/subheader.jsp" %>
    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ====== -->
    <div class="page-header border-bottom">
        <div class="container">
            <div class="d-md-flex justify-content-between align-items-center py-4">
                <h1 class="page-title font-size-3 font-weight-medium m-0 text-lh-lg">Shop Single</h1>
                <nav class="woocommerce-breadcrumb font-size-2">
                    <a href="/" class="h-primary">Home</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                    <a href="#" class="h-primary">Shop</a>
                    <span class="breadcrumb-separator mx-1">
                </nav>
            </div>
        </div>
    </div>
    <div class="">
									 <div class="">
		                           	<div class="pt-1 pt-lg-7 pb-3" style="position: relative;">
						             <h6 class="font-weight-medium font-size-7 text-center my-1">
						             <img src="/img/도서관2.jpg" width="100%" height="400"/>
						             <br><br>
						          <div style="color:white; bottom: 263px; font-size: 1.8em; font-weight: bold;text-align:center; position: relative"></div></h6>
						        </div>
    <div id="content" class="site-content space-bottom-3">
        <div class="col-full container">
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <article id="post-6" class="post-6 page type-page status-publish hentry">
                        
                        <!-- .entry-header -->
                        <div class="entry-content">
                            <div class="woocommerce">
	                            
                            <!-- 열람실 선택 -->
                            <div class="pb-4 pb-lg-5 pb-xl-8">
                            
				                <h6 class="font-weight-medium font-size-7 font-size-xs-25 text-center" style="font-weight: bold;">열람실 선택</h6>
				            </div>
                            <!-- <div class="row" style="float: none; margin:auto;">
                                <div class="col-3 pt-4" style="float: none; margin:0 auto; text-align: center;">
                                        <h2>열람실 선택</h2>
                                </div>
                            </div> -->
                            <div id="room" class="row">

                                <div class="col-lg-6 col-md-12 col-sm-12 pb-4">
                                    <div id="roomcss" class="card" >
                                      <div id="roomcard1" class="card-body">
                                        <h5 class="card-title">열람실1</h5>
                                        <p class="card-text">&nbsp;도서관 2층 제 1열람실 입니다.</p>
                                        
                                        <button id="room1" type="button" class="btn btn-light" style="border-radius: 5px;">선택</button>
                                      </div>
                                    </div>	 
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 pb-4">
                                    <div id="roomcss" class="card">
                                      <div id="roomcard2" class="card-body">
                                        <h5 class="card-title">열람실2</h5>
                                        <p class="card-text">&nbsp;도서관 2층 제 2열람실 입니다.</p>
                                        
                                        <button id="room2" type="button" class="btn btn-light" style="border-radius: 5px;">선택</button>
                                      </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 pb-4">
                                    <div id="roomcss" class="card">
                                      <div id="roomcard3" class="card-body">
                                        <h5 class="card-title">열람실3</h5>
                                        <p class="card-text">&nbsp;도서관 2층 제 3열람실 입니다.</p>
                                        <button id="room3" type="button" class="btn btn-light" style="border-radius: 5px;">선택</button>
                                      </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 pb-4">
                                    <div id="roomcss" class="card">
                                      <div id="roomcard4" class="card-body">
                                        <h5 class="card-title">열람실4</h5>
                                        <p class="card-text">&nbsp;도서관 2층 제 4열람실 입니다.</p>
                                        <button id="room4" type="button" class="btn btn-light" style="border-radius: 5px;">선택</button>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        <!-- 선택끝 -->

                        <!-- 열람실 선택 표시 -->
                            <div class="row py-2" style="float: none; margin:auto;">
                                <div id="appear" class="col-3 pt-2 bg-light" style="float: none; margin:0 auto; text-align: center;border-radius: 20px;">
                                    <div id="appearS"><h6>열람실 선택</h6></div>
                                </div>
                            </div>


                        <!-- 자리 및 시간 선택 -->
                            <div class="row">

                            <div class="col-lg-6 py-4 col-md-12 col-sm-12">
                                <h4 id="item-1">자리 선택</h4>
                                    <div class="time">
                                        <div id="goseat"><h5>열람실을 먼저 선택해주세요.</h5></div>
                                        <button class="btn-hover color-9" onclick="popup()" disabled>---</button>

                                        <!-- (A) SEAT LAYOUT 
                                        <div id="layoutP">
                                        <div id="layout"></div>
                                        </div>-->


                                        <!-- (B) LEGEND 
                                        <div id="legend">
                                          <div class="seat"></div> <div class="txt">선택가능</div>
                                          <div class="seat taken"></div> <div class="txt">선택됨</div>
                                          <div class="seat selected"></div> <div class="txt">선택한 자리</div>
                                        </div>-->


                                    </div>
                                </div>

                                <div class="col-lg-6 py-4 col-md-12 col-sm-12">
                                <h4 id="item-1">시간 선택</h4>
                                    <div class="time1" id="time1">

                                        <div id="selectTime" class="row mx-3">
                                            <div id = "TimeButton" class="col-12 px-1 py-1">
                                                <h5>자리를 선택해주세요.</h5>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="appearS2" class="row py-2" style="float: none; margin:auto;">
                                <div id="appear" class="col-3 pt-2 bg-light" style="float: none; margin:0 auto; text-align: center;border-radius: 20px;">
                                    <div id="appearSS">
                                        <div id="seatappear"><h6 id="seatappearchild">자리 및 시간 선택</h6></div>
                                        <div id="timeappear"><h6 id="timeappearchild"></h6></div>
                                    </div>
                                </div>
                            </div>
                         <!-- 자리 및 시간선택 끝 -->
                         <!-- (C) SAVE SELECTION -->
                        <div class="row">
                        	
                            <button id="save" onclick="save()">확인</button> 
                        </div>

                        </div>
                        	</div>
                        <!-- 팝업창 띄우기 -->
	
							<div class="popup_layer" id="popup_layer" style="display: none;">
							  <div class="popup_box">
							      <div style="height: 10px; width: 375px; float: top;">
							        <a href="javascript:closePop();">닫기</a>
							      </div>
							      <div class="wrapper"><h3 id="roomNum" style="width:fit-content;margin: auto;"></h3></div>
							        <!--팝업 컨텐츠 영역-->
							        <!-- (A) SEAT LAYOUT -->
							        <div id="layoutP">
							        <div id="layout">
							            <div id="seatRow" class="row">
							                
							            </div>
							        </div>
							        </div>
							
							        <div class="wrapper"><button class="btn-hover2 color-9" onclick="saveSeat()">자리선택</button></div>
							        <!-- (B) LEGEND -->
							        <div id="legend">
							          <div class="seat"></div> <div class="txt">미사용중</div>
							          <div class="seat taken"></div> <div class="txt">이용중</div>
							          <div class="seat selected"></div> <div class="txt">선택한 자리</div>
							        </div>
							     
							  </div>
							</div>
               		<!-- 팝업 끝 -->
                        
                        <!-- .entry-content -->
                    </article>
                    <!-- #post-## -->
                </main>
                <!-- #main -->
            </div>
            <!-- #primary -->
        </div>
        <!-- .col-full -->
    </div>


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
    

    <!-- seat JS -->
    <script src="/resources/seat/seat.js"></script>

    <!-- JS HS Components -->
    <script src="/js/hs.core.js"></script>
    <script src="/js/components/hs.unfold.js"></script>
    <script src="/js/components/hs.malihu-scrollbar.js"></script>
    <script src="/js/components/hs.header.js"></script>
    <script src="/js/components/hs.slick-carousel.js"></script>
    <script src="/js/components/hs.selectpicker.js"></script>
    <script src="/js/components/hs.show-animation.js"></script>

    <!-- JS Bookworm -->
    <!-- <script src="../../assets/js/bookworm.js"></script> -->
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
