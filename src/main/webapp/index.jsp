<%@page import="org.kosta.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 4 Website Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<h1>My First Bootstrap 4 Page</h1>
		<p>Resize this responsive page to see the effect!</p>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			</ul>
		</div>
	</nav>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-4">
				<h2>About Me</h2>
				<h5>Photo of me:</h5>
				<div class="login-form">
					<%-- 아이디로 회원검색 --%>
					<form action="FindMemberByIdServlet">
						<input type="text" name="memberId" class="text-field"
							placeholder="아이디" required="required">
						<button type="submit" class="submit-btn">검색</button>
					</form>
					<br>
					<%
					MemberVO mvo = (MemberVO) session.getAttribute("mvo");
					if (mvo == null) {
					%>
					<%-- 비로그인 상태일때는 로그인 폼을 제공한다 --%>
					<form action="LoginServlet" method="post">
						<input type="text" name="id" class="text-field" placeholder="아이디"
							required="required"> <input type="password"
							name="password" class="text-field" placeholder="패스워드"
							required="required">
						<button type="submit" class="submit-btn">로그인</button>
					</form>
					<div class="links">
						<a href="regist-form.jsp">회원가입</a>
					</div>
					<%
					} else {
					%>
					<%-- 로그인 상태일때는 누구님 반갑습니다 , 로그아웃 링크를 제공한다 --%>
					<p style="font-size: 14px; color: #9b9b9b"><%=mvo.getName()%>님
						반갑습니다
					</p>
					<!-- <form action=""></form>
					<div class="links">
						<a href="#">로그아웃</a>
					</div> -->
					<br>
					<%-- 주소로 회원정보 조회 --%>
					<form action="">
						<input type="text" class="text-field" placeholder="주소"
							required="required">
						<button type="submit" class="subm	it-btn">조회</button>
					</form>
					<div class="links">
						<a href="UpdateMemberServlet">회원정보수정</a>
					</div>
					<%
					}
					%>
				</div>
				<p></p>
				<hr>
				<h3>Some Links</h3>
				<p>Lorem ipsum dolor sit ame.</p>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active" href="#">Active</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
				<hr class="d-sm-none">
			</div>
			<div class="col-sm-8">
				<h2>TITLE HEADING</h2>
				<h5>Title description, Dec 7, 2017</h5>
				<div class="fakeimg">Fake Image</div>
				<p>Some text..</p>
				<p>Sunt in culpa qui officia deserunt mollit anim id est laborum
					consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco.</p>
				<br>
				<h2>TITLE HEADING</h2>
				<h5>Title description, Sep 2, 2017</h5>
				<div class="fakeimg">Fake Image</div>
				<p>Some text..</p>
				<p>Sunt in culpa qui officia deserunt mollit anim id est laborum
					consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco.</p>
			</div>
		</div>
	</div>

	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>Footer</p>
	</div>

</body>
</html>