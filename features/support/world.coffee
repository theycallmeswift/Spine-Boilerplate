Browser   = require 'zombie'
Hem       = require 'hem'
factories = require '../../spec/factories'

# Hem options
hemOptions = {
  port: 9295
}

# Zombie options
Browser.site = "http://localhost:9295/"
# Browser.debug = true

# Start the Hem Server
App = new Hem(hemOptions)
server = App.server()

class World
  constructor: (callback) ->
    @browser = new Browser()
    callback(@)

  visit: (url, next) ->
    @browser.visit url, (err, browser, status) ->
      browser.wait ->
        next err, browser, status

module.exports.World = World
