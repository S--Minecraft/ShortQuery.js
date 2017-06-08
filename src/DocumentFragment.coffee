###
  DOM Extention
###
d = DocumentFragment

# child node search
d::id = d::getElementById
d::query = d::querySelector
d::queryAll = d::querySelectorAll
d::I = d::id
d::$ = d::query
d::$$ = d::queryAll
# add/remove node
d::addLast = d::appendChild
d::addFirst = (a) ->
  return @insertBefore(a, @firstChild)
d::removeChildren = ->
  @textContent = null
  return @
# get/set family
d::child = ->
  return @children
