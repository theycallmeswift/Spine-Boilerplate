Spine   = require('spine')

class Sidebar extends Spine.Controller
  className: 'sidebar'

  elements:
    '.tabs ul': 'tabsList'

  constructor: ->
    super
    @html require('views/sidebar')()

module.exports = Sidebar
