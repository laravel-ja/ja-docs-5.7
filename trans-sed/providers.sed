s/^# Service Providers$/# サービスプロバイダ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Writing Service Providers\](#writing-service-providers)$/- [サービスプロバイダの記述](#writing-service-providers)/
s/^    - \[The Register Method\](#the-register-method)$/    - [Registerメソッド](#the-register-method)/
s/^    - \[The Boot Method\](#the-boot-method)$/    - [Bootメソッド](#the-boot-method)/
s/^- \[Registering Providers\](#registering-providers)$/- [プロバイダの登録](#registering-providers)/
s/^- \[Deferred Providers\](#deferred-providers)$/- [遅延プロバイダ](#deferred-providers)/
s/^## Introduction$/## イントロダクション/
s/^Service providers are the central place of all Laravel application bootstrapping\. Your own application, as well as all of Laravel's core services are bootstrapped via service providers\.$/サービスプロバイダは、Laravelアプリケーション全体の起動処理における、初めの心臓部です。皆さんのアプリケーションと同じく、Laravelのコアサービス全部もサービスプロバイダを利用し、初期起動処理を行っています。/
s/^But, what do we mean by "bootstrapped"? In general, we mean \*\*registering\*\* things, including registering service container bindings, event listeners, middleware, and even routes\. Service providers are the central place to configure your application\.$/ところで「初期起動処理」とは何を意味しているのでしょうか？　サービスコンテナの結合や、イベントリスナ、フィルター、それにルートなどを**登録する**ことを一般的に意味しています。サービスプロバイダはアプリケーション設定の中心部です。/
s/^If you open the `config\/app\.php` file included with Laravel, you will see a `providers` array\. These are all of the service provider classes that will be loaded for your application\. Of course, many of these are "deferred" providers, meaning they will not be loaded on every request, but only when the services they provide are actually needed\.$/Laravelに含まれている`config\/app.php`ファイルを開けば、`providers`配列が見つかるでしょう。そこにある全サービスプロバイダクラスが、アプリケーションのためにロードされます。もちろんほとんどのプロバイダは、全てのリクエストで必ずロードされるとは限らず、そのプロバイダが提供するサービスが、実際に必要なときにのみロードされる「遅延」プロバイダです。/
s/^In this overview you will learn how to write your own service providers and register them with your Laravel application\.$/この概論ではサービスプロバイダの書き方と、Laravelアプリケーションに登録する方法を学びます。/
s/^## Writing Service Providers$/## サービスプロバイダの記述/
s/^All service providers extend the `Illuminate\\Support\\ServiceProvider` class\. Most service providers contain a `register` and a `boot` method\. Within the `register` method, you should \*\*only bind things into the \[service container\](\/docs\/{{version}}\/container)\*\*\. You should never attempt to register any event listeners, routes, or any other piece of functionality within the `register` method\.$/全てのサービスプロバイダは、`Illuminate\\Support\\ServiceProvider`クラスを拡張します。ほとんどのサービスプロバイダは、`register`と`boot`メソッドを持っています。`register`メソッドの中では**[サービスコンテナ](\/docs\/{{version}}\/container)への登録だけ**を行わなくてはなりません。他のイベントリスナやルート、その他の機能の一部でも、`register`メソッドの中で登録しようとしてはいけません。/
s/^The Artisan CLI can generate a new provider via the `make:provider` command:$/`make:provider` Artisanコマンドラインにより、新しいプロバイダが生成できます。/
s/^### The Register Method$/### Registerメソッド/
s/^As mentioned previously, within the `register` method, you should only bind things into the \[service container\](\/docs\/{{version}}\/container)\. You should never attempt to register any event listeners, routes, or any other piece of functionality within the `register` method\. Otherwise, you may accidentally use a service that is provided by a service provider which has not loaded yet\.$/既に説明した通り、`register`メソッドの中では[サービスコンテナ](\/docs\/{{version}}\/container)に何かを結合することだけを行わなければなりません。イベントリスナやルート、その他のどんな機能も`register`メソッドの中では決して行ってはいけません。これを守らないと、サービスプロバイダがまだロードしていないサービスを意図せず使ってしまう羽目になるでしょう。/
s/^Let's take a look at a basic service provider\. Within any of your service provider methods, you always have access to the `$app` property which provides access to the service container:$/では、基本的なサービスプロバイダを見てみましょう。サービスプロバイダメソッド中であれば、いつでも`$app`プロパティを利用でき、サービスコンテナへアクセスできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナへの結合登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^This service provider only defines a `register` method, and uses that method to define an implementation of `Riak\\Connection` in the service container\. If you don't understand how the service container works, check out \[its documentation\](\/docs\/{{version}}\/container)\.$/このサービスプロバイダでは`register`メソッドだけが定義されています。そして、サービスコンテナに`Riak\\Connection`の実装を定義しています。サービスコンテナがどのように動作するのかまだ理解できていなければ、ドキュメントで調べてください。/
s/^#### The `bindings` And `singletons` Properties$/#### `bindings`と`singletons`プロパティ/
s/^If your service provider registers many simple bindings, you may wish to use the `bindings` and `singletons` properties instead of manually registering each container binding\. When the service provider is loaded by the framework, it will automatically check for these properties and register their bindings:$/サービスプロバイダでシンプルな結合をたくさん登録しているのであれば、各コンテナ結合を自力で登録する代わりに、`bindings` と`singletons`プロパティを使いたくなるでしょう。フレームワークにより、サービスプロバイダがロードされる時点で、これらのプロパティがチェックされ、結合を登録します。/
s/^        \/\*\*$/        \/**/
s/^         \* All of the container bindings that should be registered\.$/         * 登録する必要のある全コンテナ結合/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        public $bindings = \[$/        public $bindings = [/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* All of the container singletons that should be registered\.$/         * 登録する必要のある全コンテナシングルトン/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        public $singletons = \[$/        public $singletons = [/
s/^        \];$/        ];/
s/^### The Boot Method$/### Bootメソッド/
s/^So, what if we need to register a \[view composer\](\/docs\/{{version}}\/views#view-composers) within our service provider? This should be done within the `boot` method\. \*\*This method is called after all other service providers have been registered\*\*, meaning you have access to all other services that have been registered by the framework:$/では、[ビューコンポーサ](\/docs\/{{version}}\/views#view-composers)をサービスプロバイダで登録する必要がある場合は、どうすればよいのでしょうか？　`boot`メソッドの中で行ってください。**このメソッドは、他の全サービスプロバイダが登録し終えてから呼び出されます**。つまりフレームワークにより登録された、他のサービス全てにアクセスできるのです。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * 全アプリケーションサービスの初期起動処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^#### Boot Method Dependency Injection$/#### bootメソッドの依存注入/
s/^You may type-hint dependencies for your service provider's `boot` method\. The \[service container\](\/docs\/{{version}}\/container) will automatically inject any dependencies you need:$/サービスプロバイダの`boot`メソッドでは、依存をタイプヒントで指定できます。[サービスコンテナ](\/docs\/{{version}}\/container)が、必要な依存を自動的に注入します。/
s/^## Registering Providers$/## プロバイダの登録/
s/^All service providers are registered in the `config\/app\.php` configuration file\. This file contains a `providers` array where you can list the class names of your service providers\. By default, a set of Laravel core service providers are listed in this array\. These providers bootstrap the core Laravel components, such as the mailer, queue, cache, and others\.$/全てのサービスプロバイダは、`config\/app.php`設定ファイルで登録されています。このファイルには、サービスプロバイダの名前をリストしてある`providers`配列が含まれています。この配列にはデフォルトとして、メール送信、キュー、キャッシュなどのLaravelコアのサービスプロバイダが登録されています。/
s/^To register your provider, add it to the array:$/プロバイダを登録するには、この配列に追加します。/
s/^    'providers' => \[$/    'providers' => [/
s/^    \],$/    ],/
s/^## Deferred Providers$/## 遅延プロバイダ/
s/^If your provider is \*\*only\*\* registering bindings in the \[service container\](\/docs\/{{version}}\/container), you may choose to defer its registration until one of the registered bindings is actually needed\. Deferring the loading of such a provider will improve the performance of your application, since it is not loaded from the filesystem on every request\.$/もし皆さんのプロバイダが、[サービスコンテナ](\/docs\/{{version}}\/container)へコンテナ結合を登録する**だけ**であるなら、その結合が実際に必要になるまで登録を遅らせる方が良いでしょう。こうしたプロバイダのローディングを遅らせるのは、リクエストがあるたびにファイルシステムからロードされなくなるため、アプリケーションのパフォーマンスを向上させます。/
s/^Laravel compiles and stores a list of all of the services supplied by deferred service providers, along with the name of its service provider class\. Then, only when you attempt to resolve one of these services does Laravel load the service provider\.$/Laravelは遅延サービスプロバイダが提示した全サービスのリストをコンパイルし、サービスプロバイダのクラス名と共に保存します。その後、登録されているサービスのどれか一つを依存解決する必要が起きた時のみ、Laravelはそのサービスプロバイダをロードします。/
s/^To defer the loading of a provider, set the `defer` property to `true` and define a `provides` method\. The `provides` method should return the service container bindings registered by the provider:$/プロバイダを遅延ロードするには、`defer`プロパティに`true`をセットし、`provides`メソッドを定義します。`provides`メソッドはそのプロバイダで登録するサービスコンテナ結合名を返します。/
s/^        \/\*\*$/        \/**/
s/^         \* Indicates if loading of the provider is deferred\.$/         * プロバイダのローディングを遅延させるフラグ/
s/^         \*$/         */
s/^         \* @var bool$/         * @var bool/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^                return new Connection($app\['config'\]\['riak'\]);$/                return new Connection($app['config']['riak']);/
s/^        \/\*\*$/        \/**/
s/^         \* Get the services provided by the provider\.$/         * このプロバイダにより提供されるサービス/
s/^         \*$/         */
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[Connection::class\];$/            return [Connection::class];/
