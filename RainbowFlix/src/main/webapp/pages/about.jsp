<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!doctype html>
<html lang="en">

<head>
	<title>Rainbow Flix - Giới thiệu</title>
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
	<link rel="stylesheet" href="css/about.css">
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
						<li class="nav-item"><a href="contact"
							class="nav-link">Liên hệ</a></li>
						<li class="nav-item active"><a href="about"
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
		<h1>Về chúng tôi</h1>

		<h6>Xem phim trực tuyến miễn phí</h6>
		<p class="descript-title">
			- Rainbow Flix là trang web tốt nhất cho phép người dùng xem phim và chương trình truyền hình HD trực tuyến
			miễn phí
			mà không cần đăng ký. Các bộ phim và chương trình HD mới được cập nhật hàng ngày trên nhiều thể loại khác nhau
			như lãng mạn, hành động, phiêu lưu, hài, v.v. Raibow Flix có thể có tất cả các bộ phim bạn đang tìm kiếm trên
			trang
			web, Nếu không, bạn chỉ cần yêu cầu nó và nó sẽ có sẵn để bạn xem trong thời gian ngắn.
		</p>

		<h6>
			Rainbow Flix là gì?
		</h6>
		<p class="descript-title">
			- Raibow Flix là trang web truy cập của bạn để xem phim và chương trình truyền hình HD miễn phí! Tại đây bạn có
			thể
			tải xuống hoặc xem hàng nghìn bộ phim và loạt phim trực tuyến một cách liền mạch. Rainbow Flix cũng cung cấp
			tính năng
			không có quảng cáo cũng như các liên kết nguồn riêng tư để đảm bảo an toàn cho người dùng của họ.
			Chúng tôi muốn cung cấp phim và chương trình truyền hình cho tất cả mọi người bất kể tình hình tài chính của
			họ. Mặc dù đây là một hành trình dài, chúng tôi tin tưởng mạnh mẽ rằng chúng tôi có thể sớm trở thành giải pháp
			thay thế Netflix #1 với sự hỗ trợ của bạn.
		</p>

		<h6>Sử dụng Rainbow Flix có hợp pháp không?</h6>
		<p class="descript-title">
			- Nếu bạn có thể truy cập vào trang web Rainbow Flix, nó là hợp pháp trong khu vực của bạn. Theo các luật sư
			bản
			quyền,
			việc phát trực tuyến phim và chương trình truyền hình trực tuyến không phải là bất hợp pháp nhưng việc tải
			xuống
			và chia sẻ các tệp lậu thì có. Do đó, bạn nên tự bảo vệ mình bằng cách sử dụng một VPN đáng tin cậy để tải
			xuống
			các tệp ẩn danh.
		</p>

		<h1 style="margin-top: 80px;">Thông tin liên hệ của Rainbow Flix</h1>
		<p class="descript-title">
		<div class="social-links">
			<div id="twitter" class="social-btn flex-center">
				<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
					<path
						d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z">
					</path>
				</svg><span><a href="">Rainbow Flix</a></span>
			</div>

			<div id="linkedin" class="social-btn flex-center">
				<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
					<path
						d="M4.98 3.5c0 1.381-1.11 2.5-2.48 2.5s-2.48-1.119-2.48-2.5c0-1.38 1.11-2.5 2.48-2.5s2.48 1.12 2.48 2.5zm.02 4.5h-5v16h5v-16zm7.982 0h-4.968v16h4.969v-8.399c0-4.67 6.029-5.052 6.029 0v8.399h4.988v-10.131c0-7.88-8.922-7.593-11.018-3.714v-2.155z">
					</path>
				</svg><span><a href="">Rainbow Flix</a></span>
			</div>

			<div id="facebook" class="social-btn flex-center">
				<!-- <svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
					<path
						d="M4.98 3.5c0 1.381-1.11 2.5-2.48 2.5s-2.48-1.119-2.48-2.5c0-1.38 1.11-2.5 2.48-2.5s2.48 1.12 2.48 2.5zm.02 4.5h-5v16h5v-16zm7.982 0h-4.968v16h4.969v-8.399c0-4.67 6.029-5.052 6.029 0v8.399h4.988v-10.131c0-7.88-8.922-7.593-11.018-3.714v-2.155z">

					</path>
				</svg> -->
				<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
					<path
						d="M13.397 20.997v-8.196h2.765l.411-3.209h-3.176V7.548c0-.926.258-1.56 1.587-1.56h1.684V3.127A22.336 22.336 0 0 0 14.201 3c-2.444 0-4.122 1.492-4.122 4.231v2.355H7.332v3.209h2.753v8.202h3.312z">
					</path>
				</svg>
				<span><a href="">Rainbow Flix</a></span>
			</div>

			<div id="github" class="social-btn flex-center">
				<svg viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
					<path
						d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z">
					</path>
				</svg><span>Rainbow Flix</span>
			</div>
		</div>
		</p>


		<div class="row">
			<hr>
			<div class="left col-sm-6">
				<div class="center">
					<div class="c">
						<p>
						<h6>Địa chỉ</h6>
						</p>
						<p class="c-content"><i class='bx bxs-edit-location'></i><span> 228 Nguyễn Văn Linh An Khánh Ninh Kiều
								Cần Thơ</span>
						</p>
					</div>
				</div>
				<div class="center">
					<div class="c">
						<p>
						<h6>Đường dây nóng</h6>
						</p>
						<p class="c-content"> <i class='bx bx-phone-call'></i> <span>0392 233 333</span></p>
					</div>
				</div>

				<div class="center">
					<div class="c">
						<p>
						<h6>Hộp thư</h6>
						</p>
						<p class="c-content"><i class='bx bx-mail-send'></i>
							<span>Contact.RainbowFlix@gmail.com</span>
						</p>
					</div>
				</div>


				<div class="center">
					<div class="c">
						<p>
						<h6>Thiết kế bởi</h6>
						</p>
						<p class="c-content"><i class='bx bx-code-alt'></i>
							<span>Froggy Dev</span>
						</p>
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