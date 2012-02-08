require('lib/setup')

Spine = require('spine')
Foobar = require('controllers/foobar')

class App extends Spine.Controller
  constructor: ->
    super
    @Foobar = new Foobar

    @append @Foobar.active()

    Spine.Route.setup()

module.exports = App

