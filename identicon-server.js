var jdenticon = require("jdenticon"),
    http = require('http'),
    url = require("url"),
    size = 200;

http.createServer(function (req, res) {
    var pathname = url.parse(req.url).pathname.substr(1);
    var png = jdenticon.toPng(req.path, size);
    res.writeHead(200, {"Content-Type": "image/png"});
    res.write(png);
    res.end();
}).listen(8090);


