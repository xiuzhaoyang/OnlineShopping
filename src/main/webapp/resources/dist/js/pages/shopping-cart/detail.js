/**
 * Created by su on 10/15/16.
 */

$(function(){
    var submit = $("#submit").hide();
    var payment = $("#payment").hide();
    $("#continue").click(function(){
        $(this).hide();
        payment.show();
        submit.show();
        $("input.count").prop( "disabled", true );
    });
    submit.click(function(){
        $.ajax("/shopping-cart/complete",{
            type:"POST",
            data:{"test":"aa"},
            success:function(data){
                console.log("test");
            }
        });
    });
}());