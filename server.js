const http = require('http');

const hostname = '127.0.0.1';
const port = process.env.PORT || 8080;

http.createServer(function (req, res) {

  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello World from Zero System Seed\n');

}).listen(port, function () {
  console.log("Server running at http://" + hostname + ":" + port);
});
