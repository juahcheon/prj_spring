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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="../../resources/css/escapeFinal.css">
</head>
<body>

    <!-- 헤더 -->
    <header>
        <div class="inner">
            <div class="header_left">
                <a class="top_icon menu_click_btn" href="#"><i class="fa-solid fa-bars"></i></a>
                <a class="top_icon" href="#"><i class="fa-solid fa-house"></i></a>
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

    <!-- 예약 일정 & 추천 테마 -->
    <section class="reser_recom">
        <div class="inner">
            <h2>주아님, 환영합니다.</h2>
            <div class="reser_recom_cont">

                <div class="main_reservation">
                    <p class="reser_notice">예약 일정을 확인하세요.</p>
                    <div class="main_reser_inner">
                        <a class="reser_go" href="mypage.html"><i class="fa-solid fa-arrow-right-long"></i></a>
                        <div class="main_reser_cont">
                            <h3>예약 안내</h3>
                            <h2>강남목욕탕</h2>
                            <span>예약까지</span>
                            <div class="reser_date">
                                <p>D - </p>
                                <span>1일 12시간 50분</span>
                            </div>
                            <div class="reser_icon">
                                <a href="#"><i class="fa-solid fa-bell"></i></a>
                                <a href="#"><i class="fa-solid fa-phone"></i></a>
                                <a href="#"><i class="fa-solid fa-ellipsis"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="recommendation">
                    <p class="reser_notice">오늘의 추천 테마를 확인하세요.</p>
                    <div class="recom_theme">
                        <div class="recom_theme_01"></div>
                        <div class="recom_theme_02"></div>
                    </div>
                    <div class="recom_btn">
                        <button type="button">
                            <i class="fa-solid fa-angle-left"></i>
                        </button>
                        <button type="button">
                            <i class="fa-solid fa-angle-right"></i>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- 이달의 테마 -->
    <section class="this_month_theme">
        <div class="inner">

            <!-- 이달의 베스트 테마 -->
            <div class="best_theme_wrap">
                <span class="this_month_theme_title">이달의 <strong>BEST</strong> 테마</span>
                <div class="best_theme">
                    <div class="best_inner">
                        <div class="best_01 best_cont">
                            <p class="text_left">1</p>
                            <img class="img_right" src="img/머니머니패키지.jpg" alt="머니머니패키지">
                        </div>
                        <div class="best_02 best_cont">
                            <img class="img_left" src="img/제로.jpg" alt="제로">
                            <p class="text_right">2</p>
                        </div>
                        <div class="best_03 best_cont">
                            <img class="img_left" src="img/슬래셔.com-resize" alt="슬래셔">
                            <p class="text_right">3</p>
                        </div>
                        <div class="best_04 best_cont">
                            <p class="text_left">4</p>
                            <img class="img_right" src="img/필름바이스티브.jpg" alt="필름바이스티브">
                        </div>
                        <div class="best_05 best_cont">
                            <p class="text_left">5</p>
                            <img class="img_right" src="img/템포루바토.png" alt="템포루바토">
                        </div>
                        <div class="best_06 best_cont">
                            <img class="img_left" src="img/워너고홈.jpg" alt="워너고홈">
                            <p class="text_right">6</p>
                        </div>
                        <div class="best_07 best_cont">
                            <img class="img_left" src="img/필름바이에디.jpg" alt="필름바이에디">
                            <p class="text_right">7</p>
                        </div>
                        <div class="best_08 best_cont">
                            <p class="text_left">8</p>
                            <img class="img_right" src="img/종결사건.jpg" alt="종결사건">
                        </div>
                        <div class="best_09 best_cont">
                            <p class="text_left">9</p>
                            <img class="img_right" src="img/어스.jpg" alt="어스">
                        </div>
                        <div class="best_10 best_cont">
                            <img class="img_left" src="img/그림없는 상자.jpeg" alt="그림없는 상자">
                            <p class="text_right">10</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 이달의 NEW 테마 -->
            <div class="new_theme_wrap">
                <span class="this_month_theme_title">이달의 <strong>NEW</strong> 테마</span>
                <div class="new_theme">
                    <div class="new_inner">
                        <div class="new_left">
                            <img src="img/깜빵탈출.jpg" alt="깜빵탈출">
                            <img src="img/멸종위기종탐사대.png" alt="멸종위기종탐사대">
                            <img src="img/스테이지.jpg" alt="스테이지">
                            <img src="img/테라포밍마스.png" alt="테라포밍마스">
                        </div>
                        <div class="new_right">
                            <img src="img/판도라.png" alt="판도라">
                            <img src="img/2ways.jpg" alt="2ways">
                            <img src="img/디어마이프렌드.jpg" alt="디어마이프렌드">
                            <img src="img/섬.jpg" alt="섬">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 푸터 -->
    <footer>
        <div class="inner">
            <div class="foot_anchor">
                <a href="#">공지사항</a>
                <a href="#">개인정보취급방침</a>
            </div>
            <div class="company">
                <span>상호명 : TEAM ETAL</span>
                <span>대표자 : 천주아</span>
                <span>사업자번호 : 123-45-67891</span>
                <br>
                <span>주소 : 서울특별시 강남구 테헤란로</span>
            </div>
            <p class="copyright">
                COPYRIGHT ⓒ 2023 ETAL. All right reserved. / CREATED BY JUAH.
            </p>
        </div>
    </footer>
    
    <script src="../../resources/js/escapeFinal.js"></script>
</body>
</html>