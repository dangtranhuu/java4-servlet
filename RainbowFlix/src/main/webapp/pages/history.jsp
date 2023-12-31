<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
	<title>Rainbow Flix - Trang chủ</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="images/unicorn.png" type="image/x-icon">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- icon -->
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/button/btn.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/list.css">
</head>
<style>

</style>
</head>

<body>

	<div class="top-container">
		<h1>Rainbow Flix</h1>
		<p>Chúng tôi yêu phim, như yêu vợ bạn!</p>
	</div>

		
<%@ include file="../common/header.jsp"%>

	<div class="content">
	
	<c:choose>
		<c:when test="${not empty loginyet }">
				<div class="hot">
					<h1 style="z-index: -999;">Danh sách phim đã xem</h1>
					<h6>Vui lòng đăng nhập để xem danh sách phim đã xem</h6>
				</div>
			</c:when>
		<c:otherwise>
				<div class="hot">
					<h1 style="z-index: -999;">Danh sách phim đã xem</h1>
					<div class="list-video">
						<div class="row">

							<c:forEach items="${videos}" var="video">
								<a class="item"
									href="<c:url value='/video?action=watch&id=${video.id}'/>">
									<img src="images/thumnail/${video.poster }" alt="">
									<div class="name">
										<p>${video.title}</p>
									</div>
									<div class="views">
										<p>
											<i class='bx bx-show-alt'></i> ${video.views} lượt xem
										</p>
									</div>
									<div class="status">
										<p class="like">
											<i class='bx bxs-like'></i> ${video.likes }
										</p>
										<p class="dislike">
											<i class='bx bxs-share'></i> ${video.shares}
										</p>
									</div>
								</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:otherwise>
	</c:choose>
	</div>

		
<%@ include file="../common/footer.jsp"%>

	<script>
		window.onscroll = function () { myFunction() };

		var header = document.getElementById("myHeader");
		var sticky = header.offsetTop;

		function myFunction() {
			if (window.pageYOffset > sticky) {
				header.classList.add("sticky");
			} else {
				header.classList.remove("sticky");
			}
		}
	</script>
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>