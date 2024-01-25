<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>class</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/ashion/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/style.css" type="text/css">
	
	<script src="/jquery/jquery-3.6.1.min.js"></script>
	<script>
		$().ready(function() {
			
			$("[name='searchWord']").keyup(function(){
				
				var param = {
					"searchWord" : $("[name='searchWord']").val()
				}
				
				$.ajax({
					type : "get",
					url : "/searchClassList",
					data : param,
					success : function(data) {
						var classList = "";
						if (data.length == 0) {
							classList += "<div class='product__item'>";
							classList += "<h3>조회된 수업이 없습니다.</h3>";
							classList += "</div>";
						}
						else {
							
							$(data).each(function(){
								
								classList += "<div class='col-lg-4 col-md-6'>";
	                               classList += "<div class='product__item'>";
	                               classList += "<div class='product__item__pic set-bg' data-setbg='/classImg?fileName="+ this.classImgUUID +"'>";
	                               classList += "<input type='hidden' name='classNo' value='" + this.classNo + "'/>";
	                               classList += "<img src='/classImg?fileName="+ this.classImgUUID +"'>";
	                               classList += "</div>";
	                               classList += "<div class='product__item__text'>";
	                               classList += "<h6><a href='classDetail?classNo=" + this.classNo + "'>" + this.classNm + "</a></h6>";
	                               classList += "<div class='rating'>";
	                               classList += "<i class='fa fa-star'></i>";
	                               classList += "<i class='fa fa-star px-1'></i>";
	                               classList += "<i class='fa fa-star'></i>";
	                               classList += "<i class='fa fa-star px-1'></i>";
	                               classList += "<i class='fa fa-star'></i>";
	                               classList += "</div>";
	                               classList += "<div class='product__price'>";
								
								let formattedPrice = new Intl.NumberFormat('en-US').format(this.classPrice);
								
							    classList += formattedPrice;
								classList += "</div>";
								classList += "</div>";
								classList += "</div>";
								classList += "</div>";
								
							});
							
						}
						
						$("#classList").html(classList);
						
					}
				});
				
			});
			
			$("#onePageViewCnt").val("${onePageViewCnt}");
			$("#searchKeyword").val("${searchKeyword}");
			
		});
		
		function classCategoryYn() {
			
			var param = "";

			if ($("[name='단체수업']").is(":checked")) {
				param += ",단체수업";
			}
			
			if ($("[name='소그룹수업']").is(":checked")) {
				param += ",소그룹수업";
			}
			
			if ($("[name='개인수업']").is(":checked")) {
				param += ",개인수업";
			}
			
			if ($("[name='시설이용']").is(":checked")) {
				param += ",시설이용";
			}

			$.ajax({
                type: "get",
                url: "/checkClass",
                data: {"param" : param},
                success: function(data) {
                	
                		var classList = "";
                		
                		$(data).each(function() {
                			
                               classList += "<div class='col-lg-4 col-md-6'>";
                               classList += "<div class='product__item'>";
                               classList += "<div class='product__item__pic set-bg' data-setbg='/classImg?fileName="+ this.classImgUUID +"'>";
                               classList += "<img src='/classImg?fileName="+ this.classImgUUID +"'>";
                               classList += "<input type='hidden' name='classNo' value='" + this.classNo + "'/>";
                               classList += "</div>";
                               classList += "<div class='product__item__text'>";
                               classList += "<h6><a href='classDetail?classNo=" + this.classNo + "'>" + this.classNm + "</a></h6>";
                               classList += "<div class='rating'>";
                               classList += "<i class='fa fa-star'></i>";
                               classList += "<i class='fa fa-star px-1'></i>";
                               classList += "<i class='fa fa-star'></i>";
                               classList += "<i class='fa fa-star px-1'></i>";
                               classList += "<i class='fa fa-star'></i>";
                               classList += "</div>";
                               classList += "<div class='product__price'>";
							
                               let formattedPrice = new Intl.NumberFormat('en-US').format(this.classPrice);
                               classList += formattedPrice;
						   	
                               classList += "</div>";
                               classList += "</div>";
                               classList += "</div>";
                               classList += "</div>";
                        });

                        $("#classList").html(classList);
                }
            });

		}
		
		function getClassList(currentPageNumber) {
			var url = "/class"
				url += "&onePageViewCnt=9";
				if (currentPageNumber != null) {
					url += "&currentPageNumber=" + currentPageNumber;
				}
			
				location.href = url;
				
		}
	
	</script>
	
</head>

<body>
	<!-- header section -->
	<jsp:include page="../header/header.jsp"></jsp:include>
    
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <span>Class</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>수업 방식</h4>
                            </div>
                            <div class="size__list">
                                <label for="단체수업">
                                    단체 수업
                                    <input type="checkbox" id="단체수업" name="단체수업" onchange="classCategoryYn()">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="소그룹수업">
                                    소그룹 수업
                                    <input type="checkbox" id="소그룹수업" name="소그룹수업" onchange="classCategoryYn()">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="개인수업">
                                    개인 수업
                                    <input type="checkbox" id="개인수업" name="개인수업" onchange="classCategoryYn()">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="시설이용">
                                    시설 이용
                                    <input type="checkbox" id="시설이용" name="시설이용" onchange="classCategoryYn()" value="facilityUse">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>원하는 수업 검색</h4>
                            </div>
			                <div class="footer__newslatter">
			                    <form action="#">
			                        <input type="text" class="form-control" name="searchWord" id="searchClass" placeholder="찾으시는 수업명" aria-describedby="textHelp" required/>
			                    </form>
			                </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="row" id="classList">
                    		<c:choose>
		                    <c:when test="${empty classList }">
		                    		<div class='product__item'>
		                    			<h3>조회된 수업이 없습니다.</h3>
		                    		</div>
		                    </c:when>
		                    <c:otherwise>
			                    	<c:forEach var="classMap" items="${classList }">
			                        <div class="col-lg-4 col-md-6">
			                            <div class="product__item">
			                                <div class="product__item__pic set-bg" data-setbg="/classImg?fileName=${classMap.classImgUUID }">
			                                		<input type="hidden" name="classNo" value="${classMap.classNo }"/>
			                                </div>
			                                <div class="product__item__text">
			                                    <h6><a href="classDetail?classNo=${classMap.classNo }">${classMap.classNm }</a></h6>
			                                    <div class="rating">
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                        <i class="fa fa-star"></i>
			                                    </div>
			                                    <div class="product__price">
			                                    		<fmt:formatNumber value="${classMap.classPrice }"/>
			                                    </div>
			                                </div>
			                            </div>
			                       </div>
		                    	</c:forEach>
	                    </c:otherwise>
                    </c:choose>
                    <div class="col-lg-12 text-center">
                        <div class="pagination__option">
                        	<c:if test="${startPage > 10}">
                            	<a href="javascript:getClassList(${startPage - 10})"><i class="fa fa-angle-left"></i></a>
                            </c:if>
                            <c:forEach var="i" begin="${startPage }" end="${endPage }">
	                            <a href="javascript:getClassList(${i })">${i }</a>
	                        </c:forEach>
	                        <c:if test="${endPage != allPageCnt && endPage >= 10}">
                            	<a href="javascript:getClassList(${startPage + 10})"><i class="fa fa-angle-right"></i></a>
                            </c:if>
                        </div>
                    </div>
                 </div>
              </div>
          </div>
      </div>
  </section>
    <!-- Shop Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>