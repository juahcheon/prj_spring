<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>escapeFinal</title>

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

    <!-- 제이쿼리 CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    
    <!-- 달력 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

    <link rel="stylesheet" href="/resources/css/escapeFinal.css">

</head>
<body>
    <!-- 고정 -->
    <!-- 헤더 -->
    <header>
        <div class="inner">
            <div class="header_left">
                <a class="top_icon menu_click_btn" href="#"><i class="fa-solid fa-bars"></i></a>
                <a class="top_icon" href="index.html"><i class="fa-solid fa-house"></i></a>
            </div>
            
            <a href="index.html"><h1>logo</h1></a>

            <div class="header_right">
                <a class="top_icon" href="mypage.html"><i class="fa-solid fa-user"></i></a>
                <a class="top_icon" href="mypage.html"><i class="fa-solid fa-cart-shopping"></i></a>
                <a class="top_icon search_btn" href="#"><i class="fa-solid fa-magnifying-glass"></i></a>
            </div>
        </div>
    </header>
    <a class="top_btn" href="#">
        <i class="fa-solid fa-arrow-up"></i>
    </a>
    <button class="menu_btn menu_click_btn" type="button">
        <i class="fa-solid fa-bars-staggered"></i>
    </button>

    <div class="bg_wrap">
        <div class="search">
            <div class="inner">
                <input type="text" class="search_bar" placeholder="제목/매장/지역 등을 입력하세요.">
                <button type="button" class="search_enter">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
                <div class="search_key">
                    <ul>
                        <a href="#">
                            <li>🌸꽃길만 걷자🌸</li>
                        </a>
                        <a href="#">
                            <li>👄화끈한 거 없나요?👄</li>
                        </a>
                        <a href="#">
                            <li>🥂 오늘은 감성에 젖고싶다 🥂</li>
                        </a>
                        <a href="#">
                            <li>☠ 몰입도 높은 공포테마 ☠</li>
                        </a>
                        <a href="#">
                            <li>💗연인과 함께💗</li>
                        </a>
                        <a href="#">
                            <li>🔒문제 많이 주세요🔒</li>
                        </a>
                        <a href="#">
                            <li>❓방탈출은 처음인데 뭘 해야할지 모르겠다..</li>
                        </a>
                    </ul>
                </div>
                <button class="search_exit" type="button">
                    <i class="fa-solid fa-xmark"></i>
                </button>
            </div>
        </div>
    </div>
    <!-- 고정 끝 -->

    <nav class="nav_bar">
        <div class="inner">
            <i class="fa-regular fa-hand-point-right"></i>
            <p class="myescape_nav">LogIn</p>
        </div>
    </nav>

    <!-- 네비게이션 -->
    <div class="bg_wrap">
        <nav class="nav">
            <button class="menu_exit" type="button">
                <i class="fa-solid fa-xmark"></i>
            </button>
            <div class="inner">
                
                <ul class="main_menu">
                    <li><a href="theme_detail.html"><p>ESCAPE THEME</p></a></li>
                    <li>
                        <p>ESCAPE CAFE</p>
                        <ul class="sub_menu">
                            <li><a href="location.html">지도로 보기</a></li>
                            <li><a href="mypage.html">예약 정보 확인</a></li>
                        </ul>
                    </li>
                    <li>
                        <p>MY ESCAPE</p>
                        <ul class="sub_menu">
                            <li><a href="mypage.html">테마 예약 알림</a></li>
                            <li><a href="mypage.html">내가 찜한 테마</a></li>
                            <li><a href="did_my_theme.html">체험한 테마</a></li>
                            <li><a href="user_interface.html">개인정보 등록</a></li>
                        </ul>
                    </li>
                    <li><a href="https://colory.mooo.com/bba/ranking"><p>코방 바로가기</p></a></li>
                </ul>
            </div>
        </nav>
    </div>
    
    <div class="logIn_wrap">
        <div class="logIn_inner">
            <div class="inner">
                <h3 class="UI_title">로그인</h3>
                <div class="user_login_text">
                    <div class="UI_wrap user_ID">
                        <label class="user_label" for="ID">아이디</label>
                        <input class="user_input" type="text" id="ID" spellcheck="false">
                    </div>
                    <div class="UI_wrap user_nick">
                        <label class="user_label" for="PW">비밀번호</label>
                        <input class="user_input" type="password" id="PW" spellcheck="false">
                    </div>
                </div>
            </div>
            <div class="login_btns">
                <button type="button" class="login_btn">로그인</button>
                <a href="#" class="login_btn">회원가입</a>
            </div>
        </div>
    </div>

    <script src="/resources/js/escapeFinal.js"></script>
    <script>
    $(".login_btn").on("click", function(){
		if( validation() == false ) return false;
    	
    	$.ajax({
    		async: true 
    		,cache: false
    		,type: "post"
    		/* ,dataType:"json" */
    		,url: "/loginProc"
    		/* ,data : $("#formLogin").serialize() */
    		,data : { "ID" : $("#ID").val(),
    			"PW" : $("#PW").val()}
    		,success: function(response) {
    			if(response.rt == "success") {
    				alert(response.rtMember.name);
    				location.href = "/indexAdmView";
    			} else {
    				alert("그런 회원 없습니다.");
    			}
    		}
    		,error : function(jqXHR, textStatus, errorThrown){
    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    		}
    	});
    });
    	
    	
    validation = function() {
		// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
		// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	}
    </script>
</body>
</html>