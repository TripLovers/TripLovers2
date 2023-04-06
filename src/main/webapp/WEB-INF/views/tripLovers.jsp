<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="resources/css/reset.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/tripLovers.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

<title>Document</title>
</head>
<body style="width: 100%; padding: 0 100px;">
	<div class="container">

		<div class="top_container pt-2">
			<div class="w-100 d-flex justify-content-end">
				<c:if test="${sessionId eq null }">
				<a href="loginForm" class="btn btn-primary mr-2" style="margin-right: 5px;">로그인</a>
				<a href="regForm" class="btn btn-primary">회원가입</a>
				</c:if>
				<c:if test="${sessionId ne null }">
				<a href="updateUser" class="btn btn-primary mr-2" style="margin-right: 5px;">회원정보</a>
				<a href="logOut" class="btn btn-primary">로그아웃</a>
				</c:if>
			</div>
			
			<div class="top_title">
				<h1 class="title"><a href="/project" style="color:#38CCFB"><img src="resources/img/title_img.jpg"></a></h1>
			</div>

			<div class="navi_bar">
				<div class="navi_bar_choice">
				<a href="weather">
					<span>여행지 선택</span>
				</a>
				</div>
				<div class="navi_bar_choice">
					<span>식도락</span>
				</div>
				<div class="navi_bar_choice">
				<a href="boardList">
					<span onclick="location.href='/boardtwo/list.bdo'">커뮤니티</span>
				</a>
				</div>
				

			</div>
		</div>



		<div id="carouselExampleAutoplaying" class="carousel slide slider-container"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/img/TokyoSkyTree.jpg" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="resources/img/TokyoTower.webp" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="resources/img/TokyoTower2.jpg" class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<div class="w-100 img-grid-container">
			<div class="row">
				<div class="col">
					<img class="large-img" src="resources/img/main_img/Akihabara.jpg">
				</div>
				<div class="col">
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/art.webp">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/beer.webp">	
						</div>
					</div>
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/city.webp">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/Disney.jpg">	
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/flower.webp">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/mountain.jpeg">	
						</div>
					</div>
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/mountain.jpg">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/night.jpeg">	
						</div>
					</div>
				</div>
				<div class="col">
					<img class="large-img" src="resources/img/main_img/nightView.jpg">
				</div>		
			</div>
			<div class="row">
				<div class="col">
					<img class="large-img" src="resources/img/main_img/OKINAWA.webp">
				</div>
				<div class="col">
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/okinawa water.jpg">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/old.jpeg">	
						</div>
					</div>
					<div class="row">
						<div class="col">
							<img class="small-img" src="resources/img/main_img/road.jpeg">	
						</div>
						<div class="col">
							<img class="small-img" src="resources/img/main_img/TvTower.webp">	
						</div>
					</div>
				</div>
			</div>
		</div>
		





	</div>



</body>
</html>