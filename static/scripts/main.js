/*
	Name: TuneUP
	Description: Responsive Html5 Template
	Version: 1.0
	Author: themelog
*/

(function($) { "use strict"; 



	// DOCUMENT READY 
	$(document).ready(function(){
		
		
		
		// ------------------------------
		// OWL CAROUSEL
		$(".owl-carousel").owlCarousel({ 
			items : 3, autoPlay: true
		});
		// ------------------------------

		
		
		
		// ------------------------------
		// RESPONSIVE VIDEOS
		$(".media-wrap").fitVids();
		// ------------------------------
		
		
		// ------------------------------
		// FORM VALIDATION
		if($('.validate-form').length) {
			$('.validate-form').each(function() {
					$(this).validate();
				});
		}
		// ------------------------------
		
	
		// ------------------------------
		// RESPONSIVE NAV MENU
		var $menu = $('#menu'),
			$menuToggle = $('.menu-toggle');
		
		// add classes
		$menu.find('li').each(function(index, element) {
			if($(this).children('ul').length) {
				$(this).addClass('has-submenu');
				$(this).prepend('<span class="submenu-toggle"></span>');
			}
		});
		
		var $submenuTrigger = $('.has-submenu > .submenu-toggle');
	
		// menu link click event
		$menuToggle.on( "click", function(e) {
			e.preventDefault();
			$('html').toggleClass('is-menu-toggled-on');
		});
		
		// submenu link click event
		$submenuTrigger.on( "click", function() {
			$(this).parent().toggleClass('active');
			$(this).siblings('ul').toggleClass('active');
		});
		
		// add active class on hover
		$menu.find('li li').on( "hover", function() {
			if($(window).width() > 768) {
				var subMenu = $(this).find('ul:first');
				if(subMenu.length) {
					$(this).find('a').eq(0).addClass("active");
				}
			}
		}, function(e) {  //hover out
			if($(window).width() > 768) {
				$(this).find('a').eq(0).removeClass("active");	
			}	
		});
		// ------------------------------
		
		
		
		// ------------------------------
		/* HEADER SEARCH TOGGLE */
		var searchDelay;
		$('.search-toggle').on( "click", function() {
			$('html').toggleClass('is-search-toggled-on');
			if($('html').hasClass('is-search-toggled-on')) {
				searchDelay = setTimeout(function(){ $('.search-box').find('input').focus() },500)
			} else {
				clearTimeout(searchDelay);	
			}
			$('.search-box').stop().slideToggle(400);
		});
		// ------------------------------
		
				
		
		// ------------------------------
		/* SOCIAL FEED WIDGET */
		var socialFeed = $('.social-feed');
		if(socialFeed.length) {
			socialFeed.each(function() {
				$(this).socialstream({
					socialnetwork: $(this).data("social-network"),
					limit: $(this).data("limit"),
					username: $(this).data("username")
				})
			});	
		}
		// ------------------------------
		
		
		// ------------------------------
		/* jQuery Ajax Mail Send Script */	
		var contactForm = $( '#contact-form' );
		var $submit = contactForm.find('.submit');
		
		contactForm.on( "submit", function()
		{
			if (contactForm.valid())
			{
				$submit.text("SENDING");
				var formValues = contactForm.serialize();
				
				$.post(contactForm.attr('action'), formValues, function(data)
				{
					if ( data == 'success' )
					{
						setTimeout(function() { 
							$submit.text("DONE");
							contactForm.clearForm();
						},1000);
					}
					else
					{
						$submit.text("ERROR");
					}
				});
			}
			
			return false
		});

		$.fn.clearForm = function() {
		  return this.each(function() {
		    var type = this.type, tag = this.tagName.toLowerCase();
		    if (tag == 'form')
		      return $(':input',this).clearForm();
		    if (type == 'text' || type == 'password' || tag == 'textarea')
		      this.value = '';
		    else if (type == 'checkbox' || type == 'radio')
		      this.checked = false;
		    else if (tag == 'select')
		      this.selectedIndex = -1;
		  });
		};
		// ------------------------------
		
		
	});
	// DOCUMENT READY 
	
	
	// WINDOW LOAD 
	$(window).load(function() {
		
		// ------------------------------
		/* FLEXSLIDER */
		$('.flexslider').flexslider({ smoothHeight: true, slideshow: false, animation: "slide" });
		// ------------------------------

	});
	// WINDOW LOAD 
	

})(jQuery);