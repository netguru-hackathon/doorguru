$ ->
  $('.js-doors').on 'ajax:success', (e, data) ->
    y = $('.perspective').find(".thumb")
    x = y.attr("class")
    if y.hasClass("thumbOpened")
      y.removeClass "thumbOpened"
    else
      $(".thumb").removeClass "thumbOpened"
      y.addClass "thumbOpened"
