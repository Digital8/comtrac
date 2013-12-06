var placeholdify = require('./lib/placeholdify')
var slice = Array.prototype.slice

var inputs = slice.call(document.querySelectorAll(
  '[data-placeholdified] [data-type=text]'
))

inputs.forEach(function(input) {
  placeholdify(input)
})
