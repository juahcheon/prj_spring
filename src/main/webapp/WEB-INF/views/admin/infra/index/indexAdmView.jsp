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
            <div class="header">DASHBOARD</div>
            <div class="didtheme didtheme_full">
                <div class="inner">
                    <div class="title_inner">
                        <div class="did_title">
                            <h4>등록 테마</h4>
                        </div>
                        <div>
                        	<input type="text" class="search_input" placeholder="검색어를 입력하세요.">
                        	<button type="button" class="search_btn">검색</button>
                        </div>
                    </div>
                    
                    <table class="did_theme_table">
                        <thead>
                            <tr>
                                <th scope="col" class="did_num">No.</th>
                                <th scope="col" class="did_date">등록 날짜</th>
                                <th scope="col" class="did_themetitle">제목</th>
                                <th scope="col" class="did_access">장르</th>
                                <th scope="col" class="did_hint">설명</th>
                                <th scope="col" class="did_comm">매장 난이도</th>
                                <th scope="col">코방 평점</th>
                                <th scope="col">장소</th>
                                <th scope="col">지역</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
							    <c:when test="${fn:length(list) eq 0}">
							        <h1 class="text-center" colspan="9">There is no data!</h1>
							    </c:when>
							    <c:otherwise>
							        <c:forEach items="${list}" var="list" varStatus="status">
							            <tr>
							                <td ><c:out value="${list.seq}"></c:out></td>
							                <td><c:out value="${list.code_seq}"></c:out></td>
							                <td><a href="/codeGroupForm?seq=<c:out value = '${list.seq}'/>"><c:out value="${list.name}"></c:out></a></td>
							                <td><c:out value="${list.delNy}"></c:out></td>
							            </tr>
							        </c:forEach>
							    </c:otherwise>
							</c:choose>
                        </tbody>
                    </table>
                        
                    <button class="btn add_btn" type="button">추가</button>
                    
                </div>
            </div>
        </div>
    </div>
    <script src="/resources/js/escapeFinal.js"></script>

</body>
</html>