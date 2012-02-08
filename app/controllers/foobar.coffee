Spine   = require('spine')
Foo     = require('controllers/foo')
Bar     = require('controllers/bar')
Sidebar = require('controllers/sidebar')

class Foobar extends Spine.Stack

  controllers:
    'foo': Foo
    'bar': Bar

  routes:
    '/foo*glob': 'foo'
    '/bar*glob': 'bar'

  constructor: ->
    super

    @sidebar = new Sidebar

    @tabs = new Spine.Tabs(el: @sidebar.tabsList)
    @tabs.connect('foo', @foo)
    @tabs.connect('bar', @bar)

    @tabs.render()

    @append @sidebar

module.exports = Foobar
