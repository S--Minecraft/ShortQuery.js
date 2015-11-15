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
  # each
  @each: (a, cb) ->
    a = Array.apply(null, a)
    for b, i in a
      cb(i, b)
    return
exports.$$ = shortQuery
exports.$__ = shortQuery.create

###
  DOM Extention
###
ele = HTMLElement ? Element
# child node search
ele::childClass = ele::getElementsByClassName
ele::childTag = ele::getElementsByTagName
ele::query = ele::querySelector
ele::queryAll = ele::querySelectorAll
ele::C = ele::childClass
ele::T = ele::childTag
ele::$ = ele::query
ele::$$ = ele::queryAll
# add/remove node
ele::addLast = ele::appendChild
ele::addFirst = (a) ->
  return @insertBefore(a, @firstChild)
ele::addBefore = (a) ->
  return @parentNode.insertBefore(a, @)
ele::addAfter = (a) ->
  return @parentNode.insertBefore(a, @nextSibling)
ele::remove = ->
  return @parentNode.removeChild(@)
ele::removeChildren = ->
  @element.textContent = null
  return
# get/set node
ele::getAttr = ele::getAttribute
ele::setAttr = ele::setAttribute
ele::removeAttr = ele::removeAttribute
ele::rmvAttr = ele::removeAttr
ele::attr = (a, b) ->
  return if b? then @setAttr(a, b) else @getAttr(a)
ele::getClass = ->
  return @classList
ele::setClass = (a) ->
  if a instanceof Array
    return @className = a.join(" ")
  else if a?
    return @className = a
  return
ele::class = (a) ->
  return if a? then @setClass(a) else @getClass()
# extention
# IE8以下では動かない
ele::addClass = (a) ->
  return @classList.add(a)
ele::removeClass = (a) ->
  return @classList.remove(a)
ele::toggleClass = (a) ->
  return @classList.toggle(a)
ele::hasClass = (a) ->
  return @classList.contains(a)