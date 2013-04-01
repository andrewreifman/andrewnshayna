window.setup_guest_form = ->
  if $("input[name='guest[attending]']:checked").val() == 'false'
    $('.guest-number').addClass("disabled")

  $("input[name='guest[attending]']").click ->
    if $("input[name='guest[attending]']:checked").val() == 'false'
      $('.guest-number').addClass("disabled")
      $('#guest_guests').val(0)
    else
      $('.guest-number').removeClass("disabled")
      $('#guest_guests').val('')

$ ->

  $(window).load ->
    setTimeout (->
      $('.loader').fadeOut 500
      $('nav a').delay(400).animate
        'margin-top': 0
      , 1000

      fireflyArrow = (index, topPos, rightPos, duration) ->
        $(".arrow .firefly-" + index).delay(1500).animate
          top: topPos + '%'
          right: rightPos + '%'
        , duration

      fireflyArrow 1, 50, 14, 4000
      fireflyArrow 2, 46, 16, 5000
      fireflyArrow 3, 41, 18, 6000
      fireflyArrow 4, 54, 16, 4000
      fireflyArrow 5, 58, 17.5, 5000
      fireflyArrow 6, 49.5, 18, 5000
      fireflyArrow 7, 51, 21, 4000
      fireflyArrow 8, 50, 23, 4000
      fireflyArrow 9, 51, 27, 6000
      fireflyArrow 10, 38.5, 19, 3000
      fireflyArrow 11, 43, 17.5, 4000
      fireflyArrow 12, 43.5, 16.5, 5000
      fireflyArrow 13, 47, 15, 5000
      fireflyArrow 14, 50, 15.5, 4000
      fireflyArrow 15, 51, 17, 4000
      fireflyArrow 16, 52.5, 15, 7000
      fireflyArrow 17, 56, 16.3, 4000
      fireflyArrow 18, 61.5, 19, 6000
      fireflyArrow 19, 60.5, 18, 4000
      fireflyArrow 20, 50, 20, 5000
      fireflyArrow 21, 52, 24, 4000
      fireflyArrow 22, 50, 25, 3000
      fireflyArrow 23, 51.5, 28, 5000
      fireflyArrow 24, 50.5, 29.5, 6000
      fireflyArrow 25, 51, 19, 6000
      fireflyArrow 26, 51.5, 31.5, 4000

    ), 500

  $('.nav-welcome, .to-welcome').click ->
    $('html,body').animate({scrollTop: 3200}, 2600)
    return false
  $('.nav-story').click ->
    $('html,body').animate({scrollTop: 4980}, 2600)
    return false
  $('.nav-location').click ->
    $('html,body').animate({scrollTop: 6840}, 2600)
    return false
  $('.nav-party').click ->
    $('html,body').animate({scrollTop: 9000}, 2600)
    return false
  $('.nav-hotels').click ->
    $('html,body').animate({scrollTop: 10820}, 2600)
    return false
  $('.nav-gifts').click ->
    $('html,body').animate({scrollTop: 13380}, 2600)
    return false
  $('.nav-rsvp').click ->
    $('html,body').animate({scrollTop: 15400}, 2600)
    return false


  $(window).scroll ->
    windowPos = $(window).scrollTop()
    if windowPos >= 2000 and windowPos <= 4400
      $("nav a").removeClass "active"
      $(".nav-welcome").addClass "active"
    else if windowPos >= 4450 and windowPos <= 5600
      $("nav a").removeClass "active"
      $(".nav-story").addClass "active"
    else if windowPos >= 6000 and windowPos <= 7800
      $(".nav-location").addClass "active"
    else if windowPos >= 8000 and windowPos <= 10000
      $("nav a").removeClass "active"
      $(".nav-party").addClass "active"
    else if windowPos >= 10200 and windowPos <= 11300
      $("nav a").removeClass "active"
      $(".nav-hotels").addClass "active"
    else if windowPos >= 13000 and windowPos <= 13850
      $(".nav-gifts").addClass "active"
    else if windowPos >= 14700
      $(".nav-rsvp").addClass "active"
    else
      $("nav a").removeClass "active"

  moveRandom = (e) ->
    rightpos = (Math.random()*100)+"%"
    toppos = (Math.random()*100)+"%"
    e.css
      top: toppos
      right: rightpos

  $(".arrow img, .hotel-fireflies img, .chandelier-fireflies img").each ->
    moveRandom $(this)


  fireflyChandeliers = (index, topPos, rightPos, marRight, duration) ->
    $(window).scroll ->
      if($(window).scrollTop() >= 9000)
        $(".chandelier-fireflies .firefly-" + index).animate
          top: topPos + '%'
          right: rightPos + '%'
          'margin-right': marRight
        , duration

  fireflyChandeliers 1, 26.5, 30, 26, 3500
  fireflyChandeliers 2, 26, 30, -15, 4000
  fireflyChandeliers 3, 26, 30, -86, 5000
  fireflyChandeliers 4, 26.5, 30, -125, 4000
  fireflyChandeliers 5, 31, 70, 58, 5000
  fireflyChandeliers 6, 30, 70, 0, 3000
  fireflyChandeliers 7, 30, 70, -101, 5000
  fireflyChandeliers 8, 31, 70, -159, 4000
  fireflyChandeliers 9, 40, 50, 85, 5000
  fireflyChandeliers 10, 38.5, 50, 12  , 3500
  fireflyChandeliers 11, 38.5, 50, -114, 4000
  fireflyChandeliers 12, 40, 50, -185, 5000