s/^# Database: Query Builder$/# データベース：クエリビルダ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Retrieving Results\](#retrieving-results)$/- [結果の取得](#retrieving-results)/
s/^    - \[Chunking Results\](#chunking-results)$/    - [結果の分割](#chunking-results)/
s/^    - \[Aggregates\](#aggregates)$/    - [集計](#aggregates)/
s/^- \[Selects\](#selects)$/- [SELECT](#selects)/
s/^- \[Raw Expressions\](#raw-expressions)$/- [SQL文](#raw-expressions)/
s/^- \[Joins\](#joins)$/- [JOIN](#joins)/
s/^- \[Unions\](#unions)$/- [UNION](#unions)/
s/^- \[Where Clauses\](#where-clauses)$/- [WHERE節](#where-clauses)/
s/^    - \[Parameter Grouping\](#parameter-grouping)$/    - [パラメータのグループ分け](#parameter-grouping)/
s/^    - \[Where Exists Clauses\](#where-exists-clauses)$/    - [Where Exists節](#where-exists-clauses)/
s/^    - \[JSON Where Clauses\](#json-where-clauses)$/    - [JSON Where節](#json-where-clauses)/
s/^- \[Ordering, Grouping, Limit, & Offset\](#ordering-grouping-limit-and-offset)$/- [順序、グループ分け、制限、オフセット](#ordering-grouping-limit-and-offset)/
s/^- \[Conditional Clauses\](#conditional-clauses)$/- [条件節](#conditional-clauses)/
s/^- \[Inserts\](#inserts)$/- [INSERT](#inserts)/
s/^- \[Updates\](#updates)$/- [UPDATE](#updates)/
s/^    - \[Updating JSON Columns\](#updating-json-columns)$/    - [JSONカラムの更新](#updating-json-columns)/
s/^    - \[Increment & Decrement\](#increment-and-decrement)$/    - [増減分](#increment-and-decrement)/
s/^- \[Deletes\](#deletes)$/- [DELETE](#deletes)/
s/^- \[Pessimistic Locking\](#pessimistic-locking)$/- [排他的ロック](#pessimistic-locking)/
s/^## Introduction$/## イントロダクション/
s/^Laravel's database query builder provides a convenient, fluent interface to creating and running database queries\. It can be used to perform most database operations in your application and works on all supported database systems\.$/データベースクエリビルダはスラスラと書ける(fluent)便利なインターフェイスで、クエリを作成し実行するために使用します。アプリケーションで行われるほとんどのデーターベース操作が可能で、サポートしている全データベースシステムに対し使用できます。/
s/^The Laravel query builder uses PDO parameter binding to protect your application against SQL injection attacks\. There is no need to clean strings being passed as bindings\.$/LaravelクエリビルダはアプリケーションをSQLインジェクション攻撃から守るために、PDOパラメーターによるバインディングを使用します。バインドする文字列をクリーンにしてから渡す必要はありません。/
s/^## Retrieving Results$/## 結果の取得/
s/^#### Retrieving All Rows From A Table$/#### 全レコードの取得/
s/^You may use the `table` method on the `DB` facade to begin a query\. The `table` method returns a fluent query builder instance for the given table, allowing you to chain more constraints onto the query and then finally get the results using the `get` method:$/クエリを書くには`DB`ファサードの`table`メソッドを使います。`table`メソッドは指定したテーブルに対するクエリビルダインスタンスを返します。これを使いクエリに制約を加え、最終的な結果を取得するチェーンを繋げます。次に、最終的な結果を`get`で取得します。/
s/^        \/\*\*$/        \/**/
s/^         \* Show a list of all of the application's users\.$/         * アプリケーションの全ユーザーレコード一覧を表示/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            return view('user\.index', \['users' => $users\]);$/            return view('user.index', ['users' => $users]);/
s/^The `get` method returns an `Illuminate\\Support\\Collection` containing the results where each result is an instance of the PHP `StdClass` object\. You may access each column's value by accessing the column as a property of the object:$/`get`メソッドは、PHPの`StdClass`オブジェクトのインスタンスを結果として含む、`Illuminate\\Support\\Collection`を返します。各カラムの値は、オブジェクトのプロパティとしてアクセスできます。/
s/^#### Retrieving A Single Row \/ Column From A Table$/#### テーブルから１カラム／１レコード取得/
s/^If you just need to retrieve a single row from the database table, you may use the `first` method\. This method will return a single `StdClass` object:$/データベーステーブルから１レコードのみ取得する必要がある場合は、`first`メソッドを使います。このメソッドは`StdClass`オブジェクトを返します。/
s/^If you don't even need an entire row, you may extract a single value from a record using the `value` method\. This method will return the value of the column directly:$/全カラムは必要ない場合、`value`メソッドにより一つの値のみ取得できます。このメソッドはカラムの値を直接返します。/
s/^#### Retrieving A List Of Column Values$/#### カラム値をリストで取得/
s/^If you would like to retrieve a Collection containing the values of a single column, you may use the `pluck` method\. In this example, we'll retrieve a Collection of role titles:$/単一カラムの値をコレクションで取得したい場合は`pluck`メソッドを使います。以下の例では役割名(title)をコレクションで取得しています。/
s/^ You may also specify a custom key column for the returned Collection:$/取得コレクションのキーカラムを指定することもできます。/
s/^### Chunking Results$/### 結果の分割/
s/^If you need to work with thousands of database records, consider using the `chunk` method\. This method retrieves a small chunk of the results at a time and feeds each chunk into a `Closure` for processing\. This method is very useful for writing \[Artisan commands\](\/docs\/{{version}}\/artisan) that process thousands of records\. For example, let's work with the entire `users` table in chunks of 100 records at a time:$/数千のデータベースレコードを扱う場合は`chunk`メソッドの使用を考慮してください。このメソッドは一度に小さな「かたまり(chunk)」で結果を取得し、このチャンクは処理のために「クロージャ」に渡されます。このメソッドは数千のレコードを処理する[Artisanコマンド](\/docs\/{{version}}\/artisan)を書くときに便利です。`users`レコード全体から一度に１００レコードずつチャンクを処理する例を見てください。/
s/^You may stop further chunks from being processed by returning `false` from the `Closure`:$/クロージャから`false`を返すとチャンクの処理を中断できます。/
s/^        \/\/ Process the records\.\.\.$/        \/\/ レコードの処理…/
s/^### Aggregates$/### 集計/
s/^The query builder also provides a variety of aggregate methods such as `count`, `max`, `min`, `avg`, and `sum`\. You may call any of these methods after constructing your query:$/またクエリビルダは`count`、`max`、`min`、`avg`、`sum`など多くの集計メソッドを提供しています。クエリを制約した後にこれらのメソッドを使うことも可能です。/
s/^Of course, you may combine these methods with other clauses:$/もちろんこれらのメソッドをクエリを構築するために他の節と組み合わせて使用できます。/
s/^#### Determining If Records Exist$/#### レコード存在の判定/
s/^Instead of using the `count` method to determine if any records exist that match your query's constraints, you may use the `exists` and `doesntExist` methods:$/クエリの制約にマッチするレコードが存在するかを調べるため、`count`メソッドを使用する代わりに、`exists`や`doesntExist`メソッドを使うこともできます。/
s/^## Selects$/## SELECT/
s/^#### Specifying A Select Clause$/#### SELECT節の指定/
s/^Of course, you may not always want to select all columns from a database table\. Using the `select` method, you can specify a custom `select` clause for the query:$/もちろん、いつもデータベースレコードの全カラムが必要ではないでしょう。クエリの`select`節を`select`メソッドで指定できます。/
s/^The `distinct` method allows you to force the query to return distinct results:$/`distinct`メソッドで重複行をまとめた結果を返すように強制できます。/
s/^If you already have a query builder instance and you wish to add a column to its existing select clause, you may use the `addSelect` method:$/既にクエリビルダインスタンスがあり、select節にカラムを追加したい場合は`addSelect`メソッドを使ってください。/
s/^## Raw Expressions$/## SQL文/
s/^Sometimes you may need to use a raw expression in a query\. To create a raw expression, you may use the `DB::raw` method:$/時々、クエリの中でSQLを直接使用したいことがあります。エスケープなしのSQLを使用する場合は`DB::raw`メソッドを使用します。/
s/^                         ->select(DB::raw('count(\*) as user_count, status'))$/                         ->select(DB::raw('count(*) as user_count, status'))/
s/^> {note} Raw statements will be injected into the query as strings, so you should be extremely careful to not create SQL injection vulnerabilities\.$/> {note} rowメソッドはクエリを文字列として挿入するため、SQLインジェクションの脆弱性を生まないように十分気をつけてください。/
s/^### Raw Methods$/### rawメソッド/
s/^Instead of using `DB::raw`, you may also use the following methods to insert a raw expression into various parts of your query\.$/`DB::raw`を使用する代わりに、クエリの様々な箇所へSQL文を挿入する、以降のメソッドも使用できます。/
s/^The `selectRaw` method can be used in place of `select(DB::raw(\.\.\.))`\. This method accepts an optional array of bindings as its second argument:$/`selectRaw`メソッドは、`select(DB::raw(...))`に置き換えて使用できます。このメソッドは、第２引数へバインド値の配列を指定することも可能です。/
s/^                    ->selectRaw('price \* ? as price_with_tax', \[1\.0825\])$/                    ->selectRaw('price * ? as price_with_tax', [1.0825])/
s/^The `whereRaw` and `orWhereRaw` methods can be used to inject a raw `where` clause into your query\. These methods accept an optional array of bindings as their second argument:$/`whereRaw`と`orWhereRaw`メソッドは、クエリへ`where`節を挿入できます。これらのメソッドは、第３引数にバインド値の配列を指定することもできます。/
s/^                    ->whereRaw('price > IF(state = "TX", ?, 100)', \[200\])$/                    ->whereRaw('price > IF(state = "TX", ?, 100)', [200])/
s/^The `havingRaw` and `orHavingRaw` methods may be used to set a raw string as the value of the `having` clause\. These methods accept an optional array of bindings as their second argument:$/`havingRaw`と`orHavingRaw`メソッドは、文字列を`having`節の値として指定するために使用します。両メソッドは、第２引数にオプションとして、バインドの配列を渡すことができます。/
s/^                    ->havingRaw('SUM(price) > ?', \[2500\])$/                    ->havingRaw('SUM(price) > ?', [2500])/
s/^The `orderByRaw` method may be used to set a raw string as the value of the `order by` clause:$/`orderByRaw`メソッドは、文字列を`order by`節の値として指定するために使用します。/
s/^## Joins$/## JOIN/
s/^#### Inner Join Clause$/#### INNER JOIN文/
s/^The query builder may also be used to write join statements\. To perform a basic "inner join", you may use the `join` method on a query builder instance\. The first argument passed to the `join` method is the name of the table you need to join to, while the remaining arguments specify the column constraints for the join\. Of course, as you can see, you can join to multiple tables in a single query:$/さらにクエリビルダはJOIN文を書くためにも使用できます。基本的な"INNER JOIN"を実行するには、クエリビルダインスタンスに`join`メソッドを使ってください。`join`メソッドの第１引数は結合したいテーブル名、それ以降の引数にはJOIN時のカラムの制約条件を指定します。もちろん下記のように、一つのクエリで複数のテーブルを結合できます。/
s/^                ->join('contacts', 'users\.id', '=', 'contacts\.user_id')$/                ->join('contacts', 'users.id', '=', 'contacts.user_id')/
s/^                ->join('orders', 'users\.id', '=', 'orders\.user_id')$/                ->join('orders', 'users.id', '=', 'orders.user_id')/
s/^                ->select('users\.\*', 'contacts\.phone', 'orders\.price')$/                ->select('users.*', 'contacts.phone', 'orders.price')/
s/^#### Left Join Clause$/#### LEFT JOIN文/
s/^If you would like to perform a "left join" instead of an "inner join", use the `leftJoin` method\. The `leftJoin` method has the same signature as the `join` method:$/"INNER JOIN"の代わりに"LEFT JOIN"を実行したい場合は`leftJoin`メソッドを使います。`leftJoin`メソッドの使い方は`join`メソッドと同じです。/
s/^                ->leftJoin('posts', 'users\.id', '=', 'posts\.user_id')$/                ->leftJoin('posts', 'users.id', '=', 'posts.user_id')/
s/^#### Cross Join Clause$/#### クロスジョイン文/
s/^To perform a "cross join" use the `crossJoin` method with the name of the table you wish to cross join to\. Cross joins generate a cartesian product between the first table and the joined table:$/「クロスジョイン」を実行するときは、接合したいテーブル名を指定し、`crossJoin`メソッドを使ってください。クロスジョインにより、最初のテーブルと指定したテーブルとの、デカルト積を生成します。/
s/^#### Advanced Join Clauses$/#### 上級のJOIN文/
s/^You may also specify more advanced join clauses\. To get started, pass a `Closure` as the second argument into the `join` method\. The `Closure` will receive a `JoinClause` object which allows you to specify constraints on the `join` clause:$/さらに上級なJOIN節を指定することもできます。そのためには`join`メソッドの第２引数に「クロージャ」を指定します。その「クロージャ」は`JOIN`節に制約を指定できるようにする`JoinClause`オブジェクトを受け取ります。/
s/^                $join->on('users\.id', '=', 'contacts\.user_id')->orOn(\.\.\.);$/                $join->on('users.id', '=', 'contacts.user_id')->orOn(...);/
s/^If you would like to use a "where" style clause on your joins, you may use the `where` and `orWhere` methods on a join\. Instead of comparing two columns, these methods will compare the column against a value:$/JOINに"where"節を使用したい場合はjoinの中で`where`や`orWhere`を使用して下さい。２つのカラムを比べる代わりに、これらのメソッドは値とカラムを比較します。/
s/^                $join->on('users\.id', '=', 'contacts\.user_id')$/                $join->on('users.id', '=', 'contacts.user_id')/
s/^                     ->where('contacts\.user_id', '>', 5);$/                     ->where('contacts.user_id', '>', 5);/
s/^#### Sub-Query Joins$/#### サブクエリのJOIN/
s/^You may use the `joinSub`, `leftJoinSub`, and `rightJoinSub` methods to join a query to a sub-query\. Each of these methods receive three arguments: the sub-query, its table alias, and a Closure that defines the related columns:$/サブクエリへクエリをJOINするために、`joinSub`、`leftJoinSub`、`rightJoinSub`メソッドを利用できます。各メソッドは３つの引数を取ります。サブクエリ、テーブルのエイリアス、関連するカラムを定義するクロージャです。/
s/^                $join->on('users\.id', '=', 'latest_posts\.user_id');$/                $join->on('users.id', '=', 'latest_posts.user_id');/
s/^## Unions$/## UNION/
s/^The query builder also provides a quick way to "union" two queries together\. For example, you may create an initial query and use the `union` method to union it with a second query:$/クエリビルダは２つのクエリを結合(union)させる手軽な手法を提供します。たとえば最初にクエリを作成し、その後に２つ目のクエリを結合するために`union`メソッドを使います。/
s/^> {tip} The `unionAll` method is also available and has the same method signature as `union`\.$/> {tip} `union`と同じ使い方の`unionAll`メソッドも使えます。/
s/^## Where Clauses$/## WHERE節/
s/^#### Simple Where Clauses$/#### 単純なWHERE節/
s/^You may use the `where` method on a query builder instance to add `where` clauses to the query\. The most basic call to `where` requires three arguments\. The first argument is the name of the column\. The second argument is an operator, which can be any of the database's supported operators\. Finally, the third argument is the value to evaluate against the column\.$/`where`節をクエリに追加するには、クエリビルダインスタンスの`where`メソッドを使います。基本的な`where`の呼び出しでは３つの引数を使います。第１引数はカラム名です。第２引数はデータベースがサポートしているオペレーターです。第３引数はカラムに対して比較する値です。/
s/^For example, here is a query that verifies the value of the "votes" column is equal to 100:$/例として、"votes"カラムの値が100と等しいレコードのクエリを見てください。/
s/^For convenience, if you want to verify that a column is equal to a given value, you may pass the value directly as the second argument to the `where` method:$/カラムが指定値と等しいかを比べたい場合は利便性を良くするため、`where`メソッドの第２引数に値をそのまま指定できます。/
s/^Of course, you may use a variety of other operators when writing a `where` clause:$/もちろん、`where`文を書くときには、その他いろいろなオペレータも使えます。/
s/^You may also pass an array of conditions to the `where` function:$/`where`に配列で条件を渡すこともできます。/
s/^    $users = DB::table('users')->where(\[$/    $users = DB::table('users')->where([/
s/^        \['status', '=', '1'\],$/        ['status', '=', '1'],/
s/^        \['subscribed', '<>', '1'\],$/        ['subscribed', '<>', '1'],/
s/^    \])->get();$/    ])->get();/
s/^#### Or Statements$/#### OR節/
s/^You may chain where constraints together as well as add `or` clauses to the query\. The `orWhere` method accepts the same arguments as the `where` method:$/WHEREの結合にチェーンで`or`節をクエリに追加できます。`orWhere`メソッドは`where`メソッドと同じ引数を受け付けます。/
s/^#### Additional Where Clauses$/#### その他のWHERE節/
s/^\*\*whereBetween\*\*$/**whereBetween**/
s/^The `whereBetween` method verifies that a column's value is between two values:$/`whereBetween`メソッドはカラムの値が２つの値の間である条件を加えます。/
s/^                        ->whereBetween('votes', \[1, 100\])->get();$/                        ->whereBetween('votes', [1, 100])->get();/
s/^\*\*whereNotBetween\*\*$/**whereNotBetween**/
s/^The `whereNotBetween` method verifies that a column's value lies outside of two values:$/`whereNotBetween`メソッドは、カラムの値が２つの値の間ではない条件を加えます。/
s/^                        ->whereNotBetween('votes', \[1, 100\])$/                        ->whereNotBetween('votes', [1, 100])/
s/^\*\*whereIn \/ whereNotIn\*\*$/**whereIn \/ whereNotIn**/
s/^The `whereIn` method verifies that a given column's value is contained within the given array:$/`whereIn`メソッドは指定した配列の中にカラムの値が含まれている条件を加えます。/
s/^                        ->whereIn('id', \[1, 2, 3\])$/                        ->whereIn('id', [1, 2, 3])/
s/^The `whereNotIn` method verifies that the given column's value is \*\*not\*\* contained in the given array:$/`whereNotIn`メソッドはカラムの値が指定した配列の中に含まれて**いない**条件を加えます。/
s/^                        ->whereNotIn('id', \[1, 2, 3\])$/                        ->whereNotIn('id', [1, 2, 3])/
s/^\*\*whereNull \/ whereNotNull\*\*$/**whereNull \/ whereNotNull**/
s/^The `whereNull` method verifies that the value of the given column is `NULL`:$/`whereNull`メソッドは指定したカラムの値が`NULL`である条件を加えます。/
s/^The `whereNotNull` method verifies that the column's value is not `NULL`:$/`whereNotNull`メソッドは指定したカラムの値が`NULL`でない条件を加えます。/
s/^\*\*whereDate \/ whereMonth \/ whereDay \/ whereYear \/ whereTime\*\*$/**whereDate \/ whereMonth \/ whereDay \/ whereYear \/ whereTime**/
s/^The `whereDate` method may be used to compare a column's value against a date:$/`whereDate`メソッドはカラム値を日付と比較する時に使用します。/
s/^The `whereMonth` method may be used to compare a column's value against a specific month of a year:$/`whereMonth`メソッドはカラム値と、ある年の指定した月とを比較します。/
s/^The `whereDay` method may be used to compare a column's value against a specific day of a month:$/`whereDay`メソッドはカラム値と、ある月の指定した日とを比べます。/
s/^The `whereYear` method may be used to compare a column's value against a specific year:$/`whereYear`メソッドはカラム値と、指定した年とを比べます。/
s/^The `whereTime` method may be used to compare a column's value against a specific time:$/`whereTime`メソッドはカラム地と、指定した時間を比較します。/
s/^\*\*whereColumn\*\*$/**whereColumn**/
s/^The `whereColumn` method may be used to verify that two columns are equal:$/`whereColumn`メソッドは２つのカラムが同値である確認をするのに使います。/
s/^You may also pass a comparison operator to the method:$/メソッドに比較演算子を追加指定することもできます。/
s/^The `whereColumn` method can also be passed an array of multiple conditions\. These conditions will be joined using the `and` operator:$/`whereColumn`へ配列により複数の条件を渡すこともできます。各条件は`and`オペレータでつなげられます。/
s/^                    ->whereColumn(\[$/                    ->whereColumn([/
s/^                        \['first_name', '=', 'last_name'\],$/                        ['first_name', '=', 'last_name'],/
s/^                        \['updated_at', '>', 'created_at'\]$/                        ['updated_at', '>', 'created_at']/
s/^                    \])->get();$/                    ])->get();/
s/^### Parameter Grouping$/### パラメータのグループ分け/
s/^Sometimes you may need to create more advanced where clauses such as "where exists" clauses or nested parameter groupings\. The Laravel query builder can handle these as well\. To get started, let's look at an example of grouping constraints within parenthesis:$/時には、"WHERE EXISTS"節やグループにまとめたパラーメーターのネストのような、上級のWHERE節を作成する必要が起きます。Laravelクエリビルダはこれらもうまく処理できます。手始めに、カッコで制約をまとめる例を見てください。/
s/^As you can see, passing a `Closure` into the `where` method instructs the query builder to begin a constraint group\. The `Closure` will receive a query builder instance which you can use to set the constraints that should be contained within the parenthesis group\. The example above will produce the following SQL:$/ご覧の通り、`Where`メソッドに渡している「クロージャ」が、クエリビルダのグルーピングを指示しています。生成するSQLの括弧内で展開される制約を指定できるように、「クロージャ」はクエリビルダのインスタンスを受け取ります。/
s/^    select \* from users where name = 'John' and (votes > 100 or title = 'Admin')$/    select * from users where name = 'John' and (votes > 100 or title = 'Admin')/
s/^> {tip} You should always group `orWhere` calls in order to avoid unexpected behavior when global scopes are applied\.$/> {tip} グローバルスコープが適用されるときに、予想外の動作を防ぐために、`orWhere`コールは常にまとめてください。/
s/^### Where Exists Clauses$/### Where Exists節/
s/^The `whereExists` method allows you to write `where exists` SQL clauses\. The `whereExists` method accepts a `Closure` argument, which will receive a query builder instance allowing you to define the query that should be placed inside of the "exists" clause:$/`whereExists`メソッドは`WHERE EXISTS`のSQLを書けるように用意しています。`whereExists`メソッドは引数に「クロージャ」を取り、"EXISTS"節の中に置かれるクエリを定義するためのクエリビルダを受け取ります。/
s/^                          ->whereRaw('orders\.user_id = users\.id');$/                          ->whereRaw('orders.user_id = users.id');/
s/^The query above will produce the following SQL:$/上のクエリは以下のSQLを生成します。/
s/^    select \* from users$/    select * from users/
s/^        select 1 from orders where orders\.user_id = users\.id$/        select 1 from orders where orders.user_id = users.id/
s/^### JSON Where Clauses$/### JSON WHERE節/
s/^Laravel also supports querying JSON column types on databases that provide support for JSON column types\. Currently, this includes MySQL 5\.7, PostgreSQL, SQL Server 2016, and SQLite 3\.9\.0 (with the \[JSON1 extension\](https:\/\/www\.sqlite\.org\/json1\.html))\. To query a JSON column, use the `->` operator:$/Laravelはデータベース上のJSONタイプをサポートするカラムに対するクエリに対応しています。現在、MySQL5.7とPostgreSQL、SQL Server2016、SQLite3.9.0（[JSON1拡張](https:\/\/www.sqlite.org\/json1.html)使用時）に対応しています。JSONカラムをクエリするには`->`オペレータを使ってください。/
s/^                    $//
s/^You may use `whereJsonContains` to query JSON arrays (not supported on SQLite):$/JSON配列をクエリするには、`whereJsonContains`を使用します。（SQLiteでは未サポート）/
s/^                    $//
s/^MySQL and PostgreSQL support `whereJsonContains` with multiple values:$/MySQLとPostgreSQLでは、`whereJsonContains`で複数の値をサポートしています。/
s/^                    ->whereJsonContains('options->languages', \['en', 'de'\])$/                    ->whereJsonContains('options->languages', ['en', 'de'])/
s/^                    ->get();                    $/                    ->get();/
s/^## Ordering, Grouping, Limit, & Offset$/## 順序、グループ分け、制限、オフセット/
s/^The `orderBy` method allows you to sort the result of the query by a given column\. The first argument to the `orderBy` method should be the column you wish to sort by, while the second argument controls the direction of the sort and may be either `asc` or `desc`:$/`orderBy`メソッドは指定したカラムでクエリ結果をソートします。`orderBy`メソッドの最初の引数はソート対象のカラムで、第２引数はソートの昇順(`asc`)と降順(`desc`)をコントロールします。/
s/^#### latest \/ oldest$/#### latest／oldest/
s/^The `latest` and `oldest` methods allow you to easily order results by date\. By default, result will be ordered by the `created_at` column\. Or, you may pass the column name that you wish to sort by:$/`latest`と`oldest`メソッドにより、データの結果を簡単に整列できます。デフォルトで、結果は`created_at`カラムによりソートされます。ソートキーとしてカラム名を渡すこともできます。/
s/^The `inRandomOrder` method may be used to sort the query results randomly\. For example, you may use this method to fetch a random user:$/`inRandomOrder`メソッドはクエリ結果をランダムな順番にしたい時に使用します。たとえば、以下のコードはランダムにユーザーを一人取得します。/
s/^The `groupBy` and `having` methods may be used to group the query results\. The `having` method's signature is similar to that of the `where` method:$/`groupBy`と`having`メソッドはクエリ結果をグループにまとめるために使用します。`having`メソッドは`where`メソッドと似た使い方です。/
s/^You may pass multiple arguments to the `groupBy` method to group by multiple columns:$/複数カラムによるグループ化のため、`groupBy`メソッドに複数の引数を指定できます。/
s/^For more advanced `having` statements, see the \[`havingRaw`\](#raw-methods) method\.$/より上級な`having`文については、[`havingRaw`](#raw-methods)メソッドを参照してください。/
s/^To limit the number of results returned from the query, or to skip a given number of results in the query, you may use the `skip` and `take` methods:$/クエリから限られた(`LIMIT`)数のレコードを受け取ったり、結果から指定した件数を飛ばしたりするには、`skip`と`take`メソッドを使います。/
s/^Alternatively, you may use the `limit` and `offset` methods:$/別の方法として、`limit`と`offset`メソッドも使用できます。/
s/^## Conditional Clauses$/## 条件節/
s/^Sometimes you may want clauses to apply to a query only when something else is true\. For instance you may only want to apply a `where` statement if a given input value is present on the incoming request\. You may accomplish this using the `when` method:$/ある条件がtrueの場合の時のみ、クエリへ特定の文を適用したい場合があります。例えば特定の入力値がリクエストに含まれている場合に、`where`文を適用する場合です。`when`メソッドで実現できます。/
s/^The `when` method only executes the given Closure when the first parameter is `true`\. If the first parameter is `false`, the Closure will not be executed\.$/`when`メソッドは、第１引数が`true`の時のみ、指定されたクロージャを実行します。最初の引数が`false`の場合、クロージャを実行しません。/
s/^You may pass another Closure as the third parameter to the `when` method\. This Closure will execute if the first parameter evaluates as `false`\. To illustrate how this feature may be used, we will use it to configure the default sorting of a query:$/`when`メソッドの第3引数に別のクロージャを渡せます。このクロージャは、最初の引数の評価が`false`であると実行されます。この機能をどう使うかを確認するため、クエリのデフォルトソートを設定してみましょう。/
s/^## Inserts$/## INSERT/
s/^The query builder also provides an `insert` method for inserting records into the database table\. The `insert` method accepts an array of column names and values:$/クエリビルダは、データベーステーブルにレコードを挿入するための`insert`メソッドを提供しています。`insert`メソッドは挿入するカラム名と値の配列を引数に取ります。/
s/^        \['email' => 'john@example\.com', 'votes' => 0\]$/        ['email' => 'john@example.com', 'votes' => 0]/
s/^You may even insert several records into the table with a single call to `insert` by passing an array of arrays\. Each array represents a row to be inserted into the table:$/配列の配列を`insert`に渡して呼び出すことで、テーブルにたくさんのレコードを一度にまとめて挿入できます。/
s/^    DB::table('users')->insert(\[$/    DB::table('users')->insert([/
s/^        \['email' => 'taylor@example\.com', 'votes' => 0\],$/        ['email' => 'taylor@example.com', 'votes' => 0],/
s/^        \['email' => 'dayle@example\.com', 'votes' => 0\]$/        ['email' => 'dayle@example.com', 'votes' => 0]/
s/^    \]);$/    ]);/
s/^#### Auto-Incrementing IDs$/#### 自動増分ID/
s/^If the table has an auto-incrementing id, use the `insertGetId` method to insert a record and then retrieve the ID:$/テーブルが自動増分IDを持っている場合、`insertGetId`メソッドを使うとレコードを挿入し、そのレコードのIDを返してくれます。/
s/^        \['email' => 'john@example\.com', 'votes' => 0\]$/        ['email' => 'john@example.com', 'votes' => 0]/
s/^> {note} When using PostgreSQL the `insertGetId` method expects the auto-incrementing column to be named `id`\. If you would like to retrieve the ID from a different "sequence", you may pass the column name as the second parameter to the `insertGetId` method\.$/> {note} PostgreSQLで`insertGetId`メソッドを使う場合、自動増分カラム名は`id`である必要があります。他の「シーケンス」からIDを取得したい場合は、`insertGetId`メソッドの第２引数へカラム名を指定してください。/
s/^## Updates$/## UPDATE/
s/^Of course, in addition to inserting records into the database, the query builder can also update existing records using the `update` method\. The `update` method, like the `insert` method, accepts an array of column and value pairs containing the columns to be updated\. You may constrain the `update` query using `where` clauses:$/もちろん、データベースへレコードを挿入するだけでなく、存在しているレコードを`update`メソッドで更新することもできます。`update`メソッドは`insert`メソッドと同様に、更新対象のカラムのカラム名と値の配列を引数に受け取ります。更新するクエリを`where`節を使って制約することもできます。/
s/^                ->update(\['votes' => 1\]);$/                ->update(['votes' => 1]);/
s/^### Updating JSON Columns$/### JSONカラムの更新/
s/^When updating a JSON column, you should use `->` syntax to access the appropriate key in the JSON object\. This operation is only supported on MySQL 5\.7\+:$/JSONカラムを更新する場合、JSONオブジェクト中の適切なキーへアクセスするために、`->`記法を使用してください。この操作子はMySQL5.7以降でのみサポートしています。/
s/^                ->update(\['options->enabled' => true\]);$/                ->update(['options->enabled' => true]);/
s/^### Increment & Decrement$/### 増減分/
s/^The query builder also provides convenient methods for incrementing or decrementing the value of a given column\. This is a shortcut, providing a more expressive and terse interface compared to manually writing the `update` statement\.$/クエリビルダは指定したカラムの値を増やしたり、減らしたりするのに便利なメソッドも用意しています。これは短縮記法で、`update`分で書くのに比べるとより記述的であり、簡潔なインターフェイスを提供しています。/
s/^Both of these methods accept at least one argument: the column to modify\. A second argument may optionally be passed to control the amount by which the column should be incremented or decremented:$/両方のメソッドともに、最小１つ、更新したいカラムを引数に取ります。オプションの第２引数はそのカラムの増減値を指定します。/
s/^You may also specify additional columns to update during the operation:$/さらに増減操作と一緒に更新する追加のカラムを指定することもできます。/
s/^    DB::table('users')->increment('votes', 1, \['name' => 'John'\]);$/    DB::table('users')->increment('votes', 1, ['name' => 'John']);/
s/^## Deletes$/## DELETE/
s/^The query builder may also be used to delete records from the table via the `delete` method\. You may constrain `delete` statements by adding `where` clauses before calling the `delete` method:$/クエリビルダは`delete`メソッドで、テーブルからレコードを削除するためにも使用できます。 `delete`メソッドを呼び出す前に`where`節を追加し、`delete`文を制約することもできます。/
s/^If you wish to truncate the entire table, which will remove all rows and reset the auto-incrementing ID to zero, you may use the `truncate` method:$/全レコードを削除し、自動増分のIDを0にリセットするためにテーブルをTRUNCATEしたい場合は、`truncate`メソッドを使います。/
s/^## Pessimistic Locking$/## 悲観的ロック/
s/^The query builder also includes a few functions to help you do "pessimistic locking" on your `select` statements\. To run the statement with a "shared lock", you may use the `sharedLock` method on a query\. A shared lock prevents the selected rows from being modified until your transaction commits:$/クエリビルダは、`SELECT`文で「悲観的ロック」を行うための機能をいくつか持っています。SELECT文を実行する間「共有ロック」をかけたい場合は、`sharedLock`メソッドをクエリに指定して下さい。共有ロックはトランザクションがコミットされるまで、SELECTしている行が更新されることを防ぎます。/
s/^Alternatively, you may use the `lockForUpdate` method\. A "for update" lock prevents the rows from being modified or from being selected with another shared lock:$/もしくは`lockForUpdate`メソッドが使えます。占有ロックをかけることで、レコードを更新したりSELECTするために他の共有ロックが行われるのを防ぎます。/
