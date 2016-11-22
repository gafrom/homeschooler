class @App.Backend
  constructor: ->

  update: (post_text, id) =>
    $.ajax "/posts/#{id}",
      type: 'PATCH'
      dataType: 'text'
      data:
        post:
          body: post_text
