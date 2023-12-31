<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Rainbow Flix - Đăng nhập</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="images/unicorn.png" type="image/x-icon">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- icon -->
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

	<link rel="icon" type="image/png" href="assets/login/images/icons/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="assets/login/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="assets/login/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="assets/login/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="assets/login/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="assets/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/login/css/main.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="css/qna.css">
	<link rel="stylesheet" href="css/button/btn.css">
	<link rel="stylesheet" href="assets/css/responsive.css"> 
	
	<%-- <style><%@include file="../assets/login/vendor/bootstrap/css/bootstrap.min.css"%></style>
	
	<style><%@include file="../assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"%></style>
	<style><%@include file="../assets/login/vendor/animate/animate.css"%></style>
	<style><%@include file="../assets/login/vendor/css-hamburgers/hamburgers.min.css"%></style>
	<style><%@include file="../assets/login/vendor/select2/select2.min.css"%></style>
	<style><%@include file="../assets/login/css/util.css"%></style>
	<style><%@include file="../assets/login/css/main.css"%></style>
	<style><%@include file="../assets/css/responsive.css"%></style>
	<style><%@include file="../css/index.css"%></style>
	<style><%@include file="../css/style.css"%></style>
	<style><%@include file="../css/footer.css"%></style>
	<style><%@include file="../css/login.css"%></style>
	<style><%@include file="../css/qna.css"%></style>
	<style><%@include file="../css/button/btn.css"%></style> --%>
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

						<li class="nav-item"><a href="qna"
							class="nav-link">Hỏi đáp</a></li>
						<li class="nav-item"><a href="contact"
							class="nav-link">Liên hệ</a></li>
						<li class="nav-item"><a href="about"
							class="nav-link">Về chúng tôi</a></li>
					</ul>
					<ul class="navbar-nav">
					<c:choose>
					
						<c:when test="${not empty currentUser}">
							<li class="nav-item dropdown active"><a
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
							<li class="nav-item dropdown active"><a
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
		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<div class="login100-pic js-tilt" data-tilt>
						<img src="assets/login/images/logo-3d.png" alt="IMG">
					</div>

					<form class="login100-form validate-form" method="post" action="login">
						<span class="login100-form-title">
							ĐĂNG NHẬP
						</span>

						<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
							<input class="input100" type="text" name="username" placeholder="Tên đăng nhập">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="Password is required">
							<input class="input100" type="password" name="password" placeholder="Mật khẩu">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>

						<div class="container-login100-form-btn">
							<button class="login100-form-btn">
								Đăng nhập
							</button>
						</div>

						<div class="text-center p-t-12">
							<span class="txt1">
								Quên
							</span>
							<a class="txt2" href="#">
								mật khẩu?
							</a>
						</div>

						<div class="text-center p-t-136">
							<a class="txt2" href="#">
								Tạo tài khoản trên hệ thống Rainbow Flix
								<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
		
<%@ include file="../common/footer.jsp"%>





	<script src="assets/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="assets/login/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/login/vendor/select2/select2.min.js"></script>
	<script src="assets/login/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

	<script src="../assets/login/js/main.js"></script>

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
	<!-- 
	<script src="../js/jquery.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/main.js"></script> -->
</body>

</html>