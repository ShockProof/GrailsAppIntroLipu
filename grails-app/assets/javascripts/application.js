// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}

$(document).ready(function(){
    $("#addnewperson").click(function(){
        var name = $("#newname").val();
        var email = $("#newemail").val();
        var joiningDay = $("#newjoiningday").val();
        var post = $("#newpost").val();
        
        var URL = $("#addnewperson").attr("data-url");
        
        console.log('in js' + joiningDay);
        
        $.ajax({
            url:URL,
            data:{
                name : name,
                email : email,
                joiningDay : joiningDay,
                post : post
            },
            success:function(response){
                $("#personlist").append(response);
            },
            error:function(response,status,error) {
                console.log(status);
            },
            complete:function(){
                $("#newname").val("");
                $("#newemail").val("");
                $("#newjoiningday").val("");
                $("#newpost").val('Software Engineer');
            }
        });
    });
});