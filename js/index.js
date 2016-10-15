/**
 * Main JS file for Casper behaviours
 */
/*globals jQuery, document */
(function($) {
  "use strict";
  $(document).ready(function() {

    $.ajax({
      type: 'GET',
      url: "https://api-metrika.yandex.ru/stat/v1/data?id=28753121&oauth_token=e174a7a211f74551bb66e6c018c1f27e&pretty=true&metrics=ym:pv:pageviews,ym:pv:users&date1=20150217&date2=today",
      async: false,
      jsonpCallback: 'jsonCallback',
      contentType: "application/json",
      dataType: 'jsonp',
      success: function(json) {
        $('.statistics').text(json.totals[0])
        $('.users').text(json.totals[1])
      }
    });

  });
})(jQuery);
