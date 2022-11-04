<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Shop v8 | Bookworm</title>

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
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body>
    <!--===== HEADER CONTENT =====-->
    <%@ include file="/WEB-INF/views/subheader.jsp" %>

    <!--===== END HEADER CONTENT =====-->

    <!-- ====== MAIN CONTENT ====== -->
    <div class="page-header mb-8">
        <div class="bg-img-hero bg-gradient-primary" style="background-image: url(/img/dvdmarketsub.png);">
            <div class="container position-relative mb-2">
                <div class="d-flex justify-content-center space-2 space-lg-4">
                    <h6 class="font-weight-medium text-white font-size-12 py-lg-5">DVD</h6>
                </div>
                <nav class="woocommerce-breadcrumb font-size-2 d-flex justify-content-center align-items-center pb-4">
                    <a class="text-white" href="/">Home</a>
                    <span class="breadcrumb-separator text-white mx-1"><i class="fas fa-angle-right"></i></span>
                    <span class="text-white">Shop</span>
                </nav>
            </div>
        </div>
    </div>
    <div class="site-content" id="content">
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
                            <!-- Account Sidebar Toggle Button -->
                            
                            <!-- End Account Sidebar Toggle Button -->

                            <!-- Sidebar Navigation -->
                            
                            <!-- End Sidebar Navigation -->
                        </div>
                    </div>

                    <!-- Tab Content -->
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-one-example1" role="tabpanel" aria-labelledby="pills-one-example1-tab">
                            <!-- Mockup Block -->
                            <ul class="products list-unstyled row no-gutters row-cols-2 row-cols-lg-3 row-cols-wd-4 border-top border-left mb-6">
                                <c:forEach items="${listResult.items}" var="dvd">
                                <li class="product col">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link d-block position-relative">
                                            <div class="woocommerce-loop-product__thumbnail">
                                                <a href="#" class="d-block"><img src="${dvd.dvd_img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description"></a>
                                            </div>
                                            <div class="woocommerce-loop-product__body product__body pt-3 bg-white">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="#">${dvd.dvd_director}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 text-height-2 crop-text-2 h-dark"><a href="#">${dvd.dvd_title}</a></h2>
                                                <div class="font-size-2  mb-1 text-truncate"><a href="#" class="text-gray-700">등록일 : ${dvd.dvd_rdate}</a></div>
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span></span>                                                   
                                                </div>
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
                            <c:forEach items="${listResult.items}" var="dvd">
                                <li class="product product__list">
                                    <div class="product__inner overflow-hidden p-3 p-md-4d875">
                                        <div class="woocommerce-LoopProduct-link woocommerce-loop-product__link row position-relative">
                                            <div class="col-md-auto woocommerce-loop-product__thumbnail mb-3 mb-md-0">
                                                <a href="#" class="d-block"><img src="${dvd.dvd_img}" class="img-fluid d-block mx-auto attachment-shop_catalog size-shop_catalog wp-post-image img-fluid" alt="image-description" style="width:150px; height: 200px;"></a>
                                            </div>
                                            <div class="col-md woocommerce-loop-product__body product__body pt-3 bg-white mb-3 mb-md-0">
                                                <div class="text-uppercase font-size-1 mb-1 text-truncate"><a href="#">${dvd.dvd_director}</a></div>
                                                <h2 class="woocommerce-loop-product__title product__title h6 text-lh-md mb-1 crop-text-2 h-dark"><a href="#" tabindex="0">${dvd.dvd_title}</a></h2>
                                                <div class="font-size-2  mb-2 text-truncate"><a href="#" class="text-gray-700">등록일 : ${dvd.dvd_rdate}</a></div>
                                                <p class="font-size-2 mb-2 crop-text-2">${dvd.dvd_content}</p>
                                                <div class="price d-flex align-items-center font-weight-medium font-size-3">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span></span>
                                                </div>
                                            </div>
                                            <div class="col-md-auto d-flex align-items-center">
                                                                                                                                                                                                 
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
					//인기, 판매량, 별점 순  세션					
						function clickPage(page, sort){
							//현재 type, keyword 저장해서 링크로 만듦
						    var para = document.location.href.split("?");							
						    if(para[1].indexOf('keyword') != -1){
								var subKeywordStart = para[1].indexOf('=', para[1].indexOf('keyword'))+1;
								var subKeywordEnd = para[1].indexOf('&', para[1].indexOf('keyword'));
								if(subKeywordEnd==-1){
									var keyword = para[1].substring(subKeywordStart);
								}else{
									var keyword = para[1].substring(subKeywordStart, subKeywordEnd);
								}
							}else{
								var keyword ="";
							}
						    var show = sessionStorage.getItem("show");
							$(location).attr('href', "/library/category/dvd?keyword="+keyword+"&page="+page+"&show="+show);
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
						sessionStorage.setItem("show", $("#selected_show option:selected").val());												
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
                <div id="secondary" class="sidebar widget-area order-1" role="complementary">

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
</html>
