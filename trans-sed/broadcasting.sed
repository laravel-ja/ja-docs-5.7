s/^# Broadcasting$/# ブロードキャスト/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバ要求](#driver-prerequisites)/
s/^- \[Concept Overview\](#concept-overview)$/- [概論](#concept-overview)/
s/^    - \[Using An Example Application\](#using-example-application)$/    - [サンプルアプリケーションの使用](#using-example-application)/
s/^- \[Defining Broadcast Events\](#defining-broadcast-events)$/- [ブロードキャストイベントの定義](#defining-broadcast-events)/
s/^    - \[Broadcast Name\](#broadcast-name)$/    - [ブロードキャスト名](#broadcast-name)/
s/^    - \[Broadcast Data\](#broadcast-data)$/    - [ブロードキャストデータ](#broadcast-data)/
s/^    - \[Broadcast Queue\](#broadcast-queue)$/    - [ブロードキャストキュー](#broadcast-queue)/
s/^    - \[Broadcast Conditions\](#broadcast-conditions)$/    - [ブロードキャスト条件](#broadcast-conditions)/
s/^- \[Authorizing Channels\](#authorizing-channels)$/- [認証中チャンネル](#authorizing-channels)/
s/^    - \[Defining Authorization Routes\](#defining-authorization-routes)$/    - [認証ルート定義](#defining-authorization-routes)/
s/^    - \[Defining Authorization Callbacks\](#defining-authorization-callbacks)$/    - [認証コールバック定義](#defining-authorization-callbacks)/
s/^    - \[Defining Channel Classes\](#defining-channel-classes)$/    - [チャンネル名の登録](#defining-channel-classes)/
s/^- \[Broadcasting Events\](#broadcasting-events)$/- [ブロードキャストイベント](#broadcasting-events)/
s/^    - \[Only To Others\](#only-to-others)$/    - [認証中ユーザーの回避](#only-to-others)/
s/^- \[Receiving Broadcasts\](#receiving-broadcasts)$/- [ブロードキャストの受け取り](#receiving-broadcasts)/
s/^    - \[Installing Laravel Echo\](#installing-laravel-echo)$/    - [Laravel Echoのインストール](#installing-laravel-echo)/
s/^    - \[Listening For Events\](#listening-for-events)$/    - [イベントのリッスン](#listening-for-events)/
s/^    - \[Leaving A Channel\](#leaving-a-channel)$/    - [チャンネルの離脱](#leaving-a-channel)/
s/^    - \[Namespaces\](#namespaces)$/    - [名前空間](#namespaces)/
s/^- \[Presence Channels\](#presence-channels)$/- [プレゼンスチャンネル](#presence-channels)/
s/^    - \[Authorizing Presence Channels\](#authorizing-presence-channels)$/    - [プレゼンスチャンネルの許可](#authorizing-presence-channels)/
s/^    - \[Joining Presence Channels\](#joining-presence-channels)$/    - [プレゼンスチャンネルへの参加](#joining-presence-channels)/
s/^    - \[Broadcasting To Presence Channels\](#broadcasting-to-presence-channels)$/    - [プレゼンスチャンネルへのブロードキャスト](#broadcasting-to-presence-channels)/
s/^- \[Client Events\](#client-events)$/- [クライアントイベント](#client-events)/
s/^- \[Notifications\](#notifications)$/- [通知](#notifications)/
s/^## Introduction$/## イントロダクション/
s/^In many modern web applications, WebSockets are used to implement realtime, live-updating user interfaces\. When some data is updated on the server, a message is typically sent over a WebSocket connection to be handled by the client\. This provides a more robust, efficient alternative to continually polling your application for changes\.$/多くの近代的なアプリケーションでは、リアルタイムでライブ更新されるユーザーインターフェイスを実装するために、WebSocketが使用されています。サーバ上で何かのデータが更新されると、通常WebSocket接続を通じメッセージが送信され、クライアントにより処理されます。これは変更をアプリケーションに対しポーリングし続ける方法よりも、強固で効率的です。/
s/^To assist you in building these types of applications, Laravel makes it easy to "broadcast" your \[events\](\/docs\/{{version}}\/events) over a WebSocket connection\. Broadcasting your Laravel events allows you to share the same event names between your server-side code and your client-side JavaScript application\.$/こうしたタイプのアプリケーション構築を援助するため、LaravelはWebSocket接続経由で、[イベント](\/docs\/{{version}}\/events)を簡単に「ブロードキャスト」できます。Laravelでイベントをブロードキャストすることにより、サーバサイドのコードとクライアントサイドのJavaScriptで、同じ名前のイベントを共有できます。/
s/^> {tip} Before diving into event broadcasting, make sure you have read all of the documentation regarding Laravel \[events and listeners\](\/docs\/{{version}}\/events)\.$/> {tip} ブロードキャストを開始する前に、Laravelの[イベントとリスナ](\/docs\/{{version}}\/events)に関するドキュメントをすべてしっかりと読んでください。/
s/^### Configuration$/### 設定/
s/^All of your application's event broadcasting configuration is stored in the `config\/broadcasting\.php` configuration file\. Laravel supports several broadcast drivers out of the box: \[Pusher\](https:\/\/pusher\.com), \[Redis\](\/docs\/{{version}}\/redis), and a `log` driver for local development and debugging\. Additionally, a `null` driver is included which allows you to totally disable broadcasting\. A configuration example is included for each of these drivers in the `config\/broadcasting\.php` configuration file\.$/イベントブロードキャストの設定オプションは、すべて`config\/broadcasting.php`設定ファイルの中にあります。Laravelはドライバをいくつか準備しています。[Pusher](https:\/\/pusher.com)や[Redis](\/docs\/{{version}}\/redis)、それにローカルの開発とデバッグのための`log`ドライバがあります。さらにブロードキャストを完全に無効にするための、`null`ドライバも用意しています。`config\/broadcasting.php`設定ファイルに、各ドライバの設定例が含まれています。/
s/^#### Broadcast Service Provider$/#### ブロードキャストサービスプロバイダ/
s/^Before broadcasting any events, you will first need to register the `App\\Providers\\BroadcastServiceProvider`\. In fresh Laravel applications, you only need to uncomment this provider in the `providers` array of your `config\/app\.php` configuration file\. This provider will allow you to register the broadcast authorization routes and callbacks\.$/イベントをブロードキャストするには、事前に`App\\Providers\\BroadcastServiceProvider`を登録する必要があります。インストールしたばかりのLaravelアプリケーションで、`config\/app.php`設定ファイル中の、`providers`配列配列にある、このプロバイダのコメントを外してください。このプロバイダはブロードキャスト認証ルートとコールバックを登録します。/
s/^#### CSRF Token$/#### CSRFトークン/
s/^\[Laravel Echo\](#installing-laravel-echo) will need access to the current session's CSRF token\. You should verify that your application's `head` HTML element defines a `meta` tag containing the CSRF token:$/[Laravel Echo](#installing-laravel-echo)は、現在のセッションのCSRFトークンへアクセスする必要があります。アプリケーションの`head` HTML要素を確認し、SCRFトークンを含むように`meta`タグを定義してください。/
s/^### Driver Prerequisites$/### ドライバ要求/
s/^If you are broadcasting your events over \[Pusher\](https:\/\/pusher\.com), you should install the Pusher PHP SDK using the Composer package manager:$/イベントを[Pusher](https:\/\/pusher.com)によりブロードキャストする場合、Composerパッケージマネージャを使い、Pusher PHP SDKをインストールする必要があります。/
s/^    composer require pusher\/pusher-php-server "~3\.0"$/    composer require pusher\/pusher-php-server "~3.0"/
s/^Next, you should configure your Pusher credentials in the `config\/broadcasting\.php` configuration file\. An example Pusher configuration is already included in this file, allowing you to quickly specify your Pusher key, secret, and application ID\. The `config\/broadcasting\.php` file's `pusher` configuration also allows you to specify additional `options` that are supported by Pusher, such as the cluster:$/次に、Pusherの認証情報を`config\/broadcasting.php`設定ファイル中で設定する必要があります。Pusherの設定例はこのファイルに含まれ、Pusherキーと秘密キー、アプリケーションIDを簡単に指定できます。`config\/broadcasting.php`ファイルの`pusher`設定では、Pusherでサポートされているクラスタなど、追加のオプション（`options`）も設定可能です。/
s/^    'options' => \[$/    'options' => [/
s/^    \],$/    ],/
s/^When using Pusher and \[Laravel Echo\](#installing-laravel-echo), you should specify `pusher` as your desired broadcaster when instantiating the Echo instance in your `resources\/assets\/js\/bootstrap\.js` file:$/Pusherと[Laravel Echo](#installing-laravel-echo)を使用する場合、`resources\/assets\/js\/bootstrap.js`ファイルのEchoインスタンスをインスタンス化する時に、使用するブロードキャスタとして、`pusher`を指定する必要があります。/
s/^    window\.Pusher = require('pusher-js');$/    window.Pusher = require('pusher-js');/
s/^    window\.Echo = new Echo({$/    window.Echo = new Echo({/
s/^If you are using the Redis broadcaster, you should install the Predis library:$/Redisブロードキャスタを使用する場合は、Predisライブラリをインストールする必要があります。/
s/^The Redis broadcaster will broadcast messages using Redis' pub \/ sub feature; however, you will need to pair this with a WebSocket server that can receive the messages from Redis and broadcast them to your WebSocket channels\.$/RedisブロードキャスタはRedisのpub\/sub機能を使用し、メッセージをブロードキャストします。Redisからのメッセージを受け、WebSocketチャンネルへブロードキャストできるように、これをWebSocketとペアリングする必要があります。/
s/^When the Redis broadcaster publishes an event, it will be published on the event's specified channel names and the payload will be a JSON encoded string containing the event name, a `data` payload, and the user that generated the event's socket ID (if applicable)\.$/Redisブロードキャスタがイベントを発行すると、そのイベントに指定されたチャンネル名へ発行され、イベント名、`data`ペイロード、イベントのソケットIDを生成したユーザー（該当する場合）を含む、ペイロードはJSONエンコードされた文字列になります。/
s/^#### Socket\.IO$/#### Socket.IO/
s/^If you are going to pair the Redis broadcaster with a Socket\.IO server, you will need to include the Socket\.IO JavaScript client library in your application\. You may install it via the NPM package manager:$/RedisブロードキャスタとSocket.IOサーバをペアリングする場合、アプリケーションへSocket.IO JavaScriptクライアントライブラリをインクルードする必要があります。NPMパッケージマネージャにより、インストールできます。/
s/^    npm install --save socket\.io-client$/    npm install --save socket.io-client/
s/^Next, you will need to instantiate Echo with the `socket\.io` connector and a `host`\.$/次に、`socket.io`コネクタと`host`を指定し、Echoをインスタンス化します。/
s/^    window\.io = require('socket\.io-client');$/    window.io = require('socket.io-client');/
s/^    window\.Echo = new Echo({$/    window.Echo = new Echo({/
s/^        broadcaster: 'socket\.io',$/        broadcaster: 'socket.io',/
s/^        host: window\.location\.hostname \+ ':6001'$/        host: window.location.hostname + ':6001'/
s/^Finally, you will need to run a compatible Socket\.IO server\. Laravel does not include a Socket\.IO server implementation; however, a community driven Socket\.IO server is currently maintained at the \[tlaverdure\/laravel-echo-server\](https:\/\/github\.com\/tlaverdure\/laravel-echo-server) GitHub repository\.$/最後に、Socket.IOのコンパチブルサーバを実行する必要があります。LaravelにはSocket.IOサーバの実装は含まれていません。しかし、[tlaverdure\/laravel-echo-server](https:\/\/github.com\/tlaverdure\/laravel-echo-server) GitHubリポジトリで、コミュニティにより現在、Socket.IOサーバがメンテナンスされています。/
s/^#### Queue Prerequisites$/#### キュー事前要件/
s/^Before broadcasting events, you will also need to configure and run a \[queue listener\](\/docs\/{{version}}\/queues)\. All event broadcasting is done via queued jobs so that the response time of your application is not seriously affected\.$/イベントをブロードキャストし始める前に、[キューリスナ](\/docs\/{{version}}\/queues)を設定し、実行する必要もあります。イベントのブロードキャストは、すべてキュージョブとして行われるため、アプリケーションのレスポンスタイムにはシリアスな影響はでません。/
s/^## Concept Overview$/## 概論/
s/^Laravel's event broadcasting allows you to broadcast your server-side Laravel events to your client-side JavaScript application using a driver-based approach to WebSockets\. Currently, Laravel ships with \[Pusher\](https:\/\/pusher\.com) and Redis drivers\. The events may be easily consumed on the client-side using the \[Laravel Echo\](#installing-laravel-echo) Javascript package\.$/Laravelのイベントブロードキャストは、サーバサイドのLaravelイベントから、WebSocketに対する駆動ベースのアプローチを使っている、あなたのクライアントサイドのJavaScriptアプリケーションへ、ブロードキャストできるようにします。現在、[Pusher](https:\/\/pusher.com)とRedisドライバーが用意されています。[Laravel Echo](#installing-laravel-echo) JavaScriptパッケージを使用したクライアントサイド上で、イベントは簡単に利用できます。/
s/^Events are broadcast over "channels", which may be specified as public or private\. Any visitor to your application may subscribe to a public channel without any authentication or authorization; however, in order to subscribe to a private channel, a user must be authenticated and authorized to listen on that channel\.$/パブリック、もしくはプライベートに指定された「チャンネル」上で、イベントはブロードキャストされます。アプリケーションの全訪問者は、認証も認可も必要ないパブリックチャンネルを購入できます。しかし、プライベートチャンネルを購入するためには、認証され、そのチャンネルをリッスンできる認可が必要です。/
s/^### Using An Example Application$/### サンプルアプリケーションの使用/
s/^Before diving into each component of event broadcasting, let's take a high level overview using an e-commerce store as an example\. We won't discuss the details of configuring \[Pusher\](https:\/\/pusher\.com) or \[Laravel Echo\](#installing-laravel-echo) since that will be discussed in detail in other sections of this documentation\.$/イベントブロードキャストの各コンポーネントへ飛び込む前に、例としてeコマースショップを使い、ハイレベルな概念を把握しましょう。このドキュメント中の別のセクションで詳細を説明するため、[Pusher](http:\/\/pusher.com)と[Laravel Echo](#installing-laravel-echo)の設定についての詳細は省きます。/
s/^In our application, let's assume we have a page that allows users to view the shipping status for their orders\. Let's also assume that a `ShippingStatusUpdated` event is fired when a shipping status update is processed by the application:$/このアプリケーションでは、ユーザーに注文の発送状態を確認してもらうビューページがあるとしましょう。さらに、アプリケーションが発送状態を変更すると、`ShippingStatusUpdated`イベントが発行されるとしましょう。/
s/^#### The `ShouldBroadcast` Interface$/#### `ShouldBroadcast`インターフェイス/
s/^When a user is viewing one of their orders, we don't want them to have to refresh the page to view status updates\. Instead, we want to broadcast the updates to the application as they are created\. So, we need to mark the `ShippingStatusUpdated` event with the `ShouldBroadcast` interface\. This will instruct Laravel to broadcast the event when it is fired:$/ユーザーがある注文を閲覧している時に、ビューの状態を変更するために、ユーザーがページを再読込しなくてはならないなんてしたくありません。代わりにアップデートがあることをアプリケーションへブロードキャストしたいわけです。そのため、`ShouldBroadcast`インターフェイスを実装した、`ShippingStatusUpdated`イベントを作成する必要があります。このインターフェイスはイベントが発行されると、ブロードキャストすることをLaravelへ指示しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Information about the shipping status update\.$/         * 発送状態更新の情報/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^The `ShouldBroadcast` interface requires our event to define a `broadcastOn` method\. This method is responsible for returning the channels that the event should broadcast on\. An empty stub of this method is already defined on generated event classes, so we only need to fill in its details\. We only want the creator of the order to be able to view status updates, so we will broadcast the event on a private channel that is tied to the order:$/`ShouldBroadcast`インターフェイスはイベントで、`broadcastOn`メソッドを定義することを求めています。このメソッドはイベントをブロードキャストすべきチャンネルを返す責任を持っています。イベントクラスを生成すると、既にこのメソッドはからのスタブクラスに作成されていますので、詳細を埋めるだけになっています。オーダーの発注者だけに状態の変更を見てもらいたいので、そのオーダーに紐付いたプライベートチャンネルへ、イベントをブロードキャストしましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the channels the event should broadcast on\.$/     * イベントをブロードキャストすべき、チャンネルの取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return new PrivateChannel('order\.'\.$this->update->order_id);$/        return new PrivateChannel('order.'.$this->update->order_id);/
s/^#### Authorizing Channels$/#### 認証中チャンネル/
s/^Remember, users must be authorized to listen on private channels\. We may define our channel authorization rules in the `routes\/channels\.php` file\. In this example, we need to verify that any user attempting to listen on the private `order\.1` channel is actually the creator of the order:$/プライベートチャンネルをリッスンするには、ユーザーは認可されている必要があることを思い出してください。`routes\/channels.php`ファイルでチャンネルの認可ルールを定義してください。この例の場合、プライベート`order.1`チャンネルをリッスンしようとするユーザーは、実際にそのオーダーの発注者であることを確認しています。/
s/^    Broadcast::channel('order\.{orderId}', function ($user, $orderId) {$/    Broadcast::channel('order.{orderId}', function ($user, $orderId) {/
s/^The `channel` method accepts two arguments: the name of the channel and a callback which returns `true` or `false` indicating whether the user is authorized to listen on the channel\.$/`channel`メソッドは引数を２つ取ります。チャンネルの名前と、ユーザーにそのチャネルをリッスンする認可があるかどうかを`true`か`false`で返すコールバックです。/
s/^All authorization callbacks receive the currently authenticated user as their first argument and any additional wildcard parameters as their subsequent arguments\. In this example, we are using the `{orderId}` placeholder to indicate that the "ID" portion of the channel name is a wildcard\.$/認可コールバックは、最初の引数に現在認証中のユーザーを受け取ります。引き続き、追加のプレースホルダパラメータを指定します。この例の場合、チャンネル名中で"ID"の部分を表す、`{orderID}`プレースホルダーを使っています。/
s/^#### Listening For Event Broadcasts$/#### イベントブロードキャストのリッスン/
s/^Next, all that remains is to listen for the event in our JavaScript application\. We can do this using Laravel Echo\. First, we'll use the `private` method to subscribe to the private channel\. Then, we may use the `listen` method to listen for the `ShippingStatusUpdated` event\. By default, all of the event's public properties will be included on the broadcast event:$/次に、皆さんのJavaScriptアプリケーションでイベントをリッスンします。このために、Laravel Echoが利用できます。最初に、プライベートチャンネルを購読するために、`private`メソッドを使います。それから、`ShippingStatusUpdated`イベントをリッスンするために、`listen`メソッドを使用します。デフォルトでは、イベントのpublicプロパティは、すべてブロードキャストイベントに含まれています。/
s/^    Echo\.private(`order\.${orderId}`)$/    Echo.private('order.' + orderId)/
s/^        \.listen('ShippingStatusUpdated', (e) => {$/        .listen('ShippingStatusUpdated', (e) => {/
s/^            console\.log(e\.update);$/            console.log(e.update);/
s/^## Defining Broadcast Events$/## ブロードキャストイベントの定義/
s/^To inform Laravel that a given event should be broadcast, implement the `Illuminate\\Contracts\\Broadcasting\\ShouldBroadcast` interface on the event class\. This interface is already imported into all event classes generated by the framework so you may easily add it to any of your events\.$/Laravelへイベントをブロードキャストすることを知らせるためには、そのイベントクラスで`Illuminate\\Contracts\\Broadcasting\\ShouldBroadcast`インターフェイスを実装します。このインターフェイスは、フレームワークにより生成されたすべてのイベントクラスで、useされていますので、イベントへ簡単に追加できます。/
s/^The `ShouldBroadcast` interface requires you to implement a single method: `broadcastOn`\. The `broadcastOn` method should return a channel or array of channels that the event should broadcast on\. The channels should be instances of `Channel`, `PrivateChannel`, or `PresenceChannel`\. Instances of `Channel` represent public channels that any user may subscribe to, while `PrivateChannels` and `PresenceChannels` represent private channels that require \[channel authorization\](#authorizing-channels):$/`ShouldBroadcast`インターフェイスは、`broadcastOn`メソッド一つのみ実装を求めています。`broadcastOn`メソッドは、そのイベントをブロードキャストすべきチャンネルか、チャンネルの配列を返します。チャンネルは`Channel`、`PrivateChannel`、`PresenceChannel`のインスタンスです。`Channel`インスタンスはユーザーが行動するパブリックチャンネルを表しています。一方、`PrivateChannel`と`PresenceChannel`は、[チャンネル認可](#authorizing-channels)が必要な、プライベートチャンネルを表しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new event instance\.$/         * 新しいイベントインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get the channels the event should broadcast on\.$/         * イベントをブロードキャストすべき、チャンネルの取得/
s/^         \*$/         */
s/^         \* @return Channel|array$/         * @return Channel|array/
s/^         \*\/$/         *\//
s/^            return new PrivateChannel('user\.'\.$this->user->id);$/            return new PrivateChannel('user.'.$this->user->id);/
s/^Then, you only need to \[fire the event\](\/docs\/{{version}}\/events) as you normally would\. Once the event has been fired, a \[queued job\](\/docs\/{{version}}\/queues) will automatically broadcast the event over your specified broadcast driver\.$/これで、あと必要なのは、通常通りに[イベントを発行](\/docs\/{{version}}\/events)するだけです。イベントを発行すると、[キュージョブ](\/docs\/{{version}}\/queues)が指定済みのドライバを通して、自動的にそのイベントをブロードキャストします。/
s/^### Broadcast Name$/### ブロードキャスト名/
s/^By default, Laravel will broadcast the event using the event's class name\. However, you may customize the broadcast name by defining a `broadcastAs` method on the event:$/デフォルトでLaravelはイベントのクラス名を使い、そのイベントをブロードキャストします。イベントに`broadcastAs`メソッドを定義することにより、ブロードキャスト名をカスタマイズできます。/
s/^    \/\*\*$/    \/**/
s/^     \* The event's broadcast name\.$/     * イベントブロードキャスト名/
s/^     \*$/     */
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^        return 'server\.created';$/        return 'server.created';/
s/^If you customize the broadcast name using the `broadcastAs` method, you should make sure to register your listener with a leading `\.` character\. This will instruct Echo to not prepend the application's namespace to the event:$/`broadcastAs`メソッドを使い、ブロードキャスト名をカスタマイズする場合、`.`文字を先頭に付けたリスナを登録するのを忘れないでください。これによりそのエベントへ、アプリケーションの名前空間を付けないよう、Echoに指示します。/
s/^    \.listen('\.server\.created', function (e) {$/    .listen('.server.created', function (e) {/
s/^        \.\.\.\.$/        ..../
s/^### Broadcast Data$/### ブロードキャストデータ/
s/^When an event is broadcast, all of its `public` properties are automatically serialized and broadcast as the event's payload, allowing you to access any of its public data from your JavaScript application\. So, for example, if your event has a single public `$user` property that contains an Eloquent model, the event's broadcast payload would be:$/イベントがブロードキャストされると、イベントのペイロードとして`public`プロパティはすべて自動的にシリアライズされます。これによりJavaScriptアプリケーションより、publicデータにアクセスできます。ですから、たとえば、あるイベントにEloquentモデルを含む、publicの`$user`プロパティがあれば、そのイベントのブロードキャストペイロードは、次のようになります。/
s/^            \.\.\.$/            .../
s/^However, if you wish to have more fine-grained control over your broadcast payload, you may add a `broadcastWith` method to your event\. This method should return the array of data that you wish to broadcast as the event payload:$/しかしながら、ブロードキャストペイロードをより上手くコントロールしたければ、そのイベントへ`broadcastWith`メソッドを追加してください。このメソッドから、イベントペイロードとしてブロードキャストしたいデータの配列を返してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the data to broadcast\.$/     * ブロードキャストするデータを取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \['id' => $this->user->id\];$/        return ['id' => $this->user->id];/
s/^### Broadcast Queue$/### ブロードキャストキュー/
s/^By default, each broadcast event is placed on the default queue for the default queue connection specified in your `queue\.php` configuration file\. You may customize the queue used by the broadcaster by defining a `broadcastQueue` property on your event class\. This property should specify the name of the queue you wish to use when broadcasting:$/デフォルトでは各ブロードキャストイベントは、`queue.php`設定ファイルで指定されているデフォルトキュー接続の、デフォルトキューへ投入されます。イベントクラスの`broadcastQueue`プロパティを定義することにより、使用するキューをカスタマイズできます。このプロパティには、ブロードキャスト時に使用したいキューの名前を指定してください。/
s/^    \/\*\*$/    \/**/
s/^     \* The name of the queue on which to place the event\.$/     * イベントを投入するキューの名前/
s/^     \*$/     */
s/^     \* @var string$/     * @var string/
s/^     \*\/$/     *\//
s/^If you want to broadcast your event using the `sync` queue instead of the default queue driver, you can implement the `ShouldBroadcastNow` interface instead of `ShouldBroadcast`:$/デフォルトキュードライバーの代わりに、`sync`キューを使いイベントをブロードキャストする場合、`ShouldBroadcast`の代わりに`ShouldBroadcastNow`インターフェイスを実装してください。/
s/^### Broadcast Conditions$/### ブロードキャスト条件/
s/^Sometimes you want to broadcast your event only if a given condition is true\. You may define these conditions by adding a `broadcastWhen` method to your event class:$/指定した条件がtrueの場合のみ、ブロードキャストを行いたい場合もあるでしょう。イベントクラスへ、`broadcastWhen`メソッドを追加すれば、こうした条件を定義できます。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if this event should broadcast\.$/     * このイベントでブロードキャストするかを決定/
s/^     \*$/     */
s/^     \* @return bool$/     * @return bool/
s/^     \*\/$/     *\//
s/^## Authorizing Channels$/## 認証中チャンネル/
s/^Private channels require you to authorize that the currently authenticated user can actually listen on the channel\. This is accomplished by making an HTTP request to your Laravel application with the channel name and allowing your application to determine if the user can listen on that channel\. When using \[Laravel Echo\](#installing-laravel-echo), the HTTP request to authorize subscriptions to private channels will be made automatically; however, you do need to define the proper routes to respond to these requests\.$/プライベートチャンネルでは、現在の認証ユーザーが実際にそのチャンネルをリッスンできるか、認可する必要があります。これは、Laravelアプリケーションへチャンネル名を含めたHTTPリクエストを作成し、アプリケーションにそのユーザーが、そのチャンネルをリッスンできるかを決めさせることで実現します。[Laravel Echo](#installing-laravel-echo)を使用する場合、プライベートチャンネルへの購入許可HTTPリクエストは、自動的に作成されます。しかし、そうしたリクエストに対してレスポンスする、ルートを確実に定義する必要があります。/
s/^### Defining Authorization Routes$/### 認証ルート定義/
s/^Thankfully, Laravel makes it easy to define the routes to respond to channel authorization requests\. In the `BroadcastServiceProvider` included with your Laravel application, you will see a call to the `Broadcast::routes` method\. This method will register the `\/broadcasting\/auth` route to handle authorization requests:$/嬉しいことに、Laravelでは、チャンネル認可にクエストに対するレスポンスのルート定義も簡単です。Laravelアプリケーションに含まれている`BroadcastServiceProvider`で、`Broadcast::routes`メソッドが呼びだされているのが見つかります。このメソッドが認可リクエストを処理する、`\/broadcasting\/auth`ルートを登録しています。/
s/^The `Broadcast::routes` method will automatically place its routes within the `web` middleware group; however, you may pass an array of route attributes to the method if you would like to customize the assigned attributes:$/`Broadcast::routes`メソッドは自動的に、そのルートを`web`ミドルウェアグループの中に設置しますが、割り付ける属性をカスタマイズしたければ、メソッドへルート属性の配列を渡すことができます。/
s/^### Defining Authorization Callbacks$/### 認証コールバック定義/
s/^Next, we need to define the logic that will actually perform the channel authorization\. This is done in the `routes\/channels\.php` file that is included with your application\. In this file, you may use the `Broadcast::channel` method to register channel authorization callbacks:$/次に、チャンネル認可を実際に行うロジックを定義する必要があります。アプリケーションに含まれる、`routes\/channels.php`ファイルで行います。このメソッドの中で、`Broadcast::channel`メソッドを使い、チャンネル認可コールバックを登録します。/
s/^    Broadcast::channel('order\.{orderId}', function ($user, $orderId) {$/    Broadcast::channel('order.{orderId}', function ($user, $orderId) {/
s/^The `channel` method accepts two arguments: the name of the channel and a callback which returns `true` or `false` indicating whether the user is authorized to listen on the channel\.$/`channel`メソッドは引数を２つ取ります。チャンネルの名前と、ユーザーにそのチャネルをリッスンする認可があるかどうかを`true`か`false`で返すコールバックです。/
s/^All authorization callbacks receive the currently authenticated user as their first argument and any additional wildcard parameters as their subsequent arguments\. In this example, we are using the `{orderId}` placeholder to indicate that the "ID" portion of the channel name is a wildcard\.$/認可コールバックは、最初の引数に現在認証中のユーザーを受け取ります。引き続き、追加のプレースホルダパラメータを指定します。この例の場合、チャンネル名中で"ID"の部分を表す、`{orderID}`プレースホルダーを使っています。/
s/^#### Authorization Callback Model Binding$/#### 認証コールバックモデル結合/
s/^Just like HTTP routes, channel routes may also take advantage of implicit and explicit \[route model binding\](\/docs\/{{version}}\/routing#route-model-binding)\. For example, instead of receiving the string or numeric order ID, you may request an actual `Order` model instance:$/HTTPルートと同様にチャンネルルートでも、暗黙あるいは明白な[ルートモデル結合](\/docs\/{{version}}\/routing#route-model-binding)を利用できます。たとえば、文字列や数値の注文IDを受け取る代わりに、実際の`Order`モデルインスタンスを要求できます。/
s/^    Broadcast::channel('order\.{order}', function ($user, Order $order) {$/    Broadcast::channel('order.{order}', function ($user, Order $order) {/
s/^### Defining Channel Classes$/### チャンネル名の登録/
s/^If your application is consuming many different channels, your `routes\/channels\.php` file could become bulky\. So, instead of using Closures to authorize channels, you may use channel classes\. To generate a channel class, use the `make:channel` Artisan command\. This command will place a new channel class in the `App\/Broadcasting` directory\.$/アプリケーションで多くのチャンネルを利用していると、`routes\/channels.php`ファイルは膨大になってしまいます。認証チャンネルのクロージャを使用する代わりに、チャンネルクラスを使用するのが良いでしょう。チャンネルクラスを生成するには、`make:channel`　Aritisanコマンドが使用できます。このコマンドは、新しいチャンネルクラスを`App\/Broadcasting`ディレクトリへ生成します。/
s/^Next, register your channel in your `routes\/channels\.php` file:$/次に、チャンネルを`routes\/channels.php`ファイルで登録します。/
s/^    Broadcast::channel('order\.{order}', OrderChannel::class);$/    Broadcast::channel('order.{order}', OrderChannel::class);/
s/^Finally, you may place the authorization logic for your channel in the channel class' `join` method\. This `join` method will house the same logic you would have typically placed in your channel authorization Closure\. Of course, you may also take advantage of channel model binding:$/最後に、チャンネルの認証ロジックをチャンネルクラスの`join`へ記述します。典型的な場合ではチャンネル認証クロージャに設置するのと同じロジックをこの`join`メソッドに設置します。もちろん、チャンネルモデル結合の利点も利用できます。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new channel instance\.$/         * 新しいチャンネルインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Authenticate the user's access to the channel\.$/         * ユーザーのチャンネルへアクセスを認証/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @param  \\App\\Order  $order$/         * @param  \\App\\Order  $order/
s/^         \* @return array|bool$/         * @return array|bool/
s/^         \*\/$/         *\//
s/^> {tip} Like many other classes in Laravel, channel classes will automatically be resolved by the \[service container\](\/docs\/{{version}}\/container)\. So, you may type-hint any dependencies required by your channel in its constructor\.$/> {tip} Laravelの他のクラスと同様に、チャンネルクラスは自動的に[サービスコンテナ](\/docs\/{{version}}\/container)により、依存を解決されます。そのため、コンストラクタでタイプヒントにより、チャンネルで必要な依存を指定できます。/
s/^## Broadcasting Events$/## ブロードキャストイベント/
s/^Once you have defined an event and marked it with the `ShouldBroadcast` interface, you only need to fire the event using the `event` function\. The event dispatcher will notice that the event is marked with the `ShouldBroadcast` interface and will queue the event for broadcasting:$/イベントを定義し、`ShouldBroadcast`インターフェイスを実装したら、あとは`event`関数を使い、イベントを発行するだけです。イベントディスパッチャは、そのイベントが`ShouldBroadcast`インターフェイスにより印付けられていることに注目しており、ブロードキャストするためにイベントをキューへ投入します。/
s/^### Only To Others$/### 認証中ユーザーの回避/
s/^When building an application that utilizes event broadcasting, you may substitute the `event` function with the `broadcast` function\. Like the `event` function, the `broadcast` function dispatches the event to your server-side listeners:$/イベントブロードキャストを使用するアプリケーションを構築しているとき、`event`関数を`broadcast`関数へ置き換えることもできます。`event`関数と同様に、`broadcast`関数もイベントをサーバサイドリスナへディスパッチします。/
s/^However, the `broadcast` function also exposes the `toOthers` method which allows you to exclude the current user from the broadcast's recipients:$/しかし、`broadcast`関数には、ブロードキャストの受取人から現在のユーザーを除外できる、`toOthers`メソッドが用意されています。/
s/^To better understand when you may want to use the `toOthers` method, let's imagine a task list application where a user may create a new task by entering a task name\. To create a task, your application might make a request to a `\/task` end-point which broadcasts the task's creation and returns a JSON representation of the new task\. When your JavaScript application receives the response from the end-point, it might directly insert the new task into its task list like so:$/`toOthers`メソッドをいつ使うのかをよく理解してもらうため、タスク名を入力してもらうことにより新しいタスクをユーザーが作成できる、タスクリストアプリケーションを想像してください。タスクを作成するためにアプリケーションは、タスクの生成をブロードキャストし、新しいタスクのJSON表現を返す、`\/task`エンドポイントへリクエストを作成するでしょう。JavaScriptアプリケーションがそのエンドポイントからレスポンスを受け取る時、その新しいタスクをタスクリストへ直接挿入するでしょう。次のようにです。/
s/^    axios\.post('\/task', task)$/    axios.post('\/task', task)/
s/^        \.then((response) => {$/        .then((response) => {/
s/^            this\.tasks\.push(response\.data);$/            this.tasks.push(response.data);/
s/^However, remember that we also broadcast the task's creation\. If your JavaScript application is listening for this event in order to add tasks to the task list, you will have duplicate tasks in your list: one from the end-point and one from the broadcast\. You may solve this by using the `toOthers` method to instruct the broadcaster to not broadcast the event to the current user\.$/しかしながら、タスクの生成もブロードキャストしていることを思い出してください。JavaScriptアプリケーションがこのイベントをタスクリストへタスクを追加するためにリッスンしている場合、リストにそのタスクを二重登録してしまいます。ひとつはエンドポイントから、もう一つはブロードキャストからです。これを解決するには、toOthers`メソッドを使用し、ブロードキャスターへそのイベントを現在のユーザーに対してブロードキャストしないように指示してください。/
s/^> {note} Your event must use the `Illuminate\\Broadcasting\\InteractsWithSockets` trait in order to call the `toOthers` method\.$/> {note} イベントで`toOthers`メソッドを呼び出すには、`Illuminate\\Broadcasting\\InteractsWithSockets`トレイトを使用する必要があります。/
s/^#### Configuration$/#### 設定/
s/^When you initialize a Laravel Echo instance, a socket ID is assigned to the connection\. If you are using \[Vue\](https:\/\/vuejs\.org) and \[Axios\](https:\/\/github\.com\/mzabriskie\/axios), the socket ID will automatically be attached to every outgoing request as a `X-Socket-ID` header\. Then, when you call the `toOthers` method, Laravel will extract the socket ID from the header and instruct the broadcaster to not broadcast to any connections with that socket ID\.$/Laravel Echoインスタンスを初期化する時、接続へソケットIDをアサインします。[Vue](https:\/\/vuejs.org)と[Axios](https:\/\/github.com\/mzabriskie\/axios)を使用していれば、`X-Socket-ID`ヘッダとして、送信する全リクエストへ自動的に付加されます。そのため、`toOthers`メソッドを呼び出す場合、LaravelはヘッダからソケットIDを取り除き、そのソケットIDを使い全接続へブロードキャストしないように、ブロードキャスタに対し指示します。/
s/^If you are not using Vue and Axios, you will need to manually configure your JavaScript application to send the `X-Socket-ID` header\. You may retrieve the socket ID using the `Echo\.socketId` method:$/VueとAxiosを使用しない場合、JavaScriptアプリケーションで`X-Socket-ID`ヘッダを送信するように、設定する必要があります。ソケットIDは`Echo.socketId`メソッドにより取得できます。/
s/^    var socketId = Echo\.socketId();$/    var socketId = Echo.socketId();/
s/^## Receiving Broadcasts$/## ブロードキャストの受け取り/
s/^### Installing Laravel Echo$/### Laravel Echoのインストール/
s/^Laravel Echo is a JavaScript library that makes it painless to subscribe to channels and listen for events broadcast by Laravel\. You may install Echo via the NPM package manager\. In this example, we will also install the `pusher-js` package since we will be using the Pusher broadcaster:$/Laravel EchoはJavaScriptライブラリで、チャンネルの購読とLaravelによるイベントブロードキャストのリッスンを苦労なしに実現してくれます。EchoはNPMパッケージマネージャにより、インストールします。以降の例で、Pusherブロードキャストを使用する予定のため、`pusher-js`パッケージもインストールしています。/
s/^Once Echo is installed, you are ready to create a fresh Echo instance in your application's JavaScript\. A great place to do this is at the bottom of the `resources\/assets\/js\/bootstrap\.js` file that is included with the Laravel framework:$/Echoがインストールできたら、アプリケーションのJavaScriptで、真新しいEchoインスタンスを作成する準備が整いました。これを行うには、Laravelフレームワークに含まれている、`resources\/assets\/js\/bootstrap.js`ファイルの最後が、良いでしょう。/
s/^    window\.Echo = new Echo({$/    window.Echo = new Echo({/
s/^When creating an Echo instance that uses the `pusher` connector, you may also specify a `cluster` as well as whether the connection should be encrypted:$/`pusher`コネクタを使うEchoインスタンスを作成するときには、`cluster`と同時に接続の暗号化を行うかどうかを指定することもできます。/
s/^    window\.Echo = new Echo({$/    window.Echo = new Echo({/
s/^### Listening For Events$/### イベントのリッスン/
s/^Once you have installed and instantiated Echo, you are ready to start listening for event broadcasts\. First, use the `channel` method to retrieve an instance of a channel, then call the `listen` method to listen for a specified event:$/インストールが済み、Echoをインスタンス化したら、イベントブロードキャストをリスニングする準備が整いました。最初に、`channel`メソッドを使い、チャンネルインスタンスを取得し、それから`listen`メソッドで特定のイベントをリッスンしてください。/
s/^    Echo\.channel('orders')$/    Echo.channel('orders')/
s/^        \.listen('OrderShipped', (e) => {$/        .listen('OrderShipped', (e) => {/
s/^            console\.log(e\.order\.name);$/            console.log(e.order.name);/
s/^If you would like to listen for events on a private channel, use the `private` method instead\. You may continue to chain calls to the `listen` method to listen for multiple events on a single channel:$/プライベートチャンネルのイベントをリッスンしたい場合は、`private`メソッドを代わりに使用してください。一つのチャンネルに対し、複数のイベントをリッスンする場合は、`listen`メソッドをチェーンして呼び出してください。/
s/^    Echo\.private('orders')$/    Echo.private('orders')/
s/^        \.listen(\.\.\.)$/        .listen(...)/
s/^        \.listen(\.\.\.)$/        .listen(...)/
s/^        \.listen(\.\.\.);$/        .listen(...);/
s/^### Leaving A Channel$/### チャンネルの離脱/
s/^To leave a channel, you may call the `leave` method on your Echo instance:$/チャンネルを離脱するには、Echoインスタンスの`leave`メソッドを呼び出してください。/
s/^    Echo\.leave('orders');$/    Echo.leave('orders');/
s/^### Namespaces$/### 名前空間/
s/^You may have noticed in the examples above that we did not specify the full namespace for the event classes\. This is because Echo will automatically assume the events are located in the `App\\Events` namespace\. However, you may configure the root namespace when you instantiate Echo by passing a `namespace` configuration option:$/上の例で、イベントクラスの完全な名前空間を指定していないことに、皆さん気がついたでしょう。その理由は、Echoはイベントが`App\\Events`名前空間へ設置されると仮定しているからです。しかし、ルートの名前空間を設定変更している場合は、Echoのインスタンス化時に、`namespace`設定オプションを渡してください。/
s/^    window\.Echo = new Echo({$/    window.Echo = new Echo({/
s/^        namespace: 'App\.Other\.Namespace'$/        namespace: 'App.Other.Namespace'/
s/^Alternatively, you may prefix event classes with a `\.` when subscribing to them using Echo\. This will allow you to always specify the fully-qualified class name:$/もしくは、Echoを使用し購入する時点で、イベントクラスへ`.`を使い、プリフィックスを付けてください。/
s/^    Echo\.channel('orders')$/    Echo.channel('orders')/
s/^        \.listen('\.Namespace\.Event\.Class', (e) => {$/        .listen('.Namespace.Event.Class', (e) => {/
s/^## Presence Channels$/## プレゼンスチャンネル/
s/^Presence channels build on the security of private channels while exposing the additional feature of awareness of who is subscribed to the channel\. This makes it easy to build powerful, collaborative application features such as notifying users when another user is viewing the same page\.$/プレゼンスチャンネルは、誰がチャンネルを購入しているかの情報を取得できる機能を提供しつつ、安全なプライベートチャンネルを構築します。これにより、他のユーザーが同じページを閲覧していることを知らせるような、パワフルでコラボレート可能な機能を持つアプリケーションを簡単に構築できます。/
s/^### Authorizing Presence Channels$/### プレゼンスチャンネルの許可/
s/^All presence channels are also private channels; therefore, users must be \[authorized to access them\](#authorizing-channels)\. However, when defining authorization callbacks for presence channels, you will not return `true` if the user is authorized to join the channel\. Instead, you should return an array of data about the user\.$/全プレゼンスチャンネルは、プライベートチャンネルでもあります。そのため、ユーザーは[アクセスする許可](#authorizing-channels)が必要です。プレゼンスチャンネルの認可コールバックを定義する場合、ユーザーがチャンネルへ参加する許可があるならば、`true`をリターンしないでください。代わりに、ユーザー情報の配列を返してください。/
s/^The data returned by the authorization callback will be made available to the presence channel event listeners in your JavaScript application\. If the user is not authorized to join the presence channel, you should return `false` or `null`:$/認可コールバックから返されるデータは、JavaScriptアプリケーションのプレゼンスチャンネルイベントリスナで利用できるようになります。ユーザーがプレゼンスチャンネルへ参加する許可がない場合は、`false`か`null`を返してください。/
s/^    Broadcast::channel('chat\.{roomId}', function ($user, $roomId) {$/    Broadcast::channel('chat.{roomId}', function ($user, $roomId) {/
s/^            return \['id' => $user->id, 'name' => $user->name\];$/            return ['id' => $user->id, 'name' => $user->name];/
s/^### Joining Presence Channels$/### プレゼンスチャンネルへの参加/
s/^To join a presence channel, you may use Echo's `join` method\. The `join` method will return a `PresenceChannel` implementation which, along with exposing the `listen` method, allows you to subscribe to the `here`, `joining`, and `leaving` events\.$/プレゼンスチャンネルへ参加するには、Echoの`join`メソッドを使用します。`join`メソッドは、既に説明した`listen`メソッドに付け加え、`here`、`joining`、`leaving`イベントを購入できるようになっている、`PresenceChannel`実装を返します。/
s/^    Echo\.join(`chat\.${roomId}`)$/    Echo.join('chat.' + roomId)/
s/^        \.here((users) => {$/        .here((users) => {/
s/^        \.joining((user) => {$/        .joining((user) => {/
s/^            console\.log(user\.name);$/            console.log(user.name);/
s/^        \.leaving((user) => {$/        .leaving((user) => {/
s/^            console\.log(user\.name);$/            console.log(user.name);/
s/^The `here` callback will be executed immediately once the channel is joined successfully, and will receive an array containing the user information for all of the other users currently subscribed to the channel\. The `joining` method will be executed when a new user joins a channel, while the `leaving` method will be executed when a user leaves the channel\.$/`here`コールバックはチャンネル参加に成功すると、すぐに実行されます。そして、このチャンネルを現在購入している、他の全ユーザー情報を含む配列を返します。`joining`メソッドは、チャンネルに新しいユーザーが参加した時に実行されます。一方の`leaving`メソッドは、ユーザーがチャンネルから離脱した時に実行されます。/
s/^### Broadcasting To Presence Channels$/### プレゼンスチャンネルへのブロードキャスト/
s/^Presence channels may receive events just like public or private channels\. Using the example of a chatroom, we may want to broadcast `NewMessage` events to the room's presence channel\. To do so, we'll return an instance of `PresenceChannel` from the event's `broadcastOn` method:$/プレゼンスチャンネルはパブリックやプライベートチャンネルと同じように、イベントを受け取ります。チャットルームを例にしましょう。その部屋のプレゼンスチャンネルへの`NewMessage`イベントがブロードキャストされるのを受け取りたいとします。そのために、イベントの`broadcastOn`メソッドで、`PresenceChannel`のインスタンスを返します。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the channels the event should broadcast on\.$/     * イベントをブロードキャストすべき、チャンネルの取得/
s/^     \*$/     */
s/^     \* @return Channel|array$/     * @return Channel|array/
s/^     \*\/$/     *\//
s/^        return new PresenceChannel('room\.'\.$this->message->room_id);$/        return new PresenceChannel('room.'.$this->message->room_id);/
s/^Like public or private events, presence channel events may be broadcast using the `broadcast` function\. As with other events, you may use the `toOthers` method to exclude the current user from receiving the broadcast:$/パブリックやプライベートイベントと同様に、プレゼンスチャンネルイベントは`broadcast`関数を使用し、ブロードキャストされます。他のイベントと同様に、ブロードキャストから受けるイベントから、現在のユーザーを除くために、`toOthers`メソッドも利用できます。/
s/^You may listen for the join event via Echo's `listen` method:$/Echoの`listen`メソッドにより、参加イベントをリッスンできます。/
s/^    Echo\.join(`chat\.${roomId}`)$/    Echo.join('chat.' + roomId)/
s/^        \.here(\.\.\.)$/        .here(...)/
s/^        \.joining(\.\.\.)$/        .joining(...)/
s/^        \.leaving(\.\.\.)$/        .leaving(...)/
s/^        \.listen('NewMessage', (e) => {$/        .listen('NewMessage', (e) => {/
s/^## Client Events$/## クライアントイベント/
s/^> {tip} When using \[Pusher\](https:\/\/pusher\.com), you must enable the "Client Events" option in the "App Settings" section of your \[application dashboard\](https:\/\/dashboard\.pusher\.com\/) in order to send client events\.$/> {tip} [Pusher](https:\/\/pusher.com)を使用する場合、クライアントイベントを送信するために、[application dashboard](https:\/\/dashboard.pusher.com\/)の"App Settings"にある、"Client Events"オプションを有効にしてください。/
s/^Sometimes you may wish to broadcast an event to other connected clients without hitting your Laravel application at all\. This can be particularly useful for things like "typing" notifications, where you want to alert users of your application that another user is typing a message on a given screen\.$/Laravelアプリケーションに全く関係ないイベントを他の接続クライアントへブロードキャストしたい場合もあるでしょう。これは特にアプリケーションユーザーへ他のユーザーがキーボードをタイプしているメッセージをページで表示するための「タイプ中」通知のような場合に便利です。/
s/^To broadcast client events, you may use Echo's `whisper` method:$/クライアントイベントをブロードキャストするには、Echoの`whisper`メソッドを使用します。/
s/^    Echo\.private('chat')$/    Echo.private('chat')/
s/^        \.whisper('typing', {$/        .whisper('typing', {/
s/^            name: this\.user\.name$/            name: this.user.name/
s/^To listen for client events, you may use the `listenForWhisper` method:$/クライアントイベントをリッスンするには、`listenForWhisper`メソッドを使います。/
s/^    Echo\.private('chat')$/    Echo.private('chat')/
s/^        \.listenForWhisper('typing', (e) => {$/        .listenForWhisper('typing', (e) => {/
s/^            console\.log(e\.name);$/            console.log(e.name);/
s/^## Notifications$/## 通知/
s/^By pairing event broadcasting with \[notifications\](\/docs\/{{version}}\/notifications), your JavaScript application may receive new notifications as they occur without needing to refresh the page\. First, be sure to read over the documentation on using \[the broadcast notification channel\](\/docs\/{{version}}\/notifications#broadcast-notifications)\.$/イベントブロードキャストと[通知](\/docs\/{{version}}\/notifications)をペアリングすることで、JavaScriptアプリケーションはページを再読み込みする必要なく、新しい通知を受け取ることができます。最初に、[ブロードキャスト通知チャンネル](\/docs\/{{version}}\/notifications#broadcast-notifications)の使用のドキュメントをよく読んでください。/
s/^Once you have configured a notification to use the broadcast channel, you may listen for the broadcast events using Echo's `notification` method\. Remember, the channel name should match the class name of the entity receiving the notifications:$/ブロードキャストチャンネルを使用する通知の設定を済ませたら、Echoの`notification`メソッドを使用し、ブロードキャストイベントをリッスンできます。チャンネル名は、通知を受けるエンティティのクラス名と一致している必要があることを覚えておいてください。/
s/^    Echo\.private(`App\.User\.${userId}`)$/    Echo.private('App.User.' + userId)/
s/^        \.notification((notification) => {$/        .notification((notification) => {/
s/^            console\.log(notification\.type);$/            console.log(notification.type);/
s/^In this example, all notifications sent to `App\\User` instances via the `broadcast` channel would be received by the callback\. A channel authorization callback for the `App\.User\.{id}` channel is included in the default `BroadcastServiceProvider` that ships with the Laravel framework\.$/上記の例の場合、「ブロードキャスト」チャンネルを通じ、`App\\User`インスタンスへ送られる通知はすべて、コールバックにより受け取られます。`App.User.{id}`チャンネルのチャンネル認可コールバックは、Laravelフレームワークに用意されている、デフォルトの`BroadcastServiceProvider`に含まれています。/
