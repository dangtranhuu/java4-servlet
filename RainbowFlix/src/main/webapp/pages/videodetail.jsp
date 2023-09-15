<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>${video.title}</title>
<meta charset="utf-8">
<meta property="og:title" content="rainbow-flix/${video.id }">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="shortcut icon" href="../images/unicorn.png"
	type="image/x-icon">
<!-- icon -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/contact.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/contact.css">
<link rel="stylesheet" href="../css/about.css">
<link rel="stylesheet" href="../css/button/btn.css">
<link rel="stylesheet" href="../assets/css/responsive.css">
<link rel="stylesheet" href="../css/footer.css">

<link rel="shortcut icon" href="images/unicorn.png" type="image/x-icon">
<!-- icon -->
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
.main {
	display: flex;
}

i {
	font-size: 20px;
}

.like i, .views i, .dislike i {
	margin-bottom: -10px;
	color: #3F4344;
	color: red;
}

.action {
	display: flex;
	margin-top: 10px;
	justify-content: space-between;
}

.detail p {
	margin-right: 20px;
}

.lefta .one {
	margin-right: 20px;
}

.itemx {
	margin-bottom: 30px;
}

.itemx .leftx img {
	width: 100%;
}

.itemx .name p {
	letter-spacing: 1.2px;
	font-size: 15px;
	margin-top: 8px;
	color: white;
	width: 100%;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.itemx .views p, .itemx .like, .itemx .dislike {
	font-size: 15px;
}

.itemx i {
	font-size: 17px;
}

/* PC */
@media ( min-width : 64em) {
	.main .left {
		margin: 0 0;
		padding-right: 0px;
		padding-bottom: -70px;
	}
	.main .right {
		margin-left: 50px;
		padding-left: 0px;
		margin-top: 100px;
	}
	.video iframe {
		height: 500px;
	}
}

/* Mobile */
@media ( max-width : 46.1875em) {
	.main {
		display: block;
	}
	.video iframe {
		margin-top: 30px;
		height: 200px;
	}
	.action i {
		font-size: 20px;
	}
	.action a, .action p {
		font-size: 16px;
	}
}
</style>

	<div class="top-container">
		<h1>Rainbow Flix</h1>
		<p>Chúng tôi yêu phim, như yêu vợ bạn!</p>
	</div>


	<%@ include file="../common/header.jsp"%>

	<div class="content">
		<div class="main">
			<div style="" class="col-sm-9 left">
				<h1>${video.title}</h1>
				<div class="video" style="margin-top: -30px;">
					<iframe style="width: 100%;" src="${video.href}"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen> </iframe>
					<c:choose>
						<c:when test="${not empty currentUser}">
							<div class="action">
								<div class="lefta">

									<c:if test="${flagLike == true}">
										<a onclick="change(this)" href="<c:url value='/video?action=like&id=${video.id}'/>"
											class="one"><i style="color: red;" class='bx bxs-like'></i>
											${video.likes}</a>
									</c:if>
									<c:if test="${flagLike == false}">
										<a  onclick="change(this)" href="<c:url value='/video?action=like&id=${video.id}'/>"
											class="one"><i style="color: #808080;"
											class='bx bxs-like'></i> ${video.likes}</a>
									</c:if>
									<a href="<c:url value='/video?action=share&id=${video.id}'/>"><i
										class='bx bxs-share'></i style="color:#808080;" >${video.shares }</a>
								</div>
								<div class="righta">
									<p>
										<i class='bx bx-show-alt'></i>${video.views } lượt xem
									</p>
								</div>
							</div>
						</c:when>

						<c:otherwise>
							<div class="action">
								<div class="lefta">
									<a class="one"><i class='bx bxs-like'></i style="color:#808080;" > ${video.likes}</a> <a><i
										class='bx bxs-share'></i style="color:#808080;" >${video.shares }</a>
								</div>
								<div class="righta">
									<p>
										<i class='bx bx-show-alt'></i>${video.views } lượt xem
									</p>
								</div>
							</div>
						</c:otherwise>
					</c:choose>

				</div>

				<h6>Chi tiết</h6>
				<p class="descript-title">
					Tên phim: ${video.title} <br> Ngày tải lên: ${video.date}
				</p>

				<h6>Mô tả</h6>
				<p class="descript-title">${video.description}</p>
			</div>
			<div class="col-sm-3 right">				
				<c:forEach items="${topvid}" var="video">
					<div class="itemx">
						<div class="leftx">
							<img src="images/thumnail/${video.poster }" alt="">
						</div>
						<div class="rightx">
							<div class="name">
								<p>${video.title}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>


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

	<footer>
		<div class="top">
			<ul>
				<li><a href="">FGHHV</a></li>
				<li><a href="">DFGH</a></li>
				<li><a href="">PC0123</a></li>
				<li><a href="">FPOLY</a></li>
				<li><a href="">CANTHO</a></li>
			</ul>
		</div>

		<div class="mid">
			<p>Rainbow Flix là một trang web phát trực tuyến Phim miễn phí
				không có quảng cáo. Chúng tôi cho phép bạn xem phim trực tuyến mà
				không cần phải đăng ký hoặc trả tiền, với hơn 10000 bộ phim và
				TV-Series. Bạn cũng có thể Tải xuống phim đầy đủ từ MoviesCloud và
				xem sau nếu muốn.</p>
		</div>

		<div class="bot">
			<i class='bx bx-copyright'></i> <span>FroggyDev@FPT
				Polytechnic</span>
		</div>

	</footer>

	<script>
		window.onscroll = function() {
			myFunction()
		};

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
	<script src="../js/jquery.min.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/main.js"></script>


	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript">
		function change(e){
			//alert(e.querySelector('.bx').style.color);
			console.log(e.querySelector('.bx'))
			if(e.querySelector('.bx').style.color == 'red'){
				//alert("Change red to default")
				e.querySelector('.bx').style.color = "#808080"
			} else {
				//alert('change default to red')
				e.querySelector('.bx').style.color = "red"
			}
		}
	</script>

<!-- 	<script>
	function a(){
		alert(99)
	}
		
		$('#likevideodetail').click(function() {
			alert("h")
			let videoId = $('#videoid').val();
			alert(videoId)
			$.ajax({
				url = 'video?action=like&id=' + videoId
			}).then(function(data){
				let text = $('#likevideo').text();
				if(text.indexOf('like') != -1){
					$('#likevideo').text('Unlike');
				} else {
					$('#likevideo').text('like');
				}
			}).fail(function(error){
				alert('Loi')
			});
		});
	</script> -->

</body>

</html>