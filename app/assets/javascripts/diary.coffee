class @App.Diary
  constructor: (@backend) ->

  watchTyping: =>
    @textarea = $('#diary')
    @textarea.on 'input', (e) =>
      @backend.update(e.target.value, e.target.getAttribute('data-id'))
        .done((data) -> console.log "success", data)


  watchClicks: =>
    btn = $('.close_btn')
    btn.on 'click', (e) =>
      menu = $('.menu.close')
      menu.slideToggle()
      btn.toggleClass('icon-cancel-squared')
      btn.toggleClass('icon-rocket')
#      menu.css 'display','none'
