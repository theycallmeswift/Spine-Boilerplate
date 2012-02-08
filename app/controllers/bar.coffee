Spine   = require('spine')

class BShow extends Spine.Controller
  className: 'show'

  constructor: ->
    super
    @html "Bar Show <a href='#/bar/1/edit'>Edit</a>"

class BEdit extends Spine.Controller
  className: 'edit'

  constructor: ->
    super
    @html "Bar Edit"
    @html "Bar Edit <a href='#/bar/1'>Show</a>"

class Bar extends Spine.Stack
  className: 'bar stack'

  controllers:
    show: BShow
    edit: BEdit

  routes:
    '/bar/:id/edit': 'edit'
    '/bar/:id': 'show'

  default: 'show'

module.exports = Bar
