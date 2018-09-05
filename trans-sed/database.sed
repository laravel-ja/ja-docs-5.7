s/^# Database: Getting Started$/# データベース：利用開始/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Read & Write Connections\](#read-and-write-connections)$/    - [Read／Write接続](#read-and-write-connections)/
s/^    - \[Using Multiple Database Connections\](#using-multiple-database-connections)$/    - [複数接続の使用](#using-multiple-database-connections)/
s/^- \[Running Raw SQL Queries\](#running-queries)$/- [SQLクエリの実行](#running-queries)/
s/^    - \[Listening For Query Events\](#listening-for-query-events)$/    - [クエリイベントのリッスン](#listening-for-query-events)/
s/^- \[Database Transactions\](#database-transactions)$/- [データベーストランザクション](#database-transactions)/
s/^## Introduction$/## イントロダクション/
s/^Laravel makes interacting with databases extremely simple across a variety of database backends using either raw SQL, the \[fluent query builder\](\/docs\/{{version}}\/queries), and the \[Eloquent ORM\](\/docs\/{{version}}\/eloquent)\. Currently, Laravel supports four databases:$/LaravelはSQLを直接使用する場合でも、[Fluentクエリビルダ](\/docs\/{{version}}\/queries)や[Eloquent ORM](\/docs\/{{version}}\/eloquent)を使う時でも、データベースの取り扱いをとても簡単にしてくれます。現在、Laravelは以下のデータベースシステムを使用しています。/
s/^### Configuration$/### 設定/
s/^The database configuration for your application is located at `config\/database\.php`\. In this file you may define all of your database connections, as well as specify which connection should be used by default\. Examples for most of the supported database systems are provided in this file\.$/データベース設定ファイルは`config\/database.php`です。このファイルで使用するデータベース接続を全部定義すると同時に、デフォルトで使用する接続も指定してください。サポートしているほとんどのデータベースシステムの例がファイルの中に用意しています。/
s/^By default, Laravel's sample \[environment configuration\](\/docs\/{{version}}\/configuration#environment-configuration) is ready to use with \[Laravel Homestead\](\/docs\/{{version}}\/homestead), which is a convenient virtual machine for doing Laravel development on your local machine\. Of course, you are free to modify this configuration as needed for your local database\.$/デフォルトでLaravelのサンプル[環境設定](\/docs\/{{version}}\/configuration#environment-configuration)は、ローカルマシン上でLaravelでの開発を行うのに便利な仮想マシンである[Laravel Homestead](\/docs\/{{version}}\/homestead)用に設定してあります。もちろん、ローカルのデータベースに合わせるため、自由に変更してくだい。/
s/^#### SQLite Configuration$/#### SQLite設定/
s/^After creating a new SQLite database using a command such as `touch database\/database\.sqlite`, you can easily configure your environment variables to point to this newly created database by using the database's absolute path:$/`touch database\/database.sqlite`などのコマンドを使い、新しいSQLiteデータベースを作成した後、この新しいデータベースの絶対パスを環境変数へ設定します。/
s/^    DB_DATABASE=\/absolute\/path\/to\/database\.sqlite$/    DB_DATABASE=\/absolute\/path\/to\/database.sqlite/
s/^### Read & Write Connections$/### Read／Write接続/
s/^Sometimes you may wish to use one database connection for SELECT statements, and another for INSERT, UPDATE, and DELETE statements\. Laravel makes this a breeze, and the proper connections will always be used whether you are using raw queries, the query builder, or the Eloquent ORM\.$/SELECT文に別のデータベース接続を利用したい場合もあると思います。INSERT、UPDATE、DELETE文では他の接続に切り替えたい場合などです。Laravelでこれを簡単に実現できます。SQLをそのまま使う場合であろうと、クエリビルダやEloquent ORMを利用する場合であろうと、適切な接続が利用されます。/
s/^To see how read \/ write connections should be configured, let's look at this example:$/Read\/Write接続を理解してもらうため、以下の例をご覧ください。/
s/^    'mysql' => \[$/    'mysql' => [/
s/^        'read' => \[$/        'read' => [/
s/^            'host' => \['192\.168\.1\.1'\],$/            'host' => ['192.168.1.1'],/
s/^        \],$/        ],/
s/^        'write' => \[$/        'write' => [/
s/^            'host' => \['196\.168\.1\.2'\],$/            'host' => ['196.168.1.2'],/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^Note that three keys have been added to the configuration array: `read`, `write` and `sticky`\. The `read` and `write` keys have array values containing a single key: `host`\. The rest of the database options for the `read` and `write` connections will be merged from the main `mysql` array\.$/設定配列に`read`と`write`、`sticky`、３つのキーが追加されたことに注目して下さい。２つのキーとも`host`というキーを一つ持っています。`read`と`write`接続時の残りのデータベースオプションは、メインの`mysql`配列からマージされます。/
s/^You only need to place items in the `read` and `write` arrays if you wish to override the values from the main array\. So, in this case, `192\.168\.1\.1` will be used as the host for the "read" connection, while `192\.168\.1\.2` will be used for the "write" connection\. The database credentials, prefix, character set, and all other options in the main `mysql` array will be shared across both connections\.$/`read`と`write`の配列には、メインの配列の値をオーバーライドしたいものだけ指定してください。この場合、`192.168.1.1`は"read"接続に利用され、一方`192.168.1.2`が"write"接続に利用されます。メインの`mysql`配列に含まれる、データベース接続情報、プレフィックス、文字セットなどその他のオプションは、両方の接続で共有されます。/
s/^#### The `sticky` Option$/#### `sticky`オプション/
s/^The `sticky` option is an \*optional\* value that can be used to allow the immediate reading of records that have been written to the database during the current request cycle\. If the `sticky` option is enabled and a "write" operation has been performed against the database during the current request cycle, any further "read" operations will use the "write" connection\. This ensures that any data written during the request cycle can be immediately read back from the database during that same request\. It is up to you to decide if this is the desired behavior for your application\.$/`sticky`オプションは**オプショナル**値で、現在のリクエストサイクル中にデータベースへ書き込まれたレコードを即時に読み込めるようにします。`sticky`オプションが有効で、現在のリクエストサイクル中にデータベースに対して「書き込み(write)」処理が実行されると、すべての「読み込み(read)」操作で"write"接続が使われるようになります。これによりリクエストサイクル中に書き込まれたデータが、同じリクエスト中にデータベースから即時に読み込まれることが確実になります。/
s/^### Using Multiple Database Connections$/### 複数接続の使用/
s/^When using multiple connections, you may access each connection via the `connection` method on the `DB` facade\. The `name` passed to the `connection` method should correspond to one of the connections listed in your `config\/database\.php` configuration file:$/複数の接続を使用する場合は、`DB`ファサードの`connection`メソッドを利用し、各接続にアクセスできます。`connection`メソッドに渡す「名前」は、`config\/database.php`設定ファイルの中の`connections`にリストされている名前を指定します。/
s/^    $users = DB::connection('foo')->select(\.\.\.);$/    $users = DB::connection('foo')->select(...);/
s/^You may also access the raw, underlying PDO instance using the `getPdo` method on a connection instance:$/裏で動作しているPDOインスタンスに直接アクセスしたい場合は、接続インスタンスに`getPdo`メソッドを使います。/
s/^## Running Raw SQL Queries$/## SQLクエリの実行/
s/^Once you have configured your database connection, you may run queries using the `DB` facade\. The `DB` facade provides methods for each type of query: `select`, `update`, `insert`, `delete`, and `statement`\.$/データベース接続の設定を済ませれば、`DB`ファサードを使用しクエリを実行できます。`DB`ファサードは `select`、`update`、`insert`、`delete`、`statement`のクエリタイプごとにメソッドを用意しています。/
s/^#### Running A Select Query$/#### SELECTクエリの実行/
s/^To run a basic query, you may use the `select` method on the `DB` facade:$/基本的なクエリを行うには、`DB`ファサードの`select`メソッドを使います。/
s/^        \/\*\*$/        \/**/
s/^         \* Show a list of all of the application's users\.$/         * アプリケーションの全ユーザーリストを表示/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            $users = DB::select('select \* from users where active = ?', \[1\]);$/            $users = DB::select('select * from users where active = ?', [1]);/
s/^            return view('user\.index', \['users' => $users\]);$/            return view('user.index', ['users' => $users]);/
s/^The first argument passed to the `select` method is the raw SQL query, while the second argument is any parameter bindings that need to be bound to the query\. Typically, these are the values of the `where` clause constraints\. Parameter binding provides protection against SQL injection\.$/`select`メソッドの最初の引数はSQLクエリで、２つ目の引数はクエリに結合する必要のあるパラメーターです。通常、パラメーターは`where`節制約の値です。パラメーター結合はSQLインジェクションを防ぐために提供されています。/
s/^The `select` method will always return an `array` of results\. Each result within the array will be a PHP `StdClass` object, allowing you to access the values of the results:$/`select`メソッドはいつも結果の「配列」を返します。結果の値へアクセスできるように、配列に含まれる結果はそれぞれ、PHPの`StdClass`オブジェクトになります。/
s/^#### Using Named Bindings$/#### 名前付き結合の使用/
s/^Instead of using `?` to represent your parameter bindings, you may execute a query using named bindings:$/パラメーター結合に`?`を使う代わりに名前付きの結合でクエリを実行できます。/
s/^    $results = DB::select('select \* from users where id = :id', \['id' => 1\]);$/    $results = DB::select('select * from users where id = :id', ['id' => 1]);/
s/^#### Running An Insert Statement$/#### INSERT文の実行/
s/^To execute an `insert` statement, you may use the `insert` method on the `DB` facade\. Like `select`, this method takes the raw SQL query as its first argument and bindings as its second argument:$/`insert`文を実行するには、`DB`ファサードの`insert`メソッドを使います。`select`と同様に、このメソッドは第１引数にSQLクエリそのもの、第２引数に結合を取ります。/
s/^    DB::insert('insert into users (id, name) values (?, ?)', \[1, 'Dayle'\]);$/    DB::insert('insert into users (id, name) values (?, ?)', [1, 'Dayle']);/
s/^#### Running An Update Statement$/#### UPDATE文の実行/
s/^The `update` method should be used to update existing records in the database\. The number of rows affected by the statement will be returned:$/データベースの既存レコードの更新には、`update`メソッドを使います。このメソッドの返却値は影響を受けたレコード数です。/
s/^    $affected = DB::update('update users set votes = 100 where name = ?', \['John'\]);$/    $affected = DB::update('update users set votes = 100 where name = ?', ['John']);/
s/^#### Running A Delete Statement$/#### DELETE文の実行/
s/^The `delete` method should be used to delete records from the database\. Like `update`, the number of rows affected will be returned:$/データベースからレコードを削除するには、`delete`メソッドを使います。`update`と同様に、削除したレコード数が返されます。/
s/^#### Running A General Statement$/#### 通常のSQL文を実行する/
s/^Some database statements do not return any value\. For these types of operations, you may use the `statement` method on the `DB` facade:$/いつくかのデータベース文は値を返しません。こうしたタイプの操作には、`DB`ファサードの`statement`メソッドを使います。/
s/^### Listening For Query Events$/### クエリイベントのリッスン/
s/^If you would like to receive each SQL query executed by your application, you may use the `listen` method\. This method is useful for logging queries or debugging\. You may register your query listener in a \[service provider\](\/docs\/{{version}}\/providers):$/アプリケーションで実行される各SQLクエリを取得したい場合は、`listen`メソッドが使用できます。このメソッドはクエリをログしたり、デバッグしたりするときに便利です。クエリリスナは[サービスプロバイダ](\/docs\/{{version}}\/providers)の中で登録します。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションサービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^## Database Transactions$/## データベーストランザクション/
s/^You may use the `transaction` method on the `DB` facade to run a set of operations within a database transaction\. If an exception is thrown within the transaction `Closure`, the transaction will automatically be rolled back\. If the `Closure` executes successfully, the transaction will automatically be committed\. You don't need to worry about manually rolling back or committing while using the `transaction` method:$/一連の操作をデータベーストランザクション内で実行するには、`DB`ファサードの`transaction`メソッドを使用してください。トランザクション「クロージャ」の中で例外が投げられると、トランザクションは自動的にロールバックされます。「クロージャ」が正しく実行されると、自動的にコミットされます。`transaction`メソッドを使用すれば、ロールバックやコミットを自分でコードする必要はありません。/
s/^        DB::table('users')->update(\['votes' => 1\]);$/        DB::table('users')->update(['votes' => 1]);/
s/^#### Handling Deadlocks$/#### デッドロックの処理/
s/^The `transaction` method accepts an optional second argument which defines the number of times a transaction should be reattempted when a deadlock occurs\. Once these attempts have been exhausted, an exception will be thrown:$/`transaction`メソッドは第２引数に、デッドロック発生時のトランザクション再試行回数を指定できます。試行回数を過ぎたら、例外が投げられます。/
s/^        DB::table('users')->update(\['votes' => 1\]);$/        DB::table('users')->update(['votes' => 1]);/
s/^#### Manually Using Transactions$/#### 手動トランザクション/
s/^If you would like to begin a transaction manually and have complete control over rollbacks and commits, you may use the `beginTransaction` method on the `DB` facade:$/トランザクションを自分で開始し、ロールバックとコミットを完全にコントロールしたい場合は、`DB`ファサードの`beginTransaction`メソッドを使います。/
s/^You can rollback the transaction via the `rollBack` method:$/`rollBack`メソッドにより、トランザクションをロールバックできます。/
s/^Lastly, you can commit a transaction via the `commit` method:$/同様に、`commit`メソッドにより、トランザクションをコミットできます。/
s/^> {tip} The `DB` facade's transaction methods control the transactions for both the \[query builder\](\/docs\/{{version}}\/queries) and \[Eloquent ORM\](\/docs\/{{version}}\/eloquent)\.$/> {tip} `DB`ファサードのトランザクションメソッドは、[クエリビルダ](\/docs\/{{version}}\/queries)と[Eloquent ORM](\/docs\/{{version}}\/eloquent)のトランザクションを両方共にコントロールします。/
