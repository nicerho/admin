<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%
session.invalidate();
%>
<script>
	window.onload = function() {
		alert("로구아웃성공")
		location.href = './index.jsp'
	}
</script>