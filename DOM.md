# DOM
`ShortQuery`と`$$`は同値です

## DOM取得
### `$$(query)`
`document.querySelectorAll(query)`のショートハンドです  
CSSと同じクエリでDOMを取得します

### `$$.id(id)` `$$.I(id)`
`document.getElementById(id)`のショートハンドです  
id名でDOMを取得します

### `$$.class(class)` `$$.C(class)`
`document.getElementsByClassName(class)`のショートハンドです  
class名でDOMを取得します  
IE8以下(既にサポート終了しています)では動作しません

### `$$.tag(tag)` `$$.T(tag)`
`document.getElementsByTagName(tag)`のショートハンドです  
タグ名でDOMを取得します

### `$$.query(query)` `$$.$(query)`
`document.querySelector(query)`のショートハンドです  
CSSと同じクエリでDOMを一つ取得します

### `$$.queryAll(query)` `$$.$$(query)`
`document.querySelectorAll(query)`のショートハンドです  
CSSと同じクエリでDOMを取得します

## DOM作成
### `$$.create(tag)` `$__(tag)`
`document.createElement(tag)`のショートハンドです  
DOMを作成します

## その他
### `$$.each(DOM, cb)`
`DOM`にDOMの配列(ex.あるDOMのchildrenなど)を流すと
`cb(それぞれのDOM, i)`に指定した関数をそれぞれ実行します

# DOM
## DOM検索
### `DOM.childClass()` `DOM.C()`
`DOM.getElementsByClassName()`のショートハンドです  
class名からそのDOMの子のDOMを取得します  
IE8以下(既にサポート終了しています)では動作しません

### `DOM.childTag()` `DOM.T()`
`DOM.getElementsByTagName()`のショートハンドです  
タグ名からそのDOMの子のDOMを取得します

### `DOM.query()` `DOM.$()`
`DOM.querySelector()`のショートハンドです  
CSSと同じクエリからそのDOMの子のDOMを1つ取得します

### `DOM.queryAll()` `DOM.$$()`
`DOM.querySelectorAll()`のショートハンドです  
CSSと同じクエリからそのDOMの子のDOMを取得します

## DOM追加/削除
### `DOM.addLast(DOM1)`
`DOM.appendChild(DOM1)`のショートハンドです  
そのDOMの子の最後にDOM1を追加します

### `DOM.addFirst(DOM1)`
そのDOMの子の最初にDOM1を追加します

### `DOM.addBefore(DOM1)`
そのDOMの前にDOM1を追加します

### `DOM.addAfter(DOM1)`
そのDOMの後にDOM1を追加します

### `DOM.remove()`
そのDOMを削除します

### `DOM.removeChildren()`
そのDOMの子をすべて削除します  
IE8(既にサポート終了しています)以下では動作しません

## DOMプロパティ取得
### `DOM.getAttr(attrName)` `DOM.attr(attrName)`
`DOM.getAttribute()`のショートハンドです  
属性を取得します

### `DOM.setAttr(attrName, value)` `DOM.attr(attrName, value)`
`DOM.setAttribute()`のショートハンドです  
属性を設定します

### `DOM.removeAttr(attrName)` `DOM.rmvAttr(attrName)`
`DOM.removeAttribute()` のショートハンドです
属性を削除します

### `DOM.getClass()` `DOM.class()`
classを取得します  

### `DOM.setClass(class)` `DOM.class(class)`
配列または文字列(一つの場合など)でclassを設定します

### `DOM.addClass(class)`
classを追加します  

### `DOM.removeClass(class)`
classを削除します  

### `DOM.toggleClass(class)`
classをトグルします  

### `DOM.hasClass(class)`
classがついているか確認します  