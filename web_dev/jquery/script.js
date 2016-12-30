console.log("working")

$(document).ready(function() {
    $("nav#links").mouseenter(function() {        
        $("nav#links").fadeTo("fast", .5);
    });
    $("nav#links").mouseleave(function() {        
        $("nav#links").fadeTo("fast", 1);
    });
});