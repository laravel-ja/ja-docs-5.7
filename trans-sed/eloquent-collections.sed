s/^# Eloquent: Collections$/# Eloquent：コレクション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Available Methods\](#available-methods)$/- [使用できるメソッド](#available-methods)/
s/^- \[Custom Collections\](#custom-collections)$/- [カスタムコレクション](#custom-collections)/
s/^## Introduction$/## イントロダクション/
s/^All multi-result sets returned by Eloquent are instances of the `Illuminate\\Database\\Eloquent\\Collection` object, including results retrieved via the `get` method or accessed via a relationship\. The Eloquent collection object extends the Laravel \[base collection\](\/docs\/{{version}}\/collections), so it naturally inherits dozens of methods used to fluently work with the underlying array of Eloquent models\.$/`get`メソッドであれリレーションによるものであれ、Eloquentが複数のレコードをリターンする場合`Illuminate\\Database\\Eloquent\\Collection`オブジェクトが返されます。EloquentコレクションオブジェクトはLaravelの[ベースコレクション](\/docs\/{{version}}\/collections)を継承しているので、Eloquentモデルの裏にある配列をスムーズに操作するために継承した多くのメソッドがもちろん使用できます。/
s/^Of course, all collections also serve as iterators, allowing you to loop over them as if they were simple PHP arrays:$/当然ながら全コレクションはイテレーターとしても動作し、シンプルなPHP配列のようにループで取り扱うことができます。/
s/^However, collections are much more powerful than arrays and expose a variety of map \/ reduce operations that may be chained using an intuitive interface\. For example, let's remove all inactive models and gather the first name for each remaining user:$/しかし、コレクションは配列よりもパワフルで直感的なインターフェイスを使ったメソッドチェーンにより、マッピングや要素の省略操作を行うことができます。例としてアクティブでないモデルを削除し、残ったユーザーのファーストネームを集めてみましょう。/
s/^> {note} While most Eloquent collection methods return a new instance of an Eloquent collection, the `pluck`, `keys`, `zip`, `collapse`, `flatten` and `flip` methods return a \[base collection\](\/docs\/{{version}}\/collections) instance\. Likewise, if a `map` operation returns a collection that does not contain any Eloquent models, it will be automatically cast to a base collection\.$/> {note} ほとんどのEloquentコレクションは新しいEloquentコレクションのインスタンスを返しますが、`pluck`、`keys`、`zip`、`collapse`、`flatten`、`flip`メソッドは[ベースのコレクション](\/docs\/{{version}}\/collections)インスタンスを返します。Eloquentモデルをまったく含まないコレクションを返す`map`操作のような場合、自動的にベースコレクションへキャストされます。/
s/^## Available Methods$/## 使用できるメソッド/
s/^### The Base Collection$/### ベースのコレクション/
s/^All Eloquent collections extend the base \[Laravel collection\](\/docs\/{{version}}\/collections) object; therefore, they inherit all of the powerful methods provided by the base collection class:$/全Eloquentコレクションはベースの[Laravelコレクション](\/docs\/{{version}}\/collections)オブジェクトを拡張しており、そのためにベースコレクションクラスが提供しているパワフルなメソッドを全部継承しています。/
s/^\[all\](\/docs\/{{version}}\/collections#method-all)$/[all](\/docs\/{{version}}\/collections#method-all)/
s/^\[average\](\/docs\/{{version}}\/collections#method-average)$/[average](\/docs\/{{version}}\/collections#method-average)/
s/^\[avg\](\/docs\/{{version}}\/collections#method-avg)$/[avg](\/docs\/{{version}}\/collections#method-avg)/
s/^\[chunk\](\/docs\/{{version}}\/collections#method-chunk)$/[chunk](\/docs\/{{version}}\/collections#method-chunk)/
s/^\[collapse\](\/docs\/{{version}}\/collections#method-collapse)$/[collapse](\/docs\/{{version}}\/collections#method-collapse)/
s/^\[combine\](\/docs\/{{version}}\/collections#method-combine)$/[combine](\/docs\/{{version}}\/collections#method-combine)/
s/^\[concat\](\/docs\/{{version}}\/collections#method-concat)$/[concat](\/docs\/{{version}}\/collections#method-concat)/
s/^\[contains\](\/docs\/{{version}}\/collections#method-contains)$/[contains](\/docs\/{{version}}\/collections#method-contains)/
s/^\[containsStrict\](\/docs\/{{version}}\/collections#method-containsstrict)$/[containsStrict](\/docs\/{{version}}\/collections#method-containsstrict)/
s/^\[count\](\/docs\/{{version}}\/collections#method-count)$/[count](\/docs\/{{version}}\/collections#method-count)/
s/^\[crossJoin\](\/docs\/{{version}}\/collections#method-crossjoin)$/[crossJoin](\/docs\/{{version}}\/collections#method-crossjoin)/
s/^\[dd\](\/docs\/{{version}}\/collections#method-dd)$/[dd](\/docs\/{{version}}\/collections#method-dd)/
s/^\[diff\](\/docs\/{{version}}\/collections#method-diff)$/[diff](\/docs\/{{version}}\/collections#method-diff)/
s/^\[diffKeys\](\/docs\/{{version}}\/collections#method-diffkeys)$/[diffKeys](\/docs\/{{version}}\/collections#method-diffkeys)/
s/^\[dump\](\/docs\/{{version}}\/collections#method-dump)$/[dump](\/docs\/{{version}}\/collections#method-dump)/
s/^\[each\](\/docs\/{{version}}\/collections#method-each)$/[each](\/docs\/{{version}}\/collections#method-each)/
s/^\[eachSpread\](\/docs\/{{version}}\/collections#method-eachspread)$/[eachSpread](\/docs\/{{version}}\/collections#method-eachspread)/
s/^\[every\](\/docs\/{{version}}\/collections#method-every)$/[every](\/docs\/{{version}}\/collections#method-every)/
s/^\[except\](\/docs\/{{version}}\/collections#method-except)$/[except](\/docs\/{{version}}\/collections#method-except)/
s/^\[filter\](\/docs\/{{version}}\/collections#method-filter)$/[filter](\/docs\/{{version}}\/collections#method-filter)/
s/^\[first\](\/docs\/{{version}}\/collections#method-first)$/[first](\/docs\/{{version}}\/collections#method-first)/
s/^\[flatMap\](\/docs\/{{version}}\/collections#method-flatmap)$/[flatMap](\/docs\/{{version}}\/collections#method-flatmap)/
s/^\[flatten\](\/docs\/{{version}}\/collections#method-flatten)$/[flatten](\/docs\/{{version}}\/collections#method-flatten)/
s/^\[flip\](\/docs\/{{version}}\/collections#method-flip)$/[flip](\/docs\/{{version}}\/collections#method-flip)/
s/^\[forget\](\/docs\/{{version}}\/collections#method-forget)$/[forget](\/docs\/{{version}}\/collections#method-forget)/
s/^\[forPage\](\/docs\/{{version}}\/collections#method-forpage)$/[forPage](\/docs\/{{version}}\/collections#method-forpage)/
s/^\[get\](\/docs\/{{version}}\/collections#method-get)$/[get](\/docs\/{{version}}\/collections#method-get)/
s/^\[groupBy\](\/docs\/{{version}}\/collections#method-groupby)$/[groupBy](\/docs\/{{version}}\/collections#method-groupby)/
s/^\[has\](\/docs\/{{version}}\/collections#method-has)$/[has](\/docs\/{{version}}\/collections#method-has)/
s/^\[implode\](\/docs\/{{version}}\/collections#method-implode)$/[implode](\/docs\/{{version}}\/collections#method-implode)/
s/^\[intersect\](\/docs\/{{version}}\/collections#method-intersect)$/[intersect](\/docs\/{{version}}\/collections#method-intersect)/
s/^\[isEmpty\](\/docs\/{{version}}\/collections#method-isempty)$/[isEmpty](\/docs\/{{version}}\/collections#method-isempty)/
s/^\[isNotEmpty\](\/docs\/{{version}}\/collections#method-isnotempty)$/[isNotEmpty](\/docs\/{{version}}\/collections#method-isnotempty)/
s/^\[keyBy\](\/docs\/{{version}}\/collections#method-keyby)$/[keyBy](\/docs\/{{version}}\/collections#method-keyby)/
s/^\[keys\](\/docs\/{{version}}\/collections#method-keys)$/[keys](\/docs\/{{version}}\/collections#method-keys)/
s/^\[last\](\/docs\/{{version}}\/collections#method-last)$/[last](\/docs\/{{version}}\/collections#method-last)/
s/^\[map\](\/docs\/{{version}}\/collections#method-map)$/[map](\/docs\/{{version}}\/collections#method-map)/
s/^\[mapInto\](\/docs\/{{version}}\/collections#method-mapinto)$/[mapInto](\/docs\/{{version}}\/collections#method-mapinto)/
s/^\[mapSpread\](\/docs\/{{version}}\/collections#method-mapspread)$/[mapSpread](\/docs\/{{version}}\/collections#method-mapspread)/
s/^\[mapToGroups\](\/docs\/{{version}}\/collections#method-maptogroups)$/[mapToGroups](\/docs\/{{version}}\/collections#method-maptogroups)/
s/^\[mapWithKeys\](\/docs\/{{version}}\/collections#method-mapwithkeys)$/[mapWithKeys](\/docs\/{{version}}\/collections#method-mapwithkeys)/
s/^\[max\](\/docs\/{{version}}\/collections#method-max)$/[max](\/docs\/{{version}}\/collections#method-max)/
s/^\[median\](\/docs\/{{version}}\/collections#method-median)$/[median](\/docs\/{{version}}\/collections#method-median)/
s/^\[merge\](\/docs\/{{version}}\/collections#method-merge)$/[merge](\/docs\/{{version}}\/collections#method-merge)/
s/^\[min\](\/docs\/{{version}}\/collections#method-min)$/[min](\/docs\/{{version}}\/collections#method-min)/
s/^\[mode\](\/docs\/{{version}}\/collections#method-mode)$/[mode](\/docs\/{{version}}\/collections#method-mode)/
s/^\[nth\](\/docs\/{{version}}\/collections#method-nth)$/[nth](\/docs\/{{version}}\/collections#method-nth)/
s/^\[only\](\/docs\/{{version}}\/collections#method-only)$/[only](\/docs\/{{version}}\/collections#method-only)/
s/^\[pad\](\/docs\/{{version}}\/collections#method-pad)$/[pad](\/docs\/{{version}}\/collections#method-pad)/
s/^\[partition\](\/docs\/{{version}}\/collections#method-partition)$/[partition](\/docs\/{{version}}\/collections#method-partition)/
s/^\[pipe\](\/docs\/{{version}}\/collections#method-pipe)$/[pipe](\/docs\/{{version}}\/collections#method-pipe)/
s/^\[pluck\](\/docs\/{{version}}\/collections#method-pluck)$/[pluck](\/docs\/{{version}}\/collections#method-pluck)/
s/^\[pop\](\/docs\/{{version}}\/collections#method-pop)$/[pop](\/docs\/{{version}}\/collections#method-pop)/
s/^\[prepend\](\/docs\/{{version}}\/collections#method-prepend)$/[prepend](\/docs\/{{version}}\/collections#method-prepend)/
s/^\[pull\](\/docs\/{{version}}\/collections#method-pull)$/[pull](\/docs\/{{version}}\/collections#method-pull)/
s/^\[push\](\/docs\/{{version}}\/collections#method-push)$/[push](\/docs\/{{version}}\/collections#method-push)/
s/^\[put\](\/docs\/{{version}}\/collections#method-put)$/[put](\/docs\/{{version}}\/collections#method-put)/
s/^\[random\](\/docs\/{{version}}\/collections#method-random)$/[random](\/docs\/{{version}}\/collections#method-random)/
s/^\[reduce\](\/docs\/{{version}}\/collections#method-reduce)$/[reduce](\/docs\/{{version}}\/collections#method-reduce)/
s/^\[reject\](\/docs\/{{version}}\/collections#method-reject)$/[reject](\/docs\/{{version}}\/collections#method-reject)/
s/^\[reverse\](\/docs\/{{version}}\/collections#method-reverse)$/[reverse](\/docs\/{{version}}\/collections#method-reverse)/
s/^\[search\](\/docs\/{{version}}\/collections#method-search)$/[search](\/docs\/{{version}}\/collections#method-search)/
s/^\[shift\](\/docs\/{{version}}\/collections#method-shift)$/[shift](\/docs\/{{version}}\/collections#method-shift)/
s/^\[shuffle\](\/docs\/{{version}}\/collections#method-shuffle)$/[shuffle](\/docs\/{{version}}\/collections#method-shuffle)/
s/^\[slice\](\/docs\/{{version}}\/collections#method-slice)$/[slice](\/docs\/{{version}}\/collections#method-slice)/
s/^\[sort\](\/docs\/{{version}}\/collections#method-sort)$/[sort](\/docs\/{{version}}\/collections#method-sort)/
s/^\[sortBy\](\/docs\/{{version}}\/collections#method-sortby)$/[sortBy](\/docs\/{{version}}\/collections#method-sortby)/
s/^\[sortByDesc\](\/docs\/{{version}}\/collections#method-sortbydesc)$/[sortByDesc](\/docs\/{{version}}\/collections#method-sortbydesc)/
s/^\[splice\](\/docs\/{{version}}\/collections#method-splice)$/[splice](\/docs\/{{version}}\/collections#method-splice)/
s/^\[split\](\/docs\/{{version}}\/collections#method-split)$/[split](\/docs\/{{version}}\/collections#method-split)/
s/^\[sum\](\/docs\/{{version}}\/collections#method-sum)$/[sum](\/docs\/{{version}}\/collections#method-sum)/
s/^\[take\](\/docs\/{{version}}\/collections#method-take)$/[take](\/docs\/{{version}}\/collections#method-take)/
s/^\[tap\](\/docs\/{{version}}\/collections#method-tap)$/[tap](\/docs\/{{version}}\/collections#method-tap)/
s/^\[toArray\](\/docs\/{{version}}\/collections#method-toarray)$/[toArray](\/docs\/{{version}}\/collections#method-toarray)/
s/^\[toJson\](\/docs\/{{version}}\/collections#method-tojson)$/[toJson](\/docs\/{{version}}\/collections#method-tojson)/
s/^\[transform\](\/docs\/{{version}}\/collections#method-transform)$/[transform](\/docs\/{{version}}\/collections#method-transform)/
s/^\[union\](\/docs\/{{version}}\/collections#method-union)$/[union](\/docs\/{{version}}\/collections#method-union)/
s/^\[unique\](\/docs\/{{version}}\/collections#method-unique)$/[unique](\/docs\/{{version}}\/collections#method-unique)/
s/^\[uniqueStrict\](\/docs\/{{version}}\/collections#method-uniquestrict)$/[uniqueStrict](\/docs\/{{version}}\/collections#method-uniquestrict)/
s/^\[unless\](\/docs\/{{version}}\/collections#method-unless)$/[unless](\/docs\/{{version}}\/collections#method-unless)/
s/^\[values\](\/docs\/{{version}}\/collections#method-values)$/[values](\/docs\/{{version}}\/collections#method-values)/
s/^\[when\](\/docs\/{{version}}\/collections#method-when)$/[when](\/docs\/{{version}}\/collections#method-when)/
s/^\[where\](\/docs\/{{version}}\/collections#method-where)$/[where](\/docs\/{{version}}\/collections#method-where)/
s/^\[whereStrict\](\/docs\/{{version}}\/collections#method-wherestrict)$/[whereStrict](\/docs\/{{version}}\/collections#method-wherestrict)/
s/^\[whereIn\](\/docs\/{{version}}\/collections#method-wherein)$/[whereIn](\/docs\/{{version}}\/collections#method-wherein)/
s/^\[whereInStrict\](\/docs\/{{version}}\/collections#method-whereinstrict)$/[whereInStrict](\/docs\/{{version}}\/collections#method-whereinstrict)/
s/^\[whereNotIn\](\/docs\/{{version}}\/collections#method-wherenotin)$/[whereNotIn](\/docs\/{{version}}\/collections#method-wherenotin)/
s/^\[whereNotInStrict\](\/docs\/{{version}}\/collections#method-wherenotinstrict)$/[whereNotInStrict](\/docs\/{{version}}\/collections#method-wherenotinstrict)/
s/^\[zip\](\/docs\/{{version}}\/collections#method-zip)$/[zip](\/docs\/{{version}}\/collections#method-zip)/
s/^## Custom Collections$/## カスタムコレクション/
s/^If you need to use a custom `Collection` object with your own extension methods, you may override the `newCollection` method on your model:$/自分で拡張したメソッドを含むカスタム「コレクション」オブジェクトを使いたい場合は、モデルの`newCollection`メソッドをオーバーライドしてください。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new Eloquent Collection instance\.$/         * 新しいEloqunetコレクションインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  array  $models$/         * @param  array  $models/
s/^         \* @return \\Illuminate\\Database\\Eloquent\\Collection$/         * @return \\Illuminate\\Database\\Eloquent\\Collection/
s/^         \*\/$/         *\//
s/^        public function newCollection(array $models = \[\])$/        public function newCollection(array $models = [])/
s/^Once you have defined a `newCollection` method, you will receive an instance of your custom collection anytime Eloquent returns a `Collection` instance of that model\. If you would like to use a custom collection for every model in your application, you should override the `newCollection` method on a base model class that is extended by all of your models\.$/`newCollection`メソッドを定義すれば、Eloquentがそのモデルの「コレクション」インスタンスを返す場合にいつでもカスタムコレクションのインスタンスを受け取れます。アプリケーションの全モデルでカスタムコレクションを使いたい場合は、全モデルが拡張しているモデルのベースクラスで`newCollection`メソッドをオーバーライドしてください。/
