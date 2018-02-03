jQuery(document).ready( function() {

    checkContainer();

});

function checkContainer () {
    if($('#your-div').is(':visible')){ //if the container is visible on the page
       /* var refresh = localStorage.getItem('refresh');
        console.log(refresh);
        if (refresh===null){
            window.location.reload();
            localStorage.setItem('refresh', "1");
        }*/
        var status = $('#field-function_purpose').text();
        console.info("status in jS."+status.trim());
        var i=myFunction(status.trim());
            //myFunction(status);
        console.info("status in jS."+i);
        /*$('.progress .circle').removeClass().addClass('circle');
        $('.progress .bar').removeClass().addClass('bar');*/
        var refreshIntervalId = setInterval(function() {
            chageView(i);
            i++;
            var outside = angular.element($('#your-div')).scope();
            console.log(outside)
             outside = angular.element($('#your-div')).scope().ctrl.changeOrderStatus();
            console.log(outside);
            if (i == 0) {
                $('.progress .bar').removeClass().addClass('bar');
                $('.progress div.circle').removeClass().addClass('circle');
                i = 1;
            }
            if(i==6){
                clearInterval(refreshIntervalId);
            }}, 2000);

    } else {
        setTimeout(checkContainer, 50); //wait 50 ms, then try again
    }
}
function myFunction(status) {
    var j = 0;
    var i = 1;
    console.info("cool"+status)
    if(status == "Order Status       : Shipped"){
        j=3;
    } if(status == "Order Status       : OutForDelivery"){
        j=4;
    } if(status == "Order Status       : Delivered"){
        j=5;
    }
    console.log("j=="+j);
    for (;i <j; ) {
        chageView(i);

        i++;

        if (i == 0) {
            $('.progress .bar').removeClass().addClass('bar');
            $('.progress div.circle').removeClass().addClass('circle');
            i = 1;
        }
    }
    console.log("j==="+j);
    return j;
}
function chageView(i){
    $('.progress .circle:nth-of-type(' + i + ')').addClass('active');

    $('.progress .circle:nth-of-type(' + (i - 1) + ')').removeClass('active').addClass('done');

    $('.progress .circle:nth-of-type(' + (i - 1) + ') .label').html('&#10003;');

    $('.progress .bar:nth-of-type(' + (i - 1) + ')').addClass('active');

    $('.progress .bar:nth-of-type(' + (i - 2) + ')').removeClass('active').addClass('done');
}