$(document).on 'turbolinks:load', ->
  $('.modal').modal()
  $('.modal').css('min-height', $(window).height()/2)

$(document).on 'turbolinks:load', ->
  $('.dropzone').dropzone
    dictDefaultMessage: 'Arraste os arquivos aqui ou clique para procurar'
    paramName: 'files'
    drop: ->
      $('#transaction-list').html '<center><span class=\'orange-text\'>Processando ... </span></center>'
      return
    init: ->
      @on 'queuecomplete', (data) ->
        location.reload()
        return
      return

$(document).on 'turbolinks:load', ->
  $('.remove').hide()
  $('.directory').mouseover ->
    $(this).find('.remove').show()
    return
  $('.directory').mouseleave ->
    $(this).find('.remove').hide()
    return