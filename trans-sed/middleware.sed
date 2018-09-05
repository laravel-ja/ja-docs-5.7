s/^# Middleware$/# ミドルウェア/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Defining Middleware\](#defining-middleware)$/- [ミドルウェア定義](#defining-middleware)/
s/^- \[Registering Middleware\](#registering-middleware)$/- [ミドルウェア登録](#registering-middleware)/
s/^    - \[Global Middleware\](#global-middleware)$/    - [グローバルミドルウェア](#global-middleware)/
s/^    - \[Assigning Middleware To Routes\](#assigning-middleware-to-routes)$/    - [ルートへの結合](#assigning-middleware-to-routes)/
s/^    - \[Middleware Groups\](#middleware-groups)$/    - [ミドルウェアグループ](#middleware-groups)/
s/^- \[Middleware Parameters\](#middleware-parameters)$/- [ミドルウェアパラメーター](#middleware-parameters)/
s/^- \[Terminable Middleware\](#terminable-middleware)$/- [終了処理ミドルウェア](#terminable-middleware)/
s/^## Introduction$/## イントロダクション/
s/^Middleware provide a convenient mechanism for filtering HTTP requests entering your application\. For example, Laravel includes a middleware that verifies the user of your application is authenticated\. If the user is not authenticated, the middleware will redirect the user to the login screen\. However, if the user is authenticated, the middleware will allow the request to proceed further into the application\.$/ミドルウェアはアプリケーションへ送信されたHTTPリクエストをフィルタリングする、便利なメカニズムを提供します。たとえば、アプリケーションのユーザーが認証されているかを確認するミドルウェアがLaravelに用意されています。ユーザーが認証されていなければ、このミドルウェアはユーザーをログインページへリダイレクトします。反対にそのユーザーが認証済みであれば、そのリクエストがアプリケーションのその先へ進むことを許可します。/
s/^Of course, additional middleware can be written to perform a variety of tasks besides authentication\. A CORS middleware might be responsible for adding the proper headers to all responses leaving your application\. A logging middleware might log all incoming requests to your application\.$/もちろん認証の他にも多彩なタスクを実行するミドルウェアを書くことができます。たとえばCORSミドルウェアは、アプリケーションから返されるレスポンス全部に正しいヘッダを追加することに責任を持つでしょう。ログミドルウェアはアプリケーションにやってきたリクエスト全部をログすることに責任を負うでしょう。/
s/^There are several middleware included in the Laravel framework, including middleware for authentication and CSRF protection\. All of these middleware are located in the `app\/Http\/Middleware` directory\.$/認証やCSRF保護などLaravelには多くのミドルウェアが用意されています。これらのミドルウェアは全部、`app\/Http\/Middleware`ディレクトリに設置されています。/
s/^## Defining Middleware$/## ミドルウェア定義/
s/^To create a new middleware, use the `make:middleware` Artisan command:$/新しいミドルウェアを作成するには、`make:middleware` Artisanコマンドを使います。/
s/^This command will place a new `CheckAge` class within your `app\/Http\/Middleware` directory\. In this middleware, we will only allow access to the route if the supplied `age` is greater than 200\. Otherwise, we will redirect the users back to the `home` URI:$/このコマンドにより、`CheckAge`クラスが、`app\/Http\/Middleware`ディレクトリ中に生成されます。このミドルウェアで、ageに２００歳以上が指定された場合のみ、アクセスを許してみましょう。そうでなければ、ユーザーを`home`のURIへリダイレクトします。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle an incoming request\.$/         * 送信されてきたリクエストの処理/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request  $request$/         * @param  \\Illuminate\\Http\\Request  $request/
s/^         \* @param  \\Closure  $next$/         * @param  \\Closure  $next/
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^As you can see, if the given `age` is less than or equal to `200`, the middleware will return an HTTP redirect to the client; otherwise, the request will be passed further into the application\. To pass the request deeper into the application (allowing the middleware to "pass"), call the `$next` callback with the `$request`\.$/ご覧の通り、`age`が`200`以下の場合、ミドルウェアはHTTPリダイレクトをクライアントへ返します。そうでなければ、リクエストはパスし、アプリケーションの先へ進めます。ミドルウェアのチェックに合格し、アプリケーションの先へリクエストを通すには、`$request`を渡し`$next`コールバックを呼び出します。/
s/^It's best to envision middleware as a series of "layers" HTTP requests must pass through before they hit your application\. Each layer can examine the request and even reject it entirely\.$/ミドルウェアを把握する一番良い方法は、HTTPリクエストがアプリケーションに届くまでに通過する、数々の「レイヤー（層）」なのだと考えることです。それぞれのレイヤーは、リクエストを通過させるかどうかテストし、場合により完全に破棄することさえできます。/
s/^> {tip} All middleware are resolved via the \[service container\](\/docs\/{{version}}\/container), so you may type-hint any dependencies you need within a middleware's constructor\.$/> {tip} 全てのミドルウェアは、[サービスコンテナ](\/docs\/{{version}}\/container)により、依存解決されます。そのため、ミドルウェアのコンストラクタに、必要な依存をタイプヒントで指定できます。/
s/^### Before & After Middleware$/### Before／Afterミドルウェア/
s/^Whether a middleware runs before or after a request depends on the middleware itself\. For example, the following middleware would perform some task \*\*before\*\* the request is handled by the application:$/ミドルウェアがリクエストの前、後に実行されるかは、そのミドルウェアの組み方により決まります。次のミドルウェアはアプリケーションによりリクエストが処理される**前**に実行されます。/
s/^            \/\/ Perform action$/            \/\/ アクションを実行…/
s/^However, this middleware would perform its task \*\*after\*\* the request is handled by the application:$/一方、次のミドルウェアはアプリケーションによりリクエストが処理された**後**にタスクを実行します。/
s/^            \/\/ Perform action$/            \/\/ アクションを実行…/
s/^## Registering Middleware$/## ミドルウェア登録/
s/^### Global Middleware$/### グローバルミドルウェア/
s/^If you want a middleware to run during every HTTP request to your application, list the middleware class in the `$middleware` property of your `app\/Http\/Kernel\.php` class\.$/あるミドルウェアをアプリケーションの全HTTPリクエストで実行したい場合は、`app\/Http\/Kernel.php`クラスの`$middleware`プロパティへ追加してください。/
s/^### Assigning Middleware To Routes$/### ミドルウェアをルートへ登録/
s/^If you would like to assign middleware to specific routes, you should first assign the middleware a key in your `app\/Http\/Kernel\.php` file\. By default, the `$routeMiddleware` property of this class contains entries for the middleware included with Laravel\. To add your own, append it to this list and assign it a key of your choosing\. For example:$/特定のルートのみに対しミドルウェアを指定したい場合は、先ず`app\/Http\/Kernel.php`ファイルでミドルウェアの短縮キーを登録します。デフォルト状態でこのクラスは、Laravelに含まれているミドルウェアのエントリーを`$routeMiddleware`プロパティに持っています。ミドルウェアを追加する方法は、選んだキー名と一緒にリストへ付け加えます。/
s/^    \/\/ Within App\\Http\\Kernel Class\.\.\.$/    \/\/ App\\Http\\Kernelクラスの中/
s/^    protected $routeMiddleware = \[$/    protected $routeMiddleware = [/
s/^        'auth\.basic' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,$/        'auth.basic' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,/
s/^    \];$/    ];/
s/^Once the middleware has been defined in the HTTP kernel, you may use the `middleware` method to assign middleware to a route:$/HTTPカーネルへミドルウェアを定義し終えたら、ルートに対しミドルウェアを指定する、`middleware`メソッドを使ってください。/
s/^You may also assign multiple middleware to the route:$/ルートに複数のミドルウェアを定義することもできます。/
s/^When assigning middleware, you may also pass the fully qualified class name:$/ミドルウェアを指定する時に、完全なクラス名を指定することもできます。/
s/^### Middleware Groups$/### ミドルウェアグループ/
s/^Sometimes you may want to group several middleware under a single key to make them easier to assign to routes\. You may do this using the `$middlewareGroups` property of your HTTP kernel\.$/多くのミドルウェアを一つのキーによりまとめ、ルートへ簡単に指定できるようにしたくなることもあります。HTTPカーネルの`$middlewareGroups`プロパティにより可能です。/
s/^Out of the box, Laravel comes with `web` and `api` middleware groups that contain common middleware you may want to apply to your web UI and API routes:$/WebのUIとAPIルートへ適用できる、一般的なミドルウェアを含んだ、`web`と`api`ミドルウェアグループをLaravelは最初から用意しています。/
s/^    \/\*\*$/    \/**/
s/^     \* The application's route middleware groups\.$/     * アプリケーションのミドルウェアグループ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $middlewareGroups = \[$/    protected $middlewareGroups = [/
s/^        'web' => \[$/        'web' => [/
s/^        \],$/        ],/
s/^        'api' => \[$/        'api' => [/
s/^        \],$/        ],/
s/^    \];$/    ];/
s/^Middleware groups may be assigned to routes and controller actions using the same syntax as individual middleware\. Again, middleware groups make it more convenient to assign many middleware to a route at once:$/ミドルウェアグループは、個別のミドルウェアと同じ記法を使い、ルートやコントローラへ結合します。再度説明しますと、ミドルウェアグループは一度に多くのミドルウエアを簡単に、より便利に割り付けるための方法です。/
s/^    Route::group(\['middleware' => \['web'\]\], function () {$/    Route::group(['middleware' => ['web']], function () {/
s/^> {tip} Out of the box, the `web` middleware group is automatically applied to your `routes\/web\.php` file by the `RouteServiceProvider`\.$/> {tip} `RouteServiceProvider`により、`routes\/web.php`ファイルでは、`web`ミドルウェアグループが自動的に適用されます。/
s/^## Middleware Parameters$/## ミドルウェアパラメータ/
s/^Middleware can also receive additional parameters\. For example, if your application needs to verify that the authenticated user has a given "role" before performing a given action, you could create a `CheckRole` middleware that receives a role name as an additional argument\.$/ミドルウェアは追加のカスタムパラメーターを受け取ることができます。たとえば指定されたアクションを実行する前に、与えられた「役割(role)」を持った認証ユーザーであるかをアプリケーションで確認する必要がある場合、役割名を追加の引数として受け取る`CheckRole`を作成することができます。/
s/^Additional middleware parameters will be passed to the middleware after the `$next` argument:$/追加のミドルウェアパラメーターは、ミドルウェアの`$next`引数の後に渡されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle the incoming request\.$/         * リクエストフィルターを実行/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request  $request$/         * @param  \\Illuminate\\Http\\Request  $request/
s/^         \* @param  \\Closure  $next$/         * @param  \\Closure  $next/
s/^         \* @param  string  $role$/         * @param  string  $role/
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^                \/\/ Redirect\.\.\.$/                \/\/ リダイレクト処理…/
s/^Middleware parameters may be specified when defining the route by separating the middleware name and parameters with a `:`\. Multiple parameters should be delimited by commas:$/ミドルウェアパラメーターはルート定義時に指定され、ミドルウェア名とパラメーターを`:`で区切ります。複数のパラメーターはカンマで区切ります。/
s/^## Terminable Middleware$/## 終了処理ミドルウェア/
s/^Sometimes a middleware may need to do some work after the HTTP response has been prepared\. For example, the "session" middleware included with Laravel writes the session data to storage after the response has been fully prepared\. If you define a `terminate` method on your middleware, it will automatically be called after the response is ready to be sent to the browser\.$/ミドルウェアは場合により、HTTPレスポンスが準備できた後に、何か作業する必要が起きます。たとえば、"session"ミドルウェアには、レスポンスの準備が完了したあとで、ストレージにセッションデータを書き込む処理が含まれています。ミドルウェアに`terminate`メソッドを定義すると、レスポンスがブラウザへ送られる準備ができた後に自動的に呼び出されます。/
s/^            \/\/ Store the session data\.\.\.$/            \/\/ セッションデーターの保存…/
s/^The `terminate` method should receive both the request and the response\. Once you have defined a terminable middleware, you should add it to the list of route or global middleware in the `app\/Http\/Kernel\.php` file\.$/`terminate`メソッドはリクエストとレスポンスの両方を受け取ります。終了処理可能なミドルウェアを定義したら、`app\/Http\/Kernel.php`ファイルでルートのリスト、もしくはグローバルミドルウェアのリストへ追加してください。/
s/^When calling the `terminate` method on your middleware, Laravel will resolve a fresh instance of the middleware from the \[service container\](\/docs\/{{version}}\/container)\. If you would like to use the same middleware instance when the `handle` and `terminate` methods are called, register the middleware with the container using the container's `singleton` method\.$/ミドルウェアの`terminate`メソッド呼び出し時に、Laravelは[サービスコンテナ](\/docs\/{{version}}\/container)から真新しいミドルウェアのインスタンスを依存解決します。`handle`と`terminate`メソッドの呼び出しで同一のミドルウェアインスタンスを使用したい場合は、コンテナの`singleton`メソッドを使用し、ミドルウェアを登録してください。/
