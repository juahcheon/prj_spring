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
                            <li><a href="/memberList">MEMBER</a></li>
                            <li><a href="/codeGroupList">THEME</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="content">
            <div class="header">DASHBOARD</div>
            <div class="didtheme">
                <div class="inner">
                    <div class="title_inner">
                        <div class="did_title">
                            <div class="card-header">
                            	<h5>Deals Analytics</h5>
                            </div>
                            <div class="card-block">
                            	<g>
                            		
                            	</g>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/resources/js/escapeFinal.js"></script>
    <script>
    	
    </script>

</body>
</html>