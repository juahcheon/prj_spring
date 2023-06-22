<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DB 툴</title>

    <!-- BootStrap 연결 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


    <!-- CSS 연결 -->
    <link rel="stylesheet" href="../../resources/css/DB_Tool.css">
    

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

    
    <!-- 달력 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</head>
<body>
    
    <!-- 고정 -->
    <header>
        <div class="header_inner">
            <h1>JUAHCHEON</h1>
            <p>JUA Management System</p>
            <div class="profile">
                <div class="pro_photo">
                    <img src="../../resources/img/5bddba7b6574b95d37b6079c199d7101.jpg" alt="프로필 사진">
                </div>
                <div class="pro_text">
                    <span>Juah Cheon</span>
                    <p>Administrator</p>
                </div>
            </div>
            <select class="form-select language" aria-label="Default select example">
                <option selected>언어</option>
                <option value="1">English</option>
                <option value="2">Chinese</option>
                <option value="3">Japanese</option>
            </select>
        </div>
    </header>
    
    <nav class="navbar">
        <div class="nav_container">
            <ul class="navbar_nav">
                <li>
                    <a class="nav_brand" href="#">Navbar</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">회원관리</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">서비스관리</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">사이트관리</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">로그관리</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">시스템관리</a>
                </li>
                <li class="nav_item">
                    <a class="nav_link" href="#">시스템관리</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="section">
        <div class="list-group">
            <ul class="list_wrap">
                <li class="list-group-item list-group-item-action"> 
                    <p>Home</p>
                    <ul class="list_list">
                        <li>
                            <a href="#">lets go</a>
                            <a href="#">home</a>
                            <a href="#">alone</a>
                        </li>  
                    </ul>
                </li>
                <li class="list-group-item list-group-item-action">
                    <p>Dashboard</p>
                    <ul>
                        <li></li>
                    </ul>
                </li>
                <li class="list-group-item list-group-item-action">
                    <p>Orders</p>
                    <ul>
                        <li></li>
                    </ul>
                </li>
                <hr>
                <li class="list-group-item list-group-item-action">
                    <p>Account</p>
                    <ul>
                        <li></li>
                    </ul>
                </li>
            </ul>
        </div>

        <section>
            <h3>국가코드 관리</h3>

    <!-- 고정 끝 -->
    
            <div class="section_search">
                <div class="search_wrap">
                    <select class="form-select search" aria-label="Default select example">
                        <option selected>N</option>
                        <option value="1">20</option>
                        <option value="2">50</option>
                        <option value="3">100</option>
                    </select>
                    <select class="form-select search" aria-label="Default select example">
                        <option selected>날짜</option>
                        <option value="1">20</option>
                        <option value="2">50</option>
                        <option value="3">100</option>
                    </select>
                    <div class="search input-group date">
                        <input type="text" class="form-control calender" placeholder="시작일">
                    </div>
                    <div class="input-group date search">
                        <input type="text" class="form-control calender" placeholder="종료일">
                    </div>
                    <select class="form-select search" aria-label="Default select example">
                        <option selected>10</option>
                        <option value="1">20</option>
                        <option value="2">50</option>
                        <option value="3">100</option>
                    </select>
                    <div class="search">
                        <input type="text" class="form-control">
                    </div>
                    <div class="search_icon">
                        <i class="bi bi-search"></i>
                        <i class="bi bi-arrow-clockwise"></i>
                    </div>
                </div>
            </div>

            <div class="section_wrap">
                <p class="total">Total: </p>
                <select class="form-select" aria-label="Default select example">
                    <option selected>10</option>
                    <option value="1">20</option>
                    <option value="2">50</option>
                    <option value="3">100</option>
                </select>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">
                            <input class="form-check-input checkAll" type="checkbox" value="" id="flexCheckDefault">
                        </th>
                        <th scope="col" class="order">#</th>
                        <th scope="col" class="order_2">Seq</th>
                        <th scope="col" class="country_name">국가 이름</th>
                        <th scope="col" class="country_name_en">국가 이름 (영문)</th>
                        <th scope="col" class="country_code">국가 코드 (2자리)</th>
                        <th scope="col" class="country_code_3">국가 코드 (3자리)</th>
                        <th scope="col" class="use">사용</th>
                        <th scope="col" class="order_2">순서</th>
                        <th scope="col" class="update">등록일</th>
                        <th scope="col" class="amend">수정일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="col">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        </td>
                        <th scope="row" class="order">1</th>
                        <td class="order_2"></td>
                        <td class="country_name"></td>
                        <td class="country_name_en"></td>
                        <td class="country_code"></td>
                        <td class="country_code_3"></td>
                        <td class="use"></td>
                        <td class="order_2"></td>
                        <td class="update"></td>
                        <td class="amend"></td>
                    </tr>
                    <tr>
                        <td scope="col">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        </td>
                        <th scope="row" class="order">2</th>
                        <td class="order_2"></td>
                        <td class="country_name"></td>
                        <td class="country_name_en"></td>
                        <td class="country_code"></td>
                        <td class="country_code_3"></td>
                        <td class="use"></td>
                        <td class="order_2"></td>
                        <td class="update"></td>
                        <td class="amend"></td>
                    </tr>
                    <tr>
                        <td scope="col">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        </td>
                        <th scope="row" class="order">3</th>
                        <td class="order_2"></td>
                        <td class="country_name"></td>
                        <td class="country_name_en"></td>
                        <td class="country_code"></td>
                        <td class="country_code_3"></td>
                        <td class="use"></td>
                        <td class="order_2"></td>
                        <td class="update"></td>
                        <td class="amend"></td>
                    </tr>
                </tbody>
            </table>
            <div class="page">
                <nav aria-label="...">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item" aria-current="page">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">></a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="buttons">
                <div class="delete">
                    <i class="bi bi-x"></i>
                    <!-- <i class="bi bi-trash"></i> -->
                    <i class="bi bi-trash"></i>
                </div>
                <div class="makeNew">
                    <button><i class="bi bi-file-earmark-excel"></i></button>
                    <button type="button"><a href="#"><i class="bi bi-plus"></i></a></button>
                </div>
                <div class="modal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title"></h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <footer>
        <div class="foot_inner">
            <div class="foot_text">
                <p>(주)아컴퍼니</p>
                <p>대표 천주아</p>
                <p>사업자등록번호 202-30-517000</p>
                <p>서울특별시 강남구 테헤란로(에서 일하고싶다)</p>
            </div>
            <span>Copyright 2023. Acompany lnc. all rights reserved</span>
        </div>
    </footer>
    
    <script src="../../resources/js/DB_Tool.js"></script>
    <script>
        $(".calender").flatpickr({
            dateFormat: "Y-m-d H:i",
        });
    </script>
</body>
</html>