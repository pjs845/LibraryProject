<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Title -->
    <title>Shop Checkout | Bookworm</title>

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
                    <a href="#" class="h-primary">Home</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>
                    <a href="#" class="h-primary">Shop</a>
                    <span class="breadcrumb-separator mx-1"><i class="fas fa-angle-right"></i></span>Shop Single
                </nav>
            </div>
        </div>
    </div>
    <div id="content" class="site-content bg-punch-light space-bottom-3">
        <div class="col-full container">
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <article id="post-6" class="post-6 page type-page status-publish hentry">
                        <header class="entry-header space-top-2 space-bottom-1 mb-2">
                            <h4 class="entry-title font-size-7 text-center">?????? ??????</h4>
                        </header>
                        <!-- .entry-header -->
                        <div class="entry-content">
                            <div class="woocommerce">              
                                <form id="collapseExample9" class="collapse checkout_coupon mt-4 p-4 bg-white border" method="post">
                                    <div class="row d-flex">
                                        <p class="col-md-4 d-inline form-row form-row-first mb-3 mb-md-0">
                                            <input type="text" name="coupon_code1" class="input-text form-control" placeholder="Coupon code" id="coupon_code1" value="">
                                        </p>

                                        <p class="col-md-3 d-inline form-row form-row-last">
                                            <input type="submit" class="button form-control border-0 height-4 btn btn-dark rounded-0" name="apply_coupon" value="Apply coupon">
                                        </p>
                                    </div>

                                    <div class="clear"></div>
                                </form>
                                                               
                                <form name="add" method="post" class="checkout woocommerce-checkout row mt-8" action="add.do" novalidate="novalidate" style="text-align:center;">
                                    <div class="col2-set col-md-6 col-lg-7 col-xl-8 mb-6 mb-md-0" id="customer_details" style="margin-right:auto; margin-left:auto;">
                                        <div class="px-4 pt-5 bg-white border">
                                            <div class="woocommerce-billing-fields">

                                                <h3 class="mb-4 font-size-3"></h3>

                                                <div class="woocommerce-billing-fields__field-wrapper row">
                                                    <p class="col-lg-6 mb-4d75 form-row form-row-first validate-required woocommerce-invalid woocommerce-invalid-required-field" id="billing_first_name_field" data-priority="10">
                                                        <label for="billing_first_name" class="form-label">DVD ??????<abbr class="required" title="required"></abbr></label>
                                                        <input type="text" class="input-text form-control" name="dvd_title" id="dvd_title" placeholder="DVD ????????? ??????????????????" value="" autocomplete="given-name" autofocus="autofocus">
                                                    </p>

                                                    <p class="col-lg-6 mb-4d75 form-row form-row-last validate-required" id="billing_last_name_field" data-priority="20">
                                                        <label for="billing_last_name" class="form-label">??????<abbr class="required" title="required"></abbr></label>
                                                        <input type="text" class="input-text form-control" name="dvd_director" id="dvd_director" placeholder="????????? ??????????????????" value="" autocomplete="family-name">
                                                    </p>

                                                    <p class="col-12 mb-4d75 form-row form-row-wide" id="billing_company_field" data-priority="30">
                                                        <label for="billing_company" class="form-label">??????</label>
                                                        <input type="text" class="input-text form-control" name="dvd_content" id="dvd_content" placeholder="????????? ??????????????????" value="" autocomplete="organization">
                                                    </p>
                                                    <p class="col-12 mb-4d75 form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated" id="billing_country_field" data-priority="40">
                                                        <label for="billing_country" class="form-label">DVD ??????<abbr class="required" title="required"></abbr></label>
                                                        <select name="f_num" id="dvd_loc" class="form-control country_to_state country_select  select2-hidden-accessible"
                                                            autocomplete="country" tabindex="-1" aria-hidden="true">
                                                            <option value="">DVD ?????? ??????</option>
                                                            <c:forEach items="${facList}" var="fac" varStatus="list">
                                                            <option value="${list.count}">${fac}</option>        
                                                            </c:forEach>                                                    
                                                        </select>
                                                    </p>
     
                                                    <p class="col-12 mb-4d75 form-row form-row-wide address-field validate-required" id="billing_city_field" data-priority="70" data-o_class="form-row form-row-wide address-field validate-required">
                                                        <label for="billing_city" class="form-label">DVD ????????? ??????<abbr class="required" title="required"></abbr></label>
                                                        <input type="text" class="input-text form-control" name="dvd_img" id="dvd_img" placeholder="" value="" autocomplete="address-level2">
                                                    </p>                                                  
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-row place-order">
                                            <input type="button" class="button alt btn btn-blue btn-block rounded-0 py-4" name="woocommerce_checkout_place_order" id="add_btn" value="????????????" data-value="add" onclick="addbook()">                                                                                      
                                        </div>
                                    </div>                                    
                                </form>
                                <script>
				                	$('#book_loc').val("${listResult.libraryBook.f_num}").prop("selected", true);
				                	$('#book_recomend').val("${listResult.libraryBook.book_recomend}").prop("selected", true);
				                	$('#book_class').val("${listResult.libraryBook.book_code}").prop("selected", true);
				                	jQuery(function($) {
										$("#book_title").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										$("#book_writer").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										$("#book_publisher").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										$("#book_isbn").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										$("#book_count").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										$("#book_img").keydown(function(e) {		// ?????? ????????? ?????? ????????? ???????????? ??????-??? ??????
											if (e.keyCode == 13) {
												$("#add_btn").trigger( "click" );
											}
										});
										
									});
				                	
				                	function addbook()
				             	   {
				             	       for(var i=0; i<document.add.elements.length; i++)
				             		   {				             	    	   
				             		      if(document.add.elements[i].value == "")
				             			  {
				             			     alert("?????? ?????? ?????? ????????? ?????????. ");
				             				 return false;
				             			  }
				             		   }
				             		   document.add.submit();
				                    }
				                					                	
				                	var number = document.getElementById('book_count');

				                	// ???????????? ?????? - + ?????? ????????? ??????
				                	number.onkeydown = function(e) {
				                	    if(!((e.keyCode > 95 && e.keyCode < 106)
				                	      || (e.keyCode > 47 && e.keyCode < 58) 
				                	      || e.keyCode == 8)) {
				                	        return false;
				                	    }
				                	}
				                </script>
                            </div>
                        </div>
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
