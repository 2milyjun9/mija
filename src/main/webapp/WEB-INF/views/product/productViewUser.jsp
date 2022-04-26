<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<% pageContext.setAttribute("br", "\n"); %>  <!-- 설명엔터 -->


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>경매조회</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/dashboard/">

<!-- 제이쿼리 ui CSS -->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">
	
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/0bd8c4f8de.js"
	crossorigin="anonymous"></script>

<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&display=swap"
	rel="stylesheet">

<!-- 주소창사진 -->
<link rel="shortcut icon" type="image/x-icon"
	href="../../../images/xdmin/logoA2.png">

<!-- 기본템플릿 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<style>
a { /*링크 줄안가게하기*/
	text-decoration: none;
}

* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
	font-size: 15px;
}

#mainTable
{
 float: left;
}

#carousel
{
 float: left;
}

</style>
</head>
<body>


	<img
		src="${pageContext.request.contextPath}/resources/xdmin/images/logo1.png"
		class="rounded mx-auto d-block" alt="..." width="200px" height="100px">

	<!-- 모바일버전테이블//웹감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class=" d-lg-block d-xl-none">
			<div id="mainTable" class="row text-center"
				style="width: 100%; white-space: nowrap">
				<div class="table-responsive">
					<table class="table table-striped table-hover" id="table"
						data-toggle="table" data-toolbar=".toolbar" data-sortable="false"
						data-height="460">
						<thead></thead>
					</table>
				</div>
			</div>
		</div>
	</main>

	<!-- 모바일버전테이블//웹감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class=" d-lg-block d-xl-none"></div>
	</main>


	<!-- 웹버전 // 모바일감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class="d-none d-xl-block ">
		
				<div align="right" >
				<ul class=" navbar-nav me-auto my-2 my-lg-0navbar-nav-scroll" style="-bs-scroll-height: 500px;">
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="fas fa-user"> </i>
					</a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item"
								href="../member/memberLoginUser">로그인</a></li>
							<li><a class="dropdown-item" href="../member/memberFormUser">회원가입</a></li>
							<li><a class="dropdown-item" href="">채팅</a></li>
							<li><a class="dropdown-item"
								href="../product/productFormUser">상품등록</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃?뭐쓰지</a></li>
						</ul></li>
				</ul>
			</div>

			<div class="table-responsive" style="width: 85%;">

				<a
					href="/infra/member/memberViewUser?thisPage=<c:out value="${vo.thisPage}"/>&shMemberOption=
				 <c:out value="${vo.shMemberOption}"/>&shValue=<c:out value="${vo.shMemberValue}"/>">
					<img src="https://github.com/mdo.png" alt="mdo" width="50"
					height="50" class="rounded-circle"> <b> <c:out
							value="${item.ifmmNickname}" /> <c:out value="${item.ifmmGrade}" /></b>
				</a> <br> <br>  
			
		
			</div> 
		</div>

		<br>
		<div id="carousel" class="carousel slide"
			data-bs-ride="carousel" style="width: 40%; float:left; margin-right:20px; ">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test1.PNG"
						class="d-block w-100" alt="..." width="200" height="400">
				</div>
				<div class="carousel-item">
					<img
						src="${pageContext.request.contextPath}/resources/xdmin/images/test2.PNG"
						class="d-block w-100" alt="..." width="200" height="400">
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carousel" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carousel" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>

	<br>

	
	<!-- 웹버전기본정보테이블//모바일감춤 -->
			<div id="mainTable" class="row text-center">
				<div class="table-responsive">
					<table class="table" id="table">
						<thead>
						<tr style="text-align:center">
						<th colspan="2"> <h5><c:out value="${item.acprProductName}" /> </h5></th>

			
						</thead>
						<tbody>
							<tr>
								<th>상품번호</th>
								<td><c:out value="${item.acprSeq}" /></td>
							</tr>
						<tr>
								<th>거래희망</th>
								<td><c:if test="${item.acprPickupCd eq 51}">
										<c:out value="직거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 52}">
										<c:out value="택배거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 53}">
										<c:out value="퀵거래" />
									</c:if> <c:if test="${item.acprStatusCd eq 54}">
										<c:out value="협의" />
									</c:if></td>
							</tr>
							<tr>
								<th>등록일</th>
								<td><c:out value="${item.regDateTime}" /></td>
							</tr>
							<tr>
								<th>마감일</th>
								<td><b><c:out value="${item.acprEndDate}" /></b></td>
							</tr>
							<tr>
								<th>시작가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
							</tr>
							<tr>
								<th>현재가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>
							<tr>
								<th>지원자수</th>
								<td> </td>
							</tr>
							<tr>
								<th>설  명</th>
								<td  height="100"><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	</main>
	
	
<%-- 		<c:if test="${item.acprStatusCd eq 55}">
											<c:out value="경매진행중" />
										</c:if> <c:if test="${item.acprStatusCd eq 56}">
											<c:out value="경매완료" />
										</c:if> <c:if test="${item.acprStatusCd eq 57}">
											<c:out value="경매취소" />
										</c:if> <c:if test="${item.acprStatusCd eq 58}">
											<c:out value="경매실패" />
										</c:if> --%>
								

<%-- 	<!-- 웹버전기본정보테이블//모바일감춤 -->
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
		<div class="d-none d-xl-block ">
			<div id="mainTable" class="row text-center"
				style="width: 85%; white-space: nowrap;">
				<div class="table-responsive">
					<table class="table table-hover" id="table" data-toggle="table"
						data-toolbar=".toolbar" data-sortable="false" data-height="460">
						<thead>
						</thead>
						<tbody>
							<tr>

								<th class="table-secondary">등록일</th>
								<td><c:out value="${item.regDateTime}" /></td>
								<th class="table-secondary">마감일</th>
								<td><b><c:out value="${item.acprEndDate}" /></b></td>

							</tr>
							<tr>
								<th class="table-secondary">시작가</th>
								<td><c:out value="${item.acprPriceStart}" /></td>
								<th class="table-secondary">현재가</th>
								<td><b> <c:out value="${item.acprPriceNow}" />
								</b></td>
							</tr>

							<tr>

								<th class="table-secondary" height="100">내용</th>
								<td colspan="3"><c:out value="${item.acprDetails}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main> --%>
	<br>
	<br>
	<br>
		
		
	<div class="row text-center" style="width: 100%">
		<div style="width: 100%; float: none; margin: 0 auto">


			<a
				href="/infra/product/productMainUser?thisPage=<c:out value="${vo.thisPage}"/>&shProductOption=
				 <c:out value="${vo.shProductOption}"/>&shValue=<c:out value="${vo.shProductValue}"/>">
				<button type="button" class="btn btn-sm btn-outline-primary">목록</button>
			</a> 
			
			
				<button type="button" class="btn btn-sm btn-outline-warning"
					data-bs-toggle="modal" data-bs-target="#저장">경매신청</button>

		</div>
	</div>

	<br>
	<br>
	
</body>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/infra/resources/common/js/validation.js"></script>

	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>




<script
	src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
	integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
	integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
	crossorigin="anonymous"></script>



<!-- 기본템플릿 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
	</script>

<script type="text/javascript">
//디데이 종료 일자 설정 
var countDownDate = new Date("May 9, 2017 06:00:00").getTime(); 
//1초마다 갱신되도록 함수 생성,실행 
var x = setInterval(function() { 
	// 오늘 날짜 등록 var now = new Date().getTime(); 
	// 종료일자에서 현재일자를 뺀 시간 
	var distance = countDownDate - now; 
	// 각 변수에 일, 시, 분, 초를 등록 
	var d = Math.floor(distance / (1000 * 60 * 60 * 24)); 
	var h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); 
	var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)); 
	var s = Math.floor((distance % (1000 * 60)) / 1000); 
	//id가 d-day인 HTML코드에 내용 삽입 
	document.getElementById("d-day").innerHTML = "디데이까지 " + d +"일 " + h + "시간 " + m + "분 " + s + "초 남았습니다."; });


	</script>
</html>