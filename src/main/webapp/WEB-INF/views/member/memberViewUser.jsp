<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CodeServiceImpl" class="com.mija.infra.modules.code.CodeServiceImpl"/>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Auctionary 회원뷰</title>

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
* {
	font-family: 'Dongle', sans-serif;
	font-family: 'Gowun Batang', serif;
	font-family: 'Gowun Dodum', sans-serif;
	text-decoration-line: none;
}

a { /*링크 줄안가게하기*/
	text-decoration: none;
}


body {
	font-size: .9rem;
}

</style>
</head>



<body>


		<br>
		<!-- 웹버전테이블 // 모바일감춤 -->
		<div class="d-none d-xl-block ">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col" colspan="5" style="text-align: left">선택입력</th>
						</tr>
					</thead>
					<tr>
						<th class="table-secondary">국적</th>
						<td></td>
						<th class="table-secondary">좋아하는색깔</th>
						<td><c:out value="${item.ifmmFavoriteColor}" /></td>
						<th class="table-secondary">취미</th>
						<td>
		<%-- 	<c:if test="${item.ifmhHobbyCd eq 38}"> <c:out value="영화감상" /> </c:if> 
						<c:if test="${item.ifmhHobbyCd eq 39}">	<c:out value="골프" /> </c:if>
						<c:if test="${item.ifmhHobbyCd eq 40}">	<c:out value="음악감상" /> </c:if>
						<c:if test="${item.ifmhHobbyCd eq 41}">	<c:out value="트래킹" /> </c:if>
						<c:if test="${item.ifmhHobbyCd eq 42}">	<c:out value="서핑" /> </c:if>
						<c:if test="${item.ifmhHobbyCd eq 43}">	<c:out value="피아노" /> </c:if>  --%>
						</td>
					</tr>
					<tr>
						<th class="table-secondary">결혼유무</th>
							<td scope="row"><c:if test="${item.ifmmMarriageCd eq 13}">
											<c:out value="기혼" />
										</c:if> <c:if test="${item.ifmmMarriageCd eq 12}">
											<c:out value="미혼" />
										</c:if></td>
						<th class="table-secondary">자녀수</th>
						<td><c:out value="${item.ifmmChildrenNum}" /></td>
						<th class="table-secondary">결혼기념일</th>
						<td><c:out value="${item.ifmmMarriageDate}" /></td>
					<tr>
						<th class="table-secondary">우편번호</th>
						<td><c:out value="${item.ifmaZipcode}" /></td>
						<th class="table-secondary">주소</th>
						<td><c:out value="${item.ifmaAddress1}" /></td>
						<th class="table-secondary">상세주소</th>
						<td><c:out value="${item.ifmaAddress2}" /></td>
					</tr>
					<tr>
						<th class="table-secondary">SNS/블로그</th>

						<td><c:if test="${item.ifaoSnsTypeCd eq 34}">
								<c:out value="페이스북" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 35}">
								<c:out value="인스타그램" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 36}">
								<c:out value="트위터" />
							</c:if> <c:if test="${item.ifaoSnsTypeCd eq 37}">
								<c:out value="카톡" />
							</c:if></td>
						<th class="table-secondary">계정/주소</th>
						<td><c:out value="${item.ifaoUrl}" /></td>
						<th class="table-secondary">블로그명</th>
						<td><c:out value="${item.ifaoTitle}" /></td>
					</tr>
					<tr>
						<th class="table-secondary">개인정보유효기간</th>
						<td><c:if test="${item.ifmmSaveCd eq 6}">
								<c:out value="1년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 7}">
								<c:out value="2년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 8}">
								<c:out value="3년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 9}">
								<c:out value="5년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 10}">
								<c:out value="10년" />
							</c:if> <c:if test="${item.ifmmSaveCd eq 11}">
								<c:out value="탈퇴시" />
							</c:if></td>

						<th class="table-secondary">모바일마케팅동의</th>
						<td><c:if test="${item.ifmmSmsConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.ifmmSmsConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
						<th class="table-secondary">이메일마케팅동의</th>
						<td><c:if test="${item.ifmmEmailConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.ifmmEmailConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
					</tr>
				</table>
			</div>
		</div>


		<!-- 웹모바일공통테이블 -->
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col" colspan="5" style="text-align: left">상담내역</th>
					</tr>
				</thead>
				<tr>
					<th class="table-secondary">상담내역</th>
					<td>
						<div class="form-floating">
							<textarea class="form-control" placeholder="100자 이내 "
								id="floatingTextarea2" style="height: 100px"></textarea>
							<label for="floatingTextarea2">이곳에 작성해주세요.</label>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>로그</th>
					</tr>
				</thead>
				<tr>
					<th class="table-secondary">가입일자</th>
					<td><c:out value="${item.regDateTime}" /></td>
					<th class="table-secondary">최종접속일</th>
					<td><c:out value="${item.regDateTime}" /></td>
				</tr>
				<tr>
					<th class="table-secondary">최종수정일</th>
					<td><c:out value="${item.modDateTime}" /></td>
					<th class="table-secondary">최종수정자</th>
					<td><c:out value="${item.modSeq}" /></td>
				</tr>
			</table>
		</div>


		<br>

		<div class="row text-center" style="width: 100%">
			<div style="width: 100%; float: none; margin: 0 auto">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-sm btn-outline-primary"
					data-bs-toggle="modal" data-bs-target="#저장">저장</button>

				<!-- Modal -->
				<div class="modal fade" id="저장" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">
									<i class="fas fa-exclamation-circle"></i>저장 확인!
								</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">정말 저장하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<a href="memberView.html">
									<button type="button" class="btn btn-primary">저장</button>
								</a>
							</div>
						</div>
					</div>
				</div>
				<a href="/infra/member/memberEditAdmin?ifmmSeq=<c:out value="${item.ifmmSeq}"/>" >
					<button type="button" class="btn btn-sm btn-outline-warning">
						수정</button>
				</a>

			</div>
		</div>
	</main>

	<br>
	<br>

	<script type="text/javascript">
		/* globals Chart:false, feather:false */

		(function() {
			'use strict'

			feather.replace({
				'aria-hidden' : 'true'
			})

	</script>

	<!-- 팝업 -->
	<script language="javascript">
  function showPopup() { window.open("/main/mainProfileEdit", "프로필수정", "width=400, height=300, left=100, top=50"); }
  </script>

	<!-- jquery ui -->
	<script
		src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<!-- 검색 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/common/js/validation.js"></script>

			
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
</body>
</html>


