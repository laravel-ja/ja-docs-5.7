s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Predis\](#predis)$/    - [Predis](#predis)/
s/^    - \[PhpRedis\](#phpredis)$/    - [PhpRedis](#phpredis)/
s/^- \[Interacting With Redis\](#interacting-with-redis)$/- [Redisの操作](#interacting-with-redis)/
s/^    - \[Pipelining Commands\](#pipelining-commands)$/    - [パイプラインコマンド](#pipelining-commands)/
s/^- \[Pub \/ Sub\](#pubsub)$/- [publish／subscribe](#pubsub)/
s/^## Introduction$/## イントロダクション/
s/^\[Redis\](https:\/\/redis\.io) is an open source, advanced key-value store\. It is often referred to as a data structure server since keys can contain \[strings\](https:\/\/redis\.io\/topics\/data-types#strings), \[hashes\](https:\/\/redis\.io\/topics\/data-types#hashes), \[lists\](https:\/\/redis\.io\/topics\/data-types#lists), \[sets\](https:\/\/redis\.io\/topics\/data-types#sets), and \[sorted sets\](https:\/\/redis\.io\/topics\/data-types#sorted-sets)\.$/[Redis](https:\/\/redis.io)はオープンソースの進歩的なキー／値保存システムです。キーに[文字列](https:\/\/redis.io\/topics\/data-types#strings)、[ハッシュ](https:\/\/redis.io\/topics\/data-types#hashes)、[リスト](https:\/\/redis.io\/topics\/data-types#lists)、[セット](https:\/\/redis.io\/topics\/data-types#sets)、[ソート済みセット](https:\/\/redis.io\/topics\/data-types#sorted-sets)が使用できるため、データ構造サーバとしてよく名前が上がります。/
s/^Before using Redis with Laravel, you will need to install the `predis\/predis` package via Composer:$/LaravelでRedisを使用する前に、`predis\/predis`パッケージをComposerでインストールする必要があります。/
s/^Alternatively, you may install the \[PhpRedis\](https:\/\/github\.com\/phpredis\/phpredis) PHP extension via PECL\. The extension is more complex to install but may yield better performance for applications that make heavy use of Redis\.$/もしくは、[PhpRedis](https:\/\/github.com\/phpredis\/phpredis) PHP拡張をPECLでインストールすることもできます。この拡張のインストールはより複雑ですが、Redisを頻繁に使用するアプリケーションでは、よりパフォーマンスが良くなります。/
s/^### Configuration$/### 設定/
s/^The Redis configuration for your application is located in the `config\/database\.php` configuration file\. Within this file, you will see a `redis` array containing the Redis servers utilized by your application:$/アプリケーションのRedis設定は`config\/database.php`ファイルにあります。このファイルの中に`redis`配列があり、アプリケーションで使用されるRadisサーバの設定を含んでいます。/
s/^    'redis' => \[$/    'redis' => [/
s/^        'default' => \[$/        'default' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^The default server configuration should suffice for development\. However, you are free to modify this array based on your environment\. Each Redis server defined in your configuration file is required to have a name, host, and port\.$/デフォルトのサーバ設定は、開発時には十分でしょう。しかしご自由に自分の環境に合わせてこの配列を変更してください。各Redisサーバは名前、ホスト、ポートの指定が必要です。/
s/^#### Configuring Clusters$/#### クラスタ設定/
s/^If your application is utilizing a cluster of Redis servers, you should define these clusters within a `clusters` key of your Redis configuration:$/アプリケーションでRedisサーバのクラスタを使用している場合は、Redis設定の`clusters`キーで定義する必要があります。/
s/^    'redis' => \[$/    'redis' => [/
s/^        'clusters' => \[$/        'clusters' => [/
s/^            'default' => \[$/            'default' => [/
s/^                \[$/                [/
s/^                \],$/                ],/
s/^            \],$/            ],/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^By default, clusters will perform client-side sharding across your nodes, allowing you to pool nodes and create a large amount of available RAM\. However, note that client-side sharding does not handle failover; therefore, is primarily suited for cached data that is available from another primary data store\. If you would like to use native Redis clustering, you should specify this in the `options` key of your Redis configuration:$/デフォルトでクラスタはノード間のクライアントサイドシェアリングを実行し、ノードをプールし、利用可能な大きいRAMを作成できるようにします。しかしながら、クライアントサイドシェアリングはフェイルオーバーを処理しません。そのため、他のプライマリデータ保存域からのキャッシュデータを使用できるようにするのに適しています。ネイティブなRedisクラスタリングを使用したい場合は、Redis設置の`options`キーでこれを指定してください。/
s/^    'redis' => \[$/    'redis' => [/
s/^        'options' => \[$/        'options' => [/
s/^        \],$/        ],/
s/^        'clusters' => \[$/        'clusters' => [/
s/^            \/\/ \.\.\.$/            \/\/ .../
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^In addition to the default `host`, `port`, `database`, and `password` server configuration options, Predis supports additional \[connection parameters\](https:\/\/github\.com\/nrk\/predis\/wiki\/Connection-Parameters) that may be defined for each of your Redis servers\. To utilize these additional configuration options, add them to your Redis server configuration in the `config\/database\.php` configuration file:$/デフォルトの`host`、`port`、`database`、`password`オプションに加え、Predisは各Redisサーバに対する[接続パラメータ](https:\/\/github.com\/nrk\/predis\/wiki\/Connection-Parameters)を定義する機能をサポートしています。これらの追加設定オプションを使うには、`config\/database.php`設定ファイルのRedisサーバ設定へ追加してください。/
s/^    'default' => \[$/    'default' => [/
s/^    \],$/    ],/
s/^> {note} If you have the PhpRedis PHP extension installed via PECL, you will need to rename the `Redis` alias in your `config\/app\.php` configuration file\.$/> {note} PhpRedis PHP拡張をPECL経由でインストールした場合は、`config\/app.php`設定ファイル中の`Redis`エイリアスをリネームする必要があります。/
s/^To utilize the PhpRedis extension, you should change the `client` option of your Redis configuration to `phpredis`\. This option is found in your `config\/database\.php` configuration file:$/PhpRedis拡張を使用するには、Redis設定の`client`オプションを`phpredis`へ変更してください。このオプションは`config\/database.php`設定ファイルにあります。/
s/^    'redis' => \[$/    'redis' => [/
s/^        \/\/ Rest of Redis configuration\.\.\.$/        \/\/ 残りのRedis設定…/
s/^    \],$/    ],/
s/^In addition to the default `host`, `port`, `database`, and `password` server configuration options, PhpRedis supports the following additional connection parameters: `persistent`, `prefix`, `read_timeout` and `timeout`\. You may add any of these options to your Redis server configuration in the `config\/database\.php` configuration file:$/デフォルトの`host`、`port`、`database`、`password`オプションに加え、PhpRedisは`persistent`、`prefix`、`read_timeout`、`timeout`追加オプションをサポートしています。`config\/database.php`設定ファイル中のRedisサーバ設定に、これらのオプションを追加してください。/
s/^    'default' => \[$/    'default' => [/
s/^    \],$/    ],/
s/^## Interacting With Redis$/## Redisの操作/
s/^You may interact with Redis by calling various methods on the `Redis` \[facade\](\/docs\/{{version}}\/facades)\. The `Redis` facade supports dynamic methods, meaning you may call any \[Redis command\](https:\/\/redis\.io\/commands) on the facade and the command will be passed directly to Redis\. In this example, we will call the Redis `GET` command by calling the `get` method on the `Redis` facade:$/`Redis`[ファサード](\/docs\/{{version}}\/facades)のバラエティー豊かなメソッドを呼び出し、Redisを操作できます。`Redis`ファサードは動的メソッドをサポートしています。つまりファサードでどんな[Redisコマンド](https:\/\/redis.io\/commands)でも呼び出すことができ、そのコマンドは直接Redisへ渡されます。以下の例ではRedisの`GET`コマンドを`Redis`ファサードの`get`メソッドで呼び出しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定ユーザーのプロフィール表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            $user = Redis::get('user:profile:'\.$id);$/            $user = Redis::get('user:profile:'.$id);/
s/^            return view('user\.profile', \['user' => $user\]);$/            return view('user.profile', ['user' => $user]);/
s/^Of course, as mentioned above, you may call any of the Redis commands on the `Redis` facade\. Laravel uses magic methods to pass the commands to the Redis server, so pass the arguments the Redis command expects:$/もちろん前記の通り、`Redis`ファサードでどんなRedisコマンドでも呼び出すことができます。Laravelはmagicメソッドを使いコマンドをRedisサーバへ送りますので、Redisコマンドで期待されている引数を渡してください。/
s/^Alternatively, you may also pass commands to the server using the `command` method, which accepts the name of the command as its first argument, and an array of values as its second argument:$/サーバにコマンドを送る別の方法は`command`メソッドを使う方法です。最初の引数にコマンド名、第２引数に値の配列を渡します。/
s/^    $values = Redis::command('lrange', \['name', 5, 10\]);$/    $values = Redis::command('lrange', ['name', 5, 10]);/
s/^#### Using Multiple Redis Connections$/#### 複数のRedis接続の使用/
s/^You may get a Redis instance by calling the `Redis::connection` method:$/Redisインスタンスを`Redis::connection`メソッドの呼び出しで取得できます。/
s/^This will give you an instance of the default Redis server\. You may also pass the connection or cluster name to the `connection` method to get a specific server or cluster as defined in your Redis configuration:$/これによりデフォルトのRedisサーバのインスタンスが取得できます。さらに、Redis設定で定義した、特定のサーバやクラスタを取得するために、`connection`メソッドへ接続名やクラスタ名を渡すこともできます。/
s/^### Pipelining Commands$/### パイプラインコマンド/
s/^Pipelining should be used when you need to send many commands to the server in one operation\. The `pipeline` method accepts one argument: a `Closure` that receives a Redis instance\. You may issue all of your commands to this Redis instance and they will all be executed within a single operation:$/一回の操作でサーバに対し多くのコマンドを送る必要がある場合はパイプラインを使うべきでしょう。`pipeline`メソッドは引数をひとつだけ取り、Redisインスタンスを取る「クロージャ」です。このRedisインスタンスで全コマンドを発行し、一回の操作で全部実行できます。/
s/^        for ($i = 0; $i < 1000; $i\+\+) {$/        for ($i = 0; $i < 1000; $i++) {/
s/^## Pub \/ Sub$/## publish／subscribe/
s/^Laravel provides a convenient interface to the Redis `publish` and `subscribe` commands\. These Redis commands allow you to listen for messages on a given "channel"\. You may publish messages to the channel from another application, or even using another programming language, allowing easy communication between applications and processes\.$/さらにLaravelは、Redisの`publish`と`subscribe`コマンドの便利なインターフェイスも提供しています。これらのRedisコマンドは、指定した「チャンネル」のメッセージをリッスンできるようにしてくれます。他のアプリケーションからこのチャンネルにメッセージを公開するか、他の言語を使うこともでき、これによりアプリケーション／プロセス間で簡単に通信できます。/
s/^First, let's setup a channel listener using the `subscribe` method\. We'll place this method call within an \[Artisan command\](\/docs\/{{version}}\/artisan) since calling the `subscribe` method begins a long-running process:$/最初に`subscribe`メソッドでRedisを経由するチャンネルのリスナを準備します。`subscribe`メソッドは長時間動作するプロセスですので、このメソッドは[Artisanコマンド](\/docs\/{{version}}\/artisan)の中で呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* The name and signature of the console command\.$/         * コンソールコマンドの名前と使用法/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* The console command description\.$/         * コンソールコマンドの説明/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Execute the console command\.$/         * コンソールコマンドの実行/
s/^         \*$/         */
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^            Redis::subscribe(\['test-channel'\], function ($message) {$/            Redis::subscribe(['test-channel'], function ($message) {/
s/^Now we may publish messages to the channel using the `publish` method:$/これで`publish`メソッドを使いチャンネルへメッセージを公開できます。/
s/^        \/\/ Route logic\.\.\.$/        \/\/ Route logic.../
s/^        Redis::publish('test-channel', json_encode(\['foo' => 'bar'\]));$/        Redis::publish('test-channel', json_encode(['foo' => 'bar']));/
s/^#### Wildcard Subscriptions$/#### ワイルドカード購入/
s/^Using the `psubscribe` method, you may subscribe to a wildcard channel, which may be useful for catching all messages on all channels\. The `$channel` name will be passed as the second argument to the provided callback `Closure`:$/`psubscribe`メソッドでワイルドカードチャネルに対し購入できます。全チャンネルの全メッセージを補足するために便利です。`$channel`名は指定するコールバック「クロージャ」の第２引数として渡されます。/
s/^    Redis::psubscribe(\['\*'\], function ($message, $channel) {$/    Redis::psubscribe(['*'], function ($message, $channel) {/
s/^    Redis::psubscribe(\['users\.\*'\], function ($message, $channel) {$/    Redis::psubscribe(['users.*'], function ($message, $channel) {/
