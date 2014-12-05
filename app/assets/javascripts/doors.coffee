$ ->
  animateDoors=(state) ->
    $doors = $('.thumb')

    if state
      $doors.addClass 'thumbOpened'
      console.log $doors
    else
      $doors.removeClass 'thumbOpened'

  $('.js-doors').on 'ajax:success', (e, data) ->
    animateDoors(data['state'])


  $('.js-doors').on 'click', (e) ->
    href = e.target.href
    window.me = href
    $.ajax
      url: href
      success: (data) ->
        animateDoors(data['state'])
      dataType: 'json'

  (poll = ->
    setTimeout (->
      $.ajax
        url: "#{window.location.href}/state.json"
        success: (data) ->
          animateDoors(data['state'])

        dataType: 'json'
        complete: poll

      return
    ), 400
    return
  )()
