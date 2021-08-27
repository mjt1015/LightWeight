$(document).ready(function(){
	
	$('.pro_list>a').click(function(){

        var d = $(this).siblings('.sub').css('display');

        if(d == 'block'){
            $(this).siblings('.sub').slideUp();
        }
        else{
            $(this).siblings('.sub').slideDown();
        }
        return false;
    })
    
    $('.way').click(function(){

        var d = $(this).children('.weight_list').css('display');
        
        if(d == 'block'){
            $('.weight_list').slideUp();
        }
        else{
            $('.weight_list').slideUp();
            $(this).children('.weight_list').slideDown();
        }
        return false;
    })
	
})