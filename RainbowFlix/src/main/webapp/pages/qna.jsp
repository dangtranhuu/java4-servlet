<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
	<title>Rainbow Flix - Hỏi đáp</title>
	<meta property="og:title" content="rainbow-flix">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="../images/unicorn.png" type="image/x-icon">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- icon -->
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/qna.css">
	<link rel="stylesheet" href="css/button/btn.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
	<link rel="stylesheet" href="css/footer.css">
</head>
<style>

</style>
</head>

<body>
	<div class="top-container">
		<h1>Rainbow Flix</h1>
		<p>Chúng tôi yêu phim, như yêu vợ bạn!</p>
	</div>

		
<div style="z-index: 999;" class="header" id="myHeader">
	<section class="ftco-section">
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" style="width: 50px;" href="index"><img
					style="width: 100%;" src="images/unicorn.png" alt="" srcset=""></a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav m-auto">
						<li class="nav-item"><a href="index" class="nav-link">Trang
								chủ</a></li>
						<!-- <li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">Page</a>
								<div class="dropdown-menu" aria-labelledby="dropdown04">
									<a class="dropdown-item" href="">Page 1</a>
									<a class="dropdown-item" href="">Page 2</a>
									<a class="dropdown-item" href="">Page 3</a>
									<a class="dropdown-item" href="">Page 4</a>
								</div>
							</li> -->
						<li class="nav-item"><a href="favorites"
							class="nav-link">Yêu thích</a></li>

						<li class="nav-item active"><a href="qna"
							class="nav-link">Hỏi đáp</a></li>
						<li class="nav-item"><a href="contact"
							class="nav-link">Liên hệ</a></li>
						<li class="nav-item"><a href="about"
							class="nav-link">Về chúng tôi</a></li>
					</ul>
					<ul class="navbar-nav">
					<c:choose>
					
						<c:when test="${not empty currentUser}">
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown04"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">chào, ${currentLastname}</a>
							<div class="dropdown-menu" aria-labelledby="dropdown04">
								<c:if test="${currentUser.getRole() == true}" >
									<a	class="dropdown-item" href="listusers">Quản lí tài khoản</a>
								</c:if>
								<a	class="dropdown-item" href="history">Lịch sử xem</a>
								<a class="dropdown-item" href="logout">Đăng xuất</a> 
								<!-- <a class="dropdown-item" href="">Đăng xuất</a> -->
							</div>
						</li>
						</c:when>
						
						<c:otherwise>
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown04"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tài khoản</a>
							<div class="dropdown-menu" aria-labelledby="dropdown04">
								<a class="dropdown-item" href="login">Đăng nhập</a> 
								<a class="dropdown-item" href="register">Đăng ký</a>
								<!-- <a class="dropdown-item" href="">Đăng xuất</a> -->
							</div>
						</li>
						</c:otherwise>
					</c:choose>
						
					</ul>
				</div>

			</div>
		</nav>
		<!-- END nav -->
	</section>
</div>

	<div class="content">
		<div class="comment">
			<h1>Bình luận</h1>
			<script src="https://giscus.app/client.js" data-repo="dangtranhuu/rainbow-flix" data-repo-id="R_kgDOJMypAQ"
				data-category="General" data-category-id="DIC_kwDOJMypAc4CVDTT" data-mapping="og:title" data-strict="0"
				data-reactions-enabled="1" data-emit-metadata="0" data-input-position="bottom" data-theme="dark"
				data-lang="en" crossorigin="anonymous" async>
				</script>
		</div>
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