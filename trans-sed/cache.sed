s/^# Cache$/# キャッシュ/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバ事前要件](#driver-prerequisites)/
s/^- \[Cache Usage\](#cache-usage)$/- [キャッシュの使用法](#cache-usage)/
s/^    - \[Obtaining A Cache Instance\](#obtaining-a-cache-instance)$/    - [キャッシュインスタンスの取得](#obtaining-a-cache-instance)/
s/^    - \[Retrieving Items From The Cache\](#retrieving-items-from-the-cache)$/    - [キャッシュからアイテム取得](#retrieving-items-from-the-cache)/
s/^    - \[Storing Items In The Cache\](#storing-items-in-the-cache)$/    - [キャッシュへアイテム保存](#storing-items-in-the-cache)/
s/^    - \[Removing Items From The Cache\](#removing-items-from-the-cache)$/    - [キャッシュからのアイテム削除](#removing-items-from-the-cache)/
s/^    - \[Atomic Locks\](#atomic-locks)$/    - [アトミックロック](#atomic-locks)/
s/^    - \[The Cache Helper\](#the-cache-helper)$/    - [cacheヘルパ](#the-cache-helper)/
s/^- \[Cache Tags\](#cache-tags)$/- [キャッシュタグ](#cache-tags)/
s/^    - \[Storing Tagged Cache Items\](#storing-tagged-cache-items)$/    - [タグ付けしたキャッシュアイテムの保存](#storing-tagged-cache-items)/
s/^    - \[Accessing Tagged Cache Items\](#accessing-tagged-cache-items)$/    - [タグ付けしたキャッシュアイテムへのアクセス](#accessing-tagged-cache-items)/
s/^    - \[Removing Tagged Cache Items\](#removing-tagged-cache-items)$/    - [タグ付けしたキャッシュアイテムの削除](#removing-tagged-cache-items)/
s/^- \[Adding Custom Cache Drivers\](#adding-custom-cache-drivers)$/- [カスタムキャッシュドライバの追加](#adding-custom-cache-drivers)/
s/^    - \[Writing The Driver\](#writing-the-driver)$/    - [ドライバープログラミング](#writing-the-driver)/
s/^    - \[Registering The Driver\](#registering-the-driver)$/    - [ドライバ登録](#registering-the-driver)/
s/^- \[Events\](#events)$/- [イベント](#events)/
s/^## Configuration$/## 設定/
s/^Laravel provides an expressive, unified API for various caching backends\. The cache configuration is located at `config\/cache\.php`\. In this file you may specify which cache driver you would like to be used by default throughout your application\. Laravel supports popular caching backends like \[Memcached\](https:\/\/memcached\.org) and \[Redis\](https:\/\/redis\.io) out of the box\.$/Laravelは読み書きしやすい、多くのキャッシュシステムに対する統一したAPIを提供します。キャッシュの設定は、`config\/cache.php`で指定します。アプリケーション全体のデフォルトとして使用するキャッシュドライバをこのファイルの中で指定します。[Memcached](https:\/\/memcached.org)や[Redis](https:\/\/redis.io)など、人気のあるキャッシュシステムをLaravelは最初からサポートしています。/
s/^The cache configuration file also contains various other options, which are documented within the file, so make sure to read over these options\. By default, Laravel is configured to use the `file` cache driver, which stores the serialized, cached objects in the filesystem\. For larger applications, it is recommended that you use a more robust driver such as Memcached or Redis\. You may even configure multiple cache configurations for the same driver\.$/キャッシュ設定ファイルは、様々な他のオプションも含んでいます。コメントで説明してありますので、よく読んで確認してください。Laravelのデフォルトとして、`file`キャッシュドライバが設定されています。ファイルシステムへオブジェクトをシリアライズして保存します。大きなアプリケーションではMemecachedやAPCのような、より堅牢なドライバを使うことをおすすめします。複数のドライバを使用するキャッシュ設定も可能です。/
s/^### Driver Prerequisites$/### ドライバ事前要件/
s/^#### Database$/#### データベース/
s/^When using the `database` cache driver, you will need to setup a table to contain the cache items\. You'll find an example `Schema` declaration for the table below:$/データベースをキャッシュドライバに使用する場合、キャッシュアイテムを構成するテーブルを用意する必要があります。このテーブルの「スキーマ」を定義するサンプルを見てください。/
s/^> {tip} You may also use the `php artisan cache:table` Artisan command to generate a migration with the proper schema\.$/> {tip} 正確なスキーマのマイグレーションを生成するために、`php artisan cache:table` Artisanコマンドを使用することもできます。/
s/^Using the Memcached driver requires the \[Memcached PECL package\](https:\/\/pecl\.php\.net\/package\/memcached) to be installed\. You may list all of your Memcached servers in the `config\/cache\.php` configuration file:$/Memcachedキャッシュを使用する場合は、[Memcached PECLパッケージ](https:\/\/pecl.php.net\/package\/memcached)をインストールする必要があります。全Memcachedサーバは、`config\/cache.php`設定ファイルにリストしてください。/
s/^    'memcached' => \[$/    'memcached' => [/
s/^        \[$/        [/
s/^            'host' => '127\.0\.0\.1',$/            'host' => '127.0.0.1',/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^You may also set the `host` option to a UNIX socket path\. If you do this, the `port` option should be set to `0`:$/さらに、UNIXソケットパスへ、`host`オプションを設定することもできます。これを行うには`port`オプションに`0`を指定してください。/
s/^    'memcached' => \[$/    'memcached' => [/
s/^        \[$/        [/
s/^            'host' => '\/var\/run\/memcached\/memcached\.sock',$/            'host' => '\/var\/run\/memcached\/memcached.sock',/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^Before using a Redis cache with Laravel, you will need to either install the `predis\/predis` package (~1\.0) via Composer or install the PhpRedis PHP extension via PECL\.$/LaravelでRedisを使う前に、Composerで`predis\/predis`パッケージ（~1.0）、もしくはPECLでPhpRedis PHP拡張のどちらかをインストールしておく必要があります。/
s/^For more information on configuring Redis, consult its \[Laravel documentation page\](\/docs\/{{version}}\/redis#configuration)\.$/Redisの設定についての詳細は、[Laravelドキュメントページ](\/docs\/{{version}}\/redis#configuration)を読んでください。/
s/^## Cache Usage$/## キャッシュの使用法/
s/^### Obtaining A Cache Instance$/### キャッシュインスタンスの取得/
s/^The `Illuminate\\Contracts\\Cache\\Factory` and `Illuminate\\Contracts\\Cache\\Repository` \[contracts\](\/docs\/{{version}}\/contracts) provide access to Laravel's cache services\. The `Factory` contract provides access to all cache drivers defined for your application\. The `Repository` contract is typically an implementation of the default cache driver for your application as specified by your `cache` configuration file\.$/`Illuminate\\Contracts\\Cache\\Factory`と`Illuminate\\Contracts\\Cache\\Repository`[契約](\/docs\/{{version}}\/contracts)は、Laravelのキャッシュサービスへのアクセスを提供します。`Factory`契約は、アプリケーションで定義している全キャッシュドライバへのアクセスを提供します。`Repository`契約は通常、`cache`設定ファイルで指定している、アプリケーションのデフォルトキャッシュドライバの実装です。/
s/^However, you may also use the `Cache` facade, which is what we will use throughout this documentation\. The `Cache` facade provides convenient, terse access to the underlying implementations of the Laravel cache contracts:$/しかし、このドキュメント全体で使用している、`Cache`ファサードも利用できます。`Cache`ファサードは裏で動作している、Laravelキャッシュ契約の実装への便利で簡潔なアクセスを提供しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Show a list of all users of the application\.$/         * アプリケーションの全ユーザーリストの表示/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^#### Accessing Multiple Cache Stores$/#### 複数のキャッシュ保存先へのアクセス/
s/^Using the `Cache` facade, you may access various cache stores via the `store` method\. The key passed to the `store` method should correspond to one of the stores listed in the `stores` configuration array in your `cache` configuration file:$/`Cache`ファサードの`store`メソッドを使い、様々なキャッシュ保存域へアクセスできます。`store`メソッドに渡すキーは、`cache`設定ファイルの`stores`設定配列にリストしている保存域の一つです。/
s/^### Retrieving Items From The Cache$/### キャッシュからアイテム取得/
s/^The `get` method on the `Cache` facade is used to retrieve items from the cache\. If the item does not exist in the cache, `null` will be returned\. If you wish, you may pass a second argument to the `get` method specifying the default value you wish to be returned if the item doesn't exist:$/`Cache`ファサードの`get`メソッドは、キャッシュからアイテムを取得するために使用します。アイテムがキャッシュに存在していない場合は、`null`が返されます。アイテムが存在していない時に返したい、カスタムデフォルト値を`get`メソッドの第２引数として渡すこともできます。/
s/^You may even pass a `Closure` as the default value\. The result of the `Closure` will be returned if the specified item does not exist in the cache\. Passing a Closure allows you to defer the retrieval of default values from a database or other external service:$/デフォルト値として「クロージャ」を渡すこともできます。キャッシュに指定したアイテムが存在していない場合、「クロージャ」の結果が返されます。クロージャを渡すことで、データベースや外部サービスからデフォルト値を取得するのを遅らせることができます。/
s/^        return DB::table(\.\.\.)->get();$/        return DB::table(...)->get();/
s/^#### Checking For Item Existence$/#### アイテムの存在確認/
s/^The `has` method may be used to determine if an item exists in the cache\. This method will return `false` if the value is `null` or `false`:$/`has`メソッドで、キャッシュにアイテムが存在しているかを調べることができます。このメソッドは、値が`null`か`false`の場合、`false`を返します。/
s/^#### Incrementing \/ Decrementing Values$/#### 値の増減/
s/^The `increment` and `decrement` methods may be used to adjust the value of integer items in the cache\. Both of these methods accept an optional second argument indicating the amount by which to increment or decrement the item's value:$/`increment`と`decrement`メソッドはキャッシュの整数アイテムの値を調整するために使用します。両方のメソッドともそのアイテムの値をどのくらい増減させるかの増分をオプションの第２引数に指定できます。/
s/^#### Retrieve & Store$/#### 取得不可時更新/
s/^Sometimes you may wish to retrieve an item from the cache, but also store a default value if the requested item doesn't exist\. For example, you may wish to retrieve all users from the cache or, if they don't exist, retrieve them from the database and add them to the cache\. You may do this using the `Cache::remember` method:$/キャッシュからアイテムを取得しようとして、指定したアイテムが存在しない場合は、デフォルト値を保存したい場合もあるでしょう。たとえば、全ユーザーをキャッシュから取得しようとし、存在していない場合はデータベースから取得しキャッシュへ追加したい場合です。`Cache::remember`メソッドを使用します。/
s/^If the item does not exist in the cache, the `Closure` passed to the `remember` method will be executed and its result will be placed in the cache\.$/キャッシュに存在しない場合、`remember`メソッドに渡された「クロージャ」が実行され、結果がキャッシュに保存されます。/
s/^You may use the `rememberForever` method to retrieve an item from the cache or store it forever:$/`rememberForever`メソッドでアイテムをキャッシュから取得するか、できない場合は永久に保存できます。/
s/^#### Retrieve & Delete$/#### 取得後削除/
s/^If you need to retrieve an item from the cache and then delete the item, you may use the `pull` method\. Like the `get` method, `null` will be returned if the item does not exist in the cache:$/キャッシュからアイテムを取得した後に削除したい場合は、`pull`メソッドを使用します。`get`メソッドと同様にキャッシュにアイテムが存在していない場合は、`null`が返ります。/
s/^### Storing Items In The Cache$/### キャッシュへアイテム保存/
s/^You may use the `put` method on the `Cache` facade to store items in the cache\. When you place an item in the cache, you need to specify the number of minutes for which the value should be cached:$/`Cache`ファサードの`put`メソッドにより、キャッシュにアイテムを保存できます。キャッシュにアイテムを保存するときには、何分保存するかを指定する必要があります。/
s/^Instead of passing the number of minutes as an integer, you may also pass a `DateTime` instance representing the expiration time of the cached item:$/どのくらいでアイテムが無効になるかを分数で指定する代わりに、キャッシュされたアイテムの有効期限を示す`DateTime`インスタンスを渡すこともできます。/
s/^#### Store If Not Present$/#### 非存在時保存/
s/^The `add` method will only add the item to the cache if it does not already exist in the cache store\. The method will return `true` if the item is actually added to the cache\. Otherwise, the method will return `false`:$/`add`メソッドはキャッシュに保存されていない場合のみ、そのアイテムを保存します。キャッシュに実際にアイテムが追加された場合は`true`が返ってきます。そうでなければ`false`が返されます。/
s/^#### Storing Items Forever$/#### アイテムを永遠に保存/
s/^The `forever` method may be used to store an item in the cache permanently\. Since these items will not expire, they must be manually removed from the cache using the `forget` method:$/`forever`メソッドはそのアイテムをキャッシュへ永遠に保存します。こうした値は有効期限が切れないため、`forget`メソッドを使用し、削除する必要があります。/
s/^> {tip} If you are using the Memcached driver, items that are stored "forever" may be removed when the cache reaches its size limit\.$/> {tip} Memcachedドライバーを使用する場合、キャッシュが最大値に達すると、"forever"を指定したアイテムも削除されます。/
s/^### Removing Items From The Cache$/### キャッシュからのアイテム削除/
s/^You may remove items from the cache using the `forget` method:$/`forget`メソッドでキャッシュからアイテムを削除します。/
s/^You may clear the entire cache using the `flush` method:$/キャッシュ全体をクリアしたい場合は`flush`メソッドを使います。/
s/^> {note} Flushing the cache does not respect the cache prefix and will remove all entries from the cache\. Consider this carefully when clearing a cache which is shared by other applications\.$/> {note} `flush`メソッドは、キャッシュのプレフィックスを考慮せずに、キャッシュから全アイテムを削除します。他のアプリケーションと共有するキャッシュを削除するときは、利用を熟考してください。/
s/^### Atomic Locks$/### アトミックロック/
s/^> {note} To utilize this feature, your application must be using the `memcached` or `redis` cache driver as your application's default cache driver\. In addition, all servers must be communicating with the same central cache server\.$/> {note} この機能を利用するには、アプリケーションのデフォルトキャッシュドライバに、 `memcached`か`redis`ドライバを使用する必要があります。さらに、全てのサーバが、同じ中央キャッシュサーバに接続する必要があります。/
s/^Atomic locks allow for the manipulation of distributed locks without worrying about race conditions\. For example, \[Laravel Forge\](https:\/\/forge\.laravel\.com) uses atomic locks to ensure that only one remote task is being executed on a server at a time\. You may create and manage locks using the `Cache::lock` method:$/アトミックロックにより競合状態を心配することなく、分散型のロック操作を実現できます。たとえば、[Laravel Forge](https:\/\/forge.laravel.com)では、一度に１つのリモートタスクを１つのサーバで実行するために、アトミックロックを使用しています。ロックを生成し、管理するには`Cache::lock`メソッドを使用します。/
s/^        \/\/ Lock acquired for 10 seconds\.\.\.$/        \/\/ １０秒間ロックを獲得する/
s/^The `get` method also accepts a Closure\. After the Closure is executed, Laravel will automatically release the lock:$/`get`メソッドは、クロージャも引数に取ります。クロージャ実行後、Laravelは自動的にロックを解除します。/
s/^        \/\/ Lock acquired indefinitely and automatically released\.\.\.$/        \/\/ 無期限のロックを獲得し、自動的に開放する/
s/^If the lock is not available at the moment you request it, you may instruct Laravel to wait until it becomes available:$/リクエスト時にロックが獲得できないときに、利用可能になるまで待機するようにLaravelに指示できます。/
s/^        \/\/ Lock acquired after waiting\.\.\.$/        \/\/ 待機後、ロックを獲得/
s/^By default, the `block` method will wait indefinitely until the lock is available\. You may use the `blockFor` method to only wait for the specified number of seconds\. If the lock can not be acquired within the specified time limit, an `Illuminate\\Contracts\\Cache\\LockTimeoutException` will be thrown:$/`block`メソッドはデフォルトで、ロックが利用できるまで無期限に待機します。指定秒数だけ待機したい場合は、`blockFor`メソッドを使用します。指定された時間内にロックが獲得できない場合は、`Illuminate\\Contracts\\Cache\\LockTimeoutException`が投げられます。/
s/^        \/\/ Lock acquired after waiting maximum of 5 seconds\.\.\.$/        \/\/ 最大５秒待機し、ロックを獲得/
s/^        \/\/ Lock acquired after waiting maximum of 5 seconds\.\.\.$/        \/\/ 最大５秒待機し、ロックを獲得/
s/^### The Cache Helper$/### cacheヘルパ/
s/^In addition to using the `Cache` facade or \[cache contract\](\/docs\/{{version}}\/contracts), you may also use the global `cache` function to retrieve and store data via the cache\. When the `cache` function is called with a single, string argument, it will return the value of the given key:$/`Cache`ファサードと[Cache契約](\/docs\/{{version}}\/contracts)に付け加え、キャッシュからのデータ取得／保存を行う、グローバル`cache`関数も使用できます。`cache`関数を文字列引数一つで呼び出す場合、指定したキーの値を返します。/
s/^If you provide an array of key \/ value pairs and an expiration time to the function, it will store values in the cache for the specified duration:$/キー／値ペアの配列と、有効期間を関数へ渡す場合、指定期間の間、値をキャッシュへ保存します。/
s/^    cache(\['key' => 'value'\], $minutes);$/    cache(['key' => 'value'], $minutes);/
s/^    cache(\['key' => 'value'\], now()->addSeconds(10));$/    cache(['key' => 'value'], now()->addSeconds(10));/
s/^> {tip} When testing call to the global `cache` function, you may use the `Cache::shouldReceive` method just as if you were \[testing a facade\](\/docs\/{{version}}\/mocking#mocking-facades)\.$/> グローバル`cache`関数への呼び出しをテストする場合、[ファサードのテスト](\/docs\/{{version}}\/mocking#mocking-facades)と同様に、`Cache::shouldReceive`メソッドを使います。/
s/^## Cache Tags$/## キャッシュタグ/
s/^> {note} Cache tags are not supported when using the `file` or `database` cache drivers\. Furthermore, when using multiple tags with caches that are stored "forever", performance will be best with a driver such as `memcached`, which automatically purges stale records\.$/> {note} `file`と`database`キャッシュドライバ使用時、キャッシュタグはサポートされません。また、"forever"を使い、複数のタグをつけたキャッシュを使用する場合、古いレコードを自動的にパージする`memcached`のようなドライバがパフォーマンス的に最適です。/
s/^### Storing Tagged Cache Items$/### タグ付けキャッシュアイテムの保存/
s/^Cache tags allow you to tag related items in the cache and then flush all cached values that have been assigned a given tag\. You may access a tagged cache by passing in an ordered array of tag names\. For example, let's access a tagged cache and `put` value in the cache:$/キャッシュタグにより、キャッシュ中の関連するアイテムへタグ付けできます。その後、指定したタグがつけられたキャッシュの値を全部削除できます。タグを順番に指定する配列を渡すことで、タグ付けしたキャッシュへアクセスできます。例としてタグ付けしたキャッシュにアクセスし、キャッシュへ値を`put`してみましょう。/
s/^    Cache::tags(\['people', 'artists'\])->put('John', $john, $minutes);$/    Cache::tags(['people', 'artists'])->put('John', $john, $minutes);/
s/^    Cache::tags(\['people', 'authors'\])->put('Anne', $anne, $minutes);$/    Cache::tags(['people', 'authors'])->put('Anne', $anne, $minutes);/
s/^### Accessing Tagged Cache Items$/### タグ付けキャッシュアイテムへのアクセス/
s/^To retrieve a tagged cache item, pass the same ordered list of tags to the `tags` method and then call the `get` method with the key you wish to retrieve:$/タグ付けしたキャッシュアイテムを取得するには、`tags`メソッドに同じ順序でタグのリストを渡し、続けて`get`メソッドで取得したいキーを指定します。/
s/^    $john = Cache::tags(\['people', 'artists'\])->get('John');$/    $john = Cache::tags(['people', 'artists'])->get('John');/
s/^    $anne = Cache::tags(\['people', 'authors'\])->get('Anne');$/    $anne = Cache::tags(['people', 'authors'])->get('Anne');/
s/^### Removing Tagged Cache Items$/### タグ付けキャッシュアイテムの削除/
s/^You may flush all items that are assigned a tag or list of tags\. For example, this statement would remove all caches tagged with either `people`, `authors`, or both\. So, both `Anne` and `John` would be removed from the cache:$/タグ一つ、もしくはタグのリストに結びついた全アイテムを一度に消去することができます。たとえば、次の実行文は`people`か`authors`のどちらか、または両方にタグ付けされたキャッシュを全部削除します。ですから、`Anne`と`John`は両方共キャッシュから削除されます。/
s/^    Cache::tags(\['people', 'authors'\])->flush();$/    Cache::tags(['people', 'authors'])->flush();/
s/^In contrast, this statement would remove only caches tagged with `authors`, so `Anne` would be removed, but not `John`:$/対照的に、次の実行分では`authors`にタグ付けしたキャッシュのみ削除されますので、`Anne`が削除され、`John`は残ります。/
s/^## Adding Custom Cache Drivers$/## カスタムキャッシュドライバの追加/
s/^### Writing The Driver$/### ドライバープログラミング/
s/^To create our custom cache driver, we first need to implement the `Illuminate\\Contracts\\Cache\\Store` \[contract\](\/docs\/{{version}}\/contracts)\. So, a MongoDB cache implementation would look something like this:$/カスタムキャッシュドライバを作成するには、`Illuminate\\Contracts\\Cache\\Store`[契約](\/docs\/{{version}}\/contracts)を最初に実装する必要があります。そのため、MongoDBキャッシュドライバは、以下のような実装になるでしょう。/
s/^We just need to implement each of these methods using a MongoDB connection\. For an example of how to implement each of these methods, take a look at the `Illuminate\\Cache\\MemcachedStore` in the framework source code\. Once our implementation is complete, we can finish our custom driver registration\.$/これらのメソッドをMongoDB接続を用い、実装するだけです。各メソッドをどのように実装するかの例は、フレームワークの`Illuminate\\Cache\\MemcachedStore`のソースコードを参照してください。実装を完了したら、ドライバを登録します。/
s/^> {tip} If you're wondering where to put your custom cache driver code, you could create an `Extensions` namespace within your `app` directory\. However, keep in mind that Laravel does not have a rigid application structure and you are free to organize your application according to your preferences\.$/> {tip} カスタムキャッシュドライバーをどこに設置するか迷っているなら、`app`ディレクトリ下に`Extensions`の名前空間で作成できます。しかし、Laravelはアプリケーション構造を強制していませんので、自分の好みに合わせてアプリケーションを自由に構築できることを忘れないでください。/
s/^### Registering The Driver$/### ドライバ登録/
s/^To register the custom cache driver with Laravel, we will use the `extend` method on the `Cache` facade\. The call to `Cache::extend` could be done in the `boot` method of the default `App\\Providers\\AppServiceProvider` that ships with fresh Laravel applications, or you may create your own service provider to house the extension - just don't forget to register the provider in the `config\/app\.php` provider array:$/Laravelにカスタムキャッシュドライバを登録するには、`Cache`ファサードの`extend`メソッドを使います。新しくインストールしたLaravelに含まれている、デフォルトの`App\\Providers\\AppServiceProvider`の`boot`メソッドで、`Cache::extend`を呼び出せます。もしくは、拡張を設置するために自身のサービスプロバイダを作成することもできます。`config\/app.php`プロバイダ配列に、そのプロバイダを登録し忘れないようにしてください。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービス起動後の登録処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナへ結合を登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^The first argument passed to the `extend` method is the name of the driver\. This will correspond to your `driver` option in the `config\/cache\.php` configuration file\. The second argument is a Closure that should return an `Illuminate\\Cache\\Repository` instance\. The Closure will be passed an `$app` instance, which is an instance of the \[service container\](\/docs\/{{version}}\/container)\.$/`extend`メソッドの最初の引数はドライバ名です。これは`config\/cache.php`設定ファイルの、`driver`オプションと対応します。第２引数は、`Illuminate\\Cache\\Repository`インスタンスを返すクロージャです。クロージャには、[サービスコンテナ](\/docs\/{{version}}\/container)インスタンスの`$app`インスタンスが渡されます。/
s/^Once your extension is registered, update your `config\/cache\.php` configuration file's `driver` option to the name of your extension\.$/拡張を登録したら、`config\/cache.php`設定ファイルの`driver`オプションへ、拡張の名前を登録してください。/
s/^## Events$/## イベント/
s/^To execute code on every cache operation, you may listen for the \[events\](\/docs\/{{version}}\/events) fired by the cache\. Typically, you should place these event listeners within your `EventServiceProvider`:$/全キャッシュ操作に対してコードを実行するには、キャッシュが発行する[イベント](\/docs\/{{version}}\/events)を購読する必要があります。通常、イベントリスナは`EventServiceProvider`の中へ設置します。/
s/^    \/\*\*$/    \/**/
s/^     \* The event listener mappings for the application\.$/     * アプリケーションのイベントリスナ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $listen = \[$/    protected $listen = [/
s/^        'Illuminate\\Cache\\Events\\CacheHit' => \[$/        'Illuminate\\Cache\\Events\\CacheHit' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Cache\\Events\\CacheMissed' => \[$/        'Illuminate\\Cache\\Events\\CacheMissed' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Cache\\Events\\KeyForgotten' => \[$/        'Illuminate\\Cache\\Events\\KeyForgotten' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Cache\\Events\\KeyWritten' => \[$/        'Illuminate\\Cache\\Events\\KeyWritten' => [/
s/^        \],$/        ],/
s/^    \];$/    ];/
