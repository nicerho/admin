<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규식코드</title>
</head>
<body>
	<form id="f">
		문자입력 : <input type="text" name="myText" placeholder="숫자만"><br>
		고객명 : <input type="text" name="myName" placeholder="숫자만"><br>
		패스워드 : <input type="text" name="myPw" placeholder="비밀번호입력하세요"><br>
		이메일 : <input type="text" name="myMail" placeholder="email"><br>
		인증번호 : <input type="text" name="myNumber" placeholder="인증번호 입력"><br>
		<input type="button" value="정규식 체크" onclick="abc()">
	</form>
</body>
<script>
	function abc() {
		/*
		var check = /[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;
		var word  = f.myText.value;
		if(check.test(word)==false){
			console.log("숫자만 입력됫음");
		}else{
			console.log("숫자만 입력되지 안앗음");
		}*/
		/*	var word = f.myName.value;
		 var check = /[0-9]/g;
		 if(check.test(word)==false){
		 console.log("문자만 입력됫음")
		 }else{
		 console.log("다른게 들어가잇음")
		 }*/
		/* var check = /|s/g;
		 var word = f.myPw.value;
		 if(check.test(word)==true){
			 console.log("공백 포함이 되어잇음")
		 }*/
		/* var word = f.myMail.value;
		 var check = /[a-zA-z0-9|_-]+@[a-zA-z0-9]+[.]+[a-zA-z0-9]/g;
		 if(check.test(word)==false){
			 console.log("erre")
		 }*/
		 var word = f.myNumber.value; //인증번호 숫자만 입력
		 //var check = /a-z/gi; //gi 에서 i는 대소문자 모두 체크
		 var check = /[^0-9]/g;
		 if(check.test(word)==true){
			 console.log("error")
		 }
	}
</script>
</html>