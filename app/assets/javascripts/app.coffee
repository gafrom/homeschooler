@App ||= {}

class @App
  constructor: ->
    @backend = new App.Backend()
    @diary = new App.Diary(@backend)

  start: =>
    $(document).on 'turbolinks:load', =>
      @diary.watchTyping()
      @diary.watchClicks()


$ ->
  app = new App()
  app.start()
