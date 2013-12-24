//addEventListener polyfill 1.0 / Eirik Backer / MIT Licence
(function(win, doc){
  if(win.addEventListener)return;   //No need to polyfill
 
  function docHijack(p){var old = doc[p];doc[p] = function(v){return addListen(old(v))}}
  function addEvent(on, fn, self){
    return (self = this).attachEvent('on' + on, function(e){
      var e = e || win.event;
      e.preventDefault  = e.preventDefault  || function(){e.returnValue = false}
      e.stopPropagation = e.stopPropagation || function(){e.cancelBubble = true}
      fn.call(self, e);
    });
  }
  function addListen(obj, i){
    if(i = obj.length)while(i--)obj[i].addEventListener = addEvent;
    else obj.addEventListener = addEvent;
    return obj;
  }
 
  addListen([doc, win]);
  if('Element' in win)win.Element.prototype.addEventListener = addEvent;      //IE8
  else{   //IE < 8
    doc.attachEvent('onreadystatechange', function(){addListen(doc.all)});    //Make sure we also init at domReady
    docHijack('getElementsByTagName');
    docHijack('getElementById');
    docHijack('createElement');
    addListen(doc.all); 
  }
})(window, document);

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

$('.highlighted')
  .on('mouseover', function() {
    $(this).attr('data-expanded', true)
  })
  .on('mouseout', function() {
    $(this).removeAttr('data-expanded')
  })
