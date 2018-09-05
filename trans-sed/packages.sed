s/^# Package Development$/# パッケージ開発/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[A Note On Facades\](#a-note-on-facades)$/    - [ファサード使用の注意](#a-note-on-facades)/
s/^- \[Package Discovery\](#package-discovery)$/- [パッケージディスカバリー](#package-discovery)/
s/^- \[Service Providers\](#service-providers)$/- [サービスプロバイダ](#service-providers)/
s/^- \[Resources\](#resources)$/- [リソース](#resources)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Migrations\](#migrations)$/    - [マイグレーション](#migrations)/
s/^    - \[Routes\](#routes)$/    - [ルート](#routes)/
s/^    - \[Translations\](#translations)$/    - [翻訳](#translations)/
s/^    - \[Views\](#views)$/    - [ビュー](#views)/
s/^- \[Commands\](#commands)$/- [コマンド](#commands)/
s/^- \[Public Assets\](#public-assets)$/- [公開アセット](#public-assets)/
s/^- \[Publishing File Groups\](#publishing-file-groups)$/- [ファイルグループの公開](#publishing-file-groups)/
s/^## Introduction$/## イントロダクション/
s/^Packages are the primary way of adding functionality to Laravel\. Packages might be anything from a great way to work with dates like \[Carbon\](https:\/\/github\.com\/briannesbitt\/Carbon), or an entire BDD testing framework like \[Behat\](https:\/\/github\.com\/Behat\/Behat)\.$/パッケージはLaravelに機能を追加する一番重要な方法です。パッケージとして何でも動作させることができます。たとえば日付ライブラリーである[Carbon](https:\/\/github.com\/briannesbitt\/Carbon)や、振る舞い駆動開発(BDD)テストフレームワークの[Behat](https:\/\/github.com\/Behat\/Behat)などです。/
s/^Of course, there are different types of packages\. Some packages are stand-alone, meaning they work with any PHP framework\. Carbon and Behat are examples of stand-alone packages\. Any of these packages may be used with Laravel by requesting them in your `composer\.json` file\.$/もちろんパッケージには、色々な種類が存在しています。スタンドアローンで動作するパッケージがあります。つまり、どんなPHPフレームワークでも動作します。CarbonもBehatもスタンドアローンパッケージの例です。Laravelと一緒に使用するには`composer.json`ファイルで使用を指定します。/
s/^On the other hand, other packages are specifically intended for use with Laravel\. These packages may have routes, controllers, views, and configuration specifically intended to enhance a Laravel application\. This guide primarily covers the development of those packages that are Laravel specific\.$/逆にLaravelと一緒に使用することを意図したパッケージもあります。こうしたパッケージはLaravelアプリケーションを高めることを特に意図したルート、コントローラ、ビュー、設定を持つことでしょう。このガイドはLaravelに特化したパッケージの開発を主に説明します。/
s/^### A Note On Facades$/### ファサード使用の注意/
s/^When writing a Laravel application, it generally does not matter if you use contracts or facades since both provide essentially equal levels of testability\. However, when writing packages, your package will not typically have access to all of Laravel's testing helpers\. If you would like to be able to write your package tests as if they existed inside a typical Laravel application, you may use the \[Orchestral Testbench\](https:\/\/github\.com\/orchestral\/testbench) package\.$/Laravelアプリケーションをプログラムする場合は、契約とファサードのどちらを使用しても、一般的には問題ありません。両方共に基本的に同じレベルのテスタビリティがあるからです。しかし、パッケージを書く場合は、通常すべてのLaravelテストヘルパにアクセスできません。Laravelアプリケーション内で行うように、パッケージでテストを書けるようにするには、[Orchestral Testbench](https:\/\/github.com\/orchestral\/testbench)パッケージを使用してください。/
s/^## Package Discovery$/## パッケージディスカバリー/
s/^In a Laravel application's `config\/app\.php` configuration file, the `providers` option defines a list of service providers that should be loaded by Laravel\. When someone installs your package, you will typically want your service provider to be included in this list\. Instead of requiring users to manually add your service provider to the list, you may define the provider in the `extra` section of your package's `composer\.json` file\. In addition to service providers, you may also list any \[facades\](\/docs\/{{version}}\/facades) you would like to be registered:$/Laravelアプリケーションの`config\/app.php`設定ファイルには、Laravelがロードすべきサービスプロバイダのリストが、`providers`オプションで定義されています。誰かが皆さんのパッケージをインストールしたら、皆さんのサービスプロバイダをこのリストに含めてもらいたいと思うことでしょう。このリストへユーザー自身がサービスプロバイダを追加することを要求する代わりに、皆さんのパッケージの`composer.json`ファイルの`extra`セクションで、プロバイダを定義してください。登録してもらいたい[ファサード](\/docs\/{{version}}\/facades)もリストできます。/
s/^            "providers": \[$/            "providers": [/
s/^            \],$/            ],/
s/^Once your package has been configured for discovery, Laravel will automatically register its service providers and facades when it is installed, creating a convenient installation experience for your package's users\.$/ディスカバリー用にパッケージを設定したら、Laravelはサービスプロバイダとファサードをインストール時に自動的に登録します。皆さんのパッケージユーザーに、便利なインストール体験をもたらします。/
s/^### Opting Out Of Package Discovery$/### パッケージディスカバリーの不使用/
s/^If you are the consumer of a package and would like to disable package discovery for a package, you may list the package name in the `extra` section of your application's `composer\.json` file:$/パッケージを利用する場合に、パッケージディスカバリーを使用したくない場合は、アプリケーションの`composer.json`ファイルの`extra`セクションに、使用しないパッケージをリストしてください。/
s/^            "dont-discover": \[$/            "dont-discover": [/
s/^            \]$/            ]/
s/^You may disable package discovery for all packages using the `\*` character inside of your application's `dont-discover` directive:$/全パッケージに対してディスカバリーを使用しない場合は、アプリケーションの`dont-discover`ディレクティブに、`*`文字を指定してください。/
s/^            "dont-discover": \[$/            "dont-discover": [/
s/^                "\*"$/                "*"/
s/^            \]$/            ]/
s/^## Service Providers$/## サービスプロバイダ/
s/^\[Service providers\](\/docs\/{{version}}\/providers) are the connection points between your package and Laravel\. A service provider is responsible for binding things into Laravel's \[service container\](\/docs\/{{version}}\/container) and informing Laravel where to load package resources such as views, configuration, and localization files\.$/[サービスプロバイダ](\/docs\/{{version}}\/providers)はパッケージとLaravelを結びつけるところです。サービスプロバイダは何かをLaravelの[サービスコンテナ](\/docs\/{{version}}\/container)と結合し、ビューや設定、言語ファイルのようなリソースをどこからロードするかをLaravelに知らせる責務を持っています。/
s/^A service provider extends the `Illuminate\\Support\\ServiceProvider` class and contains two methods: `register` and `boot`\. The base `ServiceProvider` class is located in the `illuminate\/support` Composer package, which you should add to your own package's dependencies\. To learn more about the structure and purpose of service providers, check out \[their documentation\](\/docs\/{{version}}\/providers)\.$/サービスプロバイダは`Illuminate\\Support\\ServiceProvider`クラスを拡張し、`register`と`boot`の２メソッドを含んでいます。ベースの`ServiceProvider`クラスは、`illuminate\/support` Composerパッケージにあります。 サービスプロバイダの構造と目的について詳細を知りたければ、[ドキュメント](\/docs\/{{version}}\/providers)を調べてください。/
s/^## Resources$/## リソース/
s/^### Configuration$/### 設定/
s/^Typically, you will need to publish your package's configuration file to the application's own `config` directory\. This will allow users of your package to easily override your default configuration options\. To allow your configuration files to be published, call the `publishes` method from the `boot` method of your service provider:$/通常、パッケージの設定ファイルをアプリケーション自身の`config`ディレクトリへ公開する必要が起きます。これにより、ユーザーが皆さんのパッケージのデフォルト設定オプションを簡単にオーバーライドできるようになります。設定ファイルを公開するには、サービスプロバイダの`boot`メソッドで、`publishes`メソッドを呼び出してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/path\/to\/config\/courier\.php' => config_path('courier\.php'),$/            __DIR__.'\/path\/to\/config\/courier.php' => config_path('courier.php'),/
s/^        \]);$/        ]);/
s/^Now, when users of your package execute Laravel's `vendor:publish` command, your file will be copied to the specified publish location\. Of course, once your configuration has been published, its values may be accessed like any other configuration file:$/これで、皆さんのパッケージのユーザーが、Laravelの`vendor:publish`コマンドを実行すると、特定の公開場所へファイルがコピーされます。もちろん、設定が公開されても、他の設定ファイルと同様に値にアクセスできます。/
s/^    $value = config('courier\.option');$/    $value = config('courier.option');/
s/^> {note} You should not define Closures in your configuration files\. They can not be serialized correctly when users execute the `config:cache` Artisan command\.$/> {note} 設定ファイル中でクロージャを定義してはいけません。パッケージ使用者が`config:cache` Artisanコマンドを使用している場合に、正しくシリアライズできません。/
s/^#### Default Package Configuration$/#### デフォルトパッケージ設定/
s/^You may also merge your own package configuration file with the application's published copy\. This will allow your users to define only the options they actually want to override in the published copy of the configuration\. To merge the configurations, use the `mergeConfigFrom` method within your service provider's `register` method:$/もしくは、アプリケーションへ公開したコピーと、自身のパッケージの設定ファイルをマージすることもできます。これにより、ユーザーは公開された設定のコピーの中で、実際にオーバーライドしたいオプションのみを定義すればよくなります。設定をマージする場合は、サービスプロバイダの`register`メソッドの中で、`mergeConfigFrom`メソッドを使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* Register bindings in the container\.$/     * コンテナ結合の登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^            __DIR__\.'\/path\/to\/config\/courier\.php', 'courier'$/            __DIR__.'\/path\/to\/config\/courier.php', 'courier'/
s/^> {note} This method only merges the first level of the configuration array\. If your users partially define a multi-dimensional configuration array, the missing options will not be merged\.$/> {note} このメソッドは設定配列の一次レベルのみマージします。パッケージのユーザーが部分的に多次元の設定配列を定義すると、マージされずに欠落するオプションが発生します。/
s/^### Routes$/### ルート/
s/^If your package contains routes, you may load them using the `loadRoutesFrom` method\. This method will automatically determine if the application's routes are cached and will not load your routes file if the routes have already been cached:$/パッケージにルートを含めている場合は、`loadRoutesFrom`メソッドでロードします。このメソッドは自動的にアプリケーションのルートがキャッシュされているかを判定し、すでにキャッシュ済みの場合はロードしません。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadRoutesFrom(__DIR__\.'\/routes\.php');$/        $this->loadRoutesFrom(__DIR__.'\/routes.php');/
s/^### Migrations$/### マイグレーション/
s/^If your package contains \[database migrations\](\/docs\/{{version}}\/migrations), you may use the `loadMigrationsFrom` method to inform Laravel how to load them\. The `loadMigrationsFrom` method accepts the path to your package's migrations as its only argument:$/もしパッケージが[データベースマイグレーション](\/docs\/{{version}}\/migrations)を含んでいる場合、`loadMigrationsFrom`メソッドを使用し、Laravelへどのようにロードするのかを知らせます。`loadMigrationsFrom`メソッドは引数を一つ取り、パッケージのマイグレーションのパスです。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadMigrationsFrom(__DIR__\.'\/path\/to\/migrations');$/        $this->loadMigrationsFrom(__DIR__.'\/path\/to\/migrations');/
s/^Once your package's migrations have been registered, they will automatically be run when the `php artisan migrate` command is executed\. You do not need to export them to the application's main `database\/migrations` directory\.$/パッケージのマイグレーションが登録されると、`php artisan migrate`コマンド実行時に、自動的にパッケージのマイグレーションも行われます。アプリケーションの`database\/migrations`ディレクトリへ公開する必要はありません。/
s/^### Translations$/### 言語ファイル/
s/^If your package contains \[translation files\](\/docs\/{{version}}\/localization), you may use the `loadTranslationsFrom` method to inform Laravel how to load them\. For example, if your package is named `courier`, you should add the following to your service provider's `boot` method:$/パッケージが[言語ファイル](\/docs\/{{version}}\/localization)を含む場合、`loadTranslationsFrom`メソッドを使用し、Laravelへどのようにロードするのかを伝えてください。たとえば、パッケージの名前が`courier`の場合、以下のコードをサービスプロバイダの`boot`メソッドに追加します。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadTranslationsFrom(__DIR__\.'\/path\/to\/translations', 'courier');$/        $this->loadTranslationsFrom(__DIR__.'\/path\/to\/translations', 'courier');/
s/^Package translations are referenced using the `package::file\.line` syntax convention\. So, you may load the `courier` package's `welcome` line from the `messages` file like so:$/パッケージの翻訳は、`package::file.line`規約を使い参照します。ですから、`courier`パッケージの`messages`ファイル中の、`welcome`行をロードするには、次のようになります。/
s/^    echo trans('courier::messages\.welcome');$/    echo trans('courier::messages.welcome');/
s/^#### Publishing Translations$/#### 翻訳の公開/
s/^If you would like to publish your package's translations to the application's `resources\/lang\/vendor` directory, you may use the service provider's `publishes` method\. The `publishes` method accepts an array of package paths and their desired publish locations\. For example, to publish the translation files for the `courier` package, you may do the following:$/パッケージの翻訳をアプリケーションの`resources\/lang\/vendor`ディレクトリへ公開したい場合は、サービスプロバイダの`publishes`メソッドを使用します。`publishes`メソッドはパッケージパスと公開したい場所の配列を引数に取ります。たとえば、`courier`パッケージの言語ファイルを公開する場合は、次のようになります。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadTranslationsFrom(__DIR__\.'\/path\/to\/translations', 'courier');$/        $this->loadTranslationsFrom(__DIR__.'\/path\/to\/translations', 'courier');/
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/path\/to\/translations' => resource_path('lang\/vendor\/courier'),$/            __DIR__.'\/path\/to\/translations' => resource_path('lang\/vendor\/courier'),/
s/^        \]);$/        ]);/
s/^Now, when users of your package execute Laravel's `vendor:publish` Artisan command, your package's translations will be published to the specified publish location\.$/これで、皆さんのパッケージのユーザーが、Laravelの`vendor:publish` Artisanコマンドを実行すると、パッケージの翻訳は指定された公開場所で公開されます。/
s/^### Views$/### ビュー/
s/^To register your package's \[views\](\/docs\/{{version}}\/views) with Laravel, you need to tell Laravel where the views are located\. You may do this using the service provider's `loadViewsFrom` method\. The `loadViewsFrom` method accepts two arguments: the path to your view templates and your package's name\. For example, if your package's name is `courier`, you would add the following to your service provider's `boot` method:$/パッケージの[ビュー](\/docs\/{{version}}\/views)をLaravelへ登録するには、ビューがどこにあるのかをLaravelに知らせる必要があります。そのために、サービスプロバイダの`loadViewsFrom`メソッドを使用してください。`loadViewsFrom`メソッドは２つの引数を取ります。ビューテンプレートへのパスと、パッケージの名前です。たとえば、パッケージ名が`courier`であれば、以下の行をサービスプロバイダの`boot`メソッドに追加してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadViewsFrom(__DIR__\.'\/path\/to\/views', 'courier');$/        $this->loadViewsFrom(__DIR__.'\/path\/to\/views', 'courier');/
s/^Package views are referenced using the `package::view` syntax convention\. So, once your view path is registered in a service provider, you may load the `admin` view from the `courier` package like so:$/パッケージのビューは、`package::view`記法を使い参照します。そのため、ビューのパスを登録し終えたあとで、`courier`パッケージの`admin`ビューをロードする場合は、次のようになります。/
s/^#### Overriding Package Views$/#### パッケージビューのオーバーライド/
s/^When you use the `loadViewsFrom` method, Laravel actually registers two locations for your views: the application's `resources\/views\/vendor` directory and the directory you specify\. So, using the `courier` example, Laravel will first check if a custom version of the view has been provided by the developer in `resources\/views\/vendor\/courier`\. Then, if the view has not been customized, Laravel will search the package view directory you specified in your call to `loadViewsFrom`\. This makes it easy for package users to customize \/ override your package's views\.$/`loadViewsFrom`メソッドを使用する場合、Laravelはビューの２つの場所を実際には登録します。一つはアプリケーションの`resources\/views\/vendor`ディレクトリで、もう一つは皆さんが指定したディレクトリです。では、`courier`の例を使って確認しましょう。Laravelは最初に`resources\/views\/vendor\/courier`の中に、カスタムバージョンのビューが開発者により用意されていないかチェックします。カスタムビューが用意されていなければ、次に`loadViewsFrom`の呼び出しで指定した、パッケージビューディレクトリを探します。この仕組みのおかげで、パッケージのビューがエンドユーザーにより簡単にカスタマイズ／オーバーライドできるようになっています。/
s/^#### Publishing Views$/#### ビューの公開/
s/^If you would like to make your views available for publishing to the application's `resources\/views\/vendor` directory, you may use the service provider's `publishes` method\. The `publishes` method accepts an array of package view paths and their desired publish locations:$/パッケージのビューを`resources\/views\/vendor`ディレクトリで公開したい場合は、サービスプロバイダの`publishes`メソッドを使ってください。`publishes`メソッドはパッケージのビューパスと、公開場所の配列を引数に取ります。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->loadViewsFrom(__DIR__\.'\/path\/to\/views', 'courier');$/        $this->loadViewsFrom(__DIR__.'\/path\/to\/views', 'courier');/
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/path\/to\/views' => resource_path('views\/vendor\/courier'),$/            __DIR__.'\/path\/to\/views' => resource_path('views\/vendor\/courier'),/
s/^        \]);$/        ]);/
s/^Now, when users of your package execute Laravel's `vendor:publish` Artisan command, your package's views will be copied to the specified publish location\.$/これで皆さんのパッケージのユーザーが、Laravelの`vendor::publish` Artisanコマンドを実行すると、パッケージのビューは指定された公開場所へコピーされます。/
s/^## Commands$/## コマンド/
s/^To register your package's Artisan commands with Laravel, you may use the `commands` method\. This method expects an array of command class names\. Once the commands have been registered, you may execute them using the \[Artisan CLI\](\/docs\/{{version}}\/artisan):$/パッケージのArtisanコマンドをLaravelへ登録するには、`commands`メソッドを使います。このメソッドは、コマンドクラス名の配列を引数に取ります。コマンドを登録したら、[Artisan CLI](\/docs\/{{version}}\/artisan)を使い、実行できます。/
s/^    \/\*\*$/    \/**/
s/^     \* Bootstrap the application services\.$/     * アプリケーションサービスの初期処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^            $this->commands(\[$/            $this->commands([/
s/^            \]);$/            ]);/
s/^## Public Assets$/## 公開アセット/
s/^Your package may have assets such as JavaScript, CSS, and images\. To publish these assets to the application's `public` directory, use the service provider's `publishes` method\. In this example, we will also add a `public` asset group tag, which may be used to publish groups of related assets:$/パッケージにはJavaScriptやCSS、画像などのアセットを含むと思います。こうしたアセットを`public`ディレクトリへ公開するには、サービスプロバイダの`publishes`メソッドを使用してください。次の例では、関連するアセットをまとめて公開するために`public`アセットグループタグも追加指定しています。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/path\/to\/assets' => public_path('vendor\/courier'),$/            __DIR__.'\/path\/to\/assets' => public_path('vendor\/courier'),/
s/^        \], 'public');$/        ], 'public');/
s/^Now, when your package's users execute the `vendor:publish` command, your assets will be copied to the specified publish location\. Since you will typically need to overwrite the assets every time the package is updated, you may use the `--force` flag:$/これで、皆さんのパッケージのユーザーが、`vendor:publish`コマンドを実行した時に、アセットは指定した公開場所へコピーされます。通常、パッケージが更新されるごとに、アセットをオーバーライトする必要がありますので、`--force`フラグと一緒に使用します。/
s/^## Publishing File Groups$/## ファイルグループの公開/
s/^You may want to publish groups of package assets and resources separately\. For instance, you might want to allow your users to publish your package's configuration files without being forced to publish your package's assets\. You may do this by "tagging" them when calling the `publishes` method from a package's service provider\. For example, let's use tags to define two publish groups in the `boot` method of a package service provider:$/アセットとリソースのパッケージグループを別々に公開したいこともあるでしょう。たとえば、パッケージのアセットの公開を強要せずに、設定ファイルを公開したい場合です。パッケージのサービスプロバイダで呼び出す、`publishes`メソッド実行時の「タグ指定」で行えます。例として、パッケージのサービスプロバイダの`boot`メソッドで、２つの公開グループを定義してみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービス初期処理登録後の処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/\.\.\/config\/package\.php' => config_path('package\.php')$/            __DIR__.'\/..\/config\/package.php' => config_path('package.php')/
s/^        \], 'config');$/        ], 'config');/
s/^        $this->publishes(\[$/        $this->publishes([/
s/^            __DIR__\.'\/\.\.\/database\/migrations\/' => database_path('migrations')$/            __DIR__.'\/..\/database\/migrations\/' => database_path('migrations')/
s/^        \], 'migrations');$/        ], 'migrations');/
s/^Now your users may publish these groups separately by referencing their tag when executing the `vendor:publish` command:$/これでユーザーは、`vendor::publish` Artisanコマンドを使用するときにタグ名を指定することで、グループを別々に公開できます。/
