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
