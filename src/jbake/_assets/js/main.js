$( document ).ready(function() {
    console.log( "ready!" );

    $( ".js-ajax-link" ).on( "click", function() {
      $('#telegram-link').fadeOut(200);
    });

});

