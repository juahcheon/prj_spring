<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>escapeFinal maintain</title>
    
    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/08d3ec3c73.js" crossorigin="anonymous"></script>
    
    <!-- 폰트(나눔스퀘어네오) -->
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
    <!-- 
        font-family: 'NanumSquareNeoLight';
        font-family: 'NanumSquareNeo';
        font-family: 'NanumSquareNeoBold';
        font-family: 'NanumSquareNeoExtraBold';
        font-family: 'NanumSquareNeoHeavy'; 
    -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="/resources/css/escapeMaintain.css">
</head>
<body>
    <div class="wrap">
        <div class="lnb">
            <div class="logo">
                <h1><a href="#">logo</a></h1>
                <div class="update_mt">
                    <button type="button" class="refresh_btn">
                        <i class="fa-solid fa-rotate"></i>
                    </button>
                </div>
            </div>
            <div class="lnb_main">
                <ul class="main_list_mt">
                    <li>
                        <ul class="sub_list_mt">
                            <p>Main</p>
                            <li><a href="#">DASHBOARD</a></li>
                            <li><a href="#">GENERAL</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul class="sub_list_mt">
                            <p>Tain</p>
                            <li><a href="#">MEMBER</a></li>
                            <li><a href="#">THEME</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="content">
            <div class="header">LOGIN</div>
            <div class="didtheme didtheme_full">
                <div class="inner">
                	<div class="logInInput">
	                    <div class="IdInput">
				        	<label for="ID">아이디</label>
				            <input type="text" id="ID">
					    </div>
					    <div class="PWInput">
					    	<label for="PW">비밀번호</label>
					        <input type="text" id="PW">
					    </div>
					    <a href="#" class="logInBtn">로그인</a>
					</div>
                </div>
            </div>
        </div>
    </div>
    <script src="/resources/js/escapeFinal.js"></script>
    <script>
    
	    validationLogIn = function(){
			/* if( $.trim($("#name").val()) == "" || $.trim($("#name").val()) == null) {
				alert("데이터를 입력해주십시오.");
				$("#name").focus();
				return false;
			} else {
				// by pass
			} */
		
			myRe = /^[a-z0-9_-]{2,10}$/;
			if( myRe.test($.trim($("#ID").val())) == false ) {
				alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
				$("#ID").focus();
				return false;
			} else {
				$(location).attr("href", "/indexAdmView");
			}
		}
	
	    $(".logInBtn").on("click",function(){
	        if (validationLogIn() == false) return false;
	    });
    </script>

</body>
</html>