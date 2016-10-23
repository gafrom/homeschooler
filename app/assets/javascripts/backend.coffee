class @App.Backend
  constructor: ->

  update: (post_text) =>
    $.ajax '/diary',
      type: 'PATCH'
      dataType: 'text'
      data:
        post: post_text
