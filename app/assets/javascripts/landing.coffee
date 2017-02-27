### ================================
===  BACKGROUND SLIDER        ====
=================================
###

$.vegas 'slideshow',
  delay: 7000
  backgrounds: [
    {
      src: 'assets/backgrounds/bg1.jpg'
      fade: 1000
    }
    {
      src: 'assets/backgrounds/bg2.jpg'
      fade: 1000
    }
    {
      src: 'assets/backgrounds/bg3.jpg'
      fade: 1000
    }
  ]

### =================================
===  Bootstrap Fix              ====
===================================
###

if navigator.userAgent.match(/IEMobile\/10\.0/)
  msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild document.createTextNode('@-ms-viewport{width:auto!important}')
  document.querySelector('head').appendChild msViewportStyle

### =================================
===  STICKY NAV                 ====
===================================
###

$(document).ready ->
  $('.main-nav-list').onePageNav
    changeHash: true
    scrollSpeed: 750
    scrollThreshold: 0.5
    filter: ':not(.external)'
  # Sticky Header - http://jqueryfordesigners.com/fixed-floating-elements/
  top = $('#main-nav').offset().top - parseFloat($('#main-nav').css('margin-top').replace(/auto/, 0))
  $(window).scroll (event) ->
    # what the y position of the scroll is
    y = $(this).scrollTop()
    # whether that's below the form
    if y >= top
      # if so, ad the fixed class
      $('#main-nav').addClass 'fixed'
    else
      # otherwise remove it
      $('#main-nav').removeClass 'fixed'
    return
  return

###---------------------------------------###

###  SMOOTH SCROLL FRO INTERNAL #HASH LINKS
/*---------------------------------------
###

$(document).ready ->
  $('a[href^="#"].inpage-scroll, .inpage-scroll a[href^="#"]').on 'click', (e) ->
    e.preventDefault()
    target = @hash
    $target = $(target)
    $('.main-navigation a[href="' + target + '"]').addClass 'active'
    $('.main-navigation a:not([href="' + target + '"])').removeClass 'active'
    $('html, body').stop().animate { 'scrollTop': if $target.offset() then $target.offset().top else 0 }, 900, 'swing', ->
      window.location.hash = target
      return
    return
  return

###=================================
===  OWL CROUSEL               ====
===================================
###

$(document).ready ->
  owl = $('#client-feedbacks')
  owl.owlCarousel
    items: 3
    itemsDesktop: [
      1000
      2
    ]
    itemsDesktopSmall: [
      900
      1
    ]
    itemsTablet: [
      600
      1
    ]
    itemsMobile: false
  return

###=================================
===  SMOOTH SCROLL             ====
===================================
###

scrollAnimationTime = 1200
scrollAnimation = 'easeInOutExpo'
$('a.scrollto').bind 'click.smoothscroll', (event) ->
  event.preventDefault()
  target = @hash
  $('html, body').stop().animate { 'scrollTop': $(target).offset().top }, scrollAnimationTime, scrollAnimation, ->
    window.location.hash = target
    return
  return

### ================================
===  PROJECT LOADING           ====
=================================
###

jQuery(document).ready ($) ->
  $('.more').on 'click', (event) ->
    event.preventDefault()
    href = $(this).attr('href') + ' .single-project'
    portfolioList = $('#portfolio-list')
    content = $('#loaded-content')
    portfolioList.animate { 'marginLeft': '-120%' },
      duration: 400
      queue: false
    portfolioList.fadeOut 400
    setTimeout (->
      $('#loader').show()
      return
    ), 400
    setTimeout (->
      content.load href, ->
        $('#loaded-content meta').remove()
        $('#loader').hide()
        content.fadeIn 600
        $('#back-button').fadeIn 600
        return
      return
    ), 800
    return
  $('#back-button').on 'click', (event) ->
    event.preventDefault()
    portfolioList = $('#portfolio-list')
    content = $('#loaded-content')
    content.fadeOut 400
    $('#back-button').fadeOut 400
    setTimeout (->
      portfolioList.animate { 'marginLeft': '0' },
        duration: 400
        queue: false
      portfolioList.fadeIn 600
      return
    ), 800
    return
  return

### ================================
===  PARALLAX                  ====
=================================
###

$(document).ready ->
  $window = $(window)
  $('div[data-type="background"], header[data-type="background"], section[data-type="background"]').each ->
    $bgobj = $(this)
    $(window).scroll ->
      yPos = -($window.scrollTop() / $bgobj.data('speed'))
      coords = '50% ' + yPos + 'px'
      $bgobj.css backgroundPosition: coords
      return
    return
  return

### ================================
===  KNOB                      ====
=================================
###

$ ->
  $('.skill1').knob
    'max': 100
    'width': 64
    'readOnly': true
    'inputColor': ' #FFFFFF '
    'bgColor': ' #222222 '
    'fgColor': ' #e96656 '
  $('.skill2').knob
    'max': 100
    'width': 64
    'readOnly': true
    'inputColor': ' #FFFFFF '
    'bgColor': ' #222222 '
    'fgColor': ' #34d293 '
  $('.skill3').knob
    'max': 100
    'width': 64
    'readOnly': true
    'inputColor': ' #FFFFFF '
    'bgColor': ' #222222 '
    'fgColor': ' #3ab0e2 '
  $('.skill4').knob
    'max': 100
    'width': 64
    'readOnly': true
    'inputColor': ' #FFFFFF '
    'bgColor': ' #222222 '
    'fgColor': ' #E7AC44 '
  return

### =================================
===  WOW ANIMATION             ====
===================================
###

(new WOW).init()

# ---
# generated by js2coffee 2.2.0
