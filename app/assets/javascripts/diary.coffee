class @App.Diary
  constructor: (@backend) ->

  watchTyping: =>
    @textarea = $('#diary')
    @textarea.on 'input', (e) =>
      @backend.update(e.target.value)
        .done((data) -> console.log "success", data)
