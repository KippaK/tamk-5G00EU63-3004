// FILE: server.js
//
// EXAMPLE CALL
//
// node server.js
// curl 'http://127.0.0.1:8000/app.js?a=1&b=2'

const http = require('http')
const url = require('url')
const util = require('util')

const hostname = '127.0.0.1'
const port = 8000

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' })

  //   req.url => /app.js?a=1&b=2
  res.write('request URL: ' + req.url + '\n')

  // ---------------------------------------------------
  // read and parse the request

  const q = url.URL(req.url, true) // returns an URL object
  console.log('DATA query URL object: ' + q)
  console.log(util.inspect(q, { showHidden: false, depth: null }))

  // ---------------------------------------------------
  // COMMON VARIABLES: see documentation for module 'url'
  //
  // .host      localhost:8080   WARN: can be <null>
  // .pathname  /server.js
  // .search    ?a=1&b=2
  // .query     { key: val, key: val }

  res.write('query.pathname: ' + q.pathname + '\n')
  res.write('query.search: ' + q.search + '\n')

  console.log('DATA q.query', q.query)
  const a = q.query.a
  const b = q.query.b
  res.write('Param a: ' + a + '\n')
  res.write('Param b: ' + b + '\n')

  res.end('Response end\n')
})

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`)
})
