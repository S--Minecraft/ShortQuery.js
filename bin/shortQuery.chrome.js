/*!
 * ShortQuery.js v0.1.4-chrome  MIT License
 * (C) 2015 S <https://github.com/S--Minecraft>
 */
/*
  DOM Extention
 */

(function() {
  var d;

  d = Document;

  d.prototype.id = d.prototype.getElementById;

  d.prototype["class"] = d.prototype.getElementsByClassName;

  d.prototype.tag = d.prototype.getElementsByTagName;

  d.prototype.query = d.prototype.querySelector;

  d.prototype.queryAll = d.prototype.querySelectorAll;

  d.prototype.I = d.prototype.id;

  d.prototype.C = d.prototype["class"];

  d.prototype.T = d.prototype.tag;

  d.prototype.$ = d.prototype.query;

  d.prototype.$$ = d.prototype.queryAll;

  d.prototype.create = d.prototype.createElement;

  d.prototype.$__ = d.prototype.create;

}).call(this);


/*
  DOM Extention
 */

(function() {
  var ele;

  ele = HTMLElement;

  ele.prototype.childClass = ele.prototype.getElementsByClassName;

  ele.prototype.childTag = ele.prototype.getElementsByTagName;

  ele.prototype.query = ele.prototype.querySelector;

  ele.prototype.queryAll = ele.prototype.querySelectorAll;

  ele.prototype.C = ele.prototype.childClass;

  ele.prototype.T = ele.prototype.childTag;

  ele.prototype.$ = ele.prototype.query;

  ele.prototype.$$ = ele.prototype.queryAll;

  ele.prototype.addLast = ele.prototype.appendChild;

  ele.prototype.addFirst = function(a) {
    return this.insertBefore(a, this.firstChild);
  };

  ele.prototype.addBefore = function(a) {
    return this.parentNode.insertBefore(a, this);
  };

  ele.prototype.addAfter = function(a) {
    return this.parentNode.insertBefore(a, this.nextSibling);
  };

  ele.prototype.remove = function() {
    return this.parentNode.removeChild(this);
  };

  ele.prototype.removeChildren = function() {
    this.element.textContent = null;
  };

  ele.prototype.getAttr = ele.prototype.getAttribute;

  ele.prototype.setAttr = ele.prototype.setAttribute;

  ele.prototype.removeAttr = ele.prototype.removeAttribute;

  ele.prototype.rmvAttr = ele.prototype.removeAttr;

  ele.prototype.attr = function(a, b) {
    if (b != null) {
      return this.setAttr(a, b);
    } else {
      return this.getAttr(a);
    }
  };

  ele.prototype.getClass = ele.prototype.classList;

  ele.prototype.setClass = function(a) {
    if (Array.isArray(a)) {
      this.className = a.join(" ");
      return this.classList;
    } else if (a != null) {
      this.className = a;
      return this.classList;
    }
  };

  ele.prototype["class"] = function(a) {
    if (a != null) {
      return this.setClass(a);
    } else {
      return this.getClass();
    }
  };

  ele.prototype.addClass = ele.prototype.classList.add;

  ele.prototype.removeClass = ele.prototype.classList.remove;

  ele.prototype.toggleClass = ele.prototype.classList.toggle;

  ele.prototype.hasClass = ele.prototype.classList.contains;

}).call(this);


/*
  Event
 */

(function() {
  var e;

  e = EventTarget;

  e.prototype.on = e.prototype.addEventListener;

  e.prototype.off = e.prototype.removeEventListener;

}).call(this);

(function() {
  var d, exports;

  exports = this;

  d = document;


  /*
    shortQuery
   */

  exports.shortQuery = (function() {
    var class1;

    function shortQuery() {
      return class1.apply(this, arguments);
    }

    class1 = d.querySelectorAll.bind(d);

    shortQuery.id = d.getElementById.bind(d);

    shortQuery["class"] = d.getElementsByClassName.bind(d);

    shortQuery.tag = d.getElementsByTagName.bind(d);

    shortQuery.query = d.querySelector.bind(d);

    shortQuery.queryAll = d.querySelectorAll.bind(d);

    shortQuery.I = shortQuery.id;

    shortQuery.C = shortQuery["class"];

    shortQuery.T = shortQuery.tag;

    shortQuery.$ = shortQuery.query;

    shortQuery.$$ = shortQuery.queryAll;

    shortQuery.create = d.createElement.bind(d);

    return shortQuery;

  })();

  exports.$$ = shortQuery;

  exports.$__ = shortQuery.create;

}).call(this);
