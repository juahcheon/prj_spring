$(function(){

    // 헤더 스크롤 이벤트
    var didscroll;
    var lastScrollTop = 0;
    var delta = 5;
    var headerHeight = $("header").outerHeight();

    $(window).scroll(function(){
        didscroll = true;
    });

    function hasScrolled() {

        var scrollTop = $(this).scrollTop();
        if( Math.abs( lastScrollTop - scrollTop) <= delta ) return;

        if( scrollTop > lastScrollTop && scrollTop > headerHeight ) {
            $("header").addClass("header_up");
            $(".menu_btn").css({opacity: 1});
        } else {
            $("header").removeClass("header_up");
            $(".menu_btn").css({opacity: 0});
        }
        lastScrollTop = scrollTop;
    };
    
    setInterval(function(){
        if(didscroll) {
            hasScrolled();
            didscroll = false;
        }
    }, 300);





    // 테마 예약 일정 modal
    $(".date").on("mouseover", function(){
        if( $(this).find("p").text() == $(".date_today_circle").text() ) {
            $(".date_modal").css({
                opacity: 1,
                "z-index" : 20
            });
            $(".date_modal").parent($(".bg_wrap")).css({
                opacity: 1,
                height : $(".reser_box").outerHeight(),
                "z-index" : 10,
                "border-radius" : 10 + "px"
            });
        } else {
            // by pass
        }
    });

    $(".date").on("mouseout", function(){
        $(".date_modal").css({
            opacity: 0,
            "z-index" : -1
        });
        $(".date_modal").parent($(".bg_wrap")).css({
            opacity: 0,
            "z-index" : -1
        });
    });
    

    if( $(".rap").find(".bg_wrap") ) {
            for(i = 0; i < 32; i++) {
                if ( $(".date_today_circle").text() == $(".date").eq(i).find("p").text() ) {
                    $(".date").eq(i).append("<span class='notice_modal'></span>");
                }
            }
                
            
        } else {
            // by pass
        }
    


    // 내가 찜한 테마 
    $(".heart_btn").each(function(){
        $(this).click(function(){
            
            if ( $(this).find("i").hasClass("fa-solid") ) {
                $(this).empty().append("<i class='fa-regular fa-heart'></i>")
                $(this).parent(".theme_cont").remove();

                
            } else if ( $(this).find("i").hasClass("fa-regular") ) {
                $(this).empty().append("<i class='fa-solid fa-heart'></i>")
            }
        });
    })
    


    // 검색 키워드
    var bodyHeight = $("body").outerHeight();
    $(".search_btn").on("click", function(){
        $(".search").parent($(".bg_wrap")).css({
            opacity: 1,
            height : bodyHeight,
            "z-index" : 10
        });
        $("header").css({
            "z-index" : 9,
            transition : 0
        });
        $(".search").css({
            opacity: 1,
            "z-index" : 100
        });


    });

    $(".search_exit").on("click", function(){
        $(".bg_wrap").css({
            opacity: 0,
            "z-index" : -1
        });
        $("header").css({
            "z-index" : 101
        });
        $(".search").css({
            opacity: 0,
            "z-index" : -1
        });

    });

        
    
    // nav slideRight, slideLeft
    var bodyHeight = $("body").outerHeight();
    $(".menu_click_btn").click(function(){
        $(".nav").css({animation : "slideRight .4s linear both"});
        $(".nav").parent($(".bg_wrap")).css({
            opacity: 1,
            height : bodyHeight,
            "z-index" : 10
        });
        $("header").css({
            "z-index" : 9,
            transition : 0
        });
        $(".menu_btn").hide();
        $(".nav_bar .inner").hide();
        
    });

    $(".menu_exit").click(function(){
        $(".nav").css({animation : "slideLeft .4s linear both"});
        $(".bg_wrap").css({
            opacity: 0,
            "z-index" : -1
        });
        $("header").css({
            "z-index" : 101
        });
        $(".menu_btn").show();
        $(".nav_bar .inner").show();
    });
    
    // nav sub_menu
    $(".sub_menu").hide();
    $(".main_menu>li").click(function(){
        if ($(".main_menu>li").find("ul")) {
            $(".sub_menu").slideUp();
            $(this).find("ul").slideToggle();
            $(this).find("p").css({
                "background-color" : "#6998AB",
                "color" : "#F1F6F9"
            });
            $(this).find(".sub_menu").css("box-shadow", "0 0 10px #406882")
        } else {
            // by pass
        }
    });

    


    // 체험한 테마 추가
    // 이미지 파일 첨부 시 미리보기
    $("#imgfile").on("change", function(event){
        var file = event.target.files[0];
        var reader = new FileReader();

        // 파일명 추출
        var fileValue = $("#imgfile").val().split("\\");
        var fileName = fileValue[fileValue.length-1]; // 파일명


        reader.onload = function(e) {
            $(".preview_img").attr("src", e.target.result);
        }
    
        reader.readAsDataURL(file);

        $(".prevtheme_img p").hide();
    });

    // 확장자가 이미지 파일인지 확인
    function isImageFile(file) {

        var ext = file.name.split(".").pop().toLowerCase(); // 파일명에서 확장자를 가져온다. 

        return ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) === -1) ? false : true;
    }

    // 파일의 최대 사이즈 확인
    function isOverSize(file) {

        var maxSize = 3 * 1024 * 1024; // 3MB로 제한 

        return (file.size > maxSize) ? true : false;
    }

    // select bar
    $(".select_bar, .user_select").on("change", function(){
        $(this).css("color", "black")
    });
    


    // 체험한 테마 추가
    $(".add_btn").on("click", function(){
        $(".prevtheme_add").parent($(".bg_wrap")).css({
            opacity: 1,
            height : bodyHeight,
            "z-index" : 10
        });
        $("header").css({
            "z-index" : 9,
            transition : 0
        });
        $(".prevtheme_add").css({
            opacity: 1,
            "z-index" : 100
        });
    })

    $(".prevtheme_retouch, .prevtheme_exit").on("click", function(){
        $(".bg_wrap").css({
            opacity: 0,
            "z-index" : -1
        });
        $("header").css({
            "z-index" : 101
        });
        $(".prevtheme_add").css({
            opacity: 0,
            "z-index" : -1
        });
    })

    // 테마 예약 시스템
    $(".detail_btn").on("click", function(){
        $(".theme_reser_system").parent($(".bg_wrap")).css({
            opacity: 1,
            height : bodyHeight,
            "z-index" : 10
        });
        $("header").css({
            "z-index" : 9,
            transition : 0
        });
        $(".theme_reser_system").css({
            opacity: 1,
            "z-index" : 100
        });
    })

    $(".theme_reser_exit").on("click", function(){
        $(".bg_wrap").css({
            opacity: 0,
            "z-index" : -1
        });
        $("header").css({
            "z-index" : 101
        });
        $(".search").css({
            opacity: 0,
            "z-index" : -1
        });
    })



    // UI gender 
    $('input[type="radio"]').click(function(){

        if($(this).prop('checked')){
        
            $('input[type="radio"]').prop('checked',false);
        
            $(this).prop('checked',true);
        
        }
        
    });


    var arrMonthName = ["January", "February", "March", "April", "May", "Jun", "July", "August", "September", "October", "November", "December"];
    var arrMonthNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    var arrMonth;


    $(".flatpickr-day").on("click", function(){
        // if($(".cur-month").text() == )
        
    });
    
    


    // 테마 예약 시스템
    $(".theme_reser_plus").on("click", function(){

        

    });
});