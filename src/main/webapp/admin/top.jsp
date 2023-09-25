<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String user_id = "";

try {
	user_id = session.getAttribute("perid").toString();
} catch (Exception e) {
}
%>
<div class="header_div">
	<p>
		<img src="./img/logo.png" class="logo_sm"> ADMINISTRATOR
	</p>
	<p><%=user_id%>
		관리자 <a href="adminConfig.do">[개인정보 수정]</a> <a href="/logout.do">[로그아웃]</a>
	</p>
</div>
<script>
	var mid=<%=user_id%>
	window.onload=function(){
		if(mid==""||mid=="null"||mid==null){
			location.href='./index.jsp'
		}
	}
</script>