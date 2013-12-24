$('[data-placeholdified] [data-type=text]').each(function() {
  placeholdify($(this)[0])
})

var drimeout = null

$('.dropdown a').on('mouseover', function() {
  var dropdown = $(this).closest('.dropdown')
  dropdown.attr('data-has-target', true)
})

$('.dropdown').on('mouseout', function() {
  var dropdown = $(this)
  dropdown.attr('data-has-target', 'inactive')

  clearTimeout(drimeout)
  drimeout = setTimeout(function() {
    if (dropdown.attr('data-has-target') === 'inactive') {
      dropdown.removeAttr('data-has-target')
    }
  }, 1000)
})

$('.highlighted .button')
  .on('mouseover', function() {
    $(this)
      .closest('.highlighted')
      .attr('data-expanded', true)
  })
  .on('mouseout', function() {
    $(this)
      .closest('.highlighted')
      .removeAttr('data-expanded')
  })
