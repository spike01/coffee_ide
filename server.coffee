express = require 'express'
server = express()

server.get '/', (request, response) ->
  response.render 'index', { title: 'Makers IDE' }

module.exports = server 
