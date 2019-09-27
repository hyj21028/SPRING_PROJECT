/**
 * 
 */
	$(document).ready(function(e) {
		$('#login').click(function() {

			// 입력 값 체크
			if ($.trim($('#userId').val()) == '') {
				alert("아이디를 입력해 주세요.");
				$('#userId').focus();
				return;
			} else if ($.trim($('#userPwd').val()) == '') {
				alert("패스워드를 입력해 주세요.");
				$('#userPwd').focus();
				return;
			}

			//전송
			$('#loginFrm').submit();
		});

		//회원가입 버튼
		$('#signUp').click(function() {
			location.href = "/SignUp";
		});
		//로그아웃 버튼
		$('#logout').click(function() {
			location.href = "logout";
		});
	});
