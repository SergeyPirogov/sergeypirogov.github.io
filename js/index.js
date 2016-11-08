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

  blueimp.Gallery([
      {
          title: 'QA Conference',
          href: '/images/qa_conf.jpg',
      },
      {
          title: 'Selenium Camp 2016',
          href: '/images/sel_camp.jpg',
      },
      {
          title: 'QAFest 2015',
          href: '/images/qa_fest_photo.jpg'
      },
      {
          title: 'QAFest 2016',
          href: '/images/qafest_2016_1.jpg'
      },
      {
          title: 'QAFest 2016',
          href: '/images/qafest_2016_2.jpg'
      },
      {
          title: 'BAQ Conference',
          href: '/images/baq_2016.jpg'
      }
  ],
  {
          container: '#blueimp-gallery-carousel',
          carousel: true,
          slideshowInterval: 9000
  });

})(jQuery);


