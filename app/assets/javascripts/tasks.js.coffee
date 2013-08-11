# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->

  $(document).on 'ajax:complete', 'form', ->
    counter = parseInt($('b').text(), 10)
    $('b').text(++counter)

  debounced_submit =
    _.debounce( 
      -> $('form').trigger('submit.rails')
      2000)

  $(document).on 'click', 'a', (event) ->
    event.preventDefault()
    debounced_submit()
