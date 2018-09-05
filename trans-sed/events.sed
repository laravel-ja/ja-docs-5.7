s/^# Events$/# イベント/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Registering Events & Listeners\](#registering-events-and-listeners)$/- [イベント／リスナ登録](#registering-events-and-listeners)/
s/^    - \[Generating Events & Listeners\](#generating-events-and-listeners)$/    - [イベント／リスナ生成](#generating-events-and-listeners)/
s/^    - \[Manually Registering Events\](#manually-registering-events)$/    - [任意のイベント登録](#manually-registering-events)/
s/^- \[Defining Events\](#defining-events)$/- [イベント定義](#defining-events)/
s/^- \[Defining Listeners\](#defining-listeners)$/- [リスナ定義](#defining-listeners)/
s/^- \[Queued Event Listeners\](#queued-event-listeners)$/- [イベントリスナのキュー投入](#queued-event-listeners)/
s/^    - \[Manually Accessing The Queue\](#manually-accessing-the-queue)$/    - [キューへの任意アクセス](#manually-accessing-the-queue)/
s/^    - \[Handling Failed Jobs\](#handling-failed-jobs)$/    - [失敗したジョブの取り扱い](#handling-failed-jobs)/
s/^- \[Dispatching Events\](#dispatching-events)$/- [イベントの発行](#dispatching-events)/
s/^- \[Event Subscribers\](#event-subscribers)$/- [イベント購読](#event-subscribers)/
s/^    - \[Writing Event Subscribers\](#writing-event-subscribers)$/    - [イベント購読プログラミング](#writing-event-subscribers)/
s/^    - \[Registering Event Subscribers\](#registering-event-subscribers)$/    - [イベント購読登録](#registering-event-subscribers)/
s/^## Introduction$/## イントロダクション/
s/^Laravel's events provides a simple observer implementation, allowing you to subscribe and listen for various events that occur in your application\. Event classes are typically stored in the `app\/Events` directory, while their listeners are stored in `app\/Listeners`\. Don't worry if you don't see these directories in your application, since they will be created for you as you generate events and listeners using Artisan console commands\.$/Laravelのイベントはシンプルなオブザーバの実装で、アプリケーションで発生する様々なイベントを購読し、リッスンするために使用します。イベントクラスは通常、`app\/Events`ディレクトリに保存されます。一方、リスナは`app\/Listeners`ディレクトリへ保存されます。アプリケーションに両ディレクトリが存在しなくても、心配ありません。Artisanコンソールコマンドを使い、イベントとリスナを生成するとき、ディレクトリも生成されます。/
s/^Events serve as a great way to decouple various aspects of your application, since a single event can have multiple listeners that do not depend on each other\. For example, you may wish to send a Slack notification to your user each time an order has shipped\. Instead of coupling your order processing code to your Slack notification code, you can raise an `OrderShipped` event, which a listener can receive and transform into a Slack notification\.$/一つのイベントは、互いに依存していない複数のリスナに紐付けられますので、アプリケーションの様々な要素を独立させるための良い手段として活用できます。たとえば、注文を配送するごとにSlack通知をユーザーへ届けたいとします。注文の処理コードとSlackの通知コードを結合する代わりに、`OrderShipped`イベントを発行し、リスナがそれを受け取り、Slack通知へ変換するように実装できます。/
s/^## Registering Events & Listeners$/## イベント／リスナ登録/
s/^The `EventServiceProvider` included with your Laravel application provides a convenient place to register all of your application's event listeners\. The `listen` property contains an array of all events (keys) and their listeners (values)\. Of course, you may add as many events to this array as your application requires\. For example, let's add a `OrderShipped` event:$/Laravelアプリケーションに含まれている`EventServiceProvider`は、イベントリスナを全て登録するために便利な場所を提供しています。`listen`プロパティは全イベント（キー）とリスナ（値）で構成されている配列です。もちろん、アプリケーションで必要とされているイベントをこの配列に好きなだけ追加できます。たとえば`OrderShipped`イベントを追加してみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* The event listener mappings for the application\.$/     * アプリケーションのイベントリスナをマップ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $listen = \[$/    protected $listen = [/
s/^        'App\\Events\\OrderShipped' => \[$/        'App\\Events\\OrderShipped' => [/
s/^        \],$/        ],/
s/^    \];$/    ];/
s/^### Generating Events & Listeners$/### イベント／リスナ生成/
s/^Of course, manually creating the files for each event and listener is cumbersome\. Instead, add listeners and events to your `EventServiceProvider` and use the `event:generate` command\. This command will generate any events or listeners that are listed in your `EventServiceProvider`\. Of course, events and listeners that already exist will be left untouched:$/毎回ハンドラやリスナを作成するのは、当然のことながら手間がかかります。代わりにハンドラとリスナを`EventServiceProvider`に追加し、`event:generate`コマンドを使いましょう。このコマンドは`EventServiceProvider`にリストしてあるイベントやリスナを生成してくれます。既存のイベントとハンドラには、もちろん変更を加えません。/
s/^### Manually Registering Events$/### イベントの手動登録/
s/^Typically, events should be registered via the `EventServiceProvider` `$listen` array; however, you may also register Closure based events manually in the `boot` method of your `EventServiceProvider`:$/通常イベントは、`EventServiceProvider`の`$listen`配列により登録するべきです。しかし、`EventServiceProvider`の`boot`メソッドの中で、クロージャベースリスナを登録することができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any other events for your application\.$/     * アプリケーションの他のイベントを登録する/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        Event::listen('event\.name', function ($foo, $bar) {$/        Event::listen('event.name', function ($foo, $bar) {/
s/^#### Wildcard Event Listeners$/#### ワイルドカードリスナ/
s/^You may even register listeners using the `\*` as a wildcard parameter, allowing you to catch multiple events on the same listener\. Wildcard listeners receive the event name as their first argument, and the entire event data array as their second argument:$/登録したリスナが、`*`をワイルドカードパラメータとして使用している場合、同じリスナで複数のイベントを捕捉できます。ワイルドカードリスナは、イベント全体のデータ配列を最初の引数として、イベントデータ全体を第２引数として受け取ります。/
s/^    Event::listen('event\.\*', function ($eventName, array $data) {$/    Event::listen('event.*', function ($eventName, array $data) {/
s/^## Defining Events$/## イベント定義/
s/^An event class is a data container which holds the information related to the event\. For example, let's assume our generated `OrderShipped` event receives an \[Eloquent ORM\](\/docs\/{{version}}\/eloquent) object:$/イベントクラスはデータコンテナとして、イベントに関する情報を保持します。たとえば生成した`OrderShipped`イベントが[Eloquent ORM](\/docs\/{{version}}\/eloquent)オブジェクトを受け取るとしましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new event instance\.$/         * 新しいイベントインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  \\App\\Order  $order$/         * @param  \\App\\Order  $order/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^As you can see, this event class contains no logic\. It is a container for the `Order` instance that was purchased\. The `SerializesModels` trait used by the event will gracefully serialize any Eloquent models if the event object is serialized using PHP's `serialize` function\.$/ご覧の通り、このクラスはロジックを含みません。購入された`Order`オブジェクトのための、コンテナです。イベントオブジェクトがPHPの`serialize`関数でシリアライズされる場合でも、Eloquentモデルをイベントがuseしている`SerializesModels`トレイトが優雅にシリアライズします。/
s/^## Defining Listeners$/## リスナの定義/
s/^Next, let's take a look at the listener for our example event\. Event listeners receive the event instance in their `handle` method\. The `event:generate` command will automatically import the proper event class and type-hint the event on the `handle` method\. Within the `handle` method, you may perform any actions necessary to respond to the event:$/次にサンプルイベントのリスナを取り上げましょう。イベントリスナはイベントインスタンスを`handle`メソッドで受け取ります。`event:generate`コマンドは自動的に適切なイベントクラスをインポートし、`handle`メソッドのイベントのタイプヒントを指定します。そのイベントに対応するために必要なロジックを`handle`メソッドで実行してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Create the event listener\.$/         * イベントリスナ生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Handle the event\.$/         * イベントの処理/
s/^         \*$/         */
s/^         \* @param  \\App\\Events\\OrderShipped  $event$/         * @param  \\App\\Events\\OrderShipped  $event/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Access the order using $event->order\.\.\.$/            \/\/ $event->orderにより、注文へアクセス…/
s/^> {tip} Your event listeners may also type-hint any dependencies they need on their constructors\. All event listeners are resolved via the Laravel \[service container\](\/docs\/{{version}}\/container), so dependencies will be injected automatically\.$/> {tip} イベントリスナでも、必要な依存をコンストラクターのタイプヒントで指定できます。イベントリスナは全てLaravelの[サービスコンテナで](\/docs\/{{version}}\/container)依存解決されるので、依存は自動的に注入されます。/
s/^#### Stopping The Propagation Of An Event$/#### イベントの伝播の停止/
s/^Sometimes, you may wish to stop the propagation of an event to other listeners\. You may do so by returning `false` from your listener's `handle` method\.$/場合によりイベントが他のリスナへ伝播されるのを止めたいこともあります。その場合は`handle`メソッドから`false`を返してください。/
s/^## Queued Event Listeners$/## イベントリスナのキュー投入/
s/^Queueing listeners can be beneficial if your listener is going to perform a slow task such as sending an e-mail or making an HTTP request\. Before getting started with queued listeners, make sure to \[configure your queue\](\/docs\/{{version}}\/queues) and start a queue listener on your server or local development environment\.$/メール送信やHTTPリクエストを作成するなど、遅い仕事を担当する場合、そのリスナをキューイングできると便利です。キューリスナに取り掛かる前に、[キューの設定](\/docs\/{{version}}\/queues)を確実に行い、サーバかローカル開発環境でキューリスナを起動しておいてください。/
s/^To specify that a listener should be queued, add the `ShouldQueue` interface to the listener class\. Listeners generated by the `event:generate` Artisan command already have this interface imported into the current namespace, so you can use it immediately:$/リスナをキュー投入するように指定するには、`ShouldQueue`インターフェイスをリスナクラスに追加します。`event:generate` Artisanコマンドにより生成したリスナには、既にこのインターフェイスが現在の名前空間下にインポートされていますので、すぐに使用できます。/
s/^That's it! Now, when this listener is called for an event, it will be automatically queued by the event dispatcher using Laravel's \[queue system\](\/docs\/{{version}}\/queues)\. If no exceptions are thrown when the listener is executed by the queue, the queued job will automatically be deleted after it has finished processing\.$/これだけです！これでこのリスナがイベントのために呼び出されると、Laravelの[キューシステム](\/docs\/{{version}}\/queues)を使い、イベントデスパッチャーにより自動的にキューへ投入されます。キューにより実行されるリスナから例外が投げられなければ、そのキュージョブは処理が済み次第、自動的に削除されます。/
s/^#### Customizing The Queue Connection & Queue Name$/#### キュー接続とキュー名のカスタマイズ/
s/^If you would like to customize the queue connection and queue name used by an event listener, you may define `$connection` and `$queue` properties on your listener class:$/イベントリスナのキュー接続とキュー名をカスタマイズしたい場合は、`$connection`と`$queue`プロパティをリスナクラスで定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* The name of the connection the job should be sent to\.$/         * ジョブを投入する接続名/
s/^         \*$/         */
s/^         \* @var string|null$/         * @var string|null/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* The name of the queue the job should be sent to\.$/         * ジョブを投入するキュー名/
s/^         \*$/         */
s/^         \* @var string|null$/         * @var string|null/
s/^         \*\/$/         *\//
s/^### Manually Accessing The Queue$/### キューへの任意アクセス/
s/^If you need to manually access the listener's underlying queue job's `delete` and `release` methods, you may do so using the `Illuminate\\Queue\\InteractsWithQueue` trait\. This trait is imported by default on generated listeners and provides access to these methods:$/リスナの裏で動作しているキュージョブの、`delete`や`release`メソッドを直接呼び出したければ、`Illuminate\\Queue\\InteractsWithQueue`トレイトを使えます。このトレイトは生成されたリスナにはデフォルトとしてインポートされており、これらのメソッドへアクセスできるようになっています。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle the event\.$/         * イベントの処理/
s/^         \*$/         */
s/^         \* @param  \\App\\Events\\OrderShipped  $event$/         * @param  \\App\\Events\\OrderShipped  $event/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Handling Failed Jobs$/### 失敗したジョブの取り扱い/
s/^Sometimes your queued event listeners may fail\. If queued listener exceeds the maximum number of attempts as defined by your queue worker, the `failed` method will be called on your listener\. The `failed` method receives the event instance and the exception that caused the failure:$/時々、キュー投入したイベントリスナが落ちることがあります。キューワーカにより定義された最大試行回数を超え、キュー済みのリスナが実行されると、リスナの`failed`メソッドが実行されます。`failed`メソッドはイベントインスタンスと落ちた原因の例外を引数に受け取ります。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle the event\.$/         * イベントの処理/
s/^         \*$/         */
s/^         \* @param  \\App\\Events\\OrderShipped  $event$/         * @param  \\App\\Events\\OrderShipped  $event/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Handle a job failure\.$/         * 失敗したジョブの処理/
s/^         \*$/         */
s/^         \* @param  \\App\\Events\\OrderShipped  $event$/         * @param  \\App\\Events\\OrderShipped  $event/
s/^         \* @param  \\Exception  $exception$/         * @param  \\Exception  $exception/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^## Dispatching Events$/## イベントの発行/
s/^To dispatch an event, you may pass an instance of the event to the `event` helper\. The helper will dispatch the event to all of its registered listeners\. Since the `event` helper is globally available, you may call it from anywhere in your application:$/イベントを発行するには、`event`ヘルパにイベントのインスタンスを渡してください。このヘルパは登録済みのリスナ全てに、イベントをディスパッチします。`event`ヘルパはグローバルに使用できますので、アプリケーションのどこからでも呼び出すことができます。/
s/^        \/\*\*$/        \/**/
s/^         \* Ship the given order\.$/         * 指定した注文を発送/
s/^         \*$/         */
s/^         \* @param  int  $orderId$/         * @param  int  $orderId/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Order shipment logic\.\.\.$/            \/\/ 注文発送ロジック…/
s/^> {tip} When testing, it can be helpful to assert that certain events were dispatched without actually triggering their listeners\. Laravel's \[built-in testing helpers\](\/docs\/{{version}}\/mocking#event-fake) makes it a cinch\.$/> {tip} テスト時は実際にリスナを起動せずに、正しいイベントがディスパッチされたことをアサートできると便利です。Laravelに[組み込まれたテストヘルパ](\/docs\/{{version}}\/mocking#event-fake)で簡単に行なえます。/
s/^## Event Subscribers$/## イベント/
s/^### Writing Event Subscribers$/### イベント購読プログラミング/
s/^Event subscribers are classes that may subscribe to multiple events from within the class itself, allowing you to define several event handlers within a single class\. Subscribers should define a `subscribe` method, which will be passed an event dispatcher instance\. You may call the `listen` method on the given dispatcher to register event listeners:$/イベント購読クラスは、その内部で複数のイベントを購読でき、一つのクラスで複数のイベントハンドラを定義できます。購読クラスは、イベントディスパッチャインスタンスを受け取る、`subscribe`メソッドを定義する必要があります。イベントリスナを登録するには、渡されたディスパッチャの`listen`メソッドを呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle user login events\.$/         * ユーザーログインイベント処理/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Handle user logout events\.$/         * ユーザーログアウトイベント処理/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the listeners for the subscriber\.$/         * 購読するリスナの登録/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Events\\Dispatcher  $events$/         * @param  \\Illuminate\\Events\\Dispatcher  $events/
s/^         \*\/$/         *\//
s/^### Registering Event Subscribers$/### イベント購読登録/
s/^After writing the subscriber, you are ready to register it with the event dispatcher\. You may register subscribers using the `$subscribe` property on the `EventServiceProvider`\. For example, let's add the `UserEventSubscriber` to the list:$/購読クラスを書いたら、イベントディスパッチャへ登録できる準備が整いました。`EventServiceProvider`の`$subscribe`プロパティを使用し、購読クラスを登録します。例として、`UserEventSubscriber`をリストに追加してみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The event listener mappings for the application\.$/         * アプリケーションのイベントリスナをマップ/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $listen = \[$/        protected $listen = [/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* The subscriber classes to register\.$/         * 登録する購読クラス/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $subscribe = \[$/        protected $subscribe = [/
s/^        \];$/        ];/
