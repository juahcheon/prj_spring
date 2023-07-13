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
    
    <!-- BootStrap CDN -->
<!--     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
    
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
                            <li><a href="/indexAdmView">DASHBOARD</a></li>
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
            <div class="header">MEMBER</div>
            <div class="didtheme">
                <div class="inner">
                    <div class="title_inner">
                        <div class="did_title">
                            <h4>등록 테마</h4>
                        </div>
                    </div>
                    
                    <form name="formList" action="" method="post">
                    
	                    <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
						
	                    <div>
	                      	<input type="text" class="search_input" placeholder="검색어를 입력하세요." name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
	                        <button type="button" class="search_btn">검색</button>
	                        <select name="paging" id="paging">
						        <option value="10">10</option>
						        <option value="20">20</option>
						        <option value="30">30</option>
						    </select>
	                    </div>
	                    
	                    <table class="did_theme_table">
	                        <thead>
	                            <tr>
	                                <th scope="col" class="did_num">seq</th>
	                                <th scope="col" class="did_date">ID</th>
	                                <th scope="col" class="did_themetitle">PW</th>
	                                <th scope="col" class="did_access">닉네임</th>
	                                <th scope="col" class="did_hint">성별</th>
	                                <th scope="col" class="did_comm">장르</th>
	                                <th scope="col">지역</th>
	                                <th scope="col">장소</th>
	                                <th scope="col">지역</th>
	                            </tr>
	                        </thead>
	                        <tbody class="indexAdmViewTbody">
	                            <c:choose>
								    <c:when test="${fn:length(list) eq 0}">
								    	<td class="text-center" colspan="3">There is no data!</td>
								    </c:when>
								    <c:otherwise>
								        <c:forEach items="${list}" var="list" varStatus="status">
								            <tr>
								                <td><c:out value="${list.seq}"></c:out></td>
								                <td><a href="/memberAdmForm?seq=<c:out value = '${list.seq}'/>"><c:out value="${list.id}"></c:out></a></td>
								                <td><c:out value="${list.password}"></c:out></td>
								                <td><c:out value="${list.nickName}"></c:out></td>
								                <td><c:out value="${list.gender}"></c:out></td>
								                <td><c:out value="${list.genre}"></c:out></td>
								                <td><c:out value="${list.local}"></c:out></td>
								                <td></td>
								                <td></td>
								            </tr>
								        </c:forEach>
								    </c:otherwise>
								</c:choose>
	                        </tbody>
	                    </table>
	                    <a href="/memberAdmForm" class="btn add_btn">추가</a>
                    </form>
                    <div class="paging">
                    	<!-- <ul>
                    		<li><a>&lt;</a></li>
                    		<li><a href="#">1</a></li>
                    		<li><a href="#">2</a></li>
                    		<li><a href="#">3</a></li>
                    	</ul> -->

						<ul class="pagination justify-content-center mb-0">
						               <li class="page-item"><a class="page-link" href="javascript:goList(${vo.thisPage-1})">&lt;</a></li>
							<c:if test="${vo.startPage gt vo.pageNumToShow}">
						                <%-- <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})">&lt;</a></li> --%>
							</c:if>
							<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
							<c:choose>
								<c:when test="${i.index eq vo.thisPage}">
						                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:when>
								<c:otherwise>             
						                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:otherwise>
							</c:choose>
							</c:forEach>                
						<c:if test="${vo.endPage ne vo.totalPages}">                
						              	<%-- <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})">&gt;</a></li> --%>
						</c:if>
						                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.thisPage+1})">&gt;</a></li>
						</ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/resources/js/escapeFinal.js"></script>
    <script>
		$(".add_btn").on("click", function(){
			$("form[name=formList]").attr("action","/indexAdmView");
		});
    	
    	$(".search_btn").on("click", function(){
    		// $("form[name=formList]").attr("method","get");
    		$("form[name=formList]").attr("action","/memberList").submit();
    	});
    	
    	goList = function(thisPage) {
    		 if(thisPage == 0) {
    		        $("input:hidden[name=thisPage]").val(1);
    		        $("form[name=formList]").attr("action", "/memberList").submit();
    		    } else if(thisPage > ${vo.totalPages}){
    		        $("input:hidden[name=thisPage]").val(thisPage - 1);
    		        $("form[name=formList]").attr("action", "/memberList").submit();
    		    } else {
    		        $("input:hidden[name=thisPage]").val(thisPage);
    		        $("form[name=formList]").attr("action", "/memberList").submit();
    		    }
    	}
    	
    	
    </script>

</body>
</html>