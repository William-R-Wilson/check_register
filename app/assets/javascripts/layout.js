$(document).ready(function() {
    $("#navbar li").mouseenter(function() {
    $(this).fadeTo("fast", 0.5);
    });
    $("#navbar li").mouseleave(function() {
    $(this).fadeTo("fast", 1);
    });
});