<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>portfolio</title>
    
    <!-- 폰트(Noto Sans Korean) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">
    <!-- font-family: 'Noto Sans KR', sans-serif; -->

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/08d3ec3c73.js" crossorigin="anonymous"></script>

    <!-- color thief -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/color-thief/2.3.0/color-thief.umd.js"></script>

    <!-- 제이쿼리 CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <link rel="stylesheet" href="../../resources/css/portfolio.css">
</head>
<body>
    <div class="m_login_bg">
        <div class="login_wrap">
            <h2 class="login_title">로그인</h2>
            <div class="login_input">
                <div class="input_ID user_input">
                    <label for="ID" class="login_input_label">아이디</label>
                    <input type="text" id="ID" placeholder="아이디를 입력하세요.">
                </div>
                <div class="input_PW user_input">
                    <label for="password" class="login_input_label">비밀번호</label>
                    <input type="text" id="password" placeholder="비밀번호를 입력하세요.">
                </div>
            </div>
            <a href="DB" class="login_btn" type="button">다음</a>
        </div>
    </div>

<!--     <script src="../../resource/js/portfolio.js"></script> -->
</body>
</html>