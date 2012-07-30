fs = require "fs"
config = JSON.parse fs.readFileSync __dirname + "/config.json"

open = require('open');

console.log "Walma Desktop Projector"

socket = require('socket.io-client').connect(config.walmaServer + '/remote-start')

socket.on "connect", ->
    socket.emit "join-desktop", { cameraId: config.cameraId }
  socket.emit "set resolution",
    width: config.resolution.width,
    height: config.resolution.height

socket.on "open-browser", (opts) ->
  console.log "Open browser", opts
  open(config.walmaServer + opts.url);
