###
  Event
###
if EventTarget?
  e = EventTarget
  e::on = e::addEventListener
  e::off = e::removeEventListener
else
  e = Window
  e::on = e::addEventListener
  e::off = e::removeEventListener
  e = Document
  e::on = e::addEventListener
  e::off = e::removeEventListener
  e = Element
  e::on = e::addEventListener
  e::off = e::removeEventListener
