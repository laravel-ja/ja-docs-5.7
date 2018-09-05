s/^# Error Handling$/# エラー処理/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^- \[The Exception Handler\](#the-exception-handler)$/- [例外ハンドラ](#the-exception-handler)/
s/^    - \[Report Method\](#report-method)$/    - [Reportメソッド](#report-method)/
s/^    - \[Render Method\](#render-method)$/    - [Renderメソッド](#render-method)/
s/^    - \[Reportable & Renderable Exceptions\](#renderable-exceptions)$/    - [Reportable／Renderable例外](#renderable-exceptions)/
s/^- \[HTTP Exceptions\](#http-exceptions)$/- [HTTP例外](#http-exceptions)/
s/^    - \[Custom HTTP Error Pages\](#custom-http-error-pages)$/    - [カスタムHTTPエラーページ](#custom-http-error-pages)/
s/^## Introduction$/## イントロダクション/
s/^When you start a new Laravel project, error and exception handling is already configured for you\. The `App\\Exceptions\\Handler` class is where all exceptions triggered by your application are logged and then rendered back to the user\. We'll dive deeper into this class throughout this documentation\.$/新しいLaravelプロジェクトを開始する時点で、エラーと例外の処理は既に設定済みです。`App\\Exceptions\\Handler`クラスはアプリケーションで発生する全例外をログし、ユーザーへ表示するためのクラスです。このドキュメントでは、このクラスの詳細を確認していきます。/
s/^## Configuration$/## 設定/
s/^The `debug` option in your `config\/app\.php` configuration file determines how much information about an error is actually displayed to the user\. By default, this option is set to respect the value of the `APP_DEBUG` environment variable, which is stored in your `\.env` file\.$/アプリケーションエラー発生時にユーザーに対し表示する詳細の表示量は、`config\/app.php`設定ファイルの`debug`設定オプションで決定します。デフォルト状態でこの設定オプションは、`.env`ファイルで指定される`APP_DEBUG`環境変数の値を反映します。/
s/^For local development, you should set the `APP_DEBUG` environment variable to `true`\. In your production environment, this value should always be `false`\. If the value is set to `true` in production, you risk exposing sensitive configuration values to your application's end users\.$/local環境では`APP_DEBUG`環境変数を`true`に設定すべきでしょう。実働環境ではこの値をいつも`false`にすべきです。実働環境でこの値を`true`にしてしまうと、アプリケーションのエンドユーザーへ、セキュリティリスクになりえる設定情報を表示するリスクを犯すことになります。/
s/^## The Exception Handler$/## 例外ハンドラ/
s/^### The Report Method$/### reportメソッド/
s/^All exceptions are handled by the `App\\Exceptions\\Handler` class\. This class contains two methods: `report` and `render`\. We'll examine each of these methods in detail\. The `report` method is used to log exceptions or send them to an external service like \[Bugsnag\](https:\/\/bugsnag\.com) or \[Sentry\](https:\/\/github\.com\/getsentry\/sentry-laravel)\. By default, the `report` method passes the exception to the base class where the exception is logged\. However, you are free to log exceptions however you wish\.$/例外はすべて、`App\\Exceptions\\Handler`クラスで処理されます。このクラスは`report`と`render`二つのメソッドで構成されています。両メソッドの詳細を見ていきましょう。`report`メソッドは例外をログするか、[BugSnag](https:\/\/bugsnag.com)や[Sentry](https:\/\/github.com\/getsentry\/sentry-laravel)のような外部サービスに送信するために使います。デフォルト状態の`report`メソッドは、渡された例外をベースクラスに渡し、そこで例外はログされます。しかし好きなように例外をログすることが可能です。/
s/^For example, if you need to report different types of exceptions in different ways, you may use the PHP `instanceof` comparison operator:$/たとえば異なった例外を別々の方法レポートする必要がある場合、PHPの`instanceof`比較演算子を使ってください。/
s/^    \/\*\*$/    \/**/
s/^     \* Report or log an exception\.$/     * 例外をレポート、もしくはログする/
s/^     \*$/     */
s/^     \* This is a great spot to send exceptions to Sentry, Bugsnag, etc\.$/     * ここは例外をSentryやBugsnagなどへ送るために適した場所/
s/^     \*$/     */
s/^     \* @param  \\Exception  $exception$/     * @param  \\Exception  $exception/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^> {tip} Instead of making a lot of `instanceof` checks in your `report` method, consider using \[reportable exceptions\](\/docs\/{{version}}\/errors#renderable-exceptions)$/> {tip} `report`メソッド中で数多くの`instanceof`チェックを行う代わりに、[reportable exceptions](\/docs\/{{version}}\/errors#renderable-exceptions)の使用を考慮してください。/
s/^#### The `report` Helper$/#### `report`ヘルパ/
s/^Sometimes you may need to report an exception but continue handling the current request\. The `report` helper function allows you to quickly report an exception using your exception handler's `report` method without rendering an error page:$/場合により、例外をレポートする必要があるが、現在のリクエストの処理を継続したい場合があります。`report`ヘルパ関数により、エラーページをレンダすること無く、例外ハンドラの`report`メソッドを使用し、例外を簡単にレポートできます。/
s/^            \/\/ Validate the value\.\.\.$/            \/\/ 値の確認…/
s/^#### Ignoring Exceptions By Type$/#### タイプによる例外の無視/
s/^The `$dontReport` property of the exception handler contains an array of exception types that will not be logged\. For example, exceptions resulting from 404 errors, as well as several other types of errors, are not written to your log files\. You may add other exception types to this array as needed:$/例外ハンドラの`$dontReport`プロパティは、ログしない例外のタイプの配列で構成します。たとえば、404エラー例外と同様に、他のタイプの例外もログしたくない場合です。必要に応じてこの配列へ、他の例外を付け加えてください。/
s/^    \/\*\*$/    \/**/
s/^     \* A list of the exception types that should not be reported\.$/     * レポートしない例外のリスト/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $dontReport = \[$/    protected $dontReport = [/
s/^    \];$/    ];/
s/^### The Render Method$/### renderメソッド/
s/^The `render` method is responsible for converting a given exception into an HTTP response that should be sent back to the browser\. By default, the exception is passed to the base class which generates a response for you\. However, you are free to check the exception type or return your own custom response:$/`render`メソッドは与えられた例外をブラウザーに送り返すHTTPレスポンスへ変換することに責任を持っています。デフォルトで例外はベースクラスに渡され、そこでレスポンスが生成されます。しかし例外のタイプをチェックし、お好きなようにレスポンスを返してかまいません。/
s/^    \/\*\*$/    \/**/
s/^     \* Render an exception into an HTTP response\.$/     * HTTPレスポンスへ例外をレンダー/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request  $request$/     * @param  \\Illuminate\\Http\\Request  $request/
s/^     \* @param  \\Exception  $exception$/     * @param  \\Exception  $exception/
s/^     \* @return \\Illuminate\\Http\\Response$/     * @return \\Illuminate\\Http\\Response/
s/^     \*\/$/     *\//
s/^            return response()->view('errors\.custom', \[\], 500);$/            return response()->view('errors.custom', [], 500);/
s/^### Reportable & Renderable Exceptions$/### Reportable／Renderable例外/
s/^Instead of type-checking exceptions in the exception handler's `report` and `render` methods, you may define `report` and `render` methods directly on your custom exception\. When these methods exist, they will be called automatically by the framework:$/例外ハンドラの中の`report`と`render`メソッドの中で、例外のタイプをチェックする代わりに、自身のカスタム例外で`report`と`render`メソッドを定義できます。これらのメソッドが存在すると、フレームワークにより自動的に呼び出されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Report the exception\.$/         * 例外のレポート/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Render the exception into an HTTP response\.$/         * 例外をＨＴＴＰレスポンスへレンダ/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return \\Illuminate\\Http\\Response$/         * @return \\Illuminate\\Http\\Response/
s/^         \*\/$/         *\//
s/^            return response(\.\.\.);$/            return response(...);/
s/^## HTTP Exceptions$/## HTTP例外/
s/^Some exceptions describe HTTP error codes from the server\. For example, this may be a "page not found" error (404), an "unauthorized error" (401) or even a developer generated 500 error\. In order to generate such a response from anywhere in your application, you may use the `abort` helper:$/例外の中にはサーバでのHTTPエラーコードを表しているものがあります。たとえば「ページが見つかりません」エラー(404)や「未認証エラー」(401)、開発者が生成した500エラーなどです。アプリケーションのどこからでもこの種のレスポンスを生成するには、abortヘルパを使用します。/
s/^The `abort` helper will immediately raise an exception which will be rendered by the exception handler\. Optionally, you may provide the response text:$/`abort`ヘルパは即座に例外を発生させ、その例外は例外ハンドラによりレンダーされることになります。オプションとしてレスポンスのテキストを指定することもできます。/
s/^    abort(403, 'Unauthorized action\.');$/    abort(403, 'Unauthorized action.');/
s/^### Custom HTTP Error Pages$/### カスタムHTTPエラーページ/
s/^Laravel makes it easy to display custom error pages for various HTTP status codes\. For example, if you wish to customize the error page for 404 HTTP status codes, create a `resources\/views\/errors\/404\.blade\.php`\. This file will be served on all 404 errors generated by your application\. The views within this directory should be named to match the HTTP status code they correspond to\. The `HttpException` instance raised by the `abort` function will be passed to the view as an `$exception` variable:$/様々なHTTPステータスコードごとに、Laravelはカスタムエラーページを簡単に返せます。たとえば404 HTTPステータスコードに対してカスタムエラーページを返したければ、`resources\/views\/errors\/404.blade.php`を作成してください。このファイルはアプリケーションで起こされる全404エラーに対し動作します。ビューはこのディレクトリに置かれ、対応するHTTPコードと一致した名前にしなくてはなりません。`abort`ヘルパが生成する`HttpException`インスタンスは、`$exception`変数として渡されます。/
