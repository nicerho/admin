<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<p>홈페이지 가입환경 설정</p>
	<form id="f" method="post" action="./adminconfigsave.do">
<div class="subpage_view">
		<ul class="info_form">
			<li>홈페이지 제목</li>
			<li><input type="text" value="${data.asubject}" class="in_form1" name="asubject" ></li>
		</ul>
		<ul class="info_form">
			<li>관리자 메일 주소</li>
			<li><input type="text" class="in_form2" name="ademail" value="${data.ademail}"> ※ 관리자가 보내고 받는
				용도로 사용하는 메일 주소를 입력합니다.(회원가입,인증메일,회원메일발송 등에서 사용)</li>
		</ul>
		<ul class="info_form">
			<li>포인트 사용 유/무</li>
			<li class="checkcss">
				<em><label><input type="radio" class="ckclass" name="apointuse" value="포인트 사용" id="pointUse" required>포인트 사용</label></em>
				<em><label><input type="radio" class="ckclass" name="apointuse" value="포인트 미사용" checked required>포인트 미사용</label></em>
			</li>
		</ul>
		<ul class="info_form2"
			style="border-bottom: 1px solid rgb(81, 61, 61);">
			<li>회원가입시 적립금</li>
			<li><input type="text" class="in_form3" maxlength="5"name="abasicpoint" value="${data.getAbasicpoint()}"> 점
			</li>
			<li>회원가입시 권한레벨</li>
			<li><input type="text" class="in_form3" maxlength="1" name="alevel" value="${data.getAlevel()}">
				레벨</li>
		</ul>
</div>
<p>홈페이지 기본환경 설정</p>
<div class="subpage_view">
	<ul class="info_form2">
		<li>회사명</li>
		<li><input type="text" class="in_form0" name="acompany" value="${data.getAcompany()}"></li>
		<li>사업자등록번호</li>
		<li><input type="text" class="in_form0 "name="acompanytel" value="${data.getAcompanytel()}"></li>
	</ul>
	<ul class="info_form2">
		<li>대표자명</li>
		<li><input type="text" class="in_form0" name="aboss" value="${data.getAboss()}"></li>
		<li>대표전화번호</li>
		<li><input type="text" class="in_form0" name="abosstel" value="${data.getAbosstel()}"></li>
	</ul>
	<ul class="info_form2">
		<li>통신판매업 신고번호</li>
		<li><input type="text" class="in_form0" name="anumber1" value="${data.getAnumber1()}"></li>
		<li>부가통신 사업자번호</li>
		<li><input type="text" class="in_form0" name="anumber2" value="${data.getAnumber2()}"></li>
	</ul>
	<ul class="info_form2">
		<li>사업장 우편번호</li>
		<li><input type="text" class="in_form0" name="apost" value="${data.getApost()}"></li>
		<li>사업장 주소</li>
		<li><input type="text" class="in_form2" name="aadress" value="${data.getAadress()}"></li>
	</ul>
	<ul class="info_form2"
		style="border-bottom: 1px solid rgb(81, 61, 61);">
		<li>정보관리책임자명</li>
		<li><input type="text" class="in_form0"name="aname" value="${data.getAname()}"></li>
		<li>정보책임자 E-mail</li>
		<li><input type="text" class="in_form1"name="aemail" value="${data.getAemail()}"></li>
	</ul>
</div>
<p>결제 기본환경 설정</p>
<div class="subpage_view">
	<ul class="info_form2">
		<li>무통장 은행</li>
		<li><input type="text" class="in_form0" name="abank" value="${data.getAbank()}"></li>
		<li>은행계좌번호</li>
		<li><input type="text" class="in_form1" name="abanknum" value="${data.getAbanknum()}"></li>
	</ul>
	<ul class="info_form">
		<li>신용카드 결제 사용</li>
		<li class="checkcss"><em><label><input type="radio"
					class="ckclass" name="acredit" id="acreditUse" value="사용"> 사용</label></em> <em><label><input
					type="radio" class="ckclass" checked name="acredit" value="미사용"> 미사용</label></em> ※ 해당 PG사가 있을 경우
			사용으로 변경합니다.</li>
	</ul>
	<ul class="info_form">
		<li>휴대폰 결제 사용</li>
		<li class="checkcss"><em><label><input type="radio"
					class="ckclass" name="amobile" id="amobileUse" value="사용"> 사용</label></em> <em><label><input
					type="radio" class="ckclass" checked name="amobile" value="미사용"> 미사용</label></em> ※ 주문시 휴대폰 결제를
			가능하게 할 것인지를 설정합니다.</li>
	</ul>
	<ul class="info_form">
		<li>도서상품권 결제사용</li>
		<li class="checkcss"><em><label><input type="radio"
					class="ckclass" name="abookcoupon" id="abookcouponUse" value="사용"> 사용</label></em> <em><label><input
					type="radio" class="ckclass" name="abookcoupon" checked value="미사용"> 미사용</label></em> ※ 도서상품권 결제만 적용이
			되며, 그 외에 상품권은 결제 되지 않습니다.</li>
	</ul>
	<ul class="info_form2">
		<li>결제 최소 포인트</li>
		<li><input type="text" class="in_form0" maxlength="5"name="alesspoint" value="${data.getAlesspoint()}"> 점
		</li>
		<li>결제 최대 포인트</li>
		<li><input type="text" class="in_form0" maxlength="5"name="amaxpoint" value="${data.getAmaxpoint()}"> 점
		</li>
	</ul>
	<ul class="info_form">
		<li>현금 영수증 발급사용</li>
		<li class="checkcss"><em><label><input type="radio"
					class="ckclass" name="ahbill" id="ahbillUse" value="사용"> 사용</label></em> <em><label><input
					type="radio" class="ckclass" checked  name="ahbill" value="미사용"> 미사용</label></em> ※ 현금영수증 관련 사항은
			PG사 가입이 되었을 경우 사용가능 합니다.</li>
	</ul>
	<ul class="info_form2">
		<li>배송업체명</li>
		<li><input type="text" class="in_form0" name="adelivery" value="${data.getAdelivery()}"></li>
		<li>배송비 가격</li>
		<li><input type="text" class="in_form0" maxlength="7" name="adeliverycharge" value="${data.getAdeliverycharge()}"> 원
		</li>
	</ul>
	<ul class="info_form" style="border-bottom: 1px solid rgb(81, 61, 61);">
		<li>희망배송일</li>
		<li class="checkcss"><em><label><input type="radio"
					class="ckclass" name="adeliverydate" id="adeliverydateUse" value="사용"> 사용</label></em> <em><label><input
					type="radio" class="ckclass" checked name="adeliverydate" value="미사용"> 미사용</label></em> ※ 희망배송일 사용시 사용자가
			직접 설정 할 수 있습니다.</li>
	</ul>
</div>
<div class="btn_div">
	<button type="submit" class="sub_btn1" title="설정 저장" onclick="">설정
		저장</button>
	<button type="button" class="sub_btn2" title="저장 취소">저장 취소</button>
</div>
</form>
<script>
	document.querySelector('#f').addEventListener('submit',function(a){
		a.preventDefault();
		f.submit();
	});
	
	window.onload=function(){
		if(${data.getApointuse()=="포인트 사용"}){
			document.querySelector('#pointUse').checked=true;
		}
		if(${data.getAcredit()=="사용"}){
			document.querySelector('#acreditUse').checked=true;
		}
		if(${data.getAmobile()=="사용"}){
			document.querySelector('#amobileUse').checked=true;
		}
		if(${data.getAbookcoupon()=="사용"}){
			document.querySelector('#abookcouponUse').checked=true;
		}
		if(${data.getAhbill()=="사용"}){
			document.querySelector('#ahbillUse').checked=true;
		}
		if(${data.getAdeliverydate()=="사용"}){
			document.querySelector('#adeliverydateUse').checked=true;
		}
		
	}
</script>