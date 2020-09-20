$(document).ready(function () {

	//Declare normal variable javascript
	//Hide element when smaller than 1025
	if ($(window).width() < 1025) {
		$(".navbar-primary-menu").fadeIn(function () {
			$(".navbar-primary-menu").css({
				display: "flex"
			});
		});
		$(".contact-wrap").fadeIn(function () {
			$(".contact-wrap").css({
				display: "flex"
			});
		});
		$(".check-status").fadeIn(function () {
			$(".check-status").css({
				display: "flex"
			});
		});
		$(".social-wrap").fadeIn(function () {
			$(".social-wrap").css({
				display: "flex"
			});
		});
	}


	//Library init
	$('[data-fancybox=""]').fancybox({
		smallBtn: true,
		toolbar: true,
		type: "html",
		clickSlide: 'toggleControls',
		buttons: [
			'thumbs',
		],
		thumbs: {
			autoStart: true, // Display thumbnails on opening
			hideOnClose: true, // Hide thumbnail grid when closing animation starts
			parentEl: ".fancybox-container", // Container is injected into this element
			axis: "x" // Vertical (y) or horizontal (x) scrolling
		},
	});
	//Declare function Javascript
	toggleMobileMenu();
	swiperInit();
	mappingMenu();
	mappingContact();
	mappingSocial();
	mappingStatus();
	tabActive();
	toggleWatchMore();
	linkToSection();
	toggleSearch();
	slideGlobal()
	toggleFaq()
	menuToggle();
	toggleBox();
	appendFormHome();
	stickyNav();
	toggleApplyForm();
	toggleSupport();
	AOS.init({
		// Global settings:
		disable: function () {
			var maxWidth = 1024.1;
			return window.innerWidth < maxWidth;
		},
		offset: 120, // offset (in px) from the original trigger point
		delay: 0, // values from 0 to 3000, with step 50ms
		duration: 700, // values from 0 to 3000, with step 50ms
		easing: 'ease', // default easing for AOS animations
		once: true, // whether animation should happen only once - while scrolling down
		mirror: false, // whether elements should animate out while scrolling past them
		anchorPlacement: 'top-bottom', // defines which position of the element regarding to window should trigger the animation

	});

});
window.onscroll = function () {
	fixHeader();
};

function fixHeader() {
	if ($(window).width() > 1025) {
		var timer;
		if (
			document.body.scrollTop > 140 ||
			document.documentElement.scrollTop > 140
		) {
			timer = setTimeout(function () {
				$("header").addClass("translate-top");

				$(".header-2").addClass("show-header");
			}, 300);

		} else {
			clearTimeout(timer);
			timer = setTimeout(function () {
				$("header").removeClass("translate-top");
				$(".header-2").removeClass("show-header");

			}, 300);
		};
	}
}


function stickyNav() {
	if ($(".sticky-navigation").length) {
		$(".sticky-navigation").scrollToFixed({
			zIndex: 99,
			marginTop: 60,

		});
	}


	$(".sticky-navigation a").on("click", function (event) {
		$(this)
			.parents(".sticky-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");
		if (this.hash !== "") {
			let offset =
				$(".header-2").outerHeight() + $(".sticky-navigation").outerHeight();
			var hash = this.hash;
			$("html, body").animate({
					scrollTop: $(hash).offset().top - offset,
				},
				800

			);
		} // End if
	});


}

function toggleApplyForm() {
	$(".apply-form .button-apply a").on("click", function () {
		$(".form-apply").slideToggle();
	});
}

function appendFormHome() {
	if ($(".home-guide-form").length) {
		$('.home-guide-form').appendTo('.services-form .form-wrapper');

	}

	if ($(".news-form-wrapper").length) {
		$('.news-form-wrapper').insertAfter('.news-detail-service').css({
			display: 'block'
		});

	}
}


function toggleSearch() {
	$(".search-toggle").on("click", function (e) {
		$(".searchbox").toggleClass("active");
		e.stopPropagation();
	});
}

function swiperInit() {
	var homerSwiper = new Swiper(".home-banner .swiper-container", {
		// Optional parameters
		slidesPerView: 1,
		speed: 1205,

		autoplay: {
			delay: 3000
		},
		pagination: {
			el: '.home-banner .swiper-pagination',
			type: 'bullets',
		},
	});
	var productThumbs = new Swiper(
		".swiper-service-thumb  .swiper-container", {
			spaceBetween: 30,
			freeMode: false,
			breakpointsInverse: true,
			breakpoints: {
				280: {
					slidesPerView: 1,
					direction: "horizontal",
					spaceBetween: 10,
				},
				576: {
					slidesPerView: 2,
					direction: "horizontal",
					spaceBetween: 10,
				},
				767: {
					slidesPerView: 3,
					direction: "horizontal",

				},
				1025: {
					slidesPerView: 6,
					spaceBetween: 10,
					direction: "vertical"
				},
				1440: {
					slidesPerView: 8,
					spaceBetween: 10,
					direction: "vertical"
				}
			},
			watchSlidesVisibility: true,
			watchSlidesProgress: true,

		}
	);

	var productMain = new Swiper(".swiper-service-top .swiper-container", {
		slidesPerView: 1,
		centeredSlides: true,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		speed: 750,
		loop: false,
		navigation: {
			nextEl: ".swiper-service-top .nav-next",
			prevEl: ".swiper-service-top .nav-prev"
		},
		thumbs: {
			swiper: productThumbs
		}

	});

	var topBanner = new Swiper(".service-4 .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".service-4 .swiper-next",
			prevEl: ".service-4 .swiper-prev"
		}
	});
	var service = new Swiper(".top-banner .swiper-container", {
		// Optional parameters
		speed: 1205,
		slidesPerView: 1,
		autoplay: {
			delay: 3000
		}
	});


	var partner = new Swiper(".swiper-partner .swiper-container", {
		// Optional parameters
		spaceBetween: 0,
		speed: 1205,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 3,
			},
			768: {
				slidesPerView: 4,
			},
			1280: {
				slidesPerView: 5,
			}
		},

		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".swiper-partner .nav-arrow-next",
			prevEl: ".swiper-partner .nav-arrow-prev"
		}
	});
	var home7 = new Swiper(".home-7 .swiper-container", {
		// Optional parameters
		spaceBetween: 30,
		speed: 1205,
		breakpointsInverse: true,
		breakpoints: {
			250: {
				slidesPerView: 1,
			},
			375: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
			}
		},

		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".home-7 .nav-arrow-next",
			prevEl: ".home-7 .nav-arrow-prev"
		}
	});
	var homeMoileSwiper = new Swiper(".home-4 .swiper-container", {
		// Optional parameters
		spaceBetween: 30,
		speed: 1205,
		slidesPerView: 2,
		slidesPerColumn: 2,
		observer: true,
		observeParents: true,
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".home-4 .nav-arrow-next",
			prevEl: ".home-4 .nav-arrow-prev"
		}
	});
	var homeMoileSwiper = new Swiper(".home-4 .swiper-container", {
		// Optional parameters
		spaceBetween: 30,
		speed: 1205,
		slidesPerView: 2,
		slidesPerColumn: 2,
		observer: true,
		observeParents: true,
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".home-4 .nav-arrow-next",
			prevEl: ".home-4 .nav-arrow-prev"
		}
	});
	var cartTypeSwiper = new Swiper(".news-car-type-wrap .swiper-container", {
		// Optional parameters
		spaceBetween: 30,
		speed: 1205,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1280: {
				slidesPerView: 4,
			}
		},
		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".news-car-type-wrap .nav-arrow-next",
			prevEl: ".news-car-type-wrap .nav-arrow-prev"
		}
	});
	var sv8 = new Swiper(".service-8 .swiper-container", {
		// Optional parameters
		spaceBetween: 20,
		speed: 1205,
		breakpointsInverse: true,
		breakpoints: {
			320: {
				slidesPerView: 1,
			},
			768: {
				slidesPerView: 2,
			},
			1025: {
				slidesPerView: 3,
			}
		},

		autoplay: {
			delay: 3000
		},
		navigation: {
			nextEl: ".service-8 .swiper-next",
			prevEl: ".service-8 .swiper-prev"
		}
	});

	var feature = new Swiper(".feature-section .swiper-container", {
		// Optional parameters
		spaceBetween: 20,
		speed: 1205,
		slideCenter: true,
		breakpointsInverse: true,
		breakpoints: {
			576: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
			1200: {
				slidesPerView: 5,
			},
		},
		autoplay: {
			delay: 3000,
			reverseDirection: true,

		},
		navigation: {
			nextEl: ".feature-section .swiper-next",
			prevEl: ".feature-section .swiper-prev",
		},
	});
	var galleryThumbs = new Swiper(".gallery-thumbs", {
		spaceBetween: 30,
		slidesPerView: 5,
		freeMode: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpoints: {
			576: {
				slidesPerView: 2,
			},
			768: {
				slidesPerView: 3,
			},
			1025: {
				slidesPerView: 4,
			},
			1200: {
				slidesPerView: 5,
			},
		},
	});
	var galleryTop = new Swiper(".gallery-top", {
		spaceBetween: 10,
		navigation: {
			nextEl: ".swiper-next",
			prevEl: ".swiper-button-prev",
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});

}


function toggleBox() {
	let arrow = $('.item-checkbox .arrow-toggle')
	arrow.on('click', function () {
		if ($(this).parent().hasClass('active')) {
			$(this).parent().removeClass('active')
			$(this).parent().find('.description').slideUp();
		} else {
			$('.item-checkbox .description').slideUp();
			$('.item-checkbox .content').removeClass('active');
			$(this).parent().addClass('active')
			$(this).parent().find('.description').slideToggle();
		}

	})
}
//Mapping

function mappingMenu() {
	return new MappingListener({
		selector: "header .navbar-primary-menu",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".wrap-bottom",
		desktopMethod: "appendTo",
		breakpoint: 1025
	}).watch();
}

function mappingContact() {
	return new MappingListener({
		selector: ".contact-wrap",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}

function mappingStatus() {
	return new MappingListener({
		selector: ".check-status",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".wrap-bottom",
		desktopMethod: "appendTo",
		breakpoint: 1025
	}).watch();
}

function mappingSocial() {
	return new MappingListener({
		selector: ".social-wrap",
		mobileWrapper: ".mobile-wrapper",
		mobileMethod: "appendTo",
		desktopWrapper: ".language-wrapper",
		desktopMethod: "insertBefore",
		breakpoint: 1025
	}).watch();
}
//Toggle Plugin
function toggleItem() {
	$(".toggle-item > .title").click(function (e) {
		e.preventDefault();
		if (
			!$(this)
			.parent()
			.hasClass("active")
		) {
			$(".toggle-item article").slideUp();
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
		}
	});
}


function menuToggle() {
	$(".drop-down em").click(function (e) {
		e.preventDefault();
		if (!$(this).parent().parent().hasClass("open-first")) {
			$(".drop-down ul").slideUp();
			$(this).parent().next().slideToggle();
			$(".drop-down").removeClass("open-first");
			$(this).parent().parent().addClass("open-first");
		} else {
			$(this).parent().next().slideToggle();
			$(".drop-down").removeClass("open-first");
		}
	});
}
//Toggle watch more
function toggleWatchMore() {

	let button = $(".read-more-wrapper .btn-primary");
	let content = $(".read-more-wrapper article ");
	button.on("click", function () {
		content.toggleClass('active')
	});

}
//Link to section
function linkToSection() {
	if (window.location.hash) {
		var hash = window.location.hash;
		let offset = 100;
		$('html, body').animate({
			scrollTop: $(hash).offset().top - offset
		}, 800, 'linear');
	}
	//Footer scroll to div smooth
	$(".about-zone-navigation a").on('click', function (event) {

		// Make sure this.hash has a value before overriding default behavior
		if (this.hash !== "") {
			// Prevent default anchor click behavior
			let offset = 150;
			// Store hash
			var hash = this.hash;

			// Using jQuery's animate() method to add smooth page scroll
			// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
			$('html, body').animate({
				scrollTop: $(hash).offset().top - offset
			}, 800, function () {

				// Add hash (#) to URL when done scrolling (default click behavior)
				window.location.hash = hash;
			});
		} // End if
	});

}
//Tab active
function tabActive() {
	$(".tab-navigation li a").on("click", function () {
		$(this)
			.parents(".tab-navigation")
			.find("li")
			.removeClass("active");
		$(this)
			.parents("li")
			.addClass("active");

		var display = $(this).attr("data-type");
		$(".tab-item").removeClass("active");
		$("#" + display).addClass("active");
	});
}

//Toggle mobile menu
function toggleMobileMenu() {
	var $hamburger = $(".hamburger");
	$(".main-menu-toggle").on("click", function () {
		$(".mobile-wrapper").toggleClass("active");
		$hamburger.toggleClass("is-active");
	});
}

//swiper
function slideGlobal() {
	var swiper = new Swiper('.giai-phap .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 10,
		autoplay: true,
		speed: 1000,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.giai-phap .swiper-pagination',
			clickable: true,
		},
		navigation: {
			nextEl: '.giai-phap .swiper-next',
			prevEl: '.giai-phap .swiper-prev',
		},
		breakpoints: {
			1024: {
				slidesPerView: 2,
			},
			575: {
				slidesPerView: 1,
			}
		}
	});
	var DoiTac = new Swiper('.doi-tac .swiper-container', {
		slidesPerView: 6,
		spaceBetween: 10,
		autoplay: true,
		speed: 1000,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.doi-tac .swiper-pagination',
			clickable: true,
		},
		navigation: {
			nextEl: '.doi-tac .swiper-next',
			prevEl: '.doi-tac .swiper-prev',
		},
		breakpoints: {
			1024: {
				slidesPerView: 4,
			},
			767: {
				slidesPerView: 3,
			},
			576: {
				slidesPerView: 2,
			}
		}
	});
	var DoiTac2 = new Swiper('.home-h6 .swiper-container', {
		slidesPerView: 4,
		spaceBetween: 10,
		autoplay: true,
		slidesPerColumn: 2,
		speed: 1000,
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
		},
		pagination: {
			el: '.home-h6 .swiper-pagination',
			clickable: true,
		},
		navigation: {
			nextEl: '.home-h6 .swiper-next',
			prevEl: '.home-h6 .swiper-prev',
		},
		breakpoints: {
			1024: {
				slidesPerView: 4,
			},
			767: {
				slidesPerView: 3,
			},
			576: {
				slidesPerView: 2,
			}
		}
	});
}

function toggleFaq() {
	var toggleFaqD = $('.list-question .question-wrapper')
	toggleFaqD.on('click', function () {
		toggleFaqD.find('.reply').slideUp(500)
		if ($(this).hasClass('active')) {
			$(this).removeClass('active')
			$(this).find('.reply').slideUp(500)
		} else {
			toggleFaqD.removeClass('active')
			$(this).addClass('active')
			$(this).find('.reply').slideDown(500)
		}
	})
}

function toggleSupport() {
	$(".toggle-item > .title").click(function (e) {
		e.preventDefault();
		if (
			!$(this)
			.parent()
			.hasClass("active")
		) {
			$(".toggle-item article").slideUp();
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
			$(this)
				.parent()
				.addClass("active");
		} else {
			$(this)
				.next()
				.slideToggle();
			$(".toggle-item").removeClass("active");
		}
	});
}
