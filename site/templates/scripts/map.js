var target = $('.small.map')

// Show loading indicator
target.attr('data-loading', true)

_ready = function () {
  var container = $('<div class="element">')
  var address = 'Level 9 410 Queen Street Brisbane QLD 4000'
  var coords = new google.maps.LatLng(-27.463794, 153.042337)
  var textfill = {
    featureType: 'all',
    elementType: 'labels.text.fill',
    stylers: [
      { color: '#208ec9' }
    ]
  }
  var textstroke = {
    featureType: 'all',
    elementType: 'labels.text.stroke',
    stylers: [
      { visibility: 'off' }
    ]
  }
  var allstroke = {
    featureType: 'all',
    elementType: 'geometry.stroke',
    stylers: [
      { color: '#0c497e' }
    ]
  }
  var water = {
    featureType: 'water',
    elementType: 'all',
    stylers: [
      { color: '#13639a' }
    ]
  }
  var land = {
    featureType: 'landscape',
    elementType: 'all',
    stylers: [
      { color: '#0d4d83' }
    ]
  }
  var poi = {
    featureType: 'poi',
    elementType: 'all',
    stylers: [
      { color: '#0d4d83' }
    ]
  } 
  var road = {
    featureType: 'road',
    elementType: 'all',
    stylers: [
      { color: '#10588f' }
    ]
  }
  var roadstroke = {
    featureType: 'road',
    elementType: 'geometry.stroke',
    stylers: [
      { visibility: 'off' }
    ]
  }
  var transit = {
    featureType: 'transit',
    elementType: 'all',
    stylers: [
      { color: '#105b94' }
    ]
  }
  var options = {
    zoom: 16,
    center: coords,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    mapTypeControl: false,
    panControl: false,
    rotateControl: false,
    scaleControl: false,
    streetViewControl: false,
    scrollwheel: false,
    styles: [{
      stylers: [{ gamma: 0.95 }]
    }],
    /*
    styles: [
      water, land, poi,
      road, roadstroke, transit,
      textfill, textstroke, allstroke
    ],
    */
    zoomControl: false
  }

  var map = new google.maps.Map(container[0], options)
  var geocoder = new google.maps.Geocoder
  var icon = new google.maps.MarkerImage(
    '/assets/images/marker@2x.png',
    null, null, null,
    new google.maps.Size(50,47)
  )
  var marker = new google.maps.Marker({
    icon: icon,
    map: map
  })

  // Hide the map
  container.css('opacity', 0)

  // Append it to the target  
  target.prepend(container)
 
  // Try to position the map marker at our address.
  geocoder.geocode({ address: address }, function (results, status) {
    // If the address is found
    if (status == google.maps.GeocoderStatus.OK) {
      // Reposition the marker
      var coords = results[0].geometry.location
      map.setCenter(coords)
      marker.setPosition(coords)

      // Let the map re-jig, and then…
      setTimeout(function() {
        // Hide loading indicator 
        target.removeAttr('data-loading')
        // Show the map. This 0.99999 thing
        // is a hack to stop the mask from
        // moving when the page is scrolled.
        container.css('opacity', 1)
        target.css('opacity', 0.9999) 
      }, 150)
    }
  })
}
