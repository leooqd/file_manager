$(document).on 'turbolinks:load', ->
  $('.modal').modal()
  $('.modal').css('min-height', $(window).height()/2)
