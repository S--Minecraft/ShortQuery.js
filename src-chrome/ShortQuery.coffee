exports = @

# shorthands
d = document

###
  shortQuery
###
class exports.shortQuery
  # search node
  constructor: d.querySelectorAll.bind(d)
  @id: d.getElementById.bind(d)
  @class: d.getElementsByClassName.bind(d)
  @tag: d.getElementsByTagName.bind(d)
  @query: d.querySelector.bind(d)
  @queryAll: d.querySelectorAll.bind(d)
  @I: @id
  @C: @class
  @T: @tag
  @$: @query
  @$$: @queryAll
  # create node
  @create: d.createElement.bind(d)
exports.$$ = shortQuery
exports.$__ = shortQuery.create