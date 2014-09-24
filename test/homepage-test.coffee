chai = require 'chai'
expect = chai.expect
Browser = require 'zombie'
server = require '../server'

console.log(server)

describe 'server', ->
   
  before ->
    server.listen('3000')
    browser = new Browser
    browser({ site: "http://localhost:3000/" })
    browser.visit('/')

  it 'should have a welcome message', ->
    expect(browser.text('h1')).to.equal("Welcome to Makers IDE")
