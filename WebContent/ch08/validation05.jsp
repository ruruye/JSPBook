<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkMember(){
		//1) 아이디는 문자로 시작
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		//2) 이름은 한글만 입력, 시작도 한글 끝도 한글(^한글$)
		// + : 한번이상, * : 0번이상
		let regExpName = /^[가-힣]*$/;
		
		//3) 비밀번호는 숫자만 입력, ^숫자$
		let regExpPasswd = /^[0-9]*$/;
		
		//4) 연락처 형식 준수(010-111-2222, 010-1111-2222)
		// \d : 숫자
		// \d{3} : 딱 3회반복, \d{3,4} : 숫자가 3이상 4이하 반복
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		
		//5) 이메일 형식 준수(tester-_.2a@koera_3.ac.kr)
		// ^:시작, $:끝, ?:아몰랑(있어도 없어도 그만), *:0이상반복, {2,3}:2이상 3이하
		// [a-z] : a~z사이 영소문자 중 한 글자 
		let regExpEmail = 
		/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		//form : object
		let form = document.Member;
		
		let id = form.id.value;	//아이디
		let passwd = form.passwd.value; //비밀번호
		let name = form.name.value; //이름
		let phone = form.phone1.value + "-" +
				form.phone2.value + "-" +
				form.phone3.value; //연락처
		let email = form.email.value; //이메일
		
		//1) 아이디는 문자로 시작
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요");
			form.id.select();
			return;
		}
		//2) 이름은 한글만 입력
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요");
			return;
		}
		//3) 비밀번호는 숫자만 입력
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요");
			return;
		}
		//4) 연락처 형식 준수(010-111-1111. 010-1111-2222)
		if(!regExpPhone.test(phone)){
			alert("연락처를 확인해주세요 ");
			return;
		}
		//5) 이메일 형식 준수
		if(!regExpEmail.test(email)){
			alert("이메일 형식을 확인해주세요 ");
			return;
		}
		//유효성검사(validation) 통과
		form.submit();
	}
	
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<!--
	요청URL : validation05_process.jsp
	요청파라미터 :  {
		id = a001
		passwd = 1234
		name = 홍길동
		phone1=010,phone2=1234,phone3=5678,
		email=test@test.co.kr	}
	요청방식 : post
	 -->
	<form name="Member" action="validation05_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 : 
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> -
			<input type="text" maxlength="4" size="4" name="phone2" /> -
			<input type="text" maxlength="4" size="4" name="phone3" />
		</p>
		<p>이메일 : <input type="text" name="email" /></p>
		<!-- checkMember() : 핸들러함수 -->
		<p><input type="button" value="가입하기" onclick="checkMember()" /></p>
	</form>
</body>
</html>