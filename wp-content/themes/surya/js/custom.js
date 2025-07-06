(function($) {
    
    "use strict";

          

        //Update Scroll to Top
        function headerStyle() {
          if($('.main-header').length){
            var mainHeader = $('.main-header').height();
            var windowpos = $(window).scrollTop();
            if (windowpos >= 200) {
              $('.bounce-in-header').addClass('now-visible');
              $('.scroll-to-top').fadeIn(300);
            } else {
              $('.bounce-in-header').removeClass('now-visible');
              $('.scroll-to-top').fadeOut(300);
            }
          }
        }
        
        headerStyle();        
        
        //Submenu Dropdown Toggle
        if($('.main-header li.dropdown ul').length){
          $('.main-header li.dropdown').append('<div class="dropdown-btn"></div>');
          
          //Dropdown Button
          $('.main-header li.dropdown .dropdown-btn').on('click', function() {
            $(this).prev('ul').slideToggle(500);
          });
        } 

  
    $(window).on('scroll', function() {
        headerStyle();
    });
  

  

	
	//============= animation section ============  
		 if($('.wow').length){
			var wow = new WOW(
			  {
				boxClass:     'wow',      
				animateClass: 'animated', 
				offset:       0,          
				mobile:       true,       
				live:         true       
			  }
			);
			wow.init();
		}

	
	
})(window.jQuery);

