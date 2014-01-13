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

/*
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
*/

$('.highlighted')
  .on('mouseover', function() {
    $(this).attr('data-expanded', true)
  })
  .on('mouseout', function() {
    $(this).removeAttr('data-expanded')
  })

var pull 		= $('#pull');
var menu 		= $('nav ul');
var menuHeight	= menu.height();
var toggle = $('.toggleMenu')
var nav = $('.primary.navigation')
var timeout = null

var activate = function(row) {
  if (toggle.is(':hidden')) {
    clearTimeout(timeout)
    $(row).attr('data-active', true)
  }
};

var deactivate = function(row) {
  $(row).removeAttr('data-active')
};

var enter = function() {
  clearTimeout(timeout)
}

var end = function() {
  timeout = setTimeout(function() {  
    nav.find('li').removeAttr('data-active')
  }, 500)
}

nav.menuAim({
  activate: activate,
  deactivate: deactivate,
  enter: enter,
  exitMenu: end,
  submenuDirection: 'below',
  tolerance: 50
});

$(pull).on('click', function(e) {
  e.preventDefault();
  menu.slideToggle();
});

$(window).resize(function(){
  var w = $(window).width();
  if(w > 320 && menu.is(':hidden')) {
    menu.removeAttr('style');
  }
});

$(".vimeo").colorbox({
  iframe:true,
  innerWidth:960,
  innerHeight:540
});
