var fs = require('fs')
var around = require('getport')
var server = require('http').createServer
var ecstatic = require('ecstatic')({
  root: __dirname,
  gzip: true
})

// This is a temporary server that serves up 
// the static assets and the index.html page. 
// This lets us use history.pushState without
// getting 404s on refresh.

var announce = function() {
  console.log(
    'Listening on ' + this.address().port
  )
}

var flat = server(function(request, response) {
  ecstatic(request, response, function() {
    response.statusCode = 200
    fs.createReadStream(__dirname + '/index.html')
      .pipe(response)   
  })
})

var port = process.argv[2]

// Use the specified port
if (port) {
  flat.listen(port, announce)
  return
}

// Or find an available port
around(8000, function(error, result) {
  flat.listen(result, announce)
})
