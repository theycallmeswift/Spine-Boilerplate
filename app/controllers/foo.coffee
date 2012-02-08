Spine   = require('spine')

class Show extends Spine.Controller
  className: 'show'

  constructor: ->
    super
    @html "Foo Show <a href='#/foo/1/edit'>Edit</a>"

class Edit extends Spine.Controller
  className: 'edit'

  constructor: ->
    super
    @html "Foo Edit <a href='#/foo/1'>Show</a>"

class Foo extends Spine.Stack
  className: 'foo stack'

  controllers:
    show: Show
    edit: Edit

  routes:
    '/foo/:id/edit': 'edit'
    '/foo/:id': 'show'

  default: 'show'

module.exports = Foo
