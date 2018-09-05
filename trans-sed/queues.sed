s/^# Queues$/# キュー/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Connections Vs\. Queues\](#connections-vs-queues)$/    - [接続 Vs. キュー](#connections-vs-queues)/
s/^    - \[Driver Notes & Prerequisites\](#driver-prerequisites)$/    - [ドライバの注意事項と要件](#driver-prerequisites)/
s/^- \[Creating Jobs\](#creating-jobs)$/- [ジョブの作成](#creating-jobs)/
s/^    - \[Generating Job Classes\](#generating-job-classes)$/    - [ジョブクラスの生成](#generating-job-classes)/
s/^    - \[Class Structure\](#class-structure)$/    - [クラス構成](#class-structure)/
s/^- \[Dispatching Jobs\](#dispatching-jobs)$/- [ジョブのディスパッチ](#dispatching-jobs)/
s/^    - \[Delayed Dispatching\](#delayed-dispatching)$/    - [遅延ディスパッチ](#delayed-dispatching)/
s/^    - \[Job Chaining\](#job-chaining)$/    - [ジョブのチェーン](#job-chaining)/
s/^    - \[Customizing The Queue & Connection\](#customizing-the-queue-and-connection)$/    - [キューと接続のカスタマイズ](#customizing-the-queue-and-connection)/
s/^    - \[Specifying Max Job Attempts \/ Timeout Values\](#max-job-attempts-and-timeout)$/    - [最大試行回数／タイムアウト値の指定](#max-job-attempts-and-timeout)/
s/^    - \[Rate Limiting\](#rate-limiting)$/    - [レート制限](#rate-limiting)/
s/^    - \[Error Handling\](#error-handling)$/    - [エラー処理](#error-handling)/
s/^- \[Running The Queue Worker\](#running-the-queue-worker)$/- [キューワーカの実行](#running-the-queue-worker)/
s/^    - \[Queue Priorities\](#queue-priorities)$/    - [キュープライオリティ](#queue-priorities)/
s/^    - \[Queue Workers & Deployment\](#queue-workers-and-deployment)$/    - [キューワーカとデプロイ](#queue-workers-and-deployment)/
s/^    - \[Job Expirations & Timeouts\](#job-expirations-and-timeouts)$/    - [ジョブの期限切れとタイムアウト](#job-expirations-and-timeouts)/
s/^- \[Supervisor Configuration\](#supervisor-configuration)$/- [Supervisor設定](#supervisor-configuration)/
s/^- \[Dealing With Failed Jobs\](#dealing-with-failed-jobs)$/- [失敗したジョブの処理](#dealing-with-failed-jobs)/
s/^    - \[Cleaning Up After Failed Jobs\](#cleaning-up-after-failed-jobs)$/    - [ジョブ失敗後のクリーンアップ](#cleaning-up-after-failed-jobs)/
s/^    - \[Failed Job Events\](#failed-job-events)$/    - [ジョブ失敗イベント](#failed-job-events)/
s/^    - \[Retrying Failed Jobs\](#retrying-failed-jobs)$/    - [失敗したジョブの再試行](#retrying-failed-jobs)/
s/^- \[Job Events\](#job-events)$/- [ジョブイベント](#job-events)/
s/^## Introduction$/## イントロダクション/
s/^> {tip} Laravel now offers Horizon, a beautiful dashboard and configuration system for your Redis powered queues\. Check out the full \[Horizon documentation\](\/docs\/{{version}}\/horizon) for more information\.$/> {tip} 現在、LaravelはRedisで動作するキューのための美しいダッシュボードと設定システムを備えたHorizonを提供しています。詳細は、[Horizonのドキュメント](\/docs\/{{version}}\/horizon)で確認してください。/
s/^Laravel queues provide a unified API across a variety of different queue backends, such as Beanstalk, Amazon SQS, Redis, or even a relational database\. Queues allow you to defer the processing of a time consuming task, such as sending an email, until a later time\. Deferring these time consuming tasks drastically speeds up web requests to your application\.$/Laravelのキューサービスは、Beanstalk、Amazon SQS、Redis、さらにはリレーショナル・データベースなど様々なキューバックエンドに対し共通のAPIを提供しています。キューによりメール送信のような時間を費やす処理を遅らせることが可能です。時間のかかるタスクを遅らせることで、よりアプリケーションのリクエストをドラマチックにスピードアップできます。/
s/^The queue configuration file is stored in `config\/queue\.php`\. In this file you will find connection configurations for each of the queue drivers that are included with the framework, which includes a database, \[Beanstalkd\](https:\/\/kr\.github\.io\/beanstalkd\/), \[Amazon SQS\](https:\/\/aws\.amazon\.com\/sqs\/), \[Redis\](https:\/\/redis\.io),  and a synchronous driver that will execute jobs immediately (for local use)\. A `null` queue driver is also included which discards queued jobs\.$/キューの設定ファイルは`config\/queue.php`です。このファイルにはフレームワークに含まれているそれぞれのドライバーへの接続設定が含まれています。それにはデータベース、[Beanstalkd](https:\/\/kr.github.com\/beanstalkd)、[Amazon SQS](https:\/\/aws.amazon.com\/sqs)、[Redis](https:\/\/redis.io)、ジョブが即時に実行される同期（ローカル用途）ドライバーが含まれています。 `null`キュードライバはキューされたジョブが実行されないように、破棄します。/
s/^### Connections Vs\. Queues$/### 接続 Vs. キュー/
s/^Before getting started with Laravel queues, it is important to understand the distinction between "connections" and "queues"\. In your `config\/queue\.php` configuration file, there is a `connections` configuration option\. This option defines a particular connection to a backend service such as Amazon SQS, Beanstalk, or Redis\. However, any given queue connection may have multiple "queues" which may be thought of as different stacks or piles of queued jobs\.$/Laravelのキューに取り掛かる前に、「接続」と「キュー」の区別を理解しておくことが重要です。`config\/queue.php`設定ファイルの中には、`connections`設定オプションがあります。このオプションはAmazon SQS、Beanstalk、Redisなどのバックエンドサービスへの個々の接続を定義します。しかし、どんな指定されたキュー接続も、複数の「キュー」を持つことができます。「キュー」とはキュー済みのジョブのスタック、もしくは積み重ねのことです。/
s/^Note that each connection configuration example in the `queue` configuration file contains a `queue` attribute\. This is the default queue that jobs will be dispatched to when they are sent to a given connection\. In other words, if you dispatch a job without explicitly defining which queue it should be dispatched to, the job will be placed on the queue that is defined in the `queue` attribute of the connection configuration:$/`queue`接続ファイルの`queue`属性を含んでいる、各接続設定例に注目してください。ジョブがディスパッチされ、指定された接続へ送られた時にのデフォルトキューです。言い換えれば、どのキューへディスパッチするのか明確に定義していないジョブをディスパッチすると、そのジョブは接続設定の`queue`属性で定義したキューへ送られます。/
s/^    \/\/ This job is sent to the default queue\.\.\.$/    \/\/ このジョブはデフォルトキューへ送られる/
s/^    \/\/ This job is sent to the "emails" queue\.\.\.$/    \/\/ このジョブは"emails"キューへ送られる/
s/^Some applications may not need to ever push jobs onto multiple queues, instead preferring to have one simple queue\. However, pushing jobs to multiple queues can be especially useful for applications that wish to prioritize or segment how jobs are processed, since the Laravel queue worker allows you to specify which queues it should process by priority\. For example, if you push jobs to a `high` queue, you may run a worker that gives them higher processing priority:$/あるアプリケーションでは複数のキューへジョブを送る必要はなく、代わりに１つのシンプルなキューが適しているでしょう。しかし、複数のキューへジョブを送ることは、優先順位づけしたい、もしくはジョブの処理を分割したいアプリケーションでは、特に便利です。Laravelのキューワーカはプライオリティによりどのキューで処理するかを指定できるからです。たとえば、ジョブを`high`キューへ送れば、より高い処理プライオリティのワーカを実行できます。/
s/^### Driver Notes & Prerequisites$/### ドライバの注意事項と要件/
s/^#### Database$/#### データベース/
s/^In order to use the `database` queue driver, you will need a database table to hold the jobs\. To generate a migration that creates this table, run the `queue:table` Artisan command\. Once the migration has been created, you may migrate your database using the `migrate` command:$/`database`キュードライバを使用するには、ジョブを記録するためのデータベーステーブルが必要です。このテーブルを作成するマイグレーションは`queue:table` Artisanコマンドにより生成できます。マイグレーションが生成されたら、`migrate`コマンドでデータベースをマイグレートしてください。/
s/^In order to use the `redis` queue driver, you should configure a Redis database connection in your `config\/database\.php` configuration file\.$/`redis`キュードライバーを使用するには、`config\/database.php`設定ファイルでRedisのデータベースを設定する必要があります。/
s/^\*\*Redis Cluster\*\*$/**Redisクラスタ**/
s/^If your Redis queue connection uses a Redis Cluster, your queue names must contain a \[key hash tag\](https:\/\/redis\.io\/topics\/cluster-spec#keys-hash-tags)\. This is required in order to ensure all of the Redis keys for a given queue are placed into the same hash slot:$/Redisキュー接続でRedisクラスタを使用している場合は、キュー名に[キーハッシュタグ](https:\/\/redis.io\/topics\/cluster-spec#keys-hash-tags)を含める必要があります。これはキューに指定した全Redisキーが同じハッシュスロットに確実に置かれるようにするためです。/
s/^    'redis' => \[$/    'redis' => [/
s/^    \],$/    ],/
s/^\*\*Blocking\*\*$/**ブロッキング**/
s/^When using the Redis queue, you may use the `block_for` configuration option to specify how long the driver should wait for a job to become available before iterating through the worker loop and re-polling the Redis database\.$/Redisキューを使用する場合、ワーカのループの繰り返しとRedisデータベースに対する再ポールの前に、ジョブを実行可能にするまでどの程度待つのかを指定する、`block_for`設定オプションを使うことができます。/
s/^Adjusting this value based on your queue load can be more efficient than continually polling the Redis database for new jobs\. For instance, you may set the value to `5` to indicate that the driver should block for five seconds while waiting for a job to become available:$/新しいジョブのために、Redisデータベースに連続してポールするよりも効率的にできるようなキューの負荷にもとづいて、この値を調整してください。たとえば、ジョブを実行可能にするまで、ドライバーが５秒間ブロックするように指示するには、値に`5`をセットします。/
s/^    'redis' => \[$/    'redis' => [/
s/^    \],$/    ],/
s/^> {note} Blocking pop is an experimental feature\. There is a small chance that a queued job could be lost if the Redis server or worker crashes at the same time the job is retrieved\.$/> {note} ブロッキングは実験的な機能です。ジョブの再取得時に、Redisサーバかワーカがクラッシュすると、キュー済みのジョブが失われる可能性が僅かにあります。/
s/^#### Other Driver Prerequisites$/#### 他のドライバの要件/
s/^The following dependencies are needed for the listed queue drivers:$/以下の依存パッケージがリストしたキュードライバを使用するために必要です。/
s/^- Amazon SQS: `aws\/aws-sdk-php ~3\.0`$/- Amazon SQS: `aws\/aws-sdk-php ~3.0`/
s/^- Beanstalkd: `pda\/pheanstalk ~3\.0`$/- Beanstalkd: `pda\/pheanstalk ~3.0`/
s/^- Redis: `predis\/predis ~1\.0`$/- Redis: `predis\/predis ~1.0`/
s/^## Creating Jobs$/## ジョブの作成/
s/^### Generating Job Classes$/### ジョブクラスの生成/
s/^By default, all of the queueable jobs for your application are stored in the `app\/Jobs` directory\. If the `app\/Jobs` directory doesn't exist, it will be created when you run the `make:job` Artisan command\. You may generate a new queued job using the Artisan CLI:$/キュー投入可能なアプリケーションの全ジョブは、デフォルトで`app\/Jobs`ディレクトリへ保存されます。`app\/Jobs`ディレクトリが存在しなくても、`make:job` Artisanコマンドの実行時に生成されます。新しいキュージョブをArtisan CLIで生成できます。/
s/^The generated class will implement the `Illuminate\\Contracts\\Queue\\ShouldQueue` interface, indicating to Laravel that the job should be pushed onto the queue to run asynchronously\.$/非同期で実行するため、ジョブをキューへ投入することをLaravelへ知らせる、`Illuminate\\Contracts\\Queue\\ShouldQueue`インターフェイスが生成されたクラスには実装されます。/
s/^### Class Structure$/### クラス構成/
s/^Job classes are very simple, normally containing only a `handle` method which is called when the job is processed by the queue\. To get started, let's take a look at an example job class\. In this example, we'll pretend we manage a podcast publishing service and need to process the uploaded podcast files before they are published:$/ジョブクラスは通常とてもシンプルで、キューによりジョブが処理される時に呼び出される、`handle`メソッドのみで構成されています。手始めに、ジョブクラスのサンプルを見てみましょう。この例は、ポッドキャストの公開サービスを管理し、公開前にアップロードしたポッドキャストファイルを処理する必要があるという仮定です。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new job instance\.$/         * 新しいジョブインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  Podcast  $podcast$/         * @param  Podcast  $podcast/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Execute the job\.$/         * ジョブの実行/
s/^         \*$/         */
s/^         \* @param  AudioProcessor  $processor$/         * @param  AudioProcessor  $processor/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Process uploaded podcast\.\.\.$/            \/\/ アップロード済みポッドキャストの処理…/
s/^In this example, note that we were able to pass an \[Eloquent model\](\/docs\/{{version}}\/eloquent) directly into the queued job's constructor\. Because of the `SerializesModels` trait that the job is using, Eloquent models will be gracefully serialized and unserialized when the job is processing\. If your queued job accepts an Eloquent model in its constructor, only the identifier for the model will be serialized onto the queue\. When the job is actually handled, the queue system will automatically re-retrieve the full model instance from the database\. It's all totally transparent to your application and prevents issues that can arise from serializing full Eloquent model instances\.$/この例中、キュージョブのコンテナーに直接[Eloquentモデル](\/docs\/{{version}}\/eloquent)が渡せることに注目してください。ジョブが使用している`SerializesModels`トレイトによりEloquentモデルは優雅にシリアライズされ、ジョブが処理される時にアンシリアライズされます。キュー投入されたジョブがコンテナでEloquentモデルを受け取ると、モデルの識別子のみシリアライズされています。ジョブが実際に処理される時、キューシステムは自動的にデータベースから完全なモデルインスタンスを再取得します。これらは全てアプリケーションの完全な透過性のためであり、Eloquentモデルインスタンスをシリアライズするときに発生する問題を防ぐことができます。/
s/^The `handle` method is called when the job is processed by the queue\. Note that we are able to type-hint dependencies on the `handle` method of the job\. The Laravel \[service container\](\/docs\/{{version}}\/container) automatically injects these dependencies\.$/`handle`メソッドはキューによりジョブが処理されるときに呼びだされます。ジョブの`handle`メソッドにタイプヒントにより依存を指定できることに注目してください。Laravelの[サービスコンテナ](\/docs\/{{version}}\/container)が自動的に依存を注入します。/
s/^> {note} Binary data, such as raw image contents, should be passed through the `base64_encode` function before being passed to a queued job\. Otherwise, the job may not properly serialize to JSON when being placed on the queue\.$/> {note} Rawイメージコンテンツのようなバイナリデータは、キュージョブへ渡す前に、`base64_encode`関数を通してください。そうしないと、そのジョブはキューへ設置する前にJSONへ正しくシリアライズされません。/
s/^## Dispatching Jobs$/## ジョブのディスパッチ/
s/^Once you have written your job class, you may dispatch it using the `dispatch` method on the job itself\. The arguments passed to the `dispatch` method will be given to the job's constructor:$/ジョブクラスを書き上げたら、ジョブクラス自身の`dispatch`メソッドを使い、ディスパッチできます。`dispatch`メソッドへ渡す引数は、ジョブのコンストラクタへ渡されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new podcast\.$/         * 新ポッドキャストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Create podcast\.\.\.$/            \/\/ ポッドキャスト作成…/
s/^### Delayed Dispatching$/### 遅延ディスパッチ/
s/^If you would like to delay the execution of a queued job, you may use the `delay` method when dispatching a job\. For example, let's specify that a job should not be available for processing until 10 minutes after it has been dispatched:$/キュー投入されたジョブの実行を遅らせたい場合は、ジョブのディスパッチ時に`delay`メソッドを使います。例として、ディスパッチ後１０分経つまでは、処理が行われないジョブを指定してみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new podcast\.$/         * 新ポッドキャストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Create podcast\.\.\.$/            \/\/ ポッドキャスト作成…/
s/^> {note} The Amazon SQS queue service has a maximum delay time of 15 minutes\.$/> {note} Amazon SQSキューサービスは、最大１５分の遅延時間です。/
s/^### Job Chaining$/### ジョブチェーン/
s/^Job chaining allows you to specify a list of queued jobs that should be run in sequence\. If one job in the sequence fails, the rest of the jobs will not be run\. To execute a queued job chain, you may use the `withChain` method on any of your dispatchable jobs:$/連続して実行する必要がある、キュー投入ジョブのリストをジョブチェーンで指定できます。一連のジョブの内、あるジョブが失敗すると、残りのジョブは実行されません。キュー投入ジョブチェーンを実行するには、dispatchableジョブどれかに対し、`withChain`メソッドを使用します。/
s/^    ProcessPodcast::withChain(\[$/    ProcessPodcast::withChain([/
s/^    \])->dispatch();$/    ])->dispatch();/
s/^#### Chain Connection & Queue$/#### チェーンの接続とキュー/
s/^If you would like to specify the default connection and queue that should be used for the chained jobs, you may use the `allOnConnection` and `allOnQueue` methods\. These methods specify the queue connection and queue name that should be used unless the queued job is explicitly assigned a different connection \/ queue:$/ジョブチェーンで使用するデフォルトの接続とキューを指定したい場合は、`allOnConnection`と`allOnQueue`メソッドを使用します。これらのメソッドは、キューされたジョブへ別の接続／キューが明確に指定されていない限り使用される、接続とキューを設定します。/
s/^    ProcessPodcast::withChain(\[$/    ProcessPodcast::withChain([/
s/^    \])->dispatch()->allOnConnection('redis')->allOnQueue('podcasts');$/    ])->dispatch()->allOnConnection('redis')->allOnQueue('podcasts');/
s/^### Customizing The Queue & Connection$/### キューと接続のカスタマイズ/
s/^#### Dispatching To A Particular Queue$/#### 特定キューへのディスパッチ/
s/^By pushing jobs to different queues, you may "categorize" your queued jobs and even prioritize how many workers you assign to various queues\. Keep in mind, this does not push jobs to different queue "connections" as defined by your queue configuration file, but only to specific queues within a single connection\. To specify the queue, use the `onQueue` method when dispatching the job:$/ジョブを異なるキューへ投入することで「カテゴライズ」できますし、様々なキューにいくつのワーカを割り当てるかと言うプライオリティ付けもできます。これはキー設定ファイルで定義した、別々のキュー「接続」へのジョブ投入を意味してはいないことに気をつけてください。一つの接続内の複数のキューを指定する方法です。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new podcast\.$/         * 新ポッドキャストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Create podcast\.\.\.$/            \/\/ ポッドキャスト作成…/
s/^#### Dispatching To A Particular Connection$/#### 特定の接続へのディスパッチ/
s/^If you are working with multiple queue connections, you may specify which connection to push a job to\. To specify the connection, use the `onConnection` method when dispatching the job:$/複数のキュー接続を利用するなら、ジョブを投入するキューを指定できます。ジョブをディスパッチする時に、`onConnection`メソッドで接続を指定します。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new podcast\.$/         * 新ポッドキャストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Create podcast\.\.\.$/            \/\/ ポッドキャスト作成…/
s/^Of course, you may chain the `onConnection` and `onQueue` methods to specify the connection and the queue for a job:$/もちろん、ジョブを投入する接続とキューを指定するために、`onConnection`と`onQueue`メソッドをチェーンすることもできます。/
s/^### Specifying Max Job Attempts \/ Timeout Values$/### 最大試行回数／タイムアウト値の指定/
s/^#### Max Attempts$/#### 最大試行回数/
s/^One approach to specifying the maximum number of times a job may be attempted is via the `--tries` switch on the Artisan command line:$/ジョブが試行する最大回数を指定するアプローチの一つは、Artisanコマンドラインへ`--tries`スイッチ使う方法です。/
s/^However, you may take a more granular approach by defining the maximum number of attempts on the job class itself\. If the maximum number of attempts is specified on the job, it will take precedence over the value provided on the command line:$/しかし、より粒度の高いアプローチは、ジョブクラス自身に最大試行回数を定義する方法です。これはコマンドラインで指定された値より、優先度が高くなっています。/
s/^        \/\*\*$/        \/**/
s/^         \* The number of times the job may be attempted\.$/         * 最大試行回数/
s/^         \*$/         */
s/^         \* @var int$/         * @var int/
s/^         \*\/$/         *\//
s/^#### Time Based Attempts$/#### 時間ベースの試行/
s/^As an alternative to defining how many times a job may be attempted before it fails, you may define a time at which the job should timeout\. This allows a job to be attempted any number of times within a given time frame\. To define the time at which a job should timeout, add a `retryUntil` method to your job class:$/失敗するまでジョブの試行を何度認めるかを定義する代わりに、ジョブのタイムアウト時間を定義することもできます。これにより、指定した時間内で複数回ジョブを試行します。タイムアウト時間を定義するには、ジョブクラスに`retryUntil`メソッドを追加します。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine the time at which the job should timeout\.$/     * タイムアウトになる時間を決定/
s/^     \*$/     */
s/^     \* @return \\DateTime$/     * @return \\DateTime/
s/^     \*\/$/     *\//
s/^> {tip} You may also define a `retryUntil` method on your queued event listeners\.$/> {tip} キューイベントリスナでも、`retryUntil`メソッドを定義できます。/
s/^#### Timeout$/#### タイムアウト/
s/^> {note} The `timeout` feature is optimized for PHP 7\.1\+ and the `pcntl` PHP extension\.$/> {note} `timeout`機能はPHP7.1以上で、かつpcntl` PHP拡張に最適化されています。/
s/^Likewise, the maximum number of seconds that jobs can run may be specified using the `--timeout` switch on the Artisan command line:$/同様に、ジョブの最大実行秒数を指定するために、Artisanコマンドラインに`--timeout`スイッチを指定することができます。/
s/^However, you may also define the maximum number of seconds a job should be allowed to run on the job class itself\. If the timeout is specified on the job, it will take precedence over any timeout specified on the command line:$/しかしながら、最大実行秒数をジョブクラス自身に定義することもできます。ジョブにタイムアウト時間を指定すると、コマンドラインに指定されたタイムアウトよりも優先されます。/
s/^        \/\*\*$/        \/**/
s/^         \* The number of seconds the job can run before timing out\.$/         * ジョブがタイムアウトになるまでの秒数/
s/^         \*$/         */
s/^         \* @var int$/         * @var int/
s/^         \*\/$/         *\//
s/^### Rate Limiting$/### レート制限/
s/^> {note} This feature requires that your application can interact with a \[Redis server\](\/docs\/{{version}}\/redis)\.$/> {note} この機能が動作するには、アプリケーションで[Redisサーバ](\/docs\/{{version}}\/redis)が利用できる必要があります。/
s/^If your application interacts with Redis, you may throttle your queued jobs by time or concurrency\. This feature can be of assistance when your queued jobs are interacting with APIs that are also rate limited\. For example, using the `throttle` method, you may throttle a given type of job to only run 10 times every 60 seconds\. If a lock can not be obtained, you should typically release the job back onto the queue so it can be retried later:$/アプリケーションでRedisを利用しているなら、時間と回数により、キュージョブを制限できます。この機能は、キュージョブがレート制限のあるAPIに関連している場合に役立ちます。`throttle`メソッドの使用例として、指定したジョブタイプを６０秒毎に１０回だけ実行できるように制限しましょう。ロックできなかった場合、後で再試行できるように、通常はジョブをキューへ戻す必要があります。/
s/^        \/\/ Job logic\.\.\.$/        \/\/ ジョブのロジック処理…/
s/^        \/\/ Could not obtain lock\.\.\.$/        \/\/ ロックできなかった場合の処理…/
s/^> {tip} In the example above, the `key` may be any string that uniquely identifies the type of job you would like to rate limit\. For example, you may wish to construct the key based on the class name of the job and the IDs of the Eloquent models it operates on\.$/> {tip} 上記の例で`key`は、レート制限したいジョブのタイプを表す、一意の認識文字列です。たとえば、ジョブのクラス名と、（そのジョブに含まれているならば）EloquentモデルのIDを元に、制限できます。/
s/^Alternatively, you may specify the maximum number of workers that may simultaneously process a given job\. This can be helpful when a queued job is modifying a resource that should only be modified by one job at a time\. For example, using the `funnel` method, you may limit jobs of a given type to only be processed by one worker at a time:$/もしくは、ジョブを同時に処理するワーカの最大数を指定することができます。これは、一度に一つのジョブが更新すべきリソースを変更するキュージョブを使用する場合に、役立ちます。`funnel`メソッドの使用例として、一度に１ワーカのみにより処理される、特定のタイプのジョブを制限してみましょう。/
s/^        \/\/ Job logic\.\.\.$/        \/\/ ジョブのロジック処理…/
s/^        \/\/ Could not obtain lock\.\.\.$/        \/\/ ロックできなかった場合の処理…/
s/^> {tip} When using rate limiting, the number of attempts your job will need to run successfully can be hard to determine\. Therefore, it is useful to combine rate limiting with \[time based attempts\](#time-based-attempts)\.$/> {tip} レート制限を使用する場合、実行を成功するまでに必要な試行回数を決めるのは、難しくなります。そのため、レート制限は[時間ベースの試行](#time-based-attempts)と組み合わせるのが便利です。/
s/^### Error Handling$/### エラー処理/
s/^If an exception is thrown while the job is being processed, the job will automatically be released back onto the queue so it may be attempted again\. The job will continue to be released until it has been attempted the maximum number of times allowed by your application\. The maximum number of attempts is defined by the `--tries` switch used on the `queue:work` Artisan command\. Alternatively, the maximum number of attempts may be defined on the job class itself\. More information on running the queue worker \[can be found below\](#running-the-queue-worker)\.$/ジョブの処理中に例外が投げられると、ジョブは自動的にキューへ戻され、再試行されます。ジョブはアプリケーションが許している最大試行回数に達するまで、連続して実行されます。最大試行回数は`queue:work` Artisanコマンドへ`--tries`スイッチを使い定義されます。もしくは、ジョブクラス自身に最大試行回数を定義することもできます。キューワーカの実行についての情報は、[以降](#running-the-queue-worker)で説明します。/
s/^## Running The Queue Worker$/## キューワーカの実行/
s/^Laravel includes a queue worker that will process new jobs as they are pushed onto the queue\. You may run the worker using the `queue:work` Artisan command\. Note that once the `queue:work` command has started, it will continue to run until it is manually stopped or you close your terminal:$/Laravelには、キューに投入された新しいジョブを処理する、キューワーカも含まれています。`queue:work` Artisanコマンドを使いワーカを実行できます。`queue:work`コマンドが起動したら、皆さんが停止するか、ターミナルを閉じるまで実行指示付けることに注意してください。/
s/^> {tip} To keep the `queue:work` process running permanently in the background, you should use a process monitor such as \[Supervisor\](#supervisor-configuration) to ensure that the queue worker does not stop running\.$/> {tip} バックグランドで`queue:work`プロセスを永続的に実行し続けるには、キューワーカが止まらずに実行し続けていることを確実にするため、[Supervisor](#supervisor-configuration)のようなプロセスモニタを利用する必要があります。/
s/^Remember, queue workers are long-lived processes and store the booted application state in memory\. As a result, they will not notice changes in your code base after they have been started\. So, during your deployment process, be sure to \[restart your queue workers\](#queue-workers-and-deployment)\.$/キューワーカは長時間起動するプロセスで、起動した状態のままメモリに保存されることを覚えておいてください。その結果、一度起動したら、コードベースの変更は反映されません。そのため、開発期間中は[キューワーカを再起動](#queue-workers-and-deployment)することを忘れないでください。/
s/^#### Processing A Single Job$/#### ジョブを一つ処理する/
s/^The `--once` option may be used to instruct the worker to only process a single job from the queue:$/`--once`オプションは、ワーカにキュー中のジョブをひとつだけ処理するように指示します。/
s/^#### Specifying The Connection & Queue$/#### 接続とキューの指定/
s/^You may also specify which queue connection the worker should utilize\. The connection name passed to the `work` command should correspond to one of the connections defined in your `config\/queue\.php` configuration file:$/どのキュー接続をワーカが使用するのかを指定できます。`work`コマンドで指定する接続名は、`config\/queue.php`設定ファイルで定義されている接続と対応します。/
s/^You may customize your queue worker even further by only processing particular queues for a given connection\. For example, if all of your emails are processed in an `emails` queue on your `redis` queue connection, you may issue the following command to start a worker that only processes only that queue:$/指定した接続の特定のキューだけを処理するように、さらにキューワーカをカスタマイズすることもできます。たとえば、メールの処理をすべて、`redis`キュー接続の`emails`キューで処理する場合、以下のコマンドで単一のキューの処理だけを行うワーカを起動できます。/
s/^#### Resource Considerations$/#### リソースの考察/
s/^Daemon queue workers do not "reboot" the framework before processing each job\. Therefore, you should free any heavy resources after each job completes\. For example, if you are doing image manipulation with the GD library, you should free the memory with `imagedestroy` when you are done\.$/デーモンキューワーカは各ジョブを処理する前に、フレームワークを「再起動」しません。そのため、各ジョブが終了したら、大きなリソースを開放してください。たとえば、GDライブラリでイメージ処理を行ったら、終了前に`imagedestroy`により、メモリを開放してください。/
s/^### Queue Priorities$/### キュープライオリティ/
s/^Sometimes you may wish to prioritize how your queues are processed\. For example, in your `config\/queue\.php` you may set the default `queue` for your `redis` connection to `low`\. However, occasionally you may wish to push a job to a `high` priority queue like so:$/時々、キューをどのように処理するかをプライオリティ付けしたいことも起きます。たとえば、`config\/queue.php`で`redis`接続のデフォルト`queue`を`low`に設定したとしましょう。しかし、あるジョブを`high`プライオリティでキューへ投入したい場合です。/
s/^To start a worker that verifies that all of the `high` queue jobs are processed before continuing to any jobs on the `low` queue, pass a comma-delimited list of queue names to the `work` command:$/`low`キュー上のジョブの処理が継続される前に、全`high`キュージョブが処理されることを確実にするには、`work`コマンドのキュー名にコンマ区切りのリストで指定してください。/
s/^### Queue Workers & Deployment$/### キューワーカとデプロイ/
s/^Since queue workers are long-lived processes, they will not pick up changes to your code without being restarted\. So, the simplest way to deploy an application using queue workers is to restart the workers during your deployment process\. You may gracefully restart all of the workers by issuing the `queue:restart` command:$/キューワーカは長時間起動プロセスであるため、リスタートしない限りコードの変更を反映しません。ですから、キューワーカを使用しているアプリケーションをデプロイする一番シンプルな方法は、デプロイ処理の間、ワーカをリスタートすることです。`queue:restart`コマンドを実行することで、全ワーカを穏やかに再起動できます。/
s/^This command will instruct all queue workers to gracefully "die" after they finish processing their current job so that no existing jobs are lost\. Since the queue workers will die when the `queue:restart` command is executed, you should be running a process manager such as \[Supervisor\](#supervisor-configuration) to automatically restart the queue workers\.$/このコマンドは存在しているジョブが失われないように、現在のジョブの処理が終了した後に、全キューワーカーへ穏やかに「終了する(die)」よう指示します。キューワーカは`queue:restart`コマンドが実行されると、終了するわけですから、キュージョブを自動的に再起動する、Supervisorのようなプロセスマネージャーを実行すべきでしょう。/
s/^> {tip} The queue uses the \[cache\](\/docs\/{{version}}\/cache) to store restart signals, so you should verify a cache driver is properly configured for your application before using this feature\.$/> {tip} このコマンドはリスタートシグナルを保存するために、[キャッシュ](\/docs\/{{version}}\/cache)を使用します。そのため、この機能を使用する前に、アプリケーションのキャッシュドライバーが、正しく設定されていることを確認してください。/
s/^### Job Expirations & Timeouts$/### ジョブの期限切れとタイムアウト/
s/^#### Job Expiration$/#### ジョブの有効期限/
s/^In your `config\/queue\.php` configuration file, each queue connection defines a `retry_after` option\. This option specifies how many seconds the queue connection should wait before retrying a job that is being processed\. For example, if the value of `retry_after` is set to `90`, the job will be released back onto the queue if it has been processing for 90 seconds without being deleted\. Typically, you should set the `retry_after` value to the maximum number of seconds your jobs should reasonably take to complete processing\.$/`config\/queue.php`設定ファイルの中で、各キュ接続は`retry_after`オプションを定義しています。このオプションはジョブの処理を再試行するまで、キュー接続を何秒待つかを指定します。たとえば、`retry_after`の値が`90`であれば、そのジョブは処理が終わってから９０秒の間に削除されなければ、キューへ再投入されます。通常、`retry_after`値はジョブが処理を妥当に完了するまでの秒数の最大値を指定します。/
s/^> {note} The only queue connection which does not contain a `retry_after` value is Amazon SQS\. SQS will retry the job based on the \[Default Visibility Timeout\](https:\/\/docs\.aws\.amazon\.com\/AWSSimpleQueueService\/latest\/SQSDeveloperGuide\/AboutVT\.html) which is managed within the AWS console\.$/> {note} `retry_after`を含まない唯一の接続は、Amazon SQSです。SQSはAWSコンソールで管理する、[Default Visibility Timeout](https:\/\/docs.aws.amazon.com\/AWSSimpleQueueService\/latest\/SQSDeveloperGuide\/AboutVT.html)を元にリトライを行います。/
s/^#### Worker Timeouts$/#### ワーカタイムアウト/
s/^The `queue:work` Artisan command exposes a `--timeout` option\. The `--timeout` option specifies how long the Laravel queue master process will wait before killing off a child queue worker that is processing a job\. Sometimes a child queue process can become "frozen" for various reasons, such as an external HTTP call that is not responding\. The `--timeout` option removes frozen processes that have exceeded that specified time limit:$/`queue:work` Artisanコマンドは`--timeout`オプションも提供しています。`--timeout`オプションはLaravelキューマスタプロセスが、ジョブを処理する子のキューワーカをKillするまでどのくらい待つかを指定します。外部のHTTP呼び出しの反応が無いなど様々な理由で、時より子のキュープロセスは「フリーズ」します。`--timeout`オプションは指定した実行時間を過ぎた、フリーズプロセスを取り除きます。/
s/^The `retry_after` configuration option and the `--timeout` CLI option are different, but work together to ensure that jobs are not lost and that jobs are only successfully processed once\.$/`retry_after`設定オプションと`--timeout` CLIオプションは異なります。しかし、確実にジョブを失わずに、一度だけ処理を完了できるよう共に働きます。/
s/^> {note} The `--timeout` value should always be at least several seconds shorter than your `retry_after` configuration value\. This will ensure that a worker processing a given job is always killed before the job is retried\. If your `--timeout` option is longer than your `retry_after` configuration value, your jobs may be processed twice\.$/> {note} `--timeout`値は、最低でも数秒`retry_after`設定値よりも短くしてください。これにより、与えられたジョブを処理するワーカが、ジョブのリトライ前に確実にkillされます。`--timeout`オプションを`retry_after`設定値よりも長くすると、ジョブが２度実行されるでしょう。/
s/^#### Worker Sleep Duration$/#### ワーカスリープ時間/
s/^When jobs are available on the queue, the worker will keep processing jobs with no delay in between them\. However, the `sleep` option determines how long (in seconds) the worker will "sleep" if there are no new jobs available\. While sleeping, the worker will not process any new jobs - the jobs will be processed after the worker wakes up again\.$/ジョブがキュー上に存在しているとき、ワーカは各ジョブ間にディレイを取らずに実行し続けます。`sleep`オプションは、新しく処理するジョブが存在しない時に、どの程度「スリープ」するかを秒単位で指定します。スリープ中、ワーカは新しいジョブを処理しません。ジョブはワーカが目を覚ました後に処理されます。/
s/^## Supervisor Configuration$/## Supervisor設定/
s/^#### Installing Supervisor$/#### Supervisorのインストール/
s/^Supervisor is a process monitor for the Linux operating system, and will automatically restart your `queue:work` process if it fails\. To install Supervisor on Ubuntu, you may use the following command:$/SupervisorはLinuxオペレーティングシステムのプロセスモニタで、`queue:work`プロセスが落ちると自動的に起動します。UbuntuにSupervisorをインストールするには、次のコマンドを使ってください。/
s/^> {tip} If configuring Supervisor yourself sounds overwhelming, consider using \[Laravel Forge\](https:\/\/forge\.laravel\.com), which will automatically install and configure Supervisor for your Laravel projects\.$/> {tip} Supervisoの設定に圧倒されそうならば、Laravelプロジェクトのために、Supervisorを自動的にインストールし、設定する[Laravel Forge](https:\/\/forge.laravel.com)の使用を考慮してください。/
s/^#### Configuring Supervisor$/#### Supervisorの設定/
s/^Supervisor configuration files are typically stored in the `\/etc\/supervisor\/conf\.d` directory\. Within this directory, you may create any number of configuration files that instruct supervisor how your processes should be monitored\. For example, let's create a `laravel-worker\.conf` file that starts and monitors a `queue:work` process:$/Supervisorの設定ファイルは、通常`\/etc\/supervisor\/conf.d`ディレクトリに保存します。このディレクトリの中には、Supervisorにどのようにプロセスを監視するのか指示する設定ファイルを好きなだけ設置できます。たとえば、`laravel-worker.conf`ファイルを作成し、`queue:work`プロセスを起動、監視させてみましょう。/
s/^    \[program:laravel-worker\]$/    [program:laravel-worker]/
s/^    command=php \/home\/forge\/app\.com\/artisan queue:work sqs --sleep=3 --tries=3$/    command=php \/home\/forge\/app.com\/artisan queue:work sqs --sleep=3 --tries=3/
s/^    stdout_logfile=\/home\/forge\/app\.com\/worker\.log$/    stdout_logfile=\/home\/forge\/app.com\/worker.log/
s/^In this example, the `numprocs` directive will instruct Supervisor to run 8 `queue:work` processes and monitor all of them, automatically restarting them if they fail\. Of course, you should change the `queue:work sqs` portion of the `command` directive to reflect your desired queue connection\.$/この例の`numprocs`ディレクティブは、Supervisorに全部で８つのqueue:workプロセスを実行・監視し、落ちている時は自動的に再起動するように指示しています。もちろん`command`ディレクティブの`queue:work sqs`の部分を変更し、希望のキュー接続に合わせてください。/
s/^#### Starting Supervisor$/#### Supervisorの起動/
s/^Once the configuration file has been created, you may update the Supervisor configuration and start the processes using the following commands:$/設定ファイルができたら、Supervisorの設定を更新し起動するために以下のコマンドを実行してください。/
s/^    sudo supervisorctl start laravel-worker:\*$/    sudo supervisorctl start laravel-worker:*/
s/^For more information on Supervisor, consult the \[Supervisor documentation\](http:\/\/supervisord\.org\/index\.html)\.$/Supervisorの詳細情報は、[Supervisorドキュメント](http:\/\/supervisord.org\/index.html)で確認してください。/
s/^## Dealing With Failed Jobs$/## 失敗したジョブの処理/
s/^Sometimes your queued jobs will fail\. Don't worry, things don't always go as planned! Laravel includes a convenient way to specify the maximum number of times a job should be attempted\. After a job has exceeded this amount of attempts, it will be inserted into the `failed_jobs` database table\. To create a migration for the `failed_jobs` table, you may use the `queue:failed-table` command:$/時より、キューされたジョブは失敗します。心配ありません。物事は計画通りに進まないものです。Laravelではジョブを再試行する最大回数を指定できます。この回数試行すると、そのジョブは`failed_jobs`データベーステーブルに挿入されます。`failed_jobs`テーブルのマイグレーションを生成するには`queue:failed-table`コマンドを実行して下さい。/
s/^Then, when running your \[queue worker\](#running-the-queue-worker), you should specify the maximum number of times a job should be attempted using the `--tries` switch on the `queue:work` command\. If you do not specify a value for the `--tries` option, jobs will be attempted indefinitely:$/次に[キューワーカ](#running-the-queue-worker)の実行時、`queue:work`コマンドに`--tries`スイッチを付け、最大試行回数を指定します。`--tries`オプションに値を指定しないと、ジョブは無限に試行します。/
s/^### Cleaning Up After Failed Jobs$/### ジョブ失敗後のクリーンアップ/
s/^You may define a `failed` method directly on your job class, allowing you to perform job specific clean-up when a failure occurs\. This is the perfect location to send an alert to your users or revert any actions performed by the job\. The `Exception` that caused the job to fail will be passed to the `failed` method:$/失敗時にジョブ特定のクリーンアップを実行するため、ジョブクラスで`failed`メソッドを直接定義できます。これはユーザーに警告を送ったり、ジョブの実行アクションを巻き戻すために最適な場所です。`failed`メソッドには、そのジョブを落とすことになった例外（`Exception`）が渡されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new job instance\.$/         * 新しいジョブインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  Podcast  $podcast$/         * @param  Podcast  $podcast/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Execute the job\.$/         * ジョブの実行/
s/^         \*$/         */
s/^         \* @param  AudioProcessor  $processor$/         * @param  AudioProcessor  $processor/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Process uploaded podcast\.\.\.$/            \/\/ アップロード済みポッドキャストの処理…/
s/^        \/\*\*$/        \/**/
s/^         \* The job failed to process\.$/         * 失敗したジョブの処理/
s/^         \*$/         */
s/^         \* @param  Exception  $exception$/         * @param  Exception  $exception/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Send user notification of failure, etc\.\.\.$/            \/\/ 失敗の通知をユーザーへ送るなど…/
s/^### Failed Job Events$/### ジョブ失敗イベント/
s/^If you would like to register an event that will be called when a job fails, you may use the `Queue::failing` method\. This event is a great opportunity to notify your team via email or \[Stride\](https:\/\/www\.stride\.com)\. For example, we may attach a callback to this event from the `AppServiceProvider` that is included with Laravel:$/ジョブが失敗した時に呼び出されるイベントを登録したい場合、`Queue::failing`メソッドが使えます。このイベントはメールや[Stride](https:\/\/www.stride.com)により、チームへ通知する良い機会になります。例として、Laravelに含まれている`AppServiceProvider`で、このイベントのコールバックを付け加えてみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * 全アプリケーションサービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Retrying Failed Jobs$/### 失敗したジョブの再試行/
s/^To view all of your failed jobs that have been inserted into your `failed_jobs` database table, you may use the `queue:failed` Artisan command:$/`failed_jobs`データベーステーブルに挿入された、失敗したジョブを全部確認したい場合は`queue:failed` Artisanコマンドを利用します。/
s/^The `queue:failed` command will list the job ID, connection, queue, and failure time\. The job ID may be used to retry the failed job\. For instance, to retry a failed job that has an ID of `5`, issue the following command:$/`queue:failed`コマンドはジョブID、接続、キュー、失敗した時間をリスト表示します。失敗したジョブをジョブIDで指定することでリトライできます。たとえば、IDが`5`の失敗したジョブを再試行するため、以下のコマンドを実行します。/
s/^To retry all of your failed jobs, execute the `queue:retry` command and pass `all` as the ID:$/失敗したジョブをすべて再試行するには、IDとして`all`を`queue:retry`コマンドへ指定し、実行してください。/
s/^If you would like to delete a failed job, you may use the `queue:forget` command:$/失敗したジョブを削除する場合は、`queue:forget`コマンドを使います。/
s/^To delete all of your failed jobs, you may use the `queue:flush` command:$/失敗したジョブを全部削除するには、`queue:flush`コマンドを使います。/
s/^## Job Events$/## ジョブイベント/
s/^Using the `before` and `after` methods on the `Queue` \[facade\](\/docs\/{{version}}\/facades), you may specify callbacks to be executed before or after a queued job is processed\. These callbacks are a great opportunity to perform additional logging or increment statistics for a dashboard\. Typically, you should call these methods from a \[service provider\](\/docs\/{{version}}\/providers)\. For example, we may use the `AppServiceProvider` that is included with Laravel:$/`Queue`[ファサード](\/docs\/{{version}}\/facades)に`before`と`after`メソッドを使い、キューされたジョブの実行前後に実行する、コールバックを指定できます。これらのコールバックはログを追加したり、ダッシュボードの状態を増加させたりするための機会を与えます。通常、これらのメソッドは[サービスプロバイダ](\/docs\/{{version}}\/providers)から呼び出します。たとえば、Laravelに含まれる`AppServiceProvider`を使っていましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * 全アプリケーションサービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Using the `looping` method on the `Queue` \[facade\](\/docs\/{{version}}\/facades), you may specify callbacks that execute before the worker attempts to fetch a job from a queue\. For example, you might register a Closure to rollback any transactions that were left open by a previously failed job:$/`Queue` [ファサード](\/docs\/{{version}}\/facades)の`looping`メソッドを使用し、ワーカがキューからジョブをフェッチする前に、指定したコールバックを実行できます。たとえば、直前の失敗したジョブの未処理のままのトランザクションをロールバックするクロージャを登録できます。/
