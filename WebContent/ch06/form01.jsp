<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing </title>
</head>
<body>
	<h3>회원가입</h3>
	<!-- 폼태그, 폼필드
	action생략 시 본인 URL를 요청
	method생략 시 기본 HTTP요청방식은 get
	 -->
	 <!-- 요청URL : form01_process.jsp
	 	   요청방식 : post
	 	  요청파라미터(HTTP파라미터=QueryString) : 
	 	  	{id=a001,passwd=java,name=서예린,phone=010-1234-1234,gender=female,hobby={reading,exercise},
	 	  		comment=가입할게요}		
	  -->
	<form action="form01_process.jsp" name="member" method="post" onsubmit="return fn_chk()">
		<!-- 폼 데이터 -->
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="passwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>연락처 : 
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019" selected>019</option>
			</select> - 
			<!-- checkInputNum() : 핸들러함수 -->
			<input type="text" maxlength="4" size="4" name="phone2" 
				onkeypress="checkInputNum()" /> - 
			<input type="text" maxlength="4" size="4" name="phone3"
				onkeypress="checkInputNum()" />
		</p>
		<p>성별 : 
			<input type="radio" name="gender" id="male" value="male" />
				<label for="male">남성</label>
			<input type="radio" name="gender" id="female" value="female" checked/>
				<label for="female">여성</label>
		</p>
		<p>취미 : 
			<label for="hobby1">독서</label>
				<input type="checkbox" id="hobby1" name="hobby" value="reading" />
			<label for="hobby2">코딩</label>	
				<input type="checkbox" id="hobby2" name="hobby" value="coding" />
			<label for="hobby3">운동</label>
				<input type="checkbox" id="hobby3" name="hobby" value="exercise" />
		</p>
		<p>
			<!-- rows : 줄수 / cols : 열수 
			wrap=”off” : 줄바꿈안함, “soft” :자동줄바꿈(기본), “hard”:서버전송시 캐리지 리턴 문자를 전달
			-->
			<textarea name="comment" rows="3" cols="30" wrap="soft"
				placeholder="가입인사를 입력해주세요"></textarea>
		</p>
		<p><input type="submit" value="가입하기" /></p>
		<p>다시쓰기</p>
	</form>
	
<script type="text/javascript">
	function fn_chk(){
		let form = document.member;
		
		//<input type="text" maxlength="4" size="4" name="phone2"
		//isNaN : is Not Null(이것은 숫자가 아니다)
		if(isNaN(form.phone2.value)){
			alert("휴대폰 번호는 숫자만 입력 가능합니다.");
			form.phone2.select();//커서를 해당 요소에 위치
			//false이면 submit 안됨
			return false;
		}
		if(isNaN(form.phone3.value)){
			alert("휴대폰 번호는 숫자만 입력 가능합니다.");
			form.phone3.select();//커서를 해당 요소에 위치
			//false이면 submit 안됨
			return false;
		}
		//if 조건을 모두 통과해야 submit 됨
		return true;
	}
	
	//숫자만 입력할 수 있도록 처리
	function checkInputNum(){
		//48 : ascii코드 0, 57 : ascii코드 9
		if((event.keyCode<48)||(event.keyCode>57)){
			event.returnValue = false;
		}
	}
</script>

</body>
</html>