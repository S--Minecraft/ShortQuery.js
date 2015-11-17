###
  DOM Extention
###
ele = HTMLElement ? Element

for key of ele::
  if key is "classList"
    hasClassList = true


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
  if hasClassList
    return @classList
  else
    return @className.split(" ")
ele::setClass = (a) ->
  if a instanceof Array
    return @className = a.join(" ")
  else if a?
    return @className = a
  return
ele::class = (a) ->
  return if a? then @setClass(a) else @getClass()
# extention
ele::addClass = (a) ->
  if hasClassList
    return @classList.add(a)
  else
    if not @hasClass(a)
      @className += " " + a
    return @className.split(" ")
ele::removeClass = (a) ->
  if hasClassList
    return @classList.remove(a)
  else
    @className = @className.replace(///^#{a}$|#{a}\ |\ #{a}///, "", "g")
    return @className
ele::toggleClass = (a) ->
  if hasClassList
    return @classList.toggle(a)
  else
    if @hasClass(a)
      return @removeClass(a)
    else
      return @addClass(a)
ele::hasClass = (a) ->
  if hasClassList
    return @classList.contains(a)
  else
    return @className.search(///^#{a}$|#{a}\ |\ #{a}///) isnt -1
