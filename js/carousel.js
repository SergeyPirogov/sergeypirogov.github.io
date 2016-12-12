/**
 * Main JS file for Casper behaviours
 */
/*globals jQuery, document */
(function($) {
  "use strict";
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
      },
      {
          title: 'SQA Days 20',
          href: '/images/sqa_days_20.jpg'
      }
  ],
  {
          container: '#blueimp-gallery-carousel',
          carousel: true,
          slideshowInterval: 9000
  });

})(jQuery);