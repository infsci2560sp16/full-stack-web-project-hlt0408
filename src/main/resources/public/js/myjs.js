$(document).ready(function(){
    $("#mycarousel").carousel( { interval: 2000 } );
    $("#carousel-pause").click(function(){
        $("#mycarousel").carousel('pause');
    });
    $("#carousel-play").click(function(){
        $("#mycarousel").carousel('cycle');
    });
    $("#loginButton").click(function(){
    	$("#loginModal").modal("show");
    });
    $("#registerButton").click(function(){
    	$("#registerModal").modal("show");
    });
    
    /* home and business user see different buttons */
    $("#marriage_status").hide();
    $("#gender").hide();
    $("#age").hide();
    $("#income").hide();
    $("#business_category").hide();
    $("#business_income").hide();
    $("#homeuser").click(function(){
    	$("#marriage_status").show();
    	$("#gender").show();
    	$("#age").show();
    	$("#income").show();
    	$("#business_category").hide();
    	$("#business_income").hide();
    });
    $("#businessuser").click(function(){
    	$("#marriage_status").hide();
    	$("#gender").hide();
    	$("#age").hide();
    	$("#income").hide();
    	$("#business_category").show();
    	$("#business_income").show();
    });

    
});



