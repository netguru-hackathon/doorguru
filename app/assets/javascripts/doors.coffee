$ ->
  animateDoors=(state) ->
    $doors = $('.thumb')

    if state
      $doors.removeClass 'thumbOpened'
      $doors.addClass 'thumbOpened'
    else
      $doors.removeClass 'thumbOpened'

  $('.js-doors').on 'ajax:success', (e, data) ->
    animateDoors(data['state'])

  (poll = ->
    setTimeout (->
      $.ajax
        url: "#{window.location.href}/state.json"
        success: (data) ->
          animateDoors(data['state'])

        dataType: 'json'
        complete: poll

      return
    ), 1000
    return
  )()
