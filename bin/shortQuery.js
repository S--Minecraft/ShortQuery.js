/*!
 * ShortQuery.js v0.0.1  MIT License
 * (C) 2015 S <https://github.com/S--Minecraft>
 */
/*
  DOM Extention
 */

(function() {
  var ele, hasClassList, key;

  ele = typeof HTMLElement !== "undefined" && HTMLElement !== null ? HTMLElement : Element;

  for (key in ele.prototype) {
    if (key === "classList") {
      hasClassList = true;
    }
  }

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

  ele.prototype.getClass = function() {
    if (hasClassList) {
      return this.classList;
    } else {
      return this.className.split(" ");
    }
  };

  ele.prototype.setClass = function(a) {
    if (a instanceof Array) {
      return this.className = a.join(" ");
    } else if (a != null) {
      return this.className = a;
    }
  };

  ele.prototype["class"] = function(a) {
    if (a != null) {
      return this.setClass(a);
    } else {
      return this.getClass();
    }
  };

  ele.prototype.addClass = function(a) {
    if (hasClassList) {
      return this.classList.add(a);
    } else {
      if (!this.hasClass(a)) {
        this.className += " " + a;
      }
      return this.className.split(" ");
    }
  };

  ele.prototype.removeClass = function(a) {
    if (hasClassList) {
      return this.classList.remove(a);
    } else {
      this.className = this.className.replace(RegExp("^" + a + "$|" + a + " | " + a), "", "g");
      return this.className;
    }
  };

  ele.prototype.toggleClass = function(a) {
    if (hasClassList) {
      return this.classList.toggle(a);
    } else {
      if (this.hasClass(a)) {
        return this.removeClass(a);
      } else {
        return this.addClass(a);
      }
    }
  };

  ele.prototype.hasClass = function(a) {
    if (hasClassList) {
      return this.classList.contains(a);
    } else {
      return this.className.search(RegExp("^" + a + "$|" + a + " | " + a)) !== -1;
    }
  };

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

    shortQuery.each = function(a, cb) {
      var b, i, j, len;
      a = Array.apply(null, a);
      for (i = j = 0, len = a.length; j < len; i = ++j) {
        b = a[i];
        cb(b, i);
      }
    };

    return shortQuery;

  })();

  exports.$$ = shortQuery;

  exports.$__ = shortQuery.create;

}).call(this);
