$ ->
  $('#currency-selector a').on 'click', (e)->
    e.preventDefault()
    $.ajax(
      type: 'POST'
      url: $(this).attr('href')
      data:
        currency: $(this).data('currency')
    ).done ->
      window.location.reload()