	function checkLogin() {
		var form = document.loginFrm;
		
		if(form.id.value == "") {
			alert("아이디를 입력해주세요.");
			form.id.focus();  /* id입력창으로 포커스를 준다. */
			return false;  	 /* false를 리턴해줌으로써 페이지 이동을 막을 수 있다. */
		}
		/* 아이디의 길이가 4자 미만이거나 12자 초과라면.. */
		if(form.id.value.length < 4 || form.id.value.length > 12) {
			alert("아이디는 4~12 이내로 입력해주세요.");
			form.id.select();  /* 사용자가 입력한 내용을 선택해서 블럭을 씌운다. */
			form.id.focus();  
			return false;     
		}
		
		/* 아이디는 영문 소문자로만 입력하도록 검사하는 구문 */
		for(var i = 0; i < form.id.value.length; i++) {
			var ch = form.id.value.charAt(i);
			
			if((ch < 'a' || ch > 'z') && (ch > 'A' || ch < 'Z') && (ch > '0' || ch < '9')) {
				alert("아이디는 영문 소문자로 입력해주세요.");
				form.id.select();
				form.id.focus();
				return false;
			}
		}
		
		if(form.pw.value == "") {
			alert("비밀번호를 입력해주세요.");
			form.pw.focus();
			return false;
		}
		
		if(form.pw.value.length < 4) {
			alert("비밀번호를 4자 이상으로 입력해주세요.");
			form.pw.select();
			form.pw.focus();
			return false;
		}
		
		/* 비밀번호를 숫자로만 입력하게끔 하는 유효성 검사 부분 */
		if(isNaN(form.pw.value)) {
			alert("비밀번호는 숫자로만 입력해주세요.");
			form.pw.select();
			form.pw.focus();
			return false;
		}
		
		/* 위의 유효성 검사를 다 통과하면, 자바스크립트의 함수 내에서 submit()호출하고 있다. */
		form.submit();
	}