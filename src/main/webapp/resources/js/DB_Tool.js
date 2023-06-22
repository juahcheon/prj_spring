$(function(){

    // list-group toggle
    var toggleBtn = $(".list_wrap li");
    var pageBtn = $(".page-item");
    var toggleText = $(".list_list").find("li");

    $(".section_wrap").find("p").after(".tr".length);

    toggleText.hide();
    toggleBtn.on("click", function(){
        $(this).toggleClass("active");
        $(this).find("ul li").slideToggle();
    });

    pageBtn.on("click", function(){
        $(this).addClass("active");
        $(".page-item").not(this).removeClass("active");
    });



    var modalBtn = $(".delete .bi-trash");
    modalBtn.on("click", function(){

        $(".modal-title").text("모달창입니다.");
        $(".modal-body").find("p").text("꺼지세요.")
        $(".modal").show();

    });

    


    var btnClose = $(".btn-close");
    var btnClose_02 = $(".btn-secondary")
    btnClose.on("click", function(){
        $(".modal").hide();
    })

    btnClose_02.on("click", function(){
        $(".modal").hide();
    })

    $(".calender").flatpickr(
        {
            dateFormat: "Y-m-d",
        }
    );

// 하기 스크립트 주석 잡고 구동이 될 수 있도록 구현

    // Example starter JavaScript for disabling form submissions if there are invalid fields
    // (() => {  
    //     'use strict'
    
    //     // Fetch all the forms we want to apply custom Bootstrap validation styles to
    //     const forms = document.querySelectorAll('.needs-validation')
    
    //     // Loop over them and prevent submission
    //     Array.from(forms).forEach(form => {
    //     form.addEventListener('submit', event => {
    //         if (!form.checkValidity()) {
    //         event.preventDefault()
    //         event.stopPropagation()
    //         }
    
    //         form.classList.add('was-validated')
    //     }, false)
    //     })
    // })()


    var essential = $("input[required]");
    
    $(".submit_btn").on("click",function(){

        essential.each(function(index, item) {
            if ( $(this).val() === "" ) {
                $(this).addClass("essential_i");
                $(this).parent("li").append(
                    "<p class='noticeText'> <i class='bi bi-exclamation-triangle'></i> 입력해주세요.</p>");
                $(this).parent("li").find("p:not(:first-of-type)").hide();
                
            } else {
                $(this).removeClass("essential_i");
                $(this).parent("li").find("p").empty();
            }
        });

    })
        


    essential.each(function(){

        essential.on("keyup", function(){

            $(this).css({
                "border" : "solid 1px green",
                "box-sizing" : "border-box",
                "box-shadow" : "0 0 10px rgba(0,0,0,.1)",
                "border-radius" : "10px"
            });
            $(this).parent("li").find("p").empty();

        })

        

    })



    $(".checkAll").on("change", function(){
        if( $(".checkAll").is(":checked") ) {
            $("tbody").find("input[type='checkbox']").prop("checked", true);
        } else {
            $("tbody").find("input[type='checkbox']").prop("checked", false);
        }

    })
        
    


})