<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String user_id = "";
try {
	user_id = session.getAttribute("perid").toString();
	out.print(user_id);
} catch (Exception e) {
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지</title>
<link rel="stylesheet" type="text/css" href="./css/basic.css">
<link rel="stylesheet" type="text/css" href="./css/mainlogin.css?v=3">
<link rel="icon" href="./img/logo.png" sizes="128x128">
<link rel="icon" href="./img/logo.png" sizes="64x64">
<link rel="icon" href="./img/logo.png" sizes="32x32">
<link rel="icon" href="./img/logo.png" sizes="16x16">
</head>
<body class="bodycss">
	<header class="admin_title">
		<p>
			<img src="./img/logo.png" class="logo_sm"> ADMINISTRATOR
		</p>
	</header>
	<section class="admin_bgcolor">
		<div class="admin_login">
			<form id="f" method="post" action="../adminLogin.do">
				<span>
					<div class="left_div">
						<ul>
							<li><input type="text" class="input_text1"
								placeholder="관리자 아이디를 입력하세요" name="adminId"></li>
							<li><input type="password" class="input_text1"
								placeholder="관리자 패스워드를 입력하세요" name="adminPw"></li>
						</ul>
					</div>
					<div class="right_div">
						<button type="submit" class="btn_submit" title="MASTER LOGIN">MASTER
							LOGIN</button>
					</div> <em class="alert_msg">※ 본 사이트는 관리자 외에는 접근을 금합니다. 페이지 접근에 대한
						접속 정보는 모두 기록 됩니다.</em>
				</span> <span>
					<ol class="admin_info">
						<li title="신규 관리자 등록요청">신규 관리자 등록요청</li>
						<li title="아이디/패스워드 찾기">아이디/패스워드 찾기</li>
					</ol>
				</span>
			</form>
		</div>
	</section>
	<footer class="admin_copy_login">
		<div>Copyright ⓒ 2023 shopbag All rights reserved.</div>
	</footer>
</body>
<script>
	document.querySelector('#f').addEventListener(
			'submit',
			function(a) {
				a.preventDefault();
				if (f.adminId.value == "master"
						&& f.adminPw.value == "shop_master123") {
					f.submit();
				} else {
					alert("계정 또는 비밀번호를 다시 확인하세요")
				}
			})
		var mid = "<%=user_id%>"
    	if(mid=="최고관리자"){
    		location.href="http://localhost:8080/adminLogin.do"
    	}
</script>
</html>