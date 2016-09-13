###
  DOM Extention
###
ele = HTMLElement

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
  if Array.isArray(a)
    @className = a.join(" ")
    return @classList
  else if a?
    @className = a
    return @classList
  return
ele::class = (a) ->
  return if a? then @setClass(a) else @getClass()
# extention
ele::addClass = (a) ->
  return @classList.add(a)
ele::removeClass = (a) ->
  return @classList.remove(a)
ele::toggleClass = (a) ->
  return @classList.toggle(a)
ele::hasClass = (a) ->
  return @classList.contains(a)
