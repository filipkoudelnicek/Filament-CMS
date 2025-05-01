

/*----Default JS INDEXING

    01.swiperJs();
    02.progressAvtivation();
    03.wowActive();
    04.counterUp();
    05.backToTopInit();
    06.tmpSidecollups();
    07.tmpVedioActivation();
    08.salActive();
    09.stickyHeader();
    10.preloader();
    11.smoothScroll();
    12.selectLanguage();
    13.title_animation();
    14.menuCurrentLink();
    15.selectLanguage();


----*/


(function ($) {
    'use strict';
    gsap.registerPlugin(ScrollTrigger, TweenMax, ScrollToPlugin);
    let device_width = window.innerWidth;
    var tmPk = {
        m: function (e) {
            tmPk.d();
            tmPk.methods();
        },
        d: function (e) {
            this._window = $(window),
            this._document = $(document),
            this._body = $('body'),
            this._html = $('html')
        },
        methods: function (e) {
            tmPk.swiperJs();
            //tmPk.progressAvtivation();
            tmPk.wowActive();
            tmPk.counterUp();
            tmPk.backToTopInit();
            tmPk.tmpSidecollups();
            tmPk.tmpVedioActivation();
            tmPk.salActive();
            tmPk.stickyHeader();
            //tmPk.preloader();
            tmPk.smoothScroll();
            tmPk.title_animation();
            tmPk.menuCurrentLink();
            tmPk.mesonaryIsotop();
            tmPk.gsapAnimationImageScale();
            tmPk.rollingText();
            tmPk.counterJumpanimation();
            tmPk.gsapAnimationImageScale2();
        },

        swiperJs: function () {
            $(document).ready(function(){
                var swiper = new Swiper(".mySwiper-banner-one", {
                    spaceBetween: 0,
                    slidesPerView: 1,
                    speed: 500,
                    effect: 'slide',
                    fadeEffect: {
                        crossFade: true
                    },
                    loop: true,
                    navigation: {
                      nextEl: ".swiper-button-next",
                      prevEl: ".swiper-button-prev",
                    },
                });
            });

            $(document).ready(function(){
                var swiper = new Swiper(".mySwiper-banner-one-construction", {
                    spaceBetween: 0,
                    slidesPerView: 1,
                    effect: 'fade',
                    speed: 500,
                    fadeEffect: {
                        crossFade: true
                    },
                    pagination: {
                      el: '.swiper-pagination',
                      clickable: true,
                    },
                    loop: true,
                    navigation: {
                      nextEl: ".swiper-button-next",
                      prevEl: ".swiper-button-prev",
                    },
                });
            });

            $(document).ready(function() {
                // Swiper: Slider
                    new Swiper('.swiper-container-style-two', {
                        loop: true,
                        navigation: {
                            nextEl: ".swiper-button-next",
                            prevEl: ".swiper-button-prev",
                        },
                        slidesPerView: 2,
                        paginationClickable: true,
                        spaceBetween: 20,
                        breakpoints: {
                            1920: {
                                slidesPerView: 2,
                                spaceBetween: 30
                            },
                            1028: {
                                slidesPerView: 2,
                                spaceBetween: 30
                            },
                            480: {
                                slidesPerView: 1,
                                spaceBetween: 10
                            },
                            0: {
                                slidesPerView: 1,
                                spaceBetween: 10
                            }
                        }
                    });
            });
            $(document).ready(function() {
                // Swiper: Slider
                    new Swiper('.mySwiper-recent-product', {
                        loop: true,
                        navigation: {
                            nextEl: ".swiper-button-next",
                            prevEl: ".swiper-button-prev",
                        },
                        slidesPerView: 3,
                        paginationClickable: true,
                        spaceBetween: 20,
                        breakpoints: {
                            1920: {
                                slidesPerView: 3,
                                spaceBetween: 30
                            },
                            1028: {
                                slidesPerView: 2,
                                spaceBetween: 30
                            },
                            480: {
                                slidesPerView: 1,
                                spaceBetween: 10
                            },
                            0: {
                                slidesPerView: 1,
                                spaceBetween: 10
                            }
                        }
                    });
            });

            $(document).ready(function() {
              var Swipes = new Swiper('.swiper-container-three', {
                effect: 'fade',
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },

                loop: true,
                speed: 2000,
                autoplay: {
                  delay: 6000,
                 },
              });
            });

            $(document).ready(function () {
              var swiper = new Swiper(".mySwiper-portfolio-1", {
                slidesPerView: 5,
                spaceBetween: 30,
                loop: true,
                centeredSlides: true,
                speed: 2000,
                autoplay: {
                  delay: 3000,
                  disableOnInteraction: false,
                },
                // loopFillGroupWithBlank: true,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
                breakpoints: {
                  1500: {
                    slidesPerView: 5,
                  },
                  1199: {
                    slidesPerView:3,
                  },
                  991: {
                    slidesPerView: 3,
                  },
                  767: {
                    slidesPerView: 2,
                  },
                  575: {
                    slidesPerView: 1,
                  },
                  0: {
                    slidesPerView: 1,
                  }
                },
              });
            });
            $(document).ready(function () {
              var swiper = new Swiper(".mySwiper-portfolio-2-cons", {
                slidesPerView: 4,
                spaceBetween: 30,
                loop: true,
                centeredSlides: true,
                speed: 2000,
                autoplay: {
                  delay: 3000,
                  disableOnInteraction: false,
                },
                // loopFillGroupWithBlank: true,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
                breakpoints: {
                  1500: {
                    slidesPerView: 4,
                  },
                  1199: {
                    slidesPerView:3,
                  },
                  991: {
                    slidesPerView: 3,
                  },
                  767: {
                    slidesPerView: 2,
                  },
                  575: {
                    slidesPerView: 1,
                  },
                  0: {
                    slidesPerView: 1,
                  }
                },
              });
            });
            $(document).ready(function () {
              var swiper = new Swiper(".swiper-startup-banner", {
                slidesPerView: 1,
                spaceBetween: 0,
                loop: true,
                centeredSlides: true,
                speed: 500,
                autoplay: {
                  delay: 5000,
                  disableOnInteraction: false,
                },
                // loopFillGroupWithBlank: true,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
              });
            });
            $(document).ready(function () {
              var swiper = new Swiper(".swiper-startup-banner-construction", {
                slidesPerView: 1,
                spaceBetween: 0,
                loop: true,
                centeredSlides: true,
                speed: 500,
                effect: 'fade',
                // autoplay: {
                //   delay: 5000,
                //   disableOnInteraction: false,
                // },
                // loopFillGroupWithBlank: true,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
              });
            });
            $(document).ready(function () {
              var swiper = new Swiper(".my-swiper-product-details", {
                slidesPerView: 1,
                spaceBetween: 0,
                loop: true,
                centeredSlides: true,
                speed: 500,
                autoplay: {
                  delay: 5000,
                  disableOnInteraction: false,
                },
                // loopFillGroupWithBlank: true,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
                },
                navigation: {
                  nextEl: ".swiper-button-next",
                  prevEl: ".swiper-button-prev",
                },
              });
            });

        },

        // prograss bar Start
        progressAvtivation: function(){
            $(window).scroll(function () {
              if ($(this).scrollTop() > 250) {
                var bars = document.querySelectorAll('.meter > span');
                console.clear();
                setInterval(function(){
                  bars.forEach(function(bar){
                    var getWidth = parseFloat(bar.dataset.progress);
                    for(var i = 0; i < getWidth; i++) {
                      bar.style.width = i + '%';
                    }
                  });
                }, 100);
              }
            })
        },

        wowActive: function () {
            new WOW().init();
        },

        // prograss bar End
        counterUp: function (e) {
          $('.counter').counterUp({
              delay: 10,
              time: 1000
            });
            $('.counter').addClass('animated fadeInDownBig');
            $('h3').addClass('animated fadeIn');
        },

        backToTopInit: function () {
          $(document).ready(function(){
          "use strict";

          var progressPath = document.querySelector('.progress-wrap path');
          var pathLength = progressPath.getTotalLength();
          progressPath.style.transition = progressPath.style.WebkitTransition = 'none';
          progressPath.style.strokeDasharray = pathLength + ' ' + pathLength;
          progressPath.style.strokeDashoffset = pathLength;
          progressPath.getBoundingClientRect();
          progressPath.style.transition = progressPath.style.WebkitTransition = 'stroke-dashoffset 10ms linear';
          var updateProgress = function () {
            var scroll = $(window).scrollTop();
            var height = $(document).height() - $(window).height();
            var progress = pathLength - (scroll * pathLength / height);
            progressPath.style.strokeDashoffset = progress;
          }
          updateProgress();
          $(window).scroll(updateProgress);
          var offset = 50;
          var duration = 550;
          jQuery(window).on('scroll', function() {
            if (jQuery(this).scrollTop() > offset) {
              jQuery('.progress-wrap').addClass('active-progress');
            } else {
              jQuery('.progress-wrap').removeClass('active-progress');
            }
          });
          jQuery('.progress-wrap').on('click', function(event) {
            event.preventDefault();
            jQuery('html, body').animate({scrollTop: 0}, duration);
            return false;
          })


          });

        },

        tmpSidecollups:function(){
          $('#mobile-menu-active').metisMenu();
          $(document).on('click', '#side-collups', function () {
            $("#side-hide").addClass("show");
            $("#overlay_every-where").addClass("bgshow");
          });
          $(document).on('click', '#close-slide__main', function () {
            $("#side-hide").removeClass("show");
            $("#overlay_every-where").removeClass("bgshow");
          });
          $(document).on('click', '#overlay_every-where', function () {
            $("#side-hide").removeClass("show");
            $("#overlay_every-where").removeClass("bgshow");
          });
          // for onepage mobile menu item
          $(document).on('click', '.onepage .mainmenu li a', function () {
            $("#side-hide").removeClass("show");
            $("#overlay_every-where").removeClass("bgshow");
          });
        },

        tmpVedioActivation: function (e) {

            $('.play-video').on('click', function (e) {
                e.preventDefault();
                $('.video-overlay').addClass('open');
                $(".video-overlay").append('<iframe width="560" height="515" src="https://www.youtube.com/embed/8NJWZpC51Tg?si=Wu_uoN3F0HADlEQp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>');
            });

            $('.video-overlay, .video-overlay-close').on('click', function (e) {
                e.preventDefault();
                close_video();
            });

            $(document).keyup(function (e) {
                if (e.keyCode === 27) {
                    close_video();
                }
            });

            function close_video() {
                $('.video-overlay.open').removeClass('open').find('iframe').remove();
            };

        },

        salActive: function () {
          sal({
              threshold: 0.1,
              once: true,
          });
        },

        // sticky header activation
        stickyHeader: function (e) {
          $(window).scroll(function () {
              if ($(this).scrollTop() > 150) {
                  $('.header--sticky').addClass('sticky')
              } else {
                  $('.header--sticky').removeClass('sticky')
              }
          })
        },

        preloader:function(){

          $(window).on("load", function () {
            var body = $('body');
            body.addClass('loaded');
            setTimeout(function () {
                body.removeClass('loaded');
            }, 1500);

          });


          const svg = document.getElementById("svg");
          const tl = gsap.timeline();
          const curve = "M0 502S175 272 500 272s500 230 500 230V0H0Z";
          const flat = "M0 2S175 1 500 1s500 1 500 1V0H0Z";

          tl.to(".loader-wrap-heading .load-text , .loader-wrap-heading .cont", {
              delay: 1.5,
              y: -100,
              opacity: 0,
          });
          tl.to(svg, {
              duration: 0.5,
              attr: { d: curve },
              ease: "power2.easeIn",
          }).to(svg, {
              duration: 0.5,
              attr: { d: flat },
              ease: "power2.easeOut",
          });
          tl.to(".loader-wrap", {
              y: -1500,
          });
          tl.to(".loader-wrap", {
              zIndex: -1,
              display: "none",
          });
          // tl.from(
          //     "header",
          //     {
          //         y: 200,
          //     },
          //     "-=1.5"
          // );
          // tl.from(
          //     "header .container",
          //     {
          //         y: 40,
          //         opacity: 0,
          //         delay: 0.3,
          //     },
          //     "-=1.5"
          // );


        },

        smoothScroll: function (e) {
          $(document).on('click', '.onepage a[href^="#"]', function (event) {
            event.preventDefault();

            $('html, body').animate({
                scrollTop: $($.attr(this, 'href')).offset().top
            }, 2000);
          });
        },

        title_animation: function () {
          if (device_width > 991) {
            gsap.registerPlugin(ScrollTrigger);
            gsap.registerPlugin(SplitText);

            $(document).ready(function () {
              let addAnimation = function () {
                $(".split-collab").each(function (index) {
                  const textInstance = $(this);
                  const text = new SplitText(textInstance, {
                    type: "chars",
                  });

                  let letters = text.chars;

                  let tl = gsap.timeline({
                    scrollTrigger: {
                      trigger: textInstance,
                      start: "top 85%",
                      end: "top 85%",
                      onComplete: function () {
                        textInstance.removeClass(".split-collab");
                      }
                    }
                  });

                  tl.set(textInstance, { opacity: 1 }).from(letters, {
                    duration: .5,
                    autoAlpha: 0,
                    x: 50,
                    // scaleY: 0,
                    // skewX: 50,
                    stagger: { amount: 1 },
                    ease: "back.out(1)"
                  });
                });
              };

              addAnimation();

              window.addEventListener("resize", function (event) {
                if ($(window).width() >= 992) {
                  addAnimation();
                }
              });

            });
          }
        },

        menuCurrentLink: function () {
          var currentPage = location.pathname.split("/"),
          current = currentPage[currentPage.length-1];
          $('.parent-nav li a').each(function(){
              var $this = $(this);
              if($this.attr('href') === current){
                  $this.addClass('active');
                  $this.parents('.has-dropdown').addClass('menu-item-open')
              }
          });
        },

        selectLanguage: function(){
          function Util() {};
Util.hasClass = function(el, className) {
    if (el.classList) return el.classList.contains(className);
    else return !!el.className.match(new RegExp('(\\s|^)' + className + '(\\s|$)'));
};
Util.addClass = function(el, className) {
    var classList = className.split(' ');
    if (el.classList) el.classList.add(classList[0]);
    else if (!Util.hasClass(el, classList[0])) el.className += " " + classList[0];
    if (classList.length > 1) Util.addClass(el, classList.slice(1).join(' '));
};
Util.removeClass = function(el, className) {
    var classList = className.split(' ');
    if (el.classList) el.classList.remove(classList[0]);
    else if (Util.hasClass(el, classList[0])) {
        var reg = new RegExp('(\\s|^)' + classList[0] + '(\\s|$)');
        el.className = el.className.replace(reg, ' ');
    }
    if (classList.length > 1) Util.removeClass(el, classList.slice(1).join(' '));
};
Util.toggleClass = function(el, className, bool) {
    if (bool) Util.addClass(el, className);
    else Util.removeClass(el, className);
};
Util.setAttributes = function(el, attrs) {
    for (var key in attrs) {
        el.setAttribute(key, attrs[key]);
    }
};
Util.getChildrenByClassName = function(el, className) {
    var children = el.children,
        childrenByClass = [];
    for (var i = 0; i < el.children.length; i++) {
        if (Util.hasClass(el.children[i], className)) childrenByClass.push(el.children[i]);
    }
    return childrenByClass;
};
Util.is = function(elem, selector) {
    if (selector.nodeType) {
        return elem === selector;
    }
    var qa = (typeof(selector) === 'string' ? document.querySelectorAll(selector) : selector),
        length = qa.length,
        returnArr = [];
    while (length--) {
        if (qa[length] === elem) {
            return true;
        }
    }
    return false;
};
Util.setHeight = function(start, to, element, duration, cb) {
    var change = to - start,
        currentTime = null;
    var animateHeight = function(timestamp) {
        if (!currentTime) currentTime = timestamp;
        var progress = timestamp - currentTime;
        var val = parseInt((progress / duration) * change + start);
        element.style.height = val + "px";
        if (progress < duration) {
            window.requestAnimationFrame(animateHeight);
        } else {
            cb();
        }
    };
    element.style.height = start + "px";
    window.requestAnimationFrame(animateHeight);
};
Util.scrollTo = function(final, duration, cb) {
    var start = window.scrollY || document.documentElement.scrollTop,
        currentTime = null;
    var animateScroll = function(timestamp) {
        if (!currentTime) currentTime = timestamp;
        var progress = timestamp - currentTime;
        if (progress > duration) progress = duration;
        var val = Math.easeInOutQuad(progress, start, final - start, duration);
        window.scrollTo(0, val);
        if (progress < duration) {
            window.requestAnimationFrame(animateScroll);
        } else {
            cb && cb();
        }
    };
    window.requestAnimationFrame(animateScroll);
};
Util.moveFocus = function(element) {
    if (!element) element = document.getElementsByTagName("body")[0];
    element.focus();
    if (document.activeElement !== element) {
        element.setAttribute('tabindex', '-1');
        element.focus();
    }
};
Util.getIndexInArray = function(array, el) {
    return Array.prototype.indexOf.call(array, el);
};
Util.cssSupports = function(property, value) {
    if ('CSS' in window) {
        return CSS.supports(property, value);
    } else {
        var jsProperty = property.replace(/-([a-z])/g, function(g) {
            return g[1].toUpperCase();
        });
        return jsProperty in document.body.style;
    }
};
Util.extend = function() {
    var extended = {};
    var deep = false;
    var i = 0;
    var length = arguments.length;
    if (Object.prototype.toString.call(arguments[0]) === '[object Boolean]') {
        deep = arguments[0];
        i++;
    }
    var merge = function(obj) {
        for (var prop in obj) {
            if (Object.prototype.hasOwnProperty.call(obj, prop)) {
                if (deep && Object.prototype.toString.call(obj[prop]) === '[object Object]') {
                    extended[prop] = extend(true, extended[prop], obj[prop]);
                } else {
                    extended[prop] = obj[prop];
                }
            }
        }
    };
    for (; i < length; i++) {
        var obj = arguments[i];
        merge(obj);
    }
    return extended;
};
if (!Element.prototype.matches) {
    Element.prototype.matches = Element.prototype.msMatchesSelector || Element.prototype.webkitMatchesSelector;
}
if (!Element.prototype.closest) {
    Element.prototype.closest = function(s) {
        var el = this;
        if (!document.documentElement.contains(el)) return null;
        do {
            if (el.matches(s)) return el;
            el = el.parentElement || el.parentNode;
        } while (el !== null && el.nodeType === 1);
        return null;
    };
}
if (typeof window.CustomEvent !== "function") {
    function CustomEvent(event, params) {
        params = params || {
            bubbles: false,
            cancelable: false,
            detail: undefined
        };
        var evt = document.createEvent('CustomEvent');
        evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
        return evt;
    }
    CustomEvent.prototype = window.Event.prototype;
    window.CustomEvent = CustomEvent;
}
Math.easeInOutQuad = function(t, b, c, d) {
    t /= d / 2;
    if (t < 1) return c / 2 * t * t + b;
    t--;
    return -c / 2 * (t * (t - 2) - 1) + b;
};
/**/

        },

        mesonaryIsotop: function(){
          $( window ).on( "load", function() {
            var isotope = $(".main-isotop");

            if(isotope.length){
                var iso = new Isotope( '.filter', {
                    itemSelector: '.element-item',
                    layoutMode: 'fitRows'
                  });

                  // filter functions
                  var filterFns = {
                    // show if name ends with -ium
                    ium: function( itemElem ) {
                      var name = itemElem.querySelector('.name').textContent;
                      return name.match( /ium$/ );
                    }
                  };

                  // bind filter button click
                  var filtersElem = document.querySelector('.filters-button-group');
                  filtersElem.addEventListener( 'click', function( event ) {
                    // only work with buttons
                    if ( !matchesSelector( event.target, 'button' ) ) {
                      return;
                    }
                    var filterValue = event.target.getAttribute('data-filter');
                    // use matching filter function
                    filterValue = filterFns[ filterValue ] || filterValue;
                    iso.arrange({ filter: filterValue });
                  });

                  // change is-checked class on buttons
                  var buttonGroups = document.querySelectorAll('.tmp-button-group');
                  for ( var i=0, len = buttonGroups.length; i < len; i++ ) {
                    var buttonGroup = buttonGroups[i];
                    radioButtonGroup( buttonGroup );
                  }
                  function radioButtonGroup( buttonGroup ) {
                    buttonGroup.addEventListener( 'click', function( event ) {
                      // only work with buttons
                      if ( !matchesSelector( event.target, 'button' ) ) {
                        return;
                      }
                      buttonGroup.querySelector('.is-checked').classList.remove('is-checked');
                      event.target.classList.add('is-checked');
                    });
                  }
            }

            if ($('.grid-masonary').length) {

                // image loaded portfolio init
                $('.grid-masonary').imagesLoaded(function() {
                    $('.portfolio-filter').on('click', 'button', function() {
                        var filterValue = $(this).attr('data-filter');
                        $grid.isotope({
                            filter: filterValue
                        });
                    });
                    var $grid = $('.grid-masonary').isotope({
                        itemSelector: '.grid-item-p',
                        percentPosition: true,
                        masonry: {
                            columnWidth: '.grid-item-p',
                        }
                    });
                });
            }

            // portfolio Filter
            $('.portfolio-filter button').on('click', function(event) {
                $(this).siblings('.is-checked').removeClass('is-checked');
                $(this).addClass('is-checked');
                event.preventDefault();
            });
          } );
        },

        gsapAnimationImageScale: function (e) {
          $(document).ready(function () {

            let growActive = document.getElementsByClassName('grow');
            if (growActive.length) {
              const growTl = gsap.timeline({
                scrollTrigger: {
                  trigger: ".grow",
                  scrub: 1,
                  start: "top center",
                  end: "+=1000",
                  ease: "power1.out"
                }
              });
              growTl.to(".grow", {
                duration: 1,
                scale: 1
              });
            }

          });

        },

        rollingText: function(){
          let elements = document.querySelectorAll(".rolling-text");

          elements.forEach((element) => {
              let innerText = element.innerText;
              element.innerHTML = "";

              let textContainer = document.createElement("div");
              textContainer.classList.add("block");

              for (let letter of innerText) {
                  let span = document.createElement("span");
                  span.innerText = letter.trim() === "" ? "\xa0" : letter;
                  span.classList.add("letter");
                  textContainer.appendChild(span);
              }

              element.appendChild(textContainer);
              element.appendChild(textContainer.cloneNode(true));
          });

          elements.forEach((element) => {
              element.addEventListener("mouseover", () => {
                  element.classList.remove("play");
              });
          });
        },


        counterJumpanimation: function () {
          gsap.registerPlugin(ScrollTrigger);
          gsap.set(".counter_animation .counter__anim", {
              y: -100,
              opacity: 0,
          })
          if (device_width < 1023) {
              const counterArray = gsap.utils.toArray(".counter_animation .counter__anim")
              counterArray.forEach((item, i) => {
              let counterTl = gsap.timeline({
                  scrollTrigger: {
                  trigger: item,
                  start: "top center+=200",
                  }
              })
              counterTl.to(item, {
                  y: 0,
                  opacity: 1,
                  ease: "bounce",
                  duration: 1.5,
              })
              })
          } else {
              gsap.to(".counter_animation .counter__anim", {
              scrollTrigger: {
                  trigger: ".counter_animation",
                  start: "top center+=300",
              },
              y: 0,
              opacity: 1,
              ease: "bounce",
              duration: 1.5,
              stagger: {
                  each: 0.3,
              }
              })
          }

        },


        gsapAnimationImageScale2: function (e) {
          $(document).ready(function () {

            let growActive = document.getElementsByClassName('grow-thumbnail');
            if (growActive.length) {
              const growTmp = gsap.timeline({
                scrollTrigger: {
                  trigger: ".grow-thumbnail",
                  scrub: 1,
                  start: "top center",
                  end: "+=1000",
                  ease: "power1.out"
                }
              });
              growTmp.to(".grow-thumbnail", {
                duration: 1,
                scale: 1.1
              });
            }

          });

        },



    }

    tmPk.m();

})(jQuery, window)








