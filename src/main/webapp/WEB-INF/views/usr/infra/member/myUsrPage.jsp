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

    <link rel="stylesheet" href="/resources/css/calender.css">
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

    <nav class="nav_bar">
        <div class="inner">
            <i class="fa-regular fa-hand-point-right"></i>
            <p class="myescape_nav">MY ESCAPE</p>
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
    <!-- 고정 끝 -->

    <!-- 체험한 테마 추가 -->
    <div class="bg_wrap">
        <div class="prevtheme prevtheme_add">
            <div class="prev_number">
                <p></p>
            </div>
            <button class="prevtheme_exit" type="button">
                <i class="fa-solid fa-xmark"></i>
            </button>
            <div class="prevtheme_contents">
                <div class="prevtheme_img prevtheme_img_input">
                    <img class="preview_img">
                    <p>IMAGE</p>
                    <div class="filebox">
                        <label for="imgfile" class="add_img">첨부</label> 
                        <input type="file" id="imgfile">
                    </div>
                </div>
                
                <div class="prevtheme_text">
                    <input class="prevtheme_title" type="text" placeholder="제목을 입력하세요.">
                    <div class="prevtheme_box">
                        <select name="local" class="prevtheme_local select_bar">
                            <option disabled selected>장소를 고르세요.</option>
                            <option value="keyescape kangnam">키이스케이프 강남</option>
                            <option value="keyescape theoreum">키이스케이프 더오름</option>
                            <option value="keyescape lon_in1">키이스케이프 로그인1</option>
                            <option value="keyescape hongdae">키이스케이프 홍대</option>
                        </select>
                        <select name="personnal" class="prevtheme_personnel select_bar">
                            <option disabled selected>인원</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>
                    <input type="text" class="prevtheme_date prevcalender" placeholder="날짜를 고르세요.">
                    <div class="prevtheme_review">
                        <textarea name="review" class="prevtheme_review_textarea" cols="30" rows="8" spellcheck="false"></textarea>
                    </div>
                    <div class="prevtheme_input">
                        <div class="prevtheme_success">
                            <select name="success" class="select_bar success_bar">
                                <option value="success" selected>성공</option>
                                <option value="fail">실패</option>
                            </select>
                        </div>
                        <div class="prevtheme_timer">
                            <input type="text" class="prevtimer" placeholder="시간">
                        </div>
                        <div class="prevtheme_hints">
                            <input type="number" class="prevhints" placeholder="힌트">
                        </div>
                        <div class="prevtheme_grade">
                            <select name="grade" class="grade_bar select_bar">
                                <option selected disabled>평점</option>
                                <option value="5">5</option>
                                <option value="4.5">4.5</option>
                                <option value="4">4</option>
                                <option value="3.5">3.5</option>
                                <option value="3">3</option>
                                <option value="2.5">2.5</option>
                                <option value="2">2</option>
                                <option value="1.5">1.5</option>
                                <option value="1">1</option>
                                <option value="0.5">0.5</option>
                                <option value="0">0</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <button class="prevtheme_retouch" type="button">수정</button>
        </div>
    </div>

    <!-- 체험한 테마 보기 -->
    <div class="bg_wrap">
        <div class="prevtheme">
            <div class="prev_number">
                <p></p>
            </div>
            <button class="prevtheme_exit" type="button">
                <i class="fa-solid fa-xmark"></i>
            </button>
            <div class="prevtheme_contents">
                <img class="prevtheme_img" src="img/체험사진.jpg" alt="로스트킹덤2">
                <div class="prevtheme_text">
                    <p class="prevtheme_title"></p>
                    <div class="prevtheme_box">
                        <span class="prevtheme_local"></span>
                        <p class="prevtheme_personnel"></p>
                    </div>
                    <div class="prevtheme_date"></div>
                    <div class="prevtheme_review"></div>
                    <div class="prevtheme_input">
                        <div class="prevtheme_success"></div>
                        <div class="prevtheme_timer"></div>
                        <div class="prevtheme_hints"></div>
                        <div class="prevtheme_grade"></div>
                    </div>
                </div>
            </div>
            <button class="prevtheme_retouch" type="button">수정</button>
        </div>
    </div>

    

    <section class="myescape">
        <div class="inner">
            <div class="my_escape">

                <div class="my_left">
                    <div class="inner">
                        <div class="profile">
                            <div class="photo">
                                <img src="img/5bddba7b6574b95d37b6079c199d7101.jpg" alt="프로필 사진">
                                <div class="setting_profile">
                                    <i class="fa-solid fa-gear"></i>
                                </div>
                            </div>
                            <p class="myNickname">천주아</p>

                        </div>

                        <div class="lnb">
                            <ul>
                                <li>테마 예약 알림</li>
                                <li>내가 찜한 테마</li>
                                <a href="did_my_theme.html"><li>체험한 테마</li></a>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="my_right">
                    <div class="inner">
                        <h2 class="myright_title">환영합니다, <p> 주아</p>님.</h2>
                        <a href="#" class="setting_mypage">
                            <i class="fa-solid fa-gear"></i>
                        </a>
                        <c:choose>
							<c:when test="${not empty sessionId}">
								sessionId: <c:out value="${sessionId}"/>
								<button type="button" class="logout_btn">
		                        	<i class="fa-solid fa-arrow-right-from-bracket"></i>
		                        </button>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
                        

                        <!-- 테마 예약 알림 -->
                        <h3 class="reser_title title">테마 예약 알림</h3>
                        <div class="reser_box">
                            <div class='rap'>
                                
                                    <!-- 테마 예약 알림 modal -->
                                    <div class="bg_wrap">
                                        <div class="date_modal">
                                            <div class="inner">
                                                <div class="date_today">
                                                    <p class="date_today_circle">30</p>
                                                </div>
                                                <div class="reser_cont">
                                                    <h4>FILM BY STEVE</h4>
                                                    <div class="cont_detail">
                                                        <p>예약 시간</p>
                                                        <span>21 : 00</span>
                                                    </div>
                                                    <div class="cont_detail">
                                                        <p>체험 시간</p>
                                                        <span>17 : 50</span>
                                                    </div>
                                                    <div class="cont_detail">
                                                        <p>체험 장소</p>
                                                        <span>키이스케이프 메모리컴퍼니</span>
                                                    </div>
                                                    <div class="cont_detail">
                                                        <p>체험 인원</p>
                                                        <span>3인</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                <div class="header">
                                    <div class="btn prevDay"></div>
                                    <h2 class='dateTitle'></h2>
                                    <div class="btn nextDay"></div>
                                </div>
                                
                                <div class="grid dateHead">
                                    <div>SUN</div>
                                    <div>MON</div>
                                    <div>TUE</div>
                                    <div>WED</div>
                                    <div>THU</div>
                                    <div>FRI</div>
                                    <div>SAT</div>
                                </div>
                                <div class="grid dateBoard"></div>
                            </div>
                        </div>

                        <!-- 내가 찜한 테마 -->
                        <h3 class="mytheme_title title">내가 찜한 테마</h3>
                        <div class="mytheme">
                            <div class="inner">
                                <div class="theme_inner">
                                    <div class="theme_cont">
                                        <img src="img/네드.jpg" alt="네드">
                                        <button type="button" class="heart_btn"><i class="fa-solid fa-heart"></i></button>
                                    </div>
                                    <div class="theme_cont">
                                        <img src="img/멸종위기종탐사대.png" alt="멸종위기탐사대">
                                        <button type="button" class="heart_btn"><i class="fa-solid fa-heart"></i></button>
                                    </div>
                                    <div class="theme_cont">
                                        <img src="img/워너고홈.jpg" alt="네드">
                                        <button type="button" class="heart_btn"><i class="fa-solid fa-heart"></i></button>
                                    </div>
                                    
                                    <div class="theme_cont">
                                        <img src="img/디어마이프렌드.jpg" alt="네드">
                                        <button type="button" class="heart_btn"><i class="fa-solid fa-heart"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 체험한 테마 -->
                        <h2 class="didtheme_title title">체험한 테마</h2>
                        <div class="didtheme">
                            <div class="inner">
                                <div class="title_inner">
                                    <div class="did_title">
                                        <h4>체험 테마</h4>
                                        <p class="notice_did">40</p>
                                    </div>
                                    <div class="board_list">
                                        <button type="button">날짜순</button>
                                        <button type="button">평점순</button>
                                        <a href="did_my_theme.html"><i class="fa-solid fa-list"></i></a>
                                    </div>
                                </div>
                                
                                <table class="did_theme_table">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="did_num">No.</th>
                                            <th scope="col" class="did_date">날짜</th>
                                            <th scope="col" class="did_themetitle">제목</th>
                                            <th scope="col" class="did_access">탈출 성공 여부</th>
                                            <th scope="col" class="did_hint">힌트</th>
                                            <th scope="col" class="did_comm">평점</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td scope="row">41</td>
                                            <td>23.02.22(월)</td>
                                            <td>FILM BY STEVE</td>
                                            <td>12분 5초</td>
                                            <td>1 Hint</td>
                                            <td>4.5</td>
                                        </tr>
                                    </tbody>
                                </table>
                                    
                                <button class="btn add_btn" type="button">추가</button>
                                
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
    
    <script src="/resources/js/calender.js"></script>
    <script src="/resources/js/escapeFinal.js"></script>
    <script>
    
	    $(".logout_btn").on("click", function(){
			if( validation() == false ) return false;
	    	
	    	$.ajax({
	    		async: true 
	    		,cache: false
	    		,type: "post"
	    		/* ,dataType:"json" */
	    		,url: "/logoutUsrProc"
	    		/* ,data : $("#formLogin").serialize() */
	    		,data : { }
	    		,success: function(response) {
	    			location.href = "/";
	    		}
	    		,error : function(jqXHR, textStatus, errorThrown){
	    			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    		}
	    	});
	    });
    
        $(".prevcalender").flatpickr({
            dateFormat: "Y-m-d",
        });
        $(".prevtimer").flatpickr({
            enableTime: true,
            noCalendar: true,
            dateFormat: "H:i",
        });
    </script>
</body>
</html>