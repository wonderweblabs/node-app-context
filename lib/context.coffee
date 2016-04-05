Q               = require 'q'
AmpersandState  = require 'ampersand-state'

module.exports = AmpersandState.extend

  extraProperties: 'allow'

  session:
    parentContext:
      type:       'state'
      default:    null
    root:
      type:       'boolean'
      default:    false
      require:    true

  constructor: (attrs = {}, options = {}) ->
    if (attrs.parentContext is null || attrs.parentContext is undefined) && attrs.root != true
      throw('Context require a valid parentContext object or root: true.')

    AmpersandState.apply(@, arguments)

  configure: =>
    Q.resolve()

  getParentContext: =>
    if @root == true then @ else @parentContext