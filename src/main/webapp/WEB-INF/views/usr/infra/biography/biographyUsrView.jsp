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

    <link rel="stylesheet" href="/resources/css/portfolio.css">
</head>
<body>
    <div class="wrap">
        <div class="bgimg">
            <div class="bg"></div>
            <ul class="Wallpapers_icon_wrap">
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/trash.webp" alt="휴지통">
                        <figcaption>휴지통</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" class="direct" src="/resources/img/webp/thisPC.webp" alt="내 PC">
                        <figcaption>내 PC</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon maintain_btn">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/control_panel.WebP" alt="제어판">
                        <figcaption>제어판</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon maintain_btn">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/netflix.webp" alt="넷플릭스">
                        <figcaption>넷플릭스</figcaption>
                    </figure>
                </li>
            </ul>
            <ul class="Wallpapers_icon_wrap">
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/word.WebP" alt="word">
                        <figcaption>Word</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/excel.webp" alt="excel">
                        <figcaption>Excel</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/powerpoint.webp" alt="powerpoint">
                        <figcaption>Powerpoint</figcaption>
                    </figure>
                </li>
                <li class="Wallpapers_icon">
                    <figure>
                        <img class="main_img" src="/resources/img/webp/folder_main.webp" alt="내 문서">
                        <figcaption>내 문서</figcaption>
                    </figure>
                </li>
            </ul>
        </div>
        <div class="lnb">
            <div class="left_lnb">
                <button type="button" class="gnb_btn left_btn lnb_hover">
                    <i class="fa-brands fa-windows"></i>
                </button>
                <button type="button" class="search_btn left_btn lnb_hover">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
                <button type="button" class="work_btn left_btn lnb_hover">
                    <img src="img/task-remove.png" alt="작업 보기">
                </button>
            </div>
            <div class="right_lnb">
                <div class="right_icons">
                    <button type="button" class="right_btn lnb_hover">
                        <img src="/resources/img/speaker-remove.png" alt="스피커">
                    </button>
                    <button type="button" class="right_btn lnb_hover">
                        <iconPacks:PackIconModern Kind="ConnectionWifiVariant" />
                    </button>
                    <button type="button" class="right_btn lnb_hover">
                        <img src="/resources/img/speaker-remove.png" alt="스피커">
                    </button>
                </div>
                <div class="timeAndDate lnb_hover">
                    <p></p>
                    <span></span>
                </div>
                <div class="notice_town">
                    <button class="notice_btn lnb_hover" type="button">
                        <img src="img/notice02-remove.png" alt="알림 센터">
                    </button>
                </div>
            </div>
        </div>
    </div>
    

    <script src="/resources/js/portfolio.js"></script>
</body>
</html>