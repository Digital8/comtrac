var placeholdify = function(input) {
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
