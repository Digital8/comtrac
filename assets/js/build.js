;(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var placeholdify = require('./lib/placeholdify')
var slice = Array.prototype.slice

var inputs = slice.call(document.querySelectorAll(
  '[data-placeholdified] [data-type=text]'
))

inputs.forEach(function(input) {
  placeholdify(input)
})

},{"./lib/placeholdify":2}],2:[function(require,module,exports){
module.exports = function(input) {
  var type = input.nodeName.toLowerCase()
  var field = input.parentNode 
  var label = field.querySelector(
    'label[for="' + input.id + '"]'
  )

  var focus = function() {
    if (type !== 'select') {
      label.setAttribute('data-invisible', true)
    }
  }

  var blur = function() {
    var hasValue = !!input.value.replace(/\s/g, '').length
    if (!hasValue) {
      input.value = ''
      label.removeAttribute('data-invisible')
    }
    else if (type === 'select') {
      label.setAttribute('data-invisible', true)
    }
  }
 
  var placeholder = {
    input: input,
    on: function() {
      field.setAttribute('data-placeholdified', true)
      input.addEventListener('focus', focus)
      input.addEventListener('change', blur)
      input.addEventListener('blur', blur)
    },
    off: function() {
      field.removeAttribute('data-placeholdified')
      input.removeEventListener('focus', focus)
      input.removeEventListener('change', blur)
      input.removeEventListener('blur', blur)
    }
  }

  if (label) {
    placeholder.on()
  }

  return placeholder
}

},{}]},{},[1])
;