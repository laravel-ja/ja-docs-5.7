s/^# HTTP Session$/# HTTPセッション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバの事前要件](#driver-prerequisites)/
s/^- \[Using The Session\](#using-the-session)$/- [セッションの使用](#using-the-session)/
s/^    - \[Retrieving Data\](#retrieving-data)$/    - [データ取得](#retrieving-data)/
s/^    - \[Storing Data\](#storing-data)$/    - [データ保存](#storing-data)/
s/^    - \[Flash Data\](#flash-data)$/    - [フラッシュデータ](#flash-data)/
s/^    - \[Deleting Data\](#deleting-data)$/    - [データ削除](#deleting-data)/
s/^    - \[Regenerating The Session ID\](#regenerating-the-session-id)$/    - [セッションIDの再生性](#regenerating-the-session-id)/
s/^- \[Adding Custom Session Drivers\](#adding-custom-session-drivers)$/- [カスタムセッションドライバの追加](#adding-custom-session-drivers)/
s/^    - \[Implementing The Driver\](#implementing-the-driver)$/    - [ドライバの実装](#implementing-the-driver)/
s/^    - \[Registering The Driver\](#registering-the-driver)$/    - [ドライバの登録](#registering-the-driver)/
s/^## Introduction$/## イントロダクション/
s/^Since HTTP driven applications are stateless, sessions provide a way to store information about the user across multiple requests\. Laravel ships with a variety of session backends that are accessed through an expressive, unified API\. Support for popular backends such as \[Memcached\](https:\/\/memcached\.org), \[Redis\](https:\/\/redis\.io), and databases is included out of the box\.$/HTTP駆動のアプリケーションはステートレスのため、リクエスト間に渡りユーザーに関する情報を保存するセッションが提供されています。Laravelは記述的で統一されたAPIを使える様々なバックエンドのセッションを用意しています。人気のある[Memcached](https:\/\/memcached.org)や[Redis](https:\/\/redis.io)、データベースも始めからサポートしています。/
s/^### Configuration$/### 設定/
s/^The session configuration file is stored at `config\/session\.php`\. Be sure to review the options available to you in this file\. By default, Laravel is configured to use the `file` session driver, which will work well for many applications\. In production applications, you may consider using the `memcached` or `redis` drivers for even faster session performance\.$/セッションの設定は`config\/session.php`にあります。このファイルのオプションには詳しくコメントがついていますので確認して下さい。ほとんどのアプリケーションでうまく動作できるように、Laravelは`file`セッションドライバをデフォルトとして設定しています。実働環境のアプリケーションではセッションの動作をより早くするために、`memcached`や`redis`ドライバの使用を考慮しましょう。/
s/^The session `driver` configuration option defines where session data will be stored for each request\. Laravel ships with several great drivers out of the box:$/セッションドライバ(`driver`)はリクエスト毎のセッションデータをどこに保存するかを決めます。Laravelには最初から素晴らしいドライバが用意されています。/
s/^- `file` - sessions are stored in `storage\/framework\/sessions`\.$/- `file` - セッションは`storage\/framework\/sessions`に保存されます。/
s/^- `cookie` - sessions are stored in secure, encrypted cookies\.$/- `cookie` - セッションは暗号化され安全なクッキーに保存されます。/
s/^- `database` - sessions are stored in a relational database\.$/- `database` - セッションはリレーショナルデータベースへ保存されます。/
s/^- `memcached` \/ `redis` - sessions are stored in one of these fast, cache based stores\.$/- `memcached`／`redis` - セッションはスピードの早いキャッシュベースの保存域に保存されます。/
s/^- `array` - sessions are stored in a PHP array and will not be persisted\.$/- `array` - セッションはPHPの配列として保存されるだけで、リクエスト間で継続しません。/
s/^> {tip} The array driver is used during \[testing\](\/docs\/{{version}}\/testing) and prevents the data stored in the session from being persisted\.$/> {tip} セッションデータを持続させないため、arrayドライバは通常[テスト](\/docs\/{{version}}\/testing)時に使用します。/
s/^### Driver Prerequisites$/### ドライバの事前要件/
s/^#### Database$/#### データベース/
s/^When using the `database` session driver, you will need to create a table to contain the session items\. Below is an example `Schema` declaration for the table:$/`database`セッションドライバを使う場合、セッションアイテムを含むテーブルを作成する必要があります。以下にこのテーブル宣言のサンプル「スキーマ」を示します。/
s/^You may use the `session:table` Artisan command to generate this migration:$/`session:table` Artisanコマンドを使えば、このマイグレーションが生成できます。/
s/^Before using Redis sessions with Laravel, you will need to install the `predis\/predis` package (~1\.0) via Composer\. You may configure your Redis connections in the `database` configuration file\. In the `session` configuration file, the `connection` option may be used to specify which Redis connection is used by the session\.$/RedisセッションをLaravelで使用する前に、Composerで`predis\/predis`パッケージ(~1.0)をインストールする必要があります。Redis接続は`database`設定ファイルで設定します。`session`設定ファイルでは、`connection`オプションで、どのRedis接続をセッションで使用するか指定します。/
s/^## Using The Session$/## セッションの使用/
s/^### Retrieving Data$/### データ取得/
s/^There are two primary ways of working with session data in Laravel: the global `session` helper and via a `Request` instance\. First, let's look at accessing the session via a `Request` instance, which can be type-hinted on a controller method\. Remember, controller method dependencies are automatically injected via the Laravel \[service container\](\/docs\/{{version}}\/container):$/Laravelでセッションを操作するには、主に２つの方法があります。グローバルな`session`ヘルパを使用する方法と、コントローラメソッドにタイプヒントで指定できる`Request`インスタンスを経由する方法です。最初は`Request`インスタンスを経由する方法を見てみましょう。コントローラのメソッドに指定した依存インスタンスは、Laravelの[サービスコンテナにより](\/docs\/{{version}}\/container)、自動的に注入されることを覚えておきましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定されたユーザーのプロフィールを表示/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^When you retrieve an item from the session, you may also pass a default value as the second argument to the `get` method\. This default value will be returned if the specified key does not exist in the session\. If you pass a `Closure` as the default value to the `get` method and the requested key does not exist, the `Closure` will be executed and its result returned:$/`get`メソッドでセッションから値を取り出すとき、第２引数にデフォルト値も指定できます。このデフォルト値は、セッションに指定したキーが存在していなかった場合に、返されます。`get`メソッドのデフォルト値に「クロージャ」を渡した場合に、要求したキーが存在しなければ、その「クロージャ」が実行され、結果が返されます。/
s/^#### The Global Session Helper$/#### sessionグローバルヘルパ/
s/^You may also use the global `session` PHP function to retrieve and store data in the session\. When the `session` helper is called with a single, string argument, it will return the value of that session key\. When the helper is called with an array of key \/ value pairs, those values will be stored in the session:$/グローバルな`session` PHP関数で、セッションからデータを出し入れすることもできます。`session`ヘルパが文字列ひとつだけで呼び出されると、そのセッションキーに対する値を返します。ヘルパがキー／値ペアの配列で呼び出されると、それらの値はセッションへ保存されます。/
s/^        \/\/ Retrieve a piece of data from the session\.\.\.$/        \/\/ セッションから一つのデータを取得する/
s/^        \/\/ Specifying a default value\.\.\.$/        \/\/ デフォルト値を指定する場合/
s/^        \/\/ Store a piece of data in the session\.\.\.$/        \/\/ セッションへ一つのデータを保存する/
s/^        session(\['key' => 'value'\]);$/        session(['key' => 'value']);/
s/^> {tip} There is little practical difference between using the session via an HTTP request instance versus using the global `session` helper\. Both methods are \[testable\](\/docs\/{{version}}\/testing) via the `assertSessionHas` method which is available in all of your test cases\.$/> {tip} セッションをHTTPリクエストインスタンスを経由する場合と、グローバルな`session`ヘルパを使用する場合では、実践上の違いがあります。どんなテストケースであろうとも使用可能な、`assertSessionHas`メソッドを利用して、どちらの手法も[テスト可能](\/docs\/{{version}}\/testing)です。/
s/^#### Retrieving All Session Data$/#### 全セッションデータの取得/
s/^If you would like to retrieve all the data in the session, you may use the `all` method:$/セッション中の全データを取得する場合は、`all`メソッドを使います。/
s/^#### Determining If An Item Exists In The Session$/#### セッション中のアイテム存在を確認/
s/^To determine if an item is present in the session, you may use the `has` method\. The `has` method returns `true` if the item is present and is not `null`:$/セッションへ値が存在するか調べたい場合は、`has`メソッドを使います。その値が存在し、`null`でない場合は`true`が返ります。/
s/^To determine if an item is present in the session, even if its value is `null`, you may use the `exists` method\. The `exists` method returns `true` if the item is present:$/セッション中に、たとえ値が`null`であろうとも存在していることを確認したい場合は、`exists`メソッドを使います。`exists`メソッドは、値が存在していれば`true`を返します。/
s/^### Storing Data$/### データ保存/
s/^To store data in the session, you will typically use the `put` method or the `session` helper:$/セッションへデータを保存する場合、通常`put`メソッドか、`session`ヘルパを使用します。/
s/^    \/\/ Via a request instance\.\.\.$/    \/\/ リクエストインスタンス経由/
s/^    \/\/ Via the global helper\.\.\.$/    \/\/ グローバルヘルパ使用/
s/^    session(\['key' => 'value'\]);$/    session(['key' => 'value']);/
s/^#### Pushing To Array Session Values$/#### 配列セッション値の追加/
s/^The `push` method may be used to push a new value onto a session value that is an array\. For example, if the `user\.teams` key contains an array of team names, you may push a new value onto the array like so:$/`push`メソッドは新しい値を配列のセッション値へ追加します。たとえば`user.teams`キーにチーム名の配列が含まれているなら、新しい値を次のように追加できます。/
s/^    $request->session()->push('user\.teams', 'developers');$/    $request->session()->push('user.teams', 'developers');/
s/^#### Retrieving & Deleting An Item$/#### 取得後アイテムを削除/
s/^The `pull` method will retrieve and delete an item from the session in a single statement:$/`pull`メソッド一つで、セッションからアイテムを取得後、削除できます。/
s/^### Flash Data$/### フラッシュデータ/
s/^Sometimes you may wish to store items in the session only for the next request\. You may do so using the `flash` method\. Data stored in the session using this method will only be available during the subsequent HTTP request, and then will be deleted\. Flash data is primarily useful for short-lived status messages:$/次のリクエスト間だけセッションにアイテムを保存したいことは良くあります。`flash`メソッドを使ってください。`flash`メソッドは直後のHTTPリクエストの間だけセッションにデータを保存します。それ以降は削除されます。フラッシュデータは主にステータスメッセージなど継続しない情報に便利です。/
s/^If you need to keep your flash data around for several requests, you may use the `reflash` method, which will keep all of the flash data for an additional request\. If you only need to keep specific flash data, you may use the `keep` method:$/フラッシュデータをその先のリクエストまで持続させたい場合は、`reflash`メソッドを使い、全フラッシュデータを次のリクエストまで持続させられます。特定のフラッシュデータのみ持続させたい場合は、`keep`メソッドを使います。/
s/^    $request->session()->keep(\['username', 'email'\]);$/    $request->session()->keep(['username', 'email']);/
s/^### Deleting Data$/### データ削除/
s/^The `forget` method will remove a piece of data from the session\. If you would like to remove all data from the session, you may use the `flush` method:$/`forget`メソッドでセッションからデータを削除できます。セッションから全データを削除したければ、`flush`メソッドが使用できます。/
s/^### Regenerating The Session ID$/### セッションIDの再生性/
s/^Regenerating the session ID is often done in order to prevent malicious users from exploiting a \[session fixation\](https:\/\/en\.wikipedia\.org\/wiki\/Session_fixation) attack on your application\.$/セッションIDの再生成は多くの場合、悪意のあるユーザーからの、アプリケーションに対する[session fixation](https:\/\/en.wikipedia.org\/wiki\/Session_fixation)攻撃を防ぐために行います。/
s/^Laravel automatically regenerates the session ID during authentication if you are using the built-in `LoginController`; however, if you need to manually regenerate the session ID, you may use the `regenerate` method\.$/Laravelに組み込まれている`LoginController`を使用していれば、認証中にセッションIDは自動的に再生性されます。しかし、セッションIDを任意に再生成する必要があるのでしたら、`regenerate`メソッドを使ってください。/
s/^## Adding Custom Session Drivers$/## カスタムセッションドライバの追加/
s/^#### Implementing The Driver$/#### ドライバの実装/
s/^Your custom session driver should implement the `SessionHandlerInterface`\. This interface contains just a few simple methods we need to implement\. A stubbed MongoDB implementation looks something like this:$/カスタムセッションドライバでは、`SessionHandlerInterface`を実装してください。このインターフェイスには実装する必要のある、シンプルなメソッドが数個含まれています。MongoDBの実装をスタブしてみると、次のようになります。/
s/^> {tip} Laravel does not ship with a directory to contain your extensions\. You are free to place them anywhere you like\. In this example, we have created an `Extensions` directory to house the `MongoSessionHandler`\.$/> {tip} こうした拡張を含むディレクトリをLaravelでは用意していません。お好きな場所に設置してください。上記の例では、`Extension`ディレクトリを作成し、`MongoSessionHandler`ファイルを設置しています。/
s/^Since the purpose of these methods is not readily understandable, let's quickly cover what each of the methods do:$/これらのメソッドの目的を読んだだけでは理解しづらいため、それぞれのメソッドを簡単に見てみましょう。/
s/^- The `open` method would typically be used in file based session store systems\. Since Laravel ships with a `file` session driver, you will almost never need to put anything in this method\. You can leave it as an empty stub\. It is a fact of poor interface design (which we'll discuss later) that PHP requires us to implement this method\.$/- `open`メソッドは通常ファイルベースのセッション保存システムで使われます。Laravelは`file`セッションドライバを用意していますが、皆さんはこのメソッドに何も入れる必要はないでしょう。空のスタブのままで良いでしょう。実際、PHPが実装するように要求しているこのメソッドは、下手なインターフェイスデザインなのです。/
s/^- The `close` method, like the `open` method, can also usually be disregarded\. For most drivers, it is not needed\.$/- `close`メソッドも`open`と同様に通常は無視できます。ほどんどのドライバでは必要ありません。/
s/^- The `read` method should return the string version of the session data associated with the given `$sessionId`\. There is no need to do any serialization or other encoding when retrieving or storing session data in your driver, as Laravel will perform the serialization for you\.$/- `read`メソッドは指定された`$sessionId`と紐付いたセッションデータの文字列バージョンを返します。取得や保存時にドライバ中でデータをシリアライズしたり、他のエンコード作業を行ったりする必要はありません。Laravelがシリアライズを行います。/
s/^- The `write` method should write the given `$data` string associated with the `$sessionId` to some persistent storage system, such as MongoDB, Dynamo, etc\.  Again, you should not perform any serialization - Laravel will have already handled that for you\.$/- `write`メソッドはMongoDBやDynamoなどの持続可能なストレージに、`$sessionId`に紐付け指定した`$data`文字列を書き出します。ここでも、シリアリズを行う必要は全くありません。Laravelが既に処理しています。/
s/^- The `destroy` method should remove the data associated with the `$sessionId` from persistent storage\.$/- `destroy`メソッドは持続可能なストレージから`$sessionId`に紐付いたデータを取り除きます。/
s/^- The `gc` method should destroy all session data that is older than the given `$lifetime`, which is a UNIX timestamp\. For self-expiring systems like Memcached and Redis, this method may be left empty\.$/- `gc`メソッドは指定したUNIXタイムスタンプの`$lifetime`よりも古い前セッションデータを削除します。自前で破棄するMemcachedやRedisのようなシステムでは、このメソッドは空のままにしておきます。/
s/^#### Registering The Driver$/#### ドライバの登録/
s/^Once your driver has been implemented, you are ready to register it with the framework\. To add additional drivers to Laravel's session backend, you may use the `extend` method on the `Session` \[facade\](\/docs\/{{version}}\/facades)\. You should call the `extend` method from the `boot` method of a \[service provider\](\/docs\/{{version}}\/providers)\. You may do this from the existing `AppServiceProvider` or create an entirely new provider:$/ドライバを実装したら、フレームワークへ登録する準備が整いました。Laravelのセッションバックエンドへドライバを追加するには、`Session`[ファサード](\/docs\/{{version}}\/facades)の`extend`メソッドを呼び出します。[サービスプロバイダ](\/docs\/{{version}}\/providers)の`boot`メソッドから、`extend`メソッドを呼び出してください。既存の`AppServiceProvider`か真新しく作成し、呼び出してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービス起動処理の事前登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^                \/\/ Return implementation of SessionHandlerInterface\.\.\.$/                \/\/ SessionHandlerInterfaceの実装を返す…/
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナへ結合を登録する/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Once the session driver has been registered, you may use the `mongo` driver in your `config\/session\.php` configuration file\.$/セッションドライバを登録したら、`config\/session.php`設定ファイルで`mongo`ドライバが使用できます。/
