s/^# Collections$/# コレクション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Creating Collections\](#creating-collections)$/    - [コレクション生成](#creating-collections)/
s/^    - \[Extending Collections\](#extending-collections)$/    - [コレクションの拡張](#extending-collections)/
s/^- \[Available Methods\](#available-methods)$/- [利用可能なメソッド](#available-methods)/
s/^- \[Higher Order Messages\](#higher-order-messages)$/- [Higher Order Message](#higher-order-messages)/
s/^## Introduction$/## イントロダクション/
s/^The `Illuminate\\Support\\Collection` class provides a fluent, convenient wrapper for working with arrays of data\. For example, check out the following code\. We'll use the `collect` helper to create a new collection instance from the array, run the `strtoupper` function on each element, and then remove all empty elements:$/`Illuminate\\Support\\Collection`クラスは配列データを操作するための、書きやすく使いやすいラッパーです。以下の例をご覧ください。配列から新しいコレクションインスタンスを作成するために`collect`ヘルパを使用し、各要素に対し`strtoupper`を実行し、それから空の要素を削除しています。/
s/^    $collection = collect(\['taylor', 'abigail', null\])->map(function ($name) {$/    $collection = collect(['taylor', 'abigail', null])->map(function ($name) {/
s/^As you can see, the `Collection` class allows you to chain its methods to perform fluent mapping and reducing of the underlying array\. In general, collections are immutable, meaning every `Collection` method returns an entirely new `Collection` instance\.$/ご覧の通り、`Collection`クラスは裏にある配列をマップ操作してから要素削除するメソッドをチェーンでスムーズにつなげてくれます。つまり元のコレクションは不変であり、全ての`Collection`メソッドは新しい`Collection`インスタンスを返します。/
s/^### Creating Collections$/### コレクション生成/
s/^As mentioned above, the `collect` helper returns a new `Illuminate\\Support\\Collection` instance for the given array\. So, creating a collection is as simple as:$/上記の通り`collect`ヘルパは指定された配列を元に、新しい`Illuminate\\Support\\Collection`インスタンスを返します。ですからコレクションの生成も同様にシンプルです。/
s/^    $collection = collect(\[1, 2, 3\]);$/    $collection = collect([1, 2, 3]);/
s/^> {tip} The results of \[Eloquent\](\/docs\/{{version}}\/eloquent) queries are always returned as `Collection` instances\.$/> {tip} [Eloquent](\/docs\/{{version}}\/eloquent)クエリの結果は、常に`Collection`インスタンスを返します。/
s/^### Extending Collections$/### コレクションの拡張/
s/^Collections are "macroable", which allows you to add additional methods to the `Collection` class at run time\. For example, the following code adds a `toUpper` method to the `Collection` class:$/実行時に`Collection`クラスメソッドを追加できるように、コレクションは「マクロ使用可能」です。例として、`Collection`クラスへ`toUpper`メソッドを追加してみましょう。/
s/^    $collection = collect(\['first', 'second'\]);$/    $collection = collect(['first', 'second']);/
s/^    \/\/ \['FIRST', 'SECOND'\]$/    \/\/ ['FIRST', 'SECOND']/
s/^Typically, you should declare collection macros in a \[service provider\](\/docs\/{{version}}\/providers)\.$/通常、[サービスプロバイダ](\/docs\/{{version}}\/providers)の中で、コレクションマクロを定義します。/
s/^## Available Methods$/## 利用可能なメソッド/
s/^For the remainder of this documentation, we'll discuss each method available on the `Collection` class\. Remember, all of these methods may be chained to fluently manipulate the underlying array\. Furthermore, almost every method returns a new `Collection` instance, allowing you to preserve the original copy of the collection when necessary:$/このドキュメントの残りで、`Collection`クラスで使用できる各メソッドを解説します。これらのメソッドは、全て裏の配列をスラスラと操作するためにチェーンで繋げられることを覚えておきましょう。さらにほとんどのメソッドは、新しい`Collection`インスタンスを返しますので、必要であればコレクションのオリジナルコピーを利用できるように変更しません。/
s/^\[all\](#method-all)$/[all](#method-all)/
s/^\[average\](#method-average)$/[average](#method-average)/
s/^\[avg\](#method-avg)$/[avg](#method-avg)/
s/^\[chunk\](#method-chunk)$/[chunk](#method-chunk)/
s/^\[collapse\](#method-collapse)$/[collapse](#method-collapse)/
s/^\[combine\](#method-combine)$/[combine](#method-combine)/
s/^\[concat\](#method-concat)$/[concat](#method-concat)/
s/^\[contains\](#method-contains)$/[contains](#method-contains)/
s/^\[containsStrict\](#method-containsstrict)$/[containsStrict](#method-containsstrict)/
s/^\[count\](#method-count)$/[count](#method-count)/
s/^\[crossJoin\](#method-crossjoin)$/[crossJoin](#method-crossjoin)/
s/^\[dd\](#method-dd)$/[dd](#method-dd)/
s/^\[diff\](#method-diff)$/[diff](#method-diff)/
s/^\[diffAssoc\](#method-diffassoc)$/[diffAssoc](#method-diffassoc)/
s/^\[diffKeys\](#method-diffkeys)$/[diffKeys](#method-diffkeys)/
s/^\[dump\](#method-dump)$/[dump](#method-dump)/
s/^\[each\](#method-each)$/[each](#method-each)/
s/^\[eachSpread\](#method-eachspread)$/[eachSpread](#method-eachspread)/
s/^\[every\](#method-every)$/[every](#method-every)/
s/^\[except\](#method-except)$/[except](#method-except)/
s/^\[filter\](#method-filter)$/[filter](#method-filter)/
s/^\[first\](#method-first)$/[first](#method-first)/
s/^\[firstWhere\](#method-first-where)$/[firstWhere](#method-first-where)/
s/^\[flatMap\](#method-flatmap)$/[flatMap](#method-flatmap)/
s/^\[flatten\](#method-flatten)$/[flatten](#method-flatten)/
s/^\[flip\](#method-flip)$/[flip](#method-flip)/
s/^\[forget\](#method-forget)$/[forget](#method-forget)/
s/^\[forPage\](#method-forpage)$/[forPage](#method-forpage)/
s/^\[get\](#method-get)$/[get](#method-get)/
s/^\[groupBy\](#method-groupby)$/[groupBy](#method-groupby)/
s/^\[has\](#method-has)$/[has](#method-has)/
s/^\[implode\](#method-implode)$/[implode](#method-implode)/
s/^\[intersect\](#method-intersect)$/[intersect](#method-intersect)/
s/^\[intersectByKeys\](#method-intersectbykeys)$/[intersectByKeys](#method-intersectbykeys)/
s/^\[isEmpty\](#method-isempty)$/[isEmpty](#method-isempty)/
s/^\[isNotEmpty\](#method-isnotempty)$/[isNotEmpty](#method-isnotempty)/
s/^\[keyBy\](#method-keyby)$/[keyBy](#method-keyby)/
s/^\[keys\](#method-keys)$/[keys](#method-keys)/
s/^\[last\](#method-last)$/[last](#method-last)/
s/^\[macro\](#method-macro)$/[macro](#method-macro)/
s/^\[make\](#method-make)$/[make](#method-make)/
s/^\[map\](#method-map)$/[map](#method-map)/
s/^\[mapInto\](#method-mapinto)$/[mapInto](#method-mapinto)/
s/^\[mapSpread\](#method-mapspread)$/[mapSpread](#method-mapspread)/
s/^\[mapToGroups\](#method-maptogroups)$/[mapToGroups](#method-maptogroups)/
s/^\[mapWithKeys\](#method-mapwithkeys)$/[mapWithKeys](#method-mapwithkeys)/
s/^\[max\](#method-max)$/[max](#method-max)/
s/^\[median\](#method-median)$/[median](#method-median)/
s/^\[merge\](#method-merge)$/[merge](#method-merge)/
s/^\[min\](#method-min)$/[min](#method-min)/
s/^\[mode\](#method-mode)$/[mode](#method-mode)/
s/^\[nth\](#method-nth)$/[nth](#method-nth)/
s/^\[only\](#method-only)$/[only](#method-only)/
s/^\[pad\](#method-pad)$/[pad](#method-pad)/
s/^\[partition\](#method-partition)$/[partition](#method-partition)/
s/^\[pipe\](#method-pipe)$/[pipe](#method-pipe)/
s/^\[pluck\](#method-pluck)$/[pluck](#method-pluck)/
s/^\[pop\](#method-pop)$/[pop](#method-pop)/
s/^\[prepend\](#method-prepend)$/[prepend](#method-prepend)/
s/^\[pull\](#method-pull)$/[pull](#method-pull)/
s/^\[push\](#method-push)$/[push](#method-push)/
s/^\[put\](#method-put)$/[put](#method-put)/
s/^\[random\](#method-random)$/[random](#method-random)/
s/^\[reduce\](#method-reduce)$/[reduce](#method-reduce)/
s/^\[reject\](#method-reject)$/[reject](#method-reject)/
s/^\[reverse\](#method-reverse)$/[reverse](#method-reverse)/
s/^\[search\](#method-search)$/[search](#method-search)/
s/^\[shift\](#method-shift)$/[shift](#method-shift)/
s/^\[shuffle\](#method-shuffle)$/[shuffle](#method-shuffle)/
s/^\[slice\](#method-slice)$/[slice](#method-slice)/
s/^\[sort\](#method-sort)$/[sort](#method-sort)/
s/^\[sortBy\](#method-sortby)$/[sortBy](#method-sortby)/
s/^\[sortByDesc\](#method-sortbydesc)$/[sortByDesc](#method-sortbydesc)/
s/^\[sortKeys\](#method-sortkeys)$/[sortKeys](#method-sortkeys)/
s/^\[sortKeysDesc\](#method-sortkeysdesc)$/[sortKeysDesc](#method-sortkeysdesc)/
s/^\[splice\](#method-splice)$/[splice](#method-splice)/
s/^\[split\](#method-split)$/[split](#method-split)/
s/^\[sum\](#method-sum)$/[sum](#method-sum)/
s/^\[take\](#method-take)$/[take](#method-take)/
s/^\[tap\](#method-tap)$/[tap](#method-tap)/
s/^\[times\](#method-times)$/[times](#method-times)/
s/^\[toArray\](#method-toarray)$/[toArray](#method-toarray)/
s/^\[toJson\](#method-tojson)$/[toJson](#method-tojson)/
s/^\[transform\](#method-transform)$/[transform](#method-transform)/
s/^\[union\](#method-union)$/[union](#method-union)/
s/^\[unique\](#method-unique)$/[unique](#method-unique)/
s/^\[uniqueStrict\](#method-uniquestrict)$/[uniqueStrict](#method-uniquestrict)/
s/^\[unless\](#method-unless)$/[unless](#method-unless)/
s/^\[unwrap\](#method-unwrap)$/[unwrap](#method-unwrap)/
s/^\[values\](#method-values)$/[values](#method-values)/
s/^\[when\](#method-when)$/[when](#method-when)/
s/^\[where\](#method-where)$/[where](#method-where)/
s/^\[whereStrict\](#method-wherestrict)$/[whereStrict](#method-wherestrict)/
s/^\[whereIn\](#method-wherein)$/[whereIn](#method-wherein)/
s/^\[whereInStrict\](#method-whereinstrict)$/[whereInStrict](#method-whereinstrict)/
s/^\[whereInstanceOf\](#method-whereinstanceof)$/[whereInstanceOf](#method-whereinstanceof)/
s/^\[whereNotIn\](#method-wherenotin)$/[whereNotIn](#method-wherenotin)/
s/^\[whereNotInStrict\](#method-wherenotinstrict)$/[whereNotInStrict](#method-wherenotinstrict)/
s/^\[wrap\](#method-wrap)$/[wrap](#method-wrap)/
s/^\[zip\](#method-zip)$/[zip](#method-zip)/
s/^## Method Listing$/## メソッド一覧/
s/^    #collection-method:not(\.first-collection-method) {$/    #collection-method:not(.first-collection-method) {/
s/^#### `all()` {#collection-method \.first-collection-method}$/#### `all()` {#collection-method .first-collection-method}/
s/^The `all` method returns the underlying array represented by the collection:$/`all`メソッドはコレクションの裏の配列表現を返します。/
s/^    collect(\[1, 2, 3\])->all();$/    collect([1, 2, 3])->all();/
s/^    \/\/ \[1, 2, 3\]$/    \/\/ [1, 2, 3]/
s/^Alias for the \[`avg`\](#method-avg) method\.$/[`avg`](#method-avg)メソッドのエイリアスです。/
s/^The `avg` method returns the \[average value\](https:\/\/en\.wikipedia\.org\/wiki\/Average) of a given key:$/`avg`メソッドは、指定したキーの[平均値](https:\/\/ja.wikipedia.org\/wiki\/%E5%B9%B3%E5%9D%87)を返します。/
s/^    $average = collect(\[\['foo' => 10\], \['foo' => 10\], \['foo' => 20\], \['foo' => 40\]\])->avg('foo');$/    $average = collect([['foo' => 10], ['foo' => 10], ['foo' => 20], ['foo' => 40]])->avg('foo');/
s/^    $average = collect(\[1, 1, 2, 4\])->avg();$/    $average = collect([1, 1, 2, 4])->avg();/
s/^The `chunk` method breaks the collection into multiple, smaller collections of a given size:$/`chunk`メソッドはコレクションを指定したサイズで複数の小さなコレクションに分割します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5, 6, 7\]);$/    $collection = collect([1, 2, 3, 4, 5, 6, 7]);/
s/^    \/\/ \[\[1, 2, 3, 4\], \[5, 6, 7\]\]$/    \/\/ [[1, 2, 3, 4], [5, 6, 7]]/
s/^This method is especially useful in \[views\](\/docs\/{{version}}\/views) when working with a grid system such as \[Bootstrap\](https:\/\/getbootstrap\.com\/css\/#grid)\. Imagine you have a collection of \[Eloquent\](\/docs\/{{version}}\/eloquent) models you want to display in a grid:$/このメソッドは特に[Bootstrap](https:\/\/getbootstrap.com\/css\/#grid)のようなグリッドシステムを[ビュー](\/docs\/{{version}}\/views)で操作する場合に便利です。[Eloquent](\/docs\/{{version}}\/eloquent)モデルのコレクションがあり、グリッドで表示しようとしているところを想像してください。/
s/^The `collapse` method collapses a collection of arrays into a single, flat collection:$/`collapse`メソッドは、配列のコレクションをフラットな一次コレクションに展開します。/
s/^    $collection = collect(\[\[1, 2, 3\], \[4, 5, 6\], \[7, 8, 9\]\]);$/    $collection = collect([[1, 2, 3], [4, 5, 6], [7, 8, 9]]);/
s/^    \/\/ \[1, 2, 3, 4, 5, 6, 7, 8, 9\]$/    \/\/ [1, 2, 3, 4, 5, 6, 7, 8, 9]/
s/^The `combine` method combines the keys of the collection with the values of another array or collection:$/`combine`メソッドは、キーのコレクションと、値の配列かコレクションを結合します。/
s/^    $collection = collect(\['name', 'age'\]);$/    $collection = collect(['name', 'age']);/
s/^    $combined = $collection->combine(\['George', 29\]);$/    $combined = $collection->combine(['George', 29]);/
s/^    \/\/ \['name' => 'George', 'age' => 29\]$/    \/\/ ['name' => 'George', 'age' => 29]/
s/^The `concat` method appends the given `array` or collection values onto the end of the collection:$/`concat`メソッドは、指定した「配列」やコレクションの値を元のコレクションの最後に追加します。/
s/^    $collection = collect(\['John Doe'\]);$/    $collection = collect(['John Doe']);/
s/^    $concatenated = $collection->concat(\['Jane Doe'\])->concat(\['name' => 'Johnny Doe'\]);$/    $concatenated = $collection->concat(['Jane Doe'])->concat(['name' => 'Johnny Doe']);/
s/^    \/\/ \['John Doe', 'Jane Doe', 'Johnny Doe'\]$/    \/\/ ['John Doe', 'Jane Doe', 'Johnny Doe']/
s/^The `contains` method determines whether the collection contains a given item:$/`contains`メソッドは指定したアイテムがコレクションに含まれているかどうかを判定します。/
s/^    $collection = collect(\['name' => 'Desk', 'price' => 100\]);$/    $collection = collect(['name' => 'Desk', 'price' => 100]);/
s/^You may also pass a key \/ value pair to the `contains` method, which will determine if the given pair exists in the collection:$/さらに`contains`メソッドにはキー／値ペアを指定することもでき、コレクション中に指定したペアが存在するかを確認できます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product' => 'Desk', 'price' => 200\],$/        ['product' => 'Desk', 'price' => 200],/
s/^        \['product' => 'Chair', 'price' => 100\],$/        ['product' => 'Chair', 'price' => 100],/
s/^    \]);$/    ]);/
s/^Finally, you may also pass a callback to the `contains` method to perform your own truth test:$/最後に、`contains`メソッドにはコールバックを渡すこともでき、独自のテストを行えます。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^The `contains` method uses "loose" comparisons when checking item values, meaning a string with an integer value will be considered equal to an integer of the same value\. Use the \[`containsStrict`\](#method-containsstrict) method to filter using "strict" comparisons\.$/`contains`メソッドは、アイテムを「緩く」比較します。つまり、ある整数の文字列とその整数値は等値として扱います。「厳密」な比較を行いたい場合は、[`containsStrict`](#method-containsstrict)メソッドを使ってください。/
s/^This method has the same signature as the \[`contains`\](#method-contains) method; however, all values are compared using "strict" comparisons\.$/このメソッドは、[`contains`](#method-contains)メソッドと使用方法は同じです。しかし、「厳密」な値の比較を行います。/
s/^The `count` method returns the total number of items in the collection:$/`count`メソッドはコレクションのアイテム数を返します。/
s/^    $collection = collect(\[1, 2, 3, 4\]);$/    $collection = collect([1, 2, 3, 4]);/
s/^The `crossJoin` method cross joins the collection's values among the given arrays or collections, returning a Cartesian product with all possible permutations:$/`crossJoin`メソッドはコレクションの値と、指定した配列かコレクション間の値を交差接続し、可能性のある全順列の直積を返します。/
s/^    $collection = collect(\[1, 2\]);$/    $collection = collect([1, 2]);/
s/^    $matrix = $collection->crossJoin(\['a', 'b'\]);$/    $matrix = $collection->crossJoin(['a', 'b']);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \[1, 'a'\],$/            [1, 'a'],/
s/^            \[1, 'b'\],$/            [1, 'b'],/
s/^            \[2, 'a'\],$/            [2, 'a'],/
s/^            \[2, 'b'\],$/            [2, 'b'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^    $collection = collect(\[1, 2\]);$/    $collection = collect([1, 2]);/
s/^    $matrix = $collection->crossJoin(\['a', 'b'\], \['I', 'II'\]);$/    $matrix = $collection->crossJoin(['a', 'b'], ['I', 'II']);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \[1, 'a', 'I'\],$/            [1, 'a', 'I'],/
s/^            \[1, 'a', 'II'\],$/            [1, 'a', 'II'],/
s/^            \[1, 'b', 'I'\],$/            [1, 'b', 'I'],/
s/^            \[1, 'b', 'II'\],$/            [1, 'b', 'II'],/
s/^            \[2, 'a', 'I'\],$/            [2, 'a', 'I'],/
s/^            \[2, 'a', 'II'\],$/            [2, 'a', 'II'],/
s/^            \[2, 'b', 'I'\],$/            [2, 'b', 'I'],/
s/^            \[2, 'b', 'II'\],$/            [2, 'b', 'II'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `dd` method dumps the collection's items and ends execution of the script:$/`dd`メソッドはコレクションアイテムをダンプし、スクリプトの実行を停止します。/
s/^    $collection = collect(\['John Doe', 'Jane Doe'\]);$/    $collection = collect(['John Doe', 'Jane Doe']);/
s/^    \/\*$/    \/*/
s/^            #items: array:2 \[$/            #items: array:2 [/
s/^            \]$/            ]/
s/^    \*\/$/    *\//
s/^If you do not want to stop executing the script, use the \[`dump`\](#method-dump) method instead\.$/スクリプトの実行を止めたくない場合は、[`dump`](#method-dump)メソッドを代わりに使用してください。/
s/^The `diff` method compares the collection against another collection or a plain PHP `array` based on its values\. This method will return the values in the original collection that are not present in the given collection:$/`diff`メソッドはコレクションと、他のコレクションか一次元「配列」を値にもとづき比較します。このメソッドは指定されたコレクションに存在しない、オリジナルのコレクションの値を返します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    $diff = $collection->diff(\[2, 4, 6, 8\]);$/    $diff = $collection->diff([2, 4, 6, 8]);/
s/^    \/\/ \[1, 3, 5\]$/    \/\/ [1, 3, 5]/
s/^The `diffAssoc` method compares the collection against another collection or a plain PHP `array` based on its keys and values\. This method will return the key \/ value pairs in the original collection that are not present in the given collection:$/`diffAssoc`メソッドはコレクションと、他のコレクションかキー／値形式のPHP配列を比較します。このメソッドは指定したコレクションに含まれない、オリジナルコレクション中のキー／値ペアを返します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^    \]);$/    ]);/
s/^    $diff = $collection->diffAssoc(\[$/    $diff = $collection->diffAssoc([/
s/^    \]);$/    ]);/
s/^    \/\/ \['color' => 'orange', 'remain' => 6\]$/    \/\/ ['color' => 'orange', 'remain' => 6]/
s/^The `diffKeys` method compares the collection against another collection or a plain PHP `array` based on its keys\. This method will return the key \/ value pairs in the original collection that are not present in the given collection:$/`diffKeys`メソッドはコレクションと、他のコレクションか一次元「配列」をキーで比較します。このメソッドは指定したコレクションに存在しない、オリジナルコレクション中のキー／値ペアを返します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^    \]);$/    ]);/
s/^    $diff = $collection->diffKeys(\[$/    $diff = $collection->diffKeys([/
s/^    \]);$/    ]);/
s/^    \/\/ \['one' => 10, 'three' => 30, 'five' => 50\]$/    \/\/ ['one' => 10, 'three' => 30, 'five' => 50]/
s/^The `dump` method dumps the collection's items:$/`dump`メソッドはコレクションアイテムをダンプします。/
s/^    $collection = collect(\['John Doe', 'Jane Doe'\]);$/    $collection = collect(['John Doe', 'Jane Doe']);/
s/^    \/\*$/    \/*/
s/^            #items: array:2 \[$/            #items: array:2 [/
s/^            \]$/            ]/
s/^    \*\/$/    *\//
s/^If you want to stop executing the script after dumping the collection, use the \[`dd`\](#method-dd) method instead\.$/コレクションをダンプした後にスクリプトを停止したい場合は、代わりに[`dd`](#method-dd)メソッドを使用してください。/
s/^The `each` method iterates over the items in the collection and passes each item to a callback:$/`each`メソッドはコレクションのアイテムを繰り返しで処理し、コールバックに各アイテムを渡します。/
s/^If you would like to stop iterating through the items, you may return `false` from your callback:$/アイテム全体への繰り返しを停止したい場合は、`false`をコールバックから返してください。/
s/^        if (\/\* some condition \*\/) {$/        if (\/* 条件 *\/) {/
s/^The `eachSpread` method iterates over the collection's items, passing each nested item value into the given callback:$/`eachSpread`メソッドはコレクションのアイテムに対し、指定したコールバックへネストしたアイテム値をそれぞれ渡し、繰り返し処理します。/
s/^    $collection = collect(\[\['John Doe', 35\], \['Jane Doe', 33\]\]);$/    $collection = collect([['John Doe', 35], ['Jane Doe', 33]]);/
s/^You may stop iterating through the items by returning `false` from the callback:$/アイテムに対する繰り返しを停止したい場合は、コールバックから`false`を返します。/
s/^The `every` method may be used to verify that all elements of a collection pass a given truth test:$/`every`メソッドは、コレクションの全要素が、指定したテストをパスするか判定するために使用します。/
s/^    collect(\[1, 2, 3, 4\])->every(function ($value, $key) {$/    collect([1, 2, 3, 4])->every(function ($value, $key) {/
s/^The `except` method returns all items in the collection except for those with the specified keys:$/`except`メソッドは、キーにより指定したアイテム以外の全コレクション要素を返します。/
s/^    $collection = collect(\['product_id' => 1, 'price' => 100, 'discount' => false\]);$/    $collection = collect(['product_id' => 1, 'price' => 100, 'discount' => false]);/
s/^    $filtered = $collection->except(\['price', 'discount'\]);$/    $filtered = $collection->except(['price', 'discount']);/
s/^    \/\/ \['product_id' => 1\]$/    \/\/ ['product_id' => 1]/
s/^For the inverse of `except`, see the \[only\](#method-only) method\.$/`except`の正反対の機能は、[only](#method-only)メソッドです。/
s/^The `filter` method filters the collection using the given callback, keeping only those items that pass a given truth test:$/`filter`メソッドは指定したコールバックでコレクションをフィルタリングします。テストでtrueを返したアイテムだけが残ります。/
s/^    $collection = collect(\[1, 2, 3, 4\]);$/    $collection = collect([1, 2, 3, 4]);/
s/^    \/\/ \[3, 4\]$/    \/\/ [3, 4]/
s/^If no callback is supplied, all entries of the collection that are equivalent to `false` will be removed:$/コールバックを指定しない場合、コレクションの全エンティティの中で、`false`として評価されるものを削除します。/
s/^    $collection = collect(\[1, 2, 3, null, false, '', 0, \[\]\]);$/    $collection = collect([1, 2, 3, null, false, '', 0, []]);/
s/^    \/\/ \[1, 2, 3\]$/    \/\/ [1, 2, 3]/
s/^For the inverse of `filter`, see the \[reject\](#method-reject) method\.$/`filter`の逆の動作は、[reject](#method-reject)メソッドを見てください。/
s/^The `first` method returns the first element in the collection that passes a given truth test:$/`first`メソッドは指定された真偽テストをパスしたコレクションの最初の要素を返します。/
s/^    collect(\[1, 2, 3, 4\])->first(function ($value, $key) {$/    collect([1, 2, 3, 4])->first(function ($value, $key) {/
s/^You may also call the `first` method with no arguments to get the first element in the collection\. If the collection is empty, `null` is returned:$/`first`メソッドに引数を付けなければ、コレクションの最初の要素を取得できます。コレクションが空なら`null`が返ります。/
s/^    collect(\[1, 2, 3, 4\])->first();$/    collect([1, 2, 3, 4])->first();/
s/^The `firstWhere` method returns the first element in the collection with the given key \/ value pair:$/`firstWhere`メソッドはコレクションの中から、最初の指定したキー／値ペアの要素を返します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'Regena', 'age' => 12\],$/        ['name' => 'Regena', 'age' => 12],/
s/^        \['name' => 'Linda', 'age' => 14\],$/        ['name' => 'Linda', 'age' => 14],/
s/^        \['name' => 'Diego', 'age' => 23\],$/        ['name' => 'Diego', 'age' => 23],/
s/^        \['name' => 'Linda', 'age' => 84\],$/        ['name' => 'Linda', 'age' => 84],/
s/^    \]);$/    ]);/
s/^    \/\/ \['name' => 'Linda', 'age' => 14\]$/    \/\/ ['name' => 'Linda', 'age' => 14]/
s/^You may also call the `firstWhere` method with an operator:$/比較演算子を指定し、`firstWhere`メソッドを呼び出すこともできます。/
s/^    \/\/ \['name' => 'Diego', 'age' => 23\]$/    \/\/ ['name' => 'Diego', 'age' => 23]/
s/^The `flatMap` method iterates through the collection and passes each value to the given callback\. The callback is free to modify the item and return it, thus forming a new collection of modified items\. Then, the array is flattened by a level:$/`flatMap`メソッドはそれぞれの値をコールバックへ渡しながら、コレクション全体を繰り返し処理します。コールバックでは自由にアイテムの値を変更し、それを返します。その値へ更新した新しいコレクションを作成します。配列は一次元になります。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'Sally'\],$/        ['name' => 'Sally'],/
s/^        \['school' => 'Arkansas'\],$/        ['school' => 'Arkansas'],/
s/^        \['age' => 28\]$/        ['age' => 28]/
s/^    \]);$/    ]);/
s/^    \/\/ \['name' => 'SALLY', 'school' => 'ARKANSAS', 'age' => '28'\];$/    \/\/ ['name' => 'SALLY', 'school' => 'ARKANSAS', 'age' => '28'];/
s/^The `flatten` method flattens a multi-dimensional collection into a single dimension:$/`flatten`メソッドは多次元コレクションを一次元化します。/
s/^    $collection = collect(\['name' => 'taylor', 'languages' => \['php', 'javascript'\]\]);$/    $collection = collect(['name' => 'taylor', 'languages' => ['php', 'javascript']]);/
s/^    \/\/ \['taylor', 'php', 'javascript'\];$/    \/\/ ['taylor', 'php', 'javascript'];/
s/^You may optionally pass the function a "depth" argument:$/このメソッドでは、いくつ配列の次元を減らすかを引数で指定できます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        'Apple' => \[$/        'Apple' => [/
s/^            \['name' => 'iPhone 6S', 'brand' => 'Apple'\],$/            ['name' => 'iPhone 6S', 'brand' => 'Apple'],/
s/^        \],$/        ],/
s/^        'Samsung' => \[$/        'Samsung' => [/
s/^            \['name' => 'Galaxy S7', 'brand' => 'Samsung'\]$/            ['name' => 'Galaxy S7', 'brand' => 'Samsung']/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'iPhone 6S', 'brand' => 'Apple'\],$/            ['name' => 'iPhone 6S', 'brand' => 'Apple'],/
s/^            \['name' => 'Galaxy S7', 'brand' => 'Samsung'\],$/            ['name' => 'Galaxy S7', 'brand' => 'Samsung'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^In this example, calling `flatten` without providing the depth would have also flattened the nested arrays, resulting in `\['iPhone 6S', 'Apple', 'Galaxy S7', 'Samsung'\]`\. Providing a depth allows you to restrict the levels of nested arrays that will be flattened\.$/上記の例で、`flatten`を次元の指定なしで呼び出すと、ネスト配列をフラットにしますので、結果は`['iPhone 6S', 'Apple', 'Galaxy S7', 'Samsung']`になります。次元を指定すると、配列のネストをそのレベルに制約し、減らします。/
s/^The `flip` method swaps the collection's keys with their corresponding values:$/`flip`メソッドはコレクションのキーと対応する値を入れ替えます。/
s/^    $collection = collect(\['name' => 'taylor', 'framework' => 'laravel'\]);$/    $collection = collect(['name' => 'taylor', 'framework' => 'laravel']);/
s/^    \/\/ \['taylor' => 'name', 'laravel' => 'framework'\]$/    \/\/ ['taylor' => 'name', 'laravel' => 'framework']/
s/^The `forget` method removes an item from the collection by its key:$/`forget`メソッドはキーによりコレクションのアイテムを削除します。/
s/^    $collection = collect(\['name' => 'taylor', 'framework' => 'laravel'\]);$/    $collection = collect(['name' => 'taylor', 'framework' => 'laravel']);/
s/^    \/\/ \['framework' => 'laravel'\]$/    \/\/ ['framework' => 'laravel']/
s/^> {note} Unlike most other collection methods, `forget` does not return a new modified collection; it modifies the collection it is called on\.$/> {note} 他のコレクションメソッドとは異なり、`forget`は更新された新しいコレクションを返しません。呼び出しもとのコレクションを更新します。/
s/^The `forPage` method returns a new collection containing the items that would be present on a given page number\. The method accepts the page number as its first argument and the number of items to show per page as its second argument:$/`forPage`メソッドは指定されたページ番号を表すアイテムで構成された新しいコレクションを返します。このメソッドは最初の引数にページ番号、２つ目の引数としてページあたりのアイテム数を受け取ります。/
s/^    $collection = collect(\[1, 2, 3, 4, 5, 6, 7, 8, 9\]);$/    $collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9]);/
s/^    \/\/ \[4, 5, 6\]$/    \/\/ [4, 5, 6]/
s/^The `get` method returns the item at a given key\. If the key does not exist, `null` is returned:$/`get`メソッドは指定されたキーのアイテムを返します。キーが存在していない場合は`null`を返します。/
s/^    $collection = collect(\['name' => 'taylor', 'framework' => 'laravel'\]);$/    $collection = collect(['name' => 'taylor', 'framework' => 'laravel']);/
s/^You may optionally pass a default value as the second argument:$/オプションとして第２引数にデフォルト値を指定することもできます。/
s/^    $collection = collect(\['name' => 'taylor', 'framework' => 'laravel'\]);$/    $collection = collect(['name' => 'taylor', 'framework' => 'laravel']);/
s/^You may even pass a callback as the default value\. The result of the callback will be returned if the specified key does not exist:$/デフォルト値にコールバックを渡すこともできます。指定したキーが存在していなかった場合、コールバックの結果が返されます。/
s/^The `groupBy` method groups the collection's items by a given key:$/`groupBy`メソッドは指定したキーによりコレクションのアイテムをグループにまとめます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['account_id' => 'account-x10', 'product' => 'Chair'\],$/        ['account_id' => 'account-x10', 'product' => 'Chair'],/
s/^        \['account_id' => 'account-x10', 'product' => 'Bookcase'\],$/        ['account_id' => 'account-x10', 'product' => 'Bookcase'],/
s/^        \['account_id' => 'account-x11', 'product' => 'Desk'\],$/        ['account_id' => 'account-x11', 'product' => 'Desk'],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'account-x10' => \[$/            'account-x10' => [/
s/^                \['account_id' => 'account-x10', 'product' => 'Chair'\],$/                ['account_id' => 'account-x10', 'product' => 'Chair'],/
s/^                \['account_id' => 'account-x10', 'product' => 'Bookcase'\],$/                ['account_id' => 'account-x10', 'product' => 'Bookcase'],/
s/^            \],$/            ],/
s/^            'account-x11' => \[$/            'account-x11' => [/
s/^                \['account_id' => 'account-x11', 'product' => 'Desk'\],$/                ['account_id' => 'account-x11', 'product' => 'Desk'],/
s/^            \],$/            ],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^Instead of passing a string `key`, you may pass a callback\. The callback should return the value you wish to key the group by:$/文字列で`key`を指定する代わりに、コールバックを渡すことができます。コール―バックはグループとしてまとめるキーの値を返す必要があります。/
s/^        return substr($item\['account_id'\], -3);$/        return substr($item['account_id'], -3);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'x10' => \[$/            'x10' => [/
s/^                \['account_id' => 'account-x10', 'product' => 'Chair'\],$/                ['account_id' => 'account-x10', 'product' => 'Chair'],/
s/^                \['account_id' => 'account-x10', 'product' => 'Bookcase'\],$/                ['account_id' => 'account-x10', 'product' => 'Bookcase'],/
s/^            \],$/            ],/
s/^            'x11' => \[$/            'x11' => [/
s/^                \['account_id' => 'account-x11', 'product' => 'Desk'\],$/                ['account_id' => 'account-x11', 'product' => 'Desk'],/
s/^            \],$/            ],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^Multiple grouping criteria may be passed as an array\. Each array element will be applied to the corresponding level within a multi-dimensional array:$/配列として、複数のグルーピング基準を指定できます。各配列要素は多次元配列の対応するレベルへ適用されます。/
s/^    $data = new Collection(\[$/    $data = new Collection([/
s/^        10 => \['user' => 1, 'skill' => 1, 'roles' => \['Role_1', 'Role_3'\]\],$/        10 => ['user' => 1, 'skill' => 1, 'roles' => ['Role_1', 'Role_3']],/
s/^        20 => \['user' => 2, 'skill' => 1, 'roles' => \['Role_1', 'Role_2'\]\],$/        20 => ['user' => 2, 'skill' => 1, 'roles' => ['Role_1', 'Role_2']],/
s/^        30 => \['user' => 3, 'skill' => 2, 'roles' => \['Role_1'\]\],$/        30 => ['user' => 3, 'skill' => 2, 'roles' => ['Role_1']],/
s/^        40 => \['user' => 4, 'skill' => 2, 'roles' => \['Role_2'\]\],$/        40 => ['user' => 4, 'skill' => 2, 'roles' => ['Role_2']],/
s/^    \]);$/    ]);/
s/^    $result = $data->groupBy(\[$/    $result = $data->groupBy([/
s/^            return $item\['roles'\];$/            return $item['roles'];/
s/^    \], $preserveKeys = true);$/    ], $preserveKeys = true);/
s/^    \/\*$/    \/*/
s/^    \[$/    [/
s/^        1 => \[$/        1 => [/
s/^            'Role_1' => \[$/            'Role_1' => [/
s/^                10 => \['user' => 1, 'skill' => 1, 'roles' => \['Role_1', 'Role_3'\]\],$/                10 => ['user' => 1, 'skill' => 1, 'roles' => ['Role_1', 'Role_3']],/
s/^                20 => \['user' => 2, 'skill' => 1, 'roles' => \['Role_1', 'Role_2'\]\],$/                20 => ['user' => 2, 'skill' => 1, 'roles' => ['Role_1', 'Role_2']],/
s/^            \],$/            ],/
s/^            'Role_2' => \[$/            'Role_2' => [/
s/^                20 => \['user' => 2, 'skill' => 1, 'roles' => \['Role_1', 'Role_2'\]\],$/                20 => ['user' => 2, 'skill' => 1, 'roles' => ['Role_1', 'Role_2']],/
s/^            \],$/            ],/
s/^            'Role_3' => \[$/            'Role_3' => [/
s/^                10 => \['user' => 1, 'skill' => 1, 'roles' => \['Role_1', 'Role_3'\]\],$/                10 => ['user' => 1, 'skill' => 1, 'roles' => ['Role_1', 'Role_3']],/
s/^            \],$/            ],/
s/^        \],$/        ],/
s/^        2 => \[$/        2 => [/
s/^            'Role_1' => \[$/            'Role_1' => [/
s/^                30 => \['user' => 3, 'skill' => 2, 'roles' => \['Role_1'\]\],$/                30 => ['user' => 3, 'skill' => 2, 'roles' => ['Role_1']],/
s/^            \],$/            ],/
s/^            'Role_2' => \[$/            'Role_2' => [/
s/^                40 => \['user' => 4, 'skill' => 2, 'roles' => \['Role_2'\]\],$/                40 => ['user' => 4, 'skill' => 2, 'roles' => ['Role_2']],/
s/^            \],$/            ],/
s/^        \],$/        ],/
s/^    \];$/    ];/
s/^    \*\/$/    *\//
s/^The `has` method determines if a given key exists in the collection:$/`has`メソッドは指定したキーがコレクションに存在しているかを調べます。/
s/^    $collection = collect(\['account_id' => 1, 'product' => 'Desk'\]);$/    $collection = collect(['account_id' => 1, 'product' => 'Desk']);/
s/^The `implode` method joins the items in a collection\. Its arguments depend on the type of items in the collection\. If the collection contains arrays or objects, you should pass the key of the attributes you wish to join, and the "glue" string you wish to place between the values:$/`implode`メソッドはコレクションのアイテムを結合します。引数はコレクションのアイテムのタイプにより異なります。 コレクションに配列化オブジェクトが含まれている場合は、接続したい属性のキーと値の間にはさみたい「糊」の役割の文字列を指定します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['account_id' => 1, 'product' => 'Desk'\],$/        ['account_id' => 1, 'product' => 'Desk'],/
s/^        \['account_id' => 2, 'product' => 'Chair'\],$/        ['account_id' => 2, 'product' => 'Chair'],/
s/^    \]);$/    ]);/
s/^If the collection contains simple strings or numeric values, pass the "glue" as the only argument to the method:$/コレクションが文字列か数値を含んでいるだけなら、メソッドには「糊」の文字列を渡すだけで済みます。/
s/^    collect(\[1, 2, 3, 4, 5\])->implode('-');$/    collect([1, 2, 3, 4, 5])->implode('-');/
s/^The `intersect` method removes any values from the original collection that are not present in the given `array` or collection\. The resulting collection will preserve the original collection's keys:$/`intersect`メソッドは、指定した「配列」かコレクションに存在していない値をオリジナルコレクションから取り除きます。結果のコレクションには、オリジナルコレクションのキーがリストされます。/
s/^    $collection = collect(\['Desk', 'Sofa', 'Chair'\]);$/    $collection = collect(['Desk', 'Sofa', 'Chair']);/
s/^    $intersect = $collection->intersect(\['Desk', 'Chair', 'Bookcase'\]);$/    $intersect = $collection->intersect(['Desk', 'Chair', 'Bookcase']);/
s/^    \/\/ \[0 => 'Desk', 2 => 'Chair'\]$/    \/\/ [0 => 'Desk', 2 => 'Chair']/
s/^The `intersectByKeys` method removes any keys from the original collection that are not present in the given `array` or collection:$/`intersectByKeys`メソッドは、指定した配列かコレクションに含まれないキーの要素をオリジナルコレクションから削除します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^    \]);$/    ]);/
s/^    $intersect = $collection->intersectByKeys(\[$/    $intersect = $collection->intersectByKeys([/
s/^    \]);$/    ]);/
s/^    \/\/ \['type' => 'screen', 'year' => 2009\]$/    \/\/ ['type' => 'screen', 'year' => 2009]/
s/^The `isEmpty` method returns `true` if the collection is empty; otherwise, `false` is returned:$/`isEmpty`メソッドはコレクションが空の場合に`true`を返します。そうでなければ`false`を返します。/
s/^    collect(\[\])->isEmpty();$/    collect([])->isEmpty();/
s/^The `isNotEmpty` method returns `true` if the collection is not empty; otherwise, `false` is returned:$/`isNotEmpty`メソッドは、コレクションが空でない場合に`true`を返します。空であれば`false`を返します。/
s/^    collect(\[\])->isNotEmpty();$/    collect([])->isNotEmpty();/
s/^The `keyBy` method keys the collection by the given key\. If multiple items have the same key, only the last one will appear in the new collection:$/`keyBy`メソッドは指定したキーをコレクションのキーにします。複数のアイテムが同じキーを持っている場合、新しいコレクションには最後のアイテムが含まれます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product_id' => 'prod-100', 'name' => 'Desk'\],$/        ['product_id' => 'prod-100', 'name' => 'Desk'],/
s/^        \['product_id' => 'prod-200', 'name' => 'Chair'\],$/        ['product_id' => 'prod-200', 'name' => 'Chair'],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'prod-100' => \['product_id' => 'prod-100', 'name' => 'Desk'\],$/            'prod-100' => ['product_id' => 'prod-100', 'name' => 'Desk'],/
s/^            'prod-200' => \['product_id' => 'prod-200', 'name' => 'Chair'\],$/            'prod-200' => ['product_id' => 'prod-200', 'name' => 'Chair'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^You may also pass a callback to the method\. The callback should return the value to key the collection by:$/もしくは、コールバックをメソッドへ渡すこともできます。コールバックからコレクションのキーの値を返してください。/
s/^        return strtoupper($item\['product_id'\]);$/        return strtoupper($item['product_id']);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'PROD-100' => \['product_id' => 'prod-100', 'name' => 'Desk'\],$/            'PROD-100' => ['product_id' => 'prod-100', 'name' => 'Desk'],/
s/^            'PROD-200' => \['product_id' => 'prod-200', 'name' => 'Chair'\],$/            'PROD-200' => ['product_id' => 'prod-200', 'name' => 'Chair'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `keys` method returns all of the collection's keys:$/`keys`メソッドはコレクションの全キーを返します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        'prod-100' => \['product_id' => 'prod-100', 'name' => 'Desk'\],$/        'prod-100' => ['product_id' => 'prod-100', 'name' => 'Desk'],/
s/^        'prod-200' => \['product_id' => 'prod-200', 'name' => 'Chair'\],$/        'prod-200' => ['product_id' => 'prod-200', 'name' => 'Chair'],/
s/^    \]);$/    ]);/
s/^    \/\/ \['prod-100', 'prod-200'\]$/    \/\/ ['prod-100', 'prod-200']/
s/^The `last` method returns the last element in the collection that passes a given truth test:$/`last`メソッドは指定したテストをパスしたコレクションの最後のアイテムを返します。/
s/^    collect(\[1, 2, 3, 4\])->last(function ($value, $key) {$/    collect([1, 2, 3, 4])->last(function ($value, $key) {/
s/^You may also call the `last` method with no arguments to get the last element in the collection\. If the collection is empty, `null` is returned:$/または`last`メソッドを引数無しで呼び出し、コレクションの最後の要素を取得することもできます。コレクションが空の場合、`null`が返ります。/
s/^    collect(\[1, 2, 3, 4\])->last();$/    collect([1, 2, 3, 4])->last();/
s/^The static `macro` method allows you to add methods to the `Collection` class at run time\. Refer to the documentation on \[extending collections\](#extending-collections) for more information\.$/staticの`macro`メソッドで、実行時に`Collection`クラスへメソッドを追加できます。詳細は、[コレクションの拡張](#extending-collections)ドキュメントを参照してください。/
s/^The static `make` method creates a new collection instance\. See the \[Creating Collections\](#creating-collections) section\.$/staticの`make`メソッドは、新しいコレクションインスタンスを生成します。[コレクションの生成](#creating-collections)セクションを参照してください。/
s/^The `map` method iterates through the collection and passes each value to the given callback\. The callback is free to modify the item and return it, thus forming a new collection of modified items:$/`map`メソッドコレクション全体を繰り返しで処理し、指定したコールバックから値を返します。コールバックで自由にアイテムを更新し値を返せます。更新したアイテムの新しいコレクションが作成されます。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^        return $item \* 2;$/        return $item * 2;/
s/^    \/\/ \[2, 4, 6, 8, 10\]$/    \/\/ [2, 4, 6, 8, 10]/
s/^> {note} Like most other collection methods, `map` returns a new collection instance; it does not modify the collection it is called on\. If you want to transform the original collection, use the \[`transform`\](#method-transform) method\.$/> {note} 他のコレクションと同様に`map`は新しいコレクションインスタンスを返します。呼び出し元のコレクションは変更しません。もしオリジナルコレクションを変更したい場合は[`transform`](#method-transform)メソッドを使います。/
s/^The `mapInto()` method iterates over the collection, creating a new instance of the given class by passing the value into the constructor:$/`mapInto()`メソッドはコレクションを繰り返し処理します。指定したクラスの新しいインスタンスを生成し、コンストラクタへ値を渡します。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new currency instance\.$/         * Create a new currency instance./
s/^         \*$/         */
s/^         \* @param  string  $code$/         * @param  string  $code/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^    $collection = collect(\['USD', 'EUR', 'GBP'\]);$/    $collection = collect(['USD', 'EUR', 'GBP']);/
s/^    \/\/ \[Currency('USD'), Currency('EUR'), Currency('GBP')\]$/    \/\/ [Currency('USD'), Currency('EUR'), Currency('GBP')]/
s/^The `mapSpread` method iterates over the collection's items, passing each nested item value into the given callback\. The callback is free to modify the item and return it, thus forming a new collection of modified items:$/`mapSpread`メソッドは指定したコールバックへ、コレクションのネストしたアイテム値をそれぞれ渡し、繰り返し処理します。値を変更した新しいコレクションを形成するために、コールバックで好きなようにアイテムを変更し、値を返してください。/
s/^    $collection = collect(\[0, 1, 2, 3, 4, 5, 6, 7, 8, 9\]);$/    $collection = collect([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);/
s/^        return $odd \+ $even;$/        return $odd + $even;/
s/^    \/\/ \[1, 5, 9, 13, 17\]$/    \/\/ [1, 5, 9, 13, 17]/
s/^The `mapToGroups` method groups the collection's items by the given callback\. The callback should return an associative array containing a single key \/ value pair, thus forming a new collection of grouped values:$/`mapToGroups`メソッドは、指定したコールバックにより、コレクションアイテムを分類します。コールバックはキー／値ペアを一つ含む連想配列を返す必要があります。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \[$/        [/
s/^        \],$/        ],/
s/^        \[$/        [/
s/^        \],$/        ],/
s/^        \[$/        [/
s/^        \]$/        ]/
s/^    \]);$/    ]);/
s/^        return \[$item\['department'\] => $item\['name'\]\];$/        return [$item['department'] => $item['name']];/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'Sales' => \['John Doe', 'Jane Doe'\],$/            'Sales' => ['John Doe', 'Jane Doe'],/
s/^            'Marketing' => \['Johhny Doe'\],$/            'Marketing' => ['Johhny Doe'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^    \/\/ \['John Doe', 'Jane Doe'\]$/    \/\/ ['John Doe', 'Jane Doe']/
s/^The `mapWithKeys` method iterates through the collection and passes each value to the given callback\. The callback should return an associative array containing a single key \/ value pair:$/`mapWithKeys`メソッドはコレクション全体を反復処理し、指定したコールバックへ各値を渡します。コールバックからキー／値ペアを一つ含む連想配列を返してください。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \[$/        [/
s/^            'email' => 'john@example\.com'$/            'email' => 'john@example.com'/
s/^        \],$/        ],/
s/^        \[$/        [/
s/^            'email' => 'jane@example\.com'$/            'email' => 'jane@example.com'/
s/^        \]$/        ]/
s/^    \]);$/    ]);/
s/^        return \[$item\['email'\] => $item\['name'\]\];$/        return [$item['email'] => $item['name']];/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            'john@example\.com' => 'John',$/            'john@example.com' => 'John',/
s/^            'jane@example\.com' => 'Jane',$/            'jane@example.com' => 'Jane',/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `max` method returns the maximum value of a given key:$/`max`メソッドは、指定したキーの最大値を返します。/
s/^    $max = collect(\[\['foo' => 10\], \['foo' => 20\]\])->max('foo');$/    $max = collect([['foo' => 10], ['foo' => 20]])->max('foo');/
s/^    $max = collect(\[1, 2, 3, 4, 5\])->max();$/    $max = collect([1, 2, 3, 4, 5])->max();/
s/^The `median` method returns the \[median value\](https:\/\/en\.wikipedia\.org\/wiki\/Median) of a given key:$/`median`メソッドは、指定したキーの[中央値](https:\/\/ja.wikipedia.org\/wiki\/%E4%B8%AD%E5%A4%AE%E5%80%A4)を返します。/
s/^    $median = collect(\[\['foo' => 10\], \['foo' => 10\], \['foo' => 20\], \['foo' => 40\]\])->median('foo');$/    $median = collect([['foo' => 10], ['foo' => 10], ['foo' => 20], ['foo' => 40]])->median('foo');/
s/^    $median = collect(\[1, 1, 2, 4\])->median();$/    $median = collect([1, 1, 2, 4])->median();/
s/^    \/\/ 1\.5$/    \/\/ 1.5/
s/^The `merge` method merges the given array or collection with the original collection\. If a string key in the given items matches a string key in the original collection, the given items's value will overwrite the value in the original collection:$/`merge`メソッドは、指定した配列かコレクションをオリジナルコレクションへマージします。指定した配列の文字列キーが、オリジナルコレクションの文字列キーと一致する場合、オリジナルコレクションの値は指定アイテムの値でオーバーライトされます。/
s/^    $collection = collect(\['product_id' => 1, 'price' => 100\]);$/    $collection = collect(['product_id' => 1, 'price' => 100]);/
s/^    $merged = $collection->merge(\['price' => 200, 'discount' => false\]);$/    $merged = $collection->merge(['price' => 200, 'discount' => false]);/
s/^    \/\/ \['product_id' => 1, 'price' => 200, 'discount' => false\]$/    \/\/ ['product_id' => 1, price' => 200, 'discount' => false]/
s/^If the given items's keys are numeric, the values will be appended to the end of the collection:$/指定したアイテムのキーが数値の場合、コレクションの最後に追加されます。（訳注：数値でない場合の間違いか）/
s/^    $collection = collect(\['Desk', 'Chair'\]);$/    $collection = collect(['Desk', 'Chair']);/
s/^    $merged = $collection->merge(\['Bookcase', 'Door'\]);$/    $merged = $collection->merge(['Bookcase', 'Door']);/
s/^    \/\/ \['Desk', 'Chair', 'Bookcase', 'Door'\]$/    \/\/ ['Desk', 'Chair', 'Bookcase', 'Door']/
s/^The `min` method returns the minimum value of a given key:$/`min`メソッドは、指定したキーの最小値を返します。/
s/^    $min = collect(\[\['foo' => 10\], \['foo' => 20\]\])->min('foo');$/    $min = collect([['foo' => 10], ['foo' => 20]])->min('foo');/
s/^    $min = collect(\[1, 2, 3, 4, 5\])->min();$/    $min = collect([1, 2, 3, 4, 5])->min();/
s/^The `mode` method returns the \[mode value\](https:\/\/en\.wikipedia\.org\/wiki\/Mode_(statistics)) of a given key:$/`mode`メソッドは、指定したキーの[最頻値](https:\/\/ja.wikipedia.org\/wiki\/%E6%9C%80%E9%A0%BB%E5%80%A4)を返します。/
s/^    $mode = collect(\[\['foo' => 10\], \['foo' => 10\], \['foo' => 20\], \['foo' => 40\]\])->mode('foo');$/    $mode = collect([['foo' => 10], ['foo' => 10], ['foo' => 20], ['foo' => 40]])->mode('foo');/
s/^    \/\/ \[10\]$/    \/\/ [10]/
s/^    $mode = collect(\[1, 1, 2, 4\])->mode();$/    $mode = collect([1, 1, 2, 4])->mode();/
s/^    \/\/ \[1\]$/    \/\/ [1]/
s/^The `nth` method creates a new collection consisting of every n-th element:$/`nth`メソッドは指定数値間隔で要素を含む、新しいコレクションを生成します。/
s/^    $collection = collect(\['a', 'b', 'c', 'd', 'e', 'f'\]);$/    $collection = collect(['a', 'b', 'c', 'd', 'e', 'f']);/
s/^    \/\/ \['a', 'e'\]$/    \/\/ ['a', 'e']/
s/^You may optionally pass an offset as the second argument:$/オプションとして第２引数にオフセットを渡せます。/
s/^    \/\/ \['b', 'f'\]$/    \/\/ ['b', 'f']/
s/^The `only` method returns the items in the collection with the specified keys:$/`only`メソッドは、コレクション中の指定したアイテムのみを返します。/
s/^    $collection = collect(\['product_id' => 1, 'name' => 'Desk', 'price' => 100, 'discount' => false\]);$/    $collection = collect(['product_id' => 1, 'name' => 'Desk', 'price' => 100, 'discount' => false]);/
s/^    $filtered = $collection->only(\['product_id', 'name'\]);$/    $filtered = $collection->only(['product_id', 'name']);/
s/^    \/\/ \['product_id' => 1, 'name' => 'Desk'\]$/    \/\/ ['product_id' => 1, 'name' => 'Desk']/
s/^For the inverse of `only`, see the \[except\](#method-except) method\.$/`only`の正反対の機能は、 [except](#method-except)メソッドです。/
s/^The `pad` method will fill the array with the given value until the array reaches the specified size\. This method behaves like the \[array_pad\](https:\/\/secure\.php\.net\/manual\/en\/function\.array-pad\.php) PHP function\.$/`pad`メソッドは、配列が指定したサイズに達するまで、指定値で配列を埋めます。このメソッドは[array_pad](https:\/\/secure.php.net\/manual\/en\/function.array-pad.php) PHP関数のような動作をします。/
s/^To pad to the left, you should specify a negative size\. No padding will take place if the absolute value of the given size is less than or equal to the length of the array:$/先頭を埋めるためには、サイズに負数を指定します。配列サイズ以下のサイズ値を指定した場合は、埋め込みを行いません。/
s/^    $collection = collect(\['A', 'B', 'C'\]);$/    $collection = collect(['A', 'B', 'C']);/
s/^    \/\/ \['A', 'B', 'C', 0, 0\]$/    \/\/ ['A', 'B', 'C', 0, 0]/
s/^    \/\/ \[0, 0, 'A', 'B', 'C'\]$/    \/\/ [0, 0, 'A', 'B', 'C']/
s/^The `partition` method may be combined with the `list` PHP function to separate elements that pass a given truth test from those that do not:$/`partition`メソッドは指定したテストの合否に要素を分け、結果を`list` PHP関数で受け取ります。/
s/^    $collection = collect(\[1, 2, 3, 4, 5, 6\]);$/    $collection = collect([1, 2, 3, 4, 5, 6]);/
s/^    \/\/ \[1, 2\]$/    \/\/ [1, 2]/
s/^    \/\/ \[3, 4, 5, 6\]$/    \/\/ [3, 4, 5, 6]/
s/^The `pipe` method passes the collection to the given callback and returns the result:$/`pipe`メソッドはコレクションを指定したコールバックに渡し、結果を返します。/
s/^    $collection = collect(\[1, 2, 3\]);$/    $collection = collect([1, 2, 3]);/
s/^The `pluck` method retrieves all of the values for a given key:$/`pluck`メソッドは指定したキーの全コレクション値を取得します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product_id' => 'prod-100', 'name' => 'Desk'\],$/        ['product_id' => 'prod-100', 'name' => 'Desk'],/
s/^        \['product_id' => 'prod-200', 'name' => 'Chair'\],$/        ['product_id' => 'prod-200', 'name' => 'Chair'],/
s/^    \]);$/    ]);/
s/^    \/\/ \['Desk', 'Chair'\]$/    \/\/ ['Desk', 'Chair']/
s/^You may also specify how you wish the resulting collection to be keyed:$/さらに、コレクションのキー項目も指定できます。/
s/^    \/\/ \['prod-100' => 'Desk', 'prod-200' => 'Chair'\]$/    \/\/ ['prod-100' => 'Desk', 'prod-200' => 'Chair']/
s/^If duplicate keys exist, the last matching element will be inserted into the plucked collection:$/重複するキーが存在している場合は、最後に一致した要素が結果のコレクションへ挿入されます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['brand' => 'Tesla',  'color' => 'red'\],$/        ['brand' => 'Tesla',  'color' => 'red'],/
s/^        \['brand' => 'Pagani', 'color' => 'white'\],$/        ['brand' => 'Pagani', 'color' => 'white'],/
s/^        \['brand' => 'Tesla',  'color' => 'black'\],$/        ['brand' => 'Tesla',  'color' => 'black'],/
s/^        \['brand' => 'Pagani', 'color' => 'orange'\],$/        ['brand' => 'Pagani', 'color' => 'orange'],/
s/^    \]);$/    ]);/
s/^    \/\/ \['Tesla' => 'black', 'Pagani' => 'orange'\]$/    \/\/ ['Tesla' => 'black', 'Pagani' => 'orange']/
s/^The `pop` method removes and returns the last item from the collection:$/`pop`メソッドはコレクションの最後のアイテムを削除し、返します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[1, 2, 3, 4\]$/    \/\/ [1, 2, 3, 4]/
s/^The `prepend` method adds an item to the beginning of the collection:$/`prepend`メソッドはアイテムをコレクションの最初に追加します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[0, 1, 2, 3, 4, 5\]$/    \/\/ [0, 1, 2, 3, 4, 5]/
s/^You may also pass a second argument to set the key of the prepended item:$/また、第２引数に追加するアイテムのキーを指定できます。/
s/^    $collection = collect(\['one' => 1, 'two' => 2\]);$/    $collection = collect(['one' => 1, 'two' => 2]);/
s/^    \/\/ \['zero' => 0, 'one' => 1, 'two' => 2\]$/    \/\/ ['zero' => 0, 'one' => 1, 'two' => 2]/
s/^The `pull` method removes and returns an item from the collection by its key:$/`pull`メソッドはキーによりアイテムを削除し、そのアイテムを返します。/
s/^    $collection = collect(\['product_id' => 'prod-100', 'name' => 'Desk'\]);$/    $collection = collect(['product_id' => 'prod-100', 'name' => 'Desk']);/
s/^    \/\/ \['product_id' => 'prod-100'\]$/    \/\/ ['product_id' => 'prod-100']/
s/^The `push` method appends an item to the end of the collection:$/ `push`メソッドはコレクションの最後にアイテムを追加します。/
s/^    $collection = collect(\[1, 2, 3, 4\]);$/    $collection = collect([1, 2, 3, 4]);/
s/^    \/\/ \[1, 2, 3, 4, 5\]$/    \/\/ [1, 2, 3, 4, 5]/
s/^The `put` method sets the given key and value in the collection:$/`put`メソッドは指定したキーと値をコレクションにセットします。/
s/^    $collection = collect(\['product_id' => 1, 'name' => 'Desk'\]);$/    $collection = collect(['product_id' => 1, 'name' => 'Desk']);/
s/^    \/\/ \['product_id' => 1, 'name' => 'Desk', 'price' => 100\]$/    \/\/ ['product_id' => 1, 'name' => 'Desk', 'price' => 100]/
s/^The `random` method returns a random item from the collection:$/`random`メソッドはコレクションからランダムにアイテムを返します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ 4 - (retrieved randomly)$/    \/\/ 4 - (ランダムに取得)/
s/^You may optionally pass an integer to `random` to specify how many items you would like to randomly retrieve\. A collection of items is always returned when explicitly passing the number of items you wish to receive:$/オプションとして、`random`にいくつのアイテムをランダムに取得するかを整数値で渡せます。受け取りたい数のアイテム数を明確に指定した場合、その数のコレクションのアイテムがいつも返されます。/
s/^    \/\/ \[2, 4, 5\] - (retrieved randomly)$/    \/\/ [2, 4, 5] - (ランダムに取得)/
s/^If the Collection has fewer items than requested, the method will throw an `InvalidArgumentException`\.$/要求されたアイテム数がコレクションに足りない場合、このメソッドは`InvalidArgumentException`を投げます。/
s/^The `reduce` method reduces the collection to a single value, passing the result of each iteration into the subsequent iteration:$/`reduce`メソッドは繰り返しの結果を次の繰り返しに渡しながら、コレクションを単一値へ減らします。/
s/^    $collection = collect(\[1, 2, 3\]);$/    $collection = collect([1, 2, 3]);/
s/^        return $carry \+ $item;$/        return $carry + $item;/
s/^The value for `$carry` on the first iteration is `null`; however, you may specify its initial value by passing a second argument to `reduce`:$/最初の繰り返しの`$carry`の値は`null`です。しかし初期値を設定したい場合は、`reduce`の第２引数に渡してください。/
s/^        return $carry \+ $item;$/        return $carry + $item;/
s/^The `reject` method filters the collection using the given callback\. The callback should return `true` if the item should be removed from the resulting collection:$/`reject`メソッドは指定したコールバックを使用し、コレクションをフィルタリングします。コールバックはコレクションの結果からアイテムを取り除く場合に`true`を返します。/
s/^    $collection = collect(\[1, 2, 3, 4\]);$/    $collection = collect([1, 2, 3, 4]);/
s/^    \/\/ \[1, 2\]$/    \/\/ [1, 2]/
s/^For the inverse of the `reject` method, see the \[`filter`\](#method-filter) method\.$/`reject`メソッドの逆の働きについては、[`filter`](#method-filter)メソッドを読んでください。/
s/^The `reverse` method reverses the order of the collection's items, preserving the original keys:$/`reverse`メソッドはオリジナルのキーを保ったまま、コレクションのアイテムの順番を逆にします。/
s/^    $collection = collect(\['a', 'b', 'c', 'd', 'e'\]);$/    $collection = collect(['a', 'b', 'c', 'd', 'e']);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `search` method searches the collection for the given value and returns its key if found\. If the item is not found, `false` is returned\.$/`search`メソッドは指定した値でコレクションをサーチし、見つけたキーを返します。アイテムが見つからない場合は`false`を返します。/
s/^    $collection = collect(\[2, 4, 6, 8\]);$/    $collection = collect([2, 4, 6, 8]);/
s/^The search is done using a "loose" comparison, meaning a string with an integer value will be considered equal to an integer of the same value\. To use "strict" comparison, pass `true` as the second argument to the method:$/検索は「緩い」比較で行われます。つまり、整数値を持つ文字列は、同じ値の整数と等しいと判断されます。「厳格」な比較を行いたい場合は`true`をメソッドの第２引数に渡します。/
s/^Alternatively, you may pass in your own callback to search for the first item that passes your truth test:$/別の方法としてサーチのコールバックを渡し、テストをパスした最初のアイテムを取得することもできます。/
s/^The `shift` method removes and returns the first item from the collection:$/`shift`メソッドはコレクションから最初のアイテムを削除し、その値を返します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[2, 3, 4, 5\]$/    \/\/ [2, 3, 4, 5]/
s/^The `shuffle` method randomly shuffles the items in the collection:$/`shuffle`メソッドはコレクションのアイテムをランダムにシャッフルします。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[3, 2, 5, 1, 4\] - (generated randomly)$/    \/\/ [3, 2, 5, 1, 4] - (ランダムに生成される)/
s/^The `slice` method returns a slice of the collection starting at the given index:$/`slice`メソッドは指定したインデックスからコレクションを切り分けます。/
s/^    $collection = collect(\[1, 2, 3, 4, 5, 6, 7, 8, 9, 10\]);$/    $collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);/
s/^    \/\/ \[5, 6, 7, 8, 9, 10\]$/    \/\/ [5, 6, 7, 8, 9, 10]/
s/^If you would like to limit the size of the returned slice, pass the desired size as the second argument to the method:$/切り分ける数を制限したい場合は、メソッドの第２引数で指定してください。/
s/^    \/\/ \[5, 6\]$/    \/\/ [5, 6]/
s/^The returned slice will preserve keys by default\. If you do not wish to preserve the original keys, you can use the \[`values`\](#method-values) method to reindex them\.$/sliceメソッドはデフォルトでキー値を保持したまま返します。オリジナルのキーを保持したくない場合は、[`values`](#method-values)メソッドを使えば、インデックスし直されます。/
s/^The `sort` method sorts the collection\. The sorted collection keeps the original array keys, so in this example we'll use the \[`values`\](#method-values) method to reset the keys to consecutively numbered indexes:$/`sort`メソッドはコレクションをソートします。ソート済みコレクションはオリジナル配列のキーを保持しますので、以下の例では、[`values`](#method-values)メソッドにより、連続した数字のインデックスにするためリセットしています。/
s/^    $collection = collect(\[5, 3, 1, 2, 4\]);$/    $collection = collect([5, 3, 1, 2, 4]);/
s/^    \/\/ \[1, 2, 3, 4, 5\]$/    \/\/ [1, 2, 3, 4, 5]/
s/^If your sorting needs are more advanced, you may pass a callback to `sort` with your own algorithm\. Refer to the PHP documentation on \[`uasort`\](https:\/\/secure\.php\.net\/manual\/en\/function\.uasort\.php#refsect1-function\.uasort-parameters), which is what the collection's `sort` method calls under the hood\.$/より高度なソートを行いたい場合は`sort`にコールバックを渡し、自分のアルゴリズムを実行できます。コレクションの`sort`メソッドが裏で呼び出している[`uasort`](http:\/\/php.net\/manual\/en\/function.uasort.php#refsect1-function.usort-parameters)のPHPドキュメントを参照してください。/
s/^> {tip} If you need to sort a collection of nested arrays or objects, see the \[`sortBy`\](#method-sortby) and \[`sortByDesc`\](#method-sortbydesc) methods\.$/> {tip} ネストした配列やオブジェクトのコレクションのソートは、[`sortBy`](#method-sortby)と[`sortByDesc`](#method-sortbydesc)メソッドを参照してください。/
s/^The `sortBy` method sorts the collection by the given key\. The sorted collection keeps the original array keys, so in this example we'll use the \[`values`\](#method-values) method to reset the keys to consecutively numbered indexes:$/`sortBy`メソッドは指定したキーでコレクションをソートします。ソート済みコレクションはオリジナル配列のキーを保持しますので、以下の例では、[`values`](#method-values)メソッドにより、連続した数字のインデックスにするためリセットしています。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'Desk', 'price' => 200\],$/        ['name' => 'Desk', 'price' => 200],/
s/^        \['name' => 'Chair', 'price' => 100\],$/        ['name' => 'Chair', 'price' => 100],/
s/^        \['name' => 'Bookcase', 'price' => 150\],$/        ['name' => 'Bookcase', 'price' => 150],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'Chair', 'price' => 100\],$/            ['name' => 'Chair', 'price' => 100],/
s/^            \['name' => 'Bookcase', 'price' => 150\],$/            ['name' => 'Bookcase', 'price' => 150],/
s/^            \['name' => 'Desk', 'price' => 200\],$/            ['name' => 'Desk', 'price' => 200],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^You can also pass your own callback to determine how to sort the collection values:$/コレクション値をどのようにソートするかを決めるため、コールバックを渡すこともできます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'Desk', 'colors' => \['Black', 'Mahogany'\]\],$/        ['name' => 'Desk', 'colors' => ['Black', 'Mahogany']],/
s/^        \['name' => 'Chair', 'colors' => \['Black'\]\],$/        ['name' => 'Chair', 'colors' => ['Black']],/
s/^        \['name' => 'Bookcase', 'colors' => \['Red', 'Beige', 'Brown'\]\],$/        ['name' => 'Bookcase', 'colors' => ['Red', 'Beige', 'Brown']],/
s/^    \]);$/    ]);/
s/^        return count($product\['colors'\]);$/        return count($product['colors']);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'Chair', 'colors' => \['Black'\]\],$/            ['name' => 'Chair', 'colors' => ['Black']],/
s/^            \['name' => 'Desk', 'colors' => \['Black', 'Mahogany'\]\],$/            ['name' => 'Desk', 'colors' => ['Black', 'Mahogany']],/
s/^            \['name' => 'Bookcase', 'colors' => \['Red', 'Beige', 'Brown'\]\],$/            ['name' => 'Bookcase', 'colors' => ['Red', 'Beige', 'Brown']],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^This method has the same signature as the \[`sortBy`\](#method-sortby) method, but will sort the collection in the opposite order\.$/このメソッドの使い方は[`sortBy`](#method-sortby)と同じで、コレクションを逆順にソートします。/
s/^The `sortKeys` method sorts the collection by the keys of the underlying associative array:$/`sortKeys`メソッドは、内部の連想配列のキーにより、コレクションをソートします。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^This method has the same signature as the \[`sortKeys`\](#method-sortkeys) method, but will sort the collection in the opposite order\.$/このメソッドは、[`sortKeys`](#method-sortkeys)メソッドと使い方は同じですが、逆順にコレクションをソートします。/
s/^The `splice` method removes and returns a slice of items starting at the specified index:$/`splice`メソッドは指定したインデックスからアイテムをスライスし、削除し、返します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[3, 4, 5\]$/    \/\/ [3, 4, 5]/
s/^    \/\/ \[1, 2\]$/    \/\/ [1, 2]/
s/^You may pass a second argument to limit the size of the resulting chunk:$/結果の塊の大きさを限定するために、第２引数を指定できます。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[3\]$/    \/\/ [3]/
s/^    \/\/ \[1, 2, 4, 5\]$/    \/\/ [1, 2, 4, 5]/
s/^In addition, you can pass a third argument containing the new items to replace the items removed from the collection:$/さらに、コレクションから削除したアイテムに置き換える、新しいアイテムを第３引数に渡すこともできます。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    $chunk = $collection->splice(2, 1, \[10, 11\]);$/    $chunk = $collection->splice(2, 1, [10, 11]);/
s/^    \/\/ \[3\]$/    \/\/ [3]/
s/^    \/\/ \[1, 2, 10, 11, 4, 5\]$/    \/\/ [1, 2, 10, 11, 4, 5]/
s/^The `split` method breaks a collection into the given number of groups:$/`split`メソッドは、コレクションを指定数のグループへ分割します。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^    \/\/ \[\[1, 2\], \[3, 4\], \[5\]\]$/    \/\/ [[1, 2], [3, 4], [5]]/
s/^The `sum` method returns the sum of all items in the collection:$/`sum`メソッドはコレクションの全アイテムの合計を返します。/
s/^    collect(\[1, 2, 3, 4, 5\])->sum();$/    collect([1, 2, 3, 4, 5])->sum();/
s/^If the collection contains nested arrays or objects, you should pass a key to use for determining which values to sum:$/コレクションがネストした配列やオブジェクトを含んでいる場合、どの値を合計するのを決めるためにキーを指定してください。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'JavaScript: The Good Parts', 'pages' => 176\],$/        ['name' => 'JavaScript: The Good Parts', 'pages' => 176],/
s/^        \['name' => 'JavaScript: The Definitive Guide', 'pages' => 1096\],$/        ['name' => 'JavaScript: The Definitive Guide', 'pages' => 1096],/
s/^    \]);$/    ]);/
s/^In addition, you may pass your own callback to determine which values of the collection to sum:$/さらに、コレクションのどの項目を合計するのかを決めるためにコールバックを渡すこともできます。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'Chair', 'colors' => \['Black'\]\],$/        ['name' => 'Chair', 'colors' => ['Black']],/
s/^        \['name' => 'Desk', 'colors' => \['Black', 'Mahogany'\]\],$/        ['name' => 'Desk', 'colors' => ['Black', 'Mahogany']],/
s/^        \['name' => 'Bookcase', 'colors' => \['Red', 'Beige', 'Brown'\]\],$/        ['name' => 'Bookcase', 'colors' => ['Red', 'Beige', 'Brown']],/
s/^    \]);$/    ]);/
s/^        return count($product\['colors'\]);$/        return count($product['colors']);/
s/^The `take` method returns a new collection with the specified number of items:$/`take`メソッドは指定したアイテム数の新しいコレクションを返します。/
s/^    $collection = collect(\[0, 1, 2, 3, 4, 5\]);$/    $collection = collect([0, 1, 2, 3, 4, 5]);/
s/^    \/\/ \[0, 1, 2\]$/    \/\/ [0, 1, 2]/
s/^You may also pass a negative integer to take the specified amount of items from the end of the collection:$/アイテム数に負の整数を指定した場合はコレクションの最後から取得します。/
s/^    $collection = collect(\[0, 1, 2, 3, 4, 5\]);$/    $collection = collect([0, 1, 2, 3, 4, 5]);/
s/^    \/\/ \[4, 5\]$/    \/\/ [4, 5]/
s/^The `tap` method passes the collection to the given callback, allowing you to "tap" into the collection at a specific point and do something with the items while not affecting the collection itself:$/`tap`メソッドは、指定されたコールバックへコレクションを渡します。コレクション自身に影響を与えることなく、その時点のコレクション内容を利用するために使用します。/
s/^    collect(\[2, 4, 3, 1, 5\])$/    collect([2, 4, 3, 1, 5])/
s/^The static `times` method creates a new collection by invoking the callback a given amount of times:$/静的`times`メソッドは指定回数コールバックを呼び出すことで、新しいコレクションを生成します。/
s/^        return $number \* 9;$/        return $number * 9;/
s/^    \/\/ \[9, 18, 27, 36, 45, 54, 63, 72, 81, 90\]$/    \/\/ [9, 18, 27, 36, 45, 54, 63, 72, 81, 90]/
s/^This method can be useful when combined with factories to create \[Eloquent\](\/docs\/{{version}}\/eloquent) models:$/このメソッドはファクトリと組み合わせ、[Eloquent](\/docs\/{{version}}\/eloquent)モデルを生成する場合に便利です。/
s/^        return factory(Category::class)->create(\['name' => 'Category #'\.$number\]);$/        return factory(Category::class)->create(['name' => 'Category #'.$number]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['id' => 1, 'name' => 'Category #1'\],$/            ['id' => 1, 'name' => 'Category #1'],/
s/^            \['id' => 2, 'name' => 'Category #2'\],$/            ['id' => 2, 'name' => 'Category #2'],/
s/^            \['id' => 3, 'name' => 'Category #3'\],$/            ['id' => 3, 'name' => 'Category #3'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `toArray` method converts the collection into a plain PHP `array`\. If the collection's values are \[Eloquent\](\/docs\/{{version}}\/eloquent) models, the models will also be converted to arrays:$/`toArray`メソッドはコレクションをPHPの「配列」へ変換します。コレクションの値が[Eloquent](\/docs\/{{version}}\/eloquent)モデルの場合は、そのモデルが配列に変換されます。/
s/^    $collection = collect(\['name' => 'Desk', 'price' => 200\]);$/    $collection = collect(['name' => 'Desk', 'price' => 200]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'Desk', 'price' => 200\],$/            ['name' => 'Desk', 'price' => 200],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^> {note} `toArray` also converts all of the collection's nested objects to an array\. If you want to get the raw underlying array, use the \[`all`\](#method-all) method instead\.$/> {note} `toArray`はネストしたオブジェクトも全て配列へ変換します。裏の配列をそのまま取得したい場合は、代わりに[`all`](#method-all)メソッドを使用してください。/
s/^The `toJson` method converts the collection into a JSON serialized string:$/`toJson`メソッドはコレクションをシリアライズ済みのJSON文字へ変換します。/
s/^    $collection = collect(\['name' => 'Desk', 'price' => 200\]);$/    $collection = collect(['name' => 'Desk', 'price' => 200]);/
s/^    \/\/ '{"name":"Desk", "price":200}'$/    \/\/ '{"name":"Desk","price":200}'/
s/^The `transform` method iterates over the collection and calls the given callback with each item in the collection\. The items in the collection will be replaced by the values returned by the callback:$/`transform`メソッドはコレクションを繰り返し処理し、コレクションの各アイテムに指定したコールバックを適用します。コレクション中のアイテムはコールバックから返される値に置き換わります。/
s/^    $collection = collect(\[1, 2, 3, 4, 5\]);$/    $collection = collect([1, 2, 3, 4, 5]);/
s/^        return $item \* 2;$/        return $item * 2;/
s/^    \/\/ \[2, 4, 6, 8, 10\]$/    \/\/ [2, 4, 6, 8, 10]/
s/^> {note} Unlike most other collection methods, `transform` modifies the collection itself\. If you wish to create a new collection instead, use the \[`map`\](#method-map) method\.$/> {note} 他のコレクションメソッドとは異なり、`transform`はコレクション自身を更新します。代わりに新しいコレクションを生成したい場合は、 [`map`](#method-map)メソッドを使用してください。/
s/^The `union` method adds the given array to the collection\. If the given array contains keys that are already in the original collection, the original collection's values will be preferred:$/`union`メソッドは指定した配列をコレクションへ追加します。既にコレクションにあるキーが、オリジナル配列に含まれている場合は、オリジナルコレクションの値が優先されます。/
s/^    $collection = collect(\[1 => \['a'\], 2 => \['b'\]\]);$/    $collection = collect([1 => ['a'], 2 => ['b']]);/
s/^    $union = $collection->union(\[3 => \['c'\], 1 => \['b'\]\]);$/    $union = $collection->union([3 => ['c'], 1 => ['b']]);/
s/^    \/\/ \[1 => \['a'\], 2 => \['b'\], 3 => \['c'\]\]$/    \/\/ [1 => ['a'], 2 => ['b'], 3 => ['c']]/
s/^The `unique` method returns all of the unique items in the collection\. The returned collection keeps the original array keys, so in this example we'll use the \[`values`\](#method-values) method to reset the keys to consecutively numbered indexes:$/`unique`メソッドはコレクションの重複を取り除いた全アイテムを返します。ソート済みのコレクションはオリジナルの配列キーを保っています。下の例では[`values`](#method-values)メソッドで連続した数字のインデックスにするためリセットしています。/
s/^    $collection = collect(\[1, 1, 2, 2, 3, 4, 2\]);$/    $collection = collect([1, 1, 2, 2, 3, 4, 2]);/
s/^    \/\/ \[1, 2, 3, 4\]$/    \/\/ [1, 2, 3, 4]/
s/^When dealing with nested arrays or objects, you may specify the key used to determine uniqueness:$/ネストした配列やオブジェクトを取り扱いたい場合は、一意であることを決めるキーを指定する必要があります。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'\],$/        ['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'],/
s/^        \['name' => 'iPhone 5', 'brand' => 'Apple', 'type' => 'phone'\],$/        ['name' => 'iPhone 5', 'brand' => 'Apple', 'type' => 'phone'],/
s/^        \['name' => 'Apple Watch', 'brand' => 'Apple', 'type' => 'watch'\],$/        ['name' => 'Apple Watch', 'brand' => 'Apple', 'type' => 'watch'],/
s/^        \['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'\],$/        ['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'],/
s/^        \['name' => 'Galaxy Gear', 'brand' => 'Samsung', 'type' => 'watch'\],$/        ['name' => 'Galaxy Gear', 'brand' => 'Samsung', 'type' => 'watch'],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'\],$/            ['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'],/
s/^            \['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'\],$/            ['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^You may also pass your own callback to determine item uniqueness:$/アイテムが一意であるかを決めるコールバックを渡すこともできます。/
s/^        return $item\['brand'\]\.$item\['type'\];$/        return $item['brand'].$item['type'];/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'\],$/            ['name' => 'iPhone 6', 'brand' => 'Apple', 'type' => 'phone'],/
s/^            \['name' => 'Apple Watch', 'brand' => 'Apple', 'type' => 'watch'\],$/            ['name' => 'Apple Watch', 'brand' => 'Apple', 'type' => 'watch'],/
s/^            \['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'\],$/            ['name' => 'Galaxy S6', 'brand' => 'Samsung', 'type' => 'phone'],/
s/^            \['name' => 'Galaxy Gear', 'brand' => 'Samsung', 'type' => 'watch'\],$/            ['name' => 'Galaxy Gear', 'brand' => 'Samsung', 'type' => 'watch'],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `unique` method uses "loose" comparisons when checking item values, meaning a string with an integer value will be considered equal to an integer of the same value\. Use the \[`uniqueStrict`\](#method-uniquestrict) method to filter using "strict" comparisons\.$/`unique`メソッドは、アイテムの判定に「緩い」比較を使用します。つまり、同じ値の文字列と整数値は等しいと判定します。「厳密」な比較でフィルタリングしたい場合は、[`uniqueStrict`](#method-uniquestrict)メソッドを使用してください。/
s/^This method has the same signature as the \[`unique`\](#method-unique) method; however, all values are compared using "strict" comparisons\.$/このメソッドは、[`unique`](#method-unique)と同じ使用方法です。しかし、全値は「厳密」に比較されます。/
s/^The `unless` method will execute the given callback unless the first argument given to the method evaluates to `true`:$/`unless`メソッドは最初の引数が`true`と評価されなくなるまで、コールバックを実行します。/
s/^    $collection = collect(\[1, 2, 3\]);$/    $collection = collect([1, 2, 3]);/
s/^    \/\/ \[1, 2, 3, 5\]$/    \/\/ [1, 2, 3, 5]/
s/^For the inverse of `unless`, see the \[`when`\](#method-when) method\.$/`unless`の逆の動作は、[`when`](#method-when)メソッドです。/
s/^The static `unwrap` method returns the collection's underlying items from the given value when applicable:$/staticの`unwrap`メソッドは適用可能な場合、指定値からコレクションの元になっているアイテムを返します。/
s/^    \/\/ \['John Doe'\]$/    \/\/ ['John Doe']/
s/^    Collection::unwrap(\['John Doe'\]);$/    Collection::unwrap(['John Doe']);/
s/^    \/\/ \['John Doe'\]$/    \/\/ ['John Doe']/
s/^The `values` method returns a new collection with the keys reset to consecutive integers:$/`values`メソッドはキーをリセット後、連続した整数にした新しいコレクションを返します。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        10 => \['product' => 'Desk', 'price' => 200\],$/        10 => ['product' => 'Desk', 'price' => 200],/
s/^        11 => \['product' => 'Desk', 'price' => 200\]$/        11 => ['product' => 'Desk', 'price' => 200]/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            0 => \['product' => 'Desk', 'price' => 200\],$/            0 => ['product' => 'Desk', 'price' => 200],/
s/^            1 => \['product' => 'Desk', 'price' => 200\],$/            1 => ['product' => 'Desk', 'price' => 200],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `when` method will execute the given callback when the first argument given to the method evaluates to `true`:$/`when`メソッドは、メソッドの第１引数が`true`に評価される場合、コールバックを実行します。/
s/^    $collection = collect(\[1, 2, 3\]);$/    $collection = collect([1, 2, 3]);/
s/^    \/\/ \[1, 2, 3, 4\]$/    \/\/ [1, 2, 3, 4]/
s/^For the inverse of `when`, see the \[`unless`\](#method-unless) method\.$/`when`の逆の動作は、[`unless`](#method-unless)メソッドです。/
s/^The `where` method filters the collection by a given key \/ value pair:$/`where`メソッドは指定したキー／値ペアでコレクションをフィルタリングします。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product' => 'Desk', 'price' => 200\],$/        ['product' => 'Desk', 'price' => 200],/
s/^        \['product' => 'Chair', 'price' => 100\],$/        ['product' => 'Chair', 'price' => 100],/
s/^        \['product' => 'Bookcase', 'price' => 150\],$/        ['product' => 'Bookcase', 'price' => 150],/
s/^        \['product' => 'Door', 'price' => 100\],$/        ['product' => 'Door', 'price' => 100],/
s/^    \]);$/    ]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['product' => 'Chair', 'price' => 100\],$/            ['product' => 'Chair', 'price' => 100],/
s/^            \['product' => 'Door', 'price' => 100\],$/            ['product' => 'Door', 'price' => 100],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `where` method uses "loose" comparisons when checking item values, meaning a string with an integer value will be considered equal to an integer of the same value\. Use the \[`whereStrict`\](#method-wherestrict) method to filter using "strict" comparisons\.$/`where`メソッドはアイテム値の確認を「緩く」比較します。つまり、同じ値の文字列と整数値は、同値と判断します。「厳格」な比較でフィルタリングしたい場合は、[`whereStrict`](#method-wherestrict)メソッドを使ってください。/
s/^This method has the same signature as the \[`where`\](#method-where) method; however, all values are compared using "strict" comparisons\.$/このメソッドの使用法は、[`where`](#method-where)メソッドと同じです。しかし、値の比較はすべて「厳格」な比較で行われます。/
s/^The `whereIn` method filters the collection by a given key \/ value contained within the given array:$/`whereIn`メソッドは指定された配列に含まれる値／キーにより、コレクションをフィルタリングします。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product' => 'Desk', 'price' => 200\],$/        ['product' => 'Desk', 'price' => 200],/
s/^        \['product' => 'Chair', 'price' => 100\],$/        ['product' => 'Chair', 'price' => 100],/
s/^        \['product' => 'Bookcase', 'price' => 150\],$/        ['product' => 'Bookcase', 'price' => 150],/
s/^        \['product' => 'Door', 'price' => 100\],$/        ['product' => 'Door', 'price' => 100],/
s/^    \]);$/    ]);/
s/^    $filtered = $collection->whereIn('price', \[150, 200\]);$/    $filtered = $collection->whereIn('price', [150, 200]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['product' => 'Bookcase', 'price' => 150\],$/            ['product' => 'Bookcase', 'price' => 150],/
s/^            \['product' => 'Desk', 'price' => 200\],$/            ['product' => 'Desk', 'price' => 200],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `whereIn` method uses "loose" comparisons when checking item values, meaning a string with an integer value will be considered equal to an integer of the same value\. Use the \[`whereInStrict`\](#method-whereinstrict) method to filter using "strict" comparisons\.$/`whereIn`メソッドはアイテム値のチェックを「緩く」比較します。つまり同じ値の文字列と整数値は同値と判定します。「厳密」な比較でフィルタリングしたい場合は、[`whereInStrict`](#method-whereinstrict)メソッドを使ってください。/
s/^This method has the same signature as the \[`whereIn`\](#method-wherein) method; however, all values are compared using "strict" comparisons\.$/このメソッドの使い方は、[`whereIn`](#method-wherein)メソッドと同じです。違いは全値を「厳密」に比較することです。/
s/^The `whereInstanceOf` method filters the collection by a given class type:$/`whereInstanceOf`メソッドは、コレクションを指定したクラスタイプによりフィルタリングします。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^    \]);$/    ]);/
s/^The `whereNotIn` method filters the collection by a given key \/ value not contained within the given array:$/`whereNotIn`メソッドは、指定した配列中のキー／値を含まないコレクションをフィルタリングします。/
s/^    $collection = collect(\[$/    $collection = collect([/
s/^        \['product' => 'Desk', 'price' => 200\],$/        ['product' => 'Desk', 'price' => 200],/
s/^        \['product' => 'Chair', 'price' => 100\],$/        ['product' => 'Chair', 'price' => 100],/
s/^        \['product' => 'Bookcase', 'price' => 150\],$/        ['product' => 'Bookcase', 'price' => 150],/
s/^        \['product' => 'Door', 'price' => 100\],$/        ['product' => 'Door', 'price' => 100],/
s/^    \]);$/    ]);/
s/^    $filtered = $collection->whereNotIn('price', \[150, 200\]);$/    $filtered = $collection->whereNotIn('price', [150, 200]);/
s/^    \/\*$/    \/*/
s/^        \[$/        [/
s/^            \['product' => 'Chair', 'price' => 100\],$/            ['product' => 'Chair', 'price' => 100],/
s/^            \['product' => 'Door', 'price' => 100\],$/            ['product' => 'Door', 'price' => 100],/
s/^        \]$/        ]/
s/^    \*\/$/    *\//
s/^The `whereNotIn` method uses "loose" comparisons when checking item values, meaning a string with an integer value will be considered equal to an integer of the same value\. Use the \[`whereNotInStrict`\](#method-wherenotinstrict) method to filter using "strict" comparisons\.$/`whereNotIn`メソッドは、値を「緩く」比較します。つまり、同じ値の文字列と整数は、同値と判定されます。「厳密」にフィルタリングしたい場合は、[`whereNotInStrict`](#method-wherenotinstrict)メソッドを使用します。/
s/^This method has the same signature as the \[`whereNotIn`\](#method-wherenotin) method; however, all values are compared using "strict" comparisons\.$/このメソッドは、[`whereNotIn`](#method-wherenotin)と使い方は同じですが、全値の比較が「厳密」に行われる点が異なります。/
s/^The static `wrap` method wraps the given value in a collection when applicable:$/staticの`wrap`メソッドは適用可能であれば、指定値をコレクションでラップします。/
s/^    \/\/ \['John Doe'\]$/    \/\/ ['John Doe']/
s/^    $collection = Collection::wrap(\['John Doe'\]);$/    $collection = Collection::wrap(['John Doe']);/
s/^    \/\/ \['John Doe'\]$/    \/\/ ['John Doe']/
s/^    \/\/ \['John Doe'\]$/    \/\/ ['John Doe']/
s/^The `zip` method merges together the values of the given array with the values of the original collection at the corresponding index:$/`zip`メソッドは指定した配列の値と、対応するインデックスのオリジナルコレクションの値をマージします。/
s/^    $collection = collect(\['Chair', 'Desk'\]);$/    $collection = collect(['Chair', 'Desk']);/
s/^    $zipped = $collection->zip(\[100, 200\]);$/    $zipped = $collection->zip([100, 200]);/
s/^    \/\/ \[\['Chair', 100\], \['Desk', 200\]\]$/    \/\/ [['Chair', 100], ['Desk', 200]]/
s/^## Higher Order Messages$/## Higher Order Message/
s/^Collections also provide support for "higher order messages", which are short-cuts for performing common actions on collections\. The collection methods that provide higher order messages are: \[`average`\](#method-average), \[`avg`\](#method-avg), \[`contains`\](#method-contains), \[`each`\](#method-each), \[`every`\](#method-every), \[`filter`\](#method-filter), \[`first`\](#method-first), \[`flatMap`\](#method-flatmap), \[`groupBy`\](#method-groupby), \[`keyBy`\](#method-keyby), \[`map`\](#method-map), \[`max`\](#method-max), \[`min`\](#method-min), \[`partition`\](#method-partition), \[`reject`\](#method-reject), \[`sortBy`\](#method-sortby), \[`sortByDesc`\](#method-sortbydesc), \[`sum`\](#method-sum), and \[`unique`\](#method-unique)\.$/コレクションで繁用するアクションを手短に実行できるよう、"higher order messages"をサポートしました。[`average`](#method-average)、[`avg`](#method-avg)、[`contains`](#method-contains)、[`each`](#method-each)、[`every`](#method-every)、[`filter`](#method-filter)、[`first`](#method-first)、[`flatMap`](#method-flatmap)、[`groupBy`](#method-groupby)、[`keyBy`](#method-keyby)、[`map`](#method-map)、[`max`](#method-max)、[`min`](#method-min)、[`partition`](#method-partition)、[`reject`](#method-reject)、[`sortBy`](#method-sortby)、[`sortByDesc`](#method-sortbydesc)、[`sum`](#method-sum)、[`unique`](#method-unique)コレクションメソッドでhigher order messageが使用できます。/
s/^Each higher order message can be accessed as a dynamic property on a collection instance\. For instance, let's use the `each` higher order message to call a method on each object within a collection:$/各higher order messageへは、コレクションインスタンスの動的プロパティとしてアクセスできます。例として、コレクション中の各オブジェクトメソッドを呼び出す、`each` higher order messageを使用してみましょう。/
s/^Likewise, we can use the `sum` higher order message to gather the total number of "votes" for a collection of users:$/同様に、ユーザーのコレクションに対し、「投票(votes)」の合計数を求めるために、`sum` higher order messageを使用できます。/
