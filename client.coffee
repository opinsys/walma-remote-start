fs = require "fs"
config = JSON.parse fs.readFileSync __dirname + "/config.json"

open = require('open');

console.log "walma-remote-start"

socket = require('socket.io-client').connect(config.walmaServer + '/remote-start')

socket.on "connect", ->
  socket.emit "join-desktop", { remote_key: config.remoteKey }

socket.on "open-browser", (opts) ->
  console.log "Open browser", opts
  open(config.walmaServer + opts.url);
