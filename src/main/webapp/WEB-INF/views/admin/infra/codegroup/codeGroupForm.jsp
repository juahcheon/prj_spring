<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<form name="subForm">
    <input name="seq" id="seq" value="<c:out value="${item.seq}"/>" /><br>
    <input placeholder="name" name="name" id="name" value="<c:out value="${item.name}"/>"/>
    <button id="saveBtn">Save</button>
    <button id="makeBtn">Create</button>
    <button  id="delBtn">Delete</button>
</form>

<br>
<br>
<button  id="btn2">Search</button>

<script src="/resources/js/jquery-3.7.0.slim.min.js"></script>
<script type="text/javascript">


	validationInst = function(){
		if(validation == false) return false;
	}

	validationUpdt = function(){
		
		if($.trim( $("#name") == null || $("#name") == "" ) ) {
			alert("데이터를 입력하세요.");
		}
		
	}

    $("#saveBtn").on("click",function(){
        // 자기 자신을 호출할 때
        console.log("savehey");
        $("form[name=subForm]").attr("action","/codeGroupUpdt").submit();
    });

    $("#delBtn").on("click",function(){
        $("form[name=subForm]").attr("action","/codeGroupDelt").submit();
    });
    $("#makeBtn").on("click",function(){
    	if (validationInst() == false) return false;
        $("form[name=subForm]").attr("action","/codeGroupNsrt").submit();
    });
</script>