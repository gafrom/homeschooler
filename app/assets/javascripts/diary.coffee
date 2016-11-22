class @App.Diary
  constructor: (@backend) ->

  watchTyping: =>
    @textarea = $('#diary')
    @textarea.on 'input', (e) =>
      @backend.update(e.target.value, e.target.getAttribute('data-id'))
        .done((data) -> console.log "success", data)
