'use strict';

const http = require('http');

// Constants
const PORT = 8080;

// App
const server = http.createServer((req, res) => {
    res.writeHead( 301, {Location: `https://${req.headers.host}${req.url}` } );
    res.end();
});

server.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});
