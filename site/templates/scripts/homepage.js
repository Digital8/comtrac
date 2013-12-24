// Placeholdification
$('[data-placeholdified] [data-type=text]')
  .each(function() {
    placeholdify(this)
  })

var carousel = $('.carousel')
  .prepend('<div class="pager">')
  .cycle({
    'fx': 'fadeout',
    'log': false,
    'slides': '.item',
    'pager': '.pager',
    'timeout': 6000
  })


carousel.on('mouseover', function(e) {
  var target = $(e.target).closest('div')
  var caption = (
    target.hasClass('contained') ||
    target.hasClass('pager')
  )
  if (caption) {
    carousel.cycle('pause')
  }
})

carousel.on('mouseout', function(e) {
  var target = $(e.target).closest('div')
  var caption = (
    target.hasClass('contained') ||
    target.hasClass('pager')
  )
  if (caption) {
    carousel.cycle('resume')
  }
})
