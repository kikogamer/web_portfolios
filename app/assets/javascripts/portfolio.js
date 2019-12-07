document.addEventListener("turbolinks:load", function() {
  $('.remove-portfolio').click( (e) => {
    $('.modal').modal()
    $('.modal').modal('open')
    $('.remove_portfolio').attr('action', 'portfolios/' + e.target.id)
  })
})