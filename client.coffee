open = require('open');
console.log "walma-remote-start"

walmaServer = "http://localhost"
socket = require('socket.io-client').connect(walmaServer + '/remote-start')

socket.on "connect", ->
  socket.emit "join-desktop", { remote_key: "jktest" }

socket.on "open-browser", (opts) ->
  console.log "Open browser", opts
  open(walmaServer + opts.url);
