## DOM追加/削除
### `DOM.addLast(`*DOM1*`, ..)`
`DOM.append(`*DOM1*`, ..)`のショートハンドです  
`DOM.append(`*DOM1*`, ..)`が存在しない環境下ではDOM1には`append`と違って文字列は入れれません
そのDOMの子の最後に引数のDOMをすべて追加します

### `DOM.addFirst(`*DOM1*`, ..)`
`DOM.prepend(`*DOM1*`, ..)`のショートハンドです  
`DOM.prepend(`*DOM1*`, ..)`が存在しない環境下ではDOM1には`prepend`と違って文字列は入れれません
そのDOMの子の最初に引数のDOMをすべて追加します

### `DOM.addBefore(`*DOM1*`, ..)`
`DOM.before(`*DOM1*`, ..)`のショートハンドです  
`DOM.before(`*DOM1*`, ..)`が存在しない環境下ではDOM1には`before`と違って文字列は入れれません
そのDOMの前に引数のDOMをすべて追加します

### `DOM.addAfter(`*DOM1*`, ..)`
`DOM.after(`*DOM1*`, ..)`のショートハンドです  
`DOM.after(`*DOM1*`, ..)`が存在しない環境下ではDOM1には`after`と違って文字列は入れれません
そのDOMの後に引数のDOMをすべて追加します

### `DOM.remove()`
そのDOMを削除します  
`DOM.remove()` が利用できる環境では組み込み関数が実行されます

### `DOM.removeChildren()`
そのDOMの子をすべて削除します  

### `DOM.replaceWith(`*DOM1*`)`
そのDOMを削除します  
`DOM.replaceWith(`*DOM1*`)` が利用できる環境では組み込み関数が実行されます
