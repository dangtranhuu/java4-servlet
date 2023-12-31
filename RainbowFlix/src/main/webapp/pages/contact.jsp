<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
	<title>Rainbow Flix - Liên hệ</title>
	<meta property="og:title" content="rainbow-flix">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="images/unicorn.png" type="image/x-icon">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- icon -->
	<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/contact.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/contact.css">
	<link rel="stylesheet" href="css/button/btn.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
	<link rel="stylesheet" href="css/footer.css">
</head>
</head>

<body>

	<style>

	</style>

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
						<li class="nav-item active"><a href="contact"
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
		<h1>Liên hệ với tôi</h1>

		<p class="descript-title">- Có câu hỏi và cần nói chuyện với chúng tôi? Vui lòng điền vào biểu mẫu này và chúng
			tôi
			sẽ liên hệ sớm nhất có
			thể.</p>

		<div class="row">
			<hr>
			<div class="left col-sm-6">
				<div class="center">
					<div class="l">
						<p>Họ tên</p>
						<input type="text" name="" id="">
					</div>
					<div class="r">
						<p>Email</p>
						<input type="text" name="" id="">
					</div>
				</div>
				<div class="center">
					<div class="c">
						<p>Chủ đề góp ý</p>
						<input type="text" name="" id="">
					</div>
				</div>

				<div class="center">
					<div class="c">
						<p>Nội dung</p>
						<!-- <input type="text" name="" id="message"> -->
						<textarea name="" id="" cols="5" rows="5"></textarea>
					</div>
				</div>

				<div class="center">
					<div class="c">
						<button class="send">
							<div class="svg-wrapper-1">
								<div class="svg-wrapper">
									<svg style="color: #404757;" height="24" width="24" viewBox="0 0 24 24"
										xmlns="http://www.w3.org/2000/svg">
										<path d="M0 0h24v24H0z" fill="none"></path>
										<path
											d="M1.946 9.315c-.522-.174-.527-.455.01-.634l19.087-6.362c.529-.176.832.12.684.638l-5.454 19.086c-.15.529-.455.547-.679.045L12 14l6-8-8 6-8.054-2.685z"
											fill="currentColor"></path>
									</svg>
								</div>
							</div>
							<span>Gửi</span>
						</button>
					</div>
				</div>
			</div>

			<div class="right col-sm-6">
				<h1>Vị trí trụ sở chính</h1>
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8788739320867!2d105.75512251471191!3d10.026853092832754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a088476bb00027%3A0xd3c02747d1cbc8c6!2zMjg4IMSQLiBOZ3V54buFbiBWxINuIExpbmgsIEjGsG5nIEzhu6NpLCBOaW5oIEtp4buBdSwgQ-G6p24gVGjGoSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1673982504773!5m2!1sen!2s"
					style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
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