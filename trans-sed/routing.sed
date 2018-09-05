s/^# Routing$/# ルーティング/
s/^- \[Basic Routing\](#basic-routing)$/- [基本的なルーティング](#basic-routing)/
s/^    - \[Redirect Routes\](#redirect-routes)$/    - [リダイレクトルート](#redirect-routes)/
s/^    - \[View Routes\](#view-routes)$/    - [ビュールート](#view-routes)/
s/^- \[Route Parameters\](#route-parameters)$/- [ルートパラメーター](#route-parameters)/
s/^    - \[Required Parameters\](#required-parameters)$/    - [必須パラメータ](#required-parameters)/
s/^    - \[Optional Parameters\](#parameters-optional-parameters)$/    - [任意パラメータ](#parameters-optional-parameters)/
s/^    - \[Regular Expression Constraints\](#parameters-regular-expression-constraints)$/    - [正規表現制約](#parameters-regular-expression-constraints)/
s/^- \[Named Routes\](#named-routes)$/- [名前付きルート](#named-routes)/
s/^- \[Route Groups\](#route-groups)$/- [ルートグループ](#route-groups)/
s/^    - \[Middleware\](#route-group-middleware)$/    - [ミドルウェア](#route-group-middleware)/
s/^    - \[Namespaces\](#route-group-namespaces)$/    - [名前区間](#route-group-namespaces)/
s/^    - \[Sub-Domain Routing\](#route-group-sub-domain-routing)$/    - [サブドメインルーティング](#route-group-sub-domain-routing)/
s/^    - \[Route Prefixes\](#route-group-prefixes)$/    - [ルートプレフィックス](#route-group-prefixes)/
s/^    - \[Route Name Prefixes\](#route-group-name-prefixes)$/    - [ルート名プリフィックス](#route-group-name-prefixes)/
s/^- \[Route Model Binding\](#route-model-binding)$/- [モデル結合ルート](#route-model-binding)/
s/^    - \[Implicit Binding\](#implicit-binding)$/    - [暗黙の結合](#implicit-binding)/
s/^    - \[Explicit Binding\](#explicit-binding)$/    - [明示的な結合](#explicit-binding)/
s/^- \[Fallback Routes\](#fallback-routes)$/- [フォールバックルート](#fallback-routes)/
s/^- \[Rate Limiting\](#rate-limiting)$/- [レート制限](#rate-limiting)/
s/^- \[Form Method Spoofing\](#form-method-spoofing)$/- [擬似フォームメソッド](#form-method-spoofing)/
s/^- \[Accessing The Current Route\](#accessing-the-current-route)$/- [現在のルートへのアクセス](#accessing-the-current-route)/
s/^## Basic Routing$/## 基本的なルーティング/
s/^The most basic Laravel routes accept a URI and a `Closure`, providing a very simple and expressive method of defining routes:$/一番基本のLaravelルートはURIと「クロージャ」により定義され、単純で記述しやすいルートの定義方法を提供しています。/
s/^#### The Default Route Files$/#### デフォルトルート定義ファイル/
s/^All Laravel routes are defined in your route files, which are located in the `routes` directory\. These files are automatically loaded by the framework\. The `routes\/web\.php` file defines routes that are for your web interface\. These routes are assigned the `web` middleware group, which provides features like session state and CSRF protection\. The routes in `routes\/api\.php` are stateless and are assigned the `api` middleware group\.$/Laravelの全ルートは、`routes`ディレクトリ下に設置されている、ルートファイルで定義されます。これらのファイルはフレームワークにより、自動的に読み込まれます。`routes\/web.php`ファイルで、Webインターフェイスのルートを定義します。定義されたルートは`web`ミドルウェアグループにアサインされ、セッション状態やCSRF保護などの機能が提供されます。`routes\/api.php`中のルートはステートレスで、`api`ミドルウェアグループにアサインされます。/
s/^For most applications, you will begin by defining routes in your `routes\/web\.php` file\. The routes defined in `routes\/web\.php` may be accessed by entering the defined route's URL in your browser\. For example, you may access the following route by navigating to `http:\/\/your-app\.test\/user` in your browser:$/ほとんどのアプリケーションでは、`routes\/web.php`ファイルからルート定義を始めます。`routes\/web.php`中で定義されたルートは、ブラウザで定義したルートのURLを入力することでアクセスします。たとえば、次のルートはブラウザから`http:\/\/your-app.test\/user`でアクセスします。/
s/^Routes defined in the `routes\/api\.php` file are nested within a route group by the `RouteServiceProvider`\. Within this group, the `\/api` URI prefix is automatically applied so you do not need to manually apply it to every route in the file\. You may modify the prefix and other route group options by modifying your `RouteServiceProvider` class\.$/`routes\/api.php`ファイル中で定義したルートは`RouteServiceProvider`により、ルートグループの中にネストされます。このグループには、`\/api`のURIが自動的にプレフィックスされ、それによりこのファイル中の全ルートにわざわざ指定する必要はありません。プレフィックスや他のルートグループオプションに変更する場合は、`RouteServiceProvider`を変更してください。/
s/^#### Available Router Methods$/#### 使用可能なルート定義メソッド/
s/^The router allows you to register routes that respond to any HTTP verb:$/ルータはHTTP動詞に対応してルートを定義できるようにしています。/
s/^Sometimes you may need to register a route that responds to multiple HTTP verbs\. You may do so using the `match` method\. Or, you may even register a route that responds to all HTTP verbs using the `any` method:$/複数のHTTP動詞に対応したルートを登録する必要が起きることもあります。`match`メソッドが利用できます。もしくは全HTTP動詞に対応する`any`メソッドを使い、ルート登録することもできます。/
s/^    Route::match(\['get', 'post'\], '\/', function () {$/    Route::match(['get', 'post'], '\/', function () {/
s/^#### CSRF Protection$/#### CSRF保護/
s/^Any HTML forms pointing to `POST`, `PUT`, or `DELETE` routes that are defined in the `web` routes file should include a CSRF token field\. Otherwise, the request will be rejected\. You can read more about CSRF protection in the \[CSRF documentation\](\/docs\/{{version}}\/csrf):$/`web`ルートファイル中で定義され、`POST`、`PUT`、`DELETE`ルートへ送信されるHTMLフォームはすべて、CSRFトークンフィールドを含んでいる必要があります。含めていないと、そのリクエストは拒否されます。CSRF保護についての詳細は、[CSRFのドキュメント](\/docs\/{{version}}\/csrf)をご覧ください。/
s/^        \.\.\.$/        .../
s/^### Redirect Routes$/### リダイレクトルート/
s/^If you are defining a route that redirects to another URI, you may use the `Route::redirect` method\. This method provides a convenient shortcut so that you do not have to define a full route or controller for performing a simple redirect:$/他のURIへリダイレクトするルートを定義する場合は、`Route::redirect`メソッドを使用します。このメソッドは便利な短縮形を提供しているので、単純なリダイレクトを実行するために、完全なルートやコントローラを定義する必要はありません。/
s/^### View Routes$/### ビュールート/
s/^If your route only needs to return a view, you may use the `Route::view` method\. Like the `redirect` method, this method provides a simple shortcut so that you do not have to define a full route or controller\. The `view` method accepts a URI as its first argument and a view name as its second argument\. In addition, you may provide an array of data to pass to the view as an optional third argument:$/ルートからビューを返すだけの場合は、`Route::view`メソッドを使用します。`redirect`メソッドと同様に、このメソッドはシンプルな短縮形を提供しており、完全なルートやコントローラを定義する必要はありません。`view`メソッドは、最初の引数にURIを取り、ビュー名は第２引数です。更に、オプションの第３引数として、ビューへ渡すデータの配列を指定することもできます。/
s/^    Route::view('\/welcome', 'welcome', \['name' => 'Taylor'\]);$/    Route::view('\/welcome', 'welcome', ['name' => 'Taylor']);/
s/^## Route Parameters$/## ルートパラメーター/
s/^### Required Parameters$/### 必須パラメータ/
s/^Of course, sometimes you will need to capture segments of the URI within your route\. For example, you may need to capture a user's ID from the URL\. You may do so by defining route parameters:$/もちろん、ルートの中のURIセグメントを取り出す必要が起きることもあります。たとえば、URLからユーザーIDを取り出したい場合です。ルートパラメーターを定義してください。/
s/^        return 'User '\.$id;$/        return 'User '.$id;/
s/^You may define as many route parameters as required by your route:$/ルートで必要なだけのルートパラメーターを定義することができます。/
s/^Route parameters are always encased within `{}` braces and should consist of alphabetic characters, and may not contain a `-` character\. Instead of using the `-` character, use an underscore (`_`)\. Route parameters are injected into route callbacks \/ controllers based on their order - the names of the callback \/ controller arguments do not matter\.$/ルートパラメータは、いつも`{}`括弧で囲み、アルファベット文字で構成してください。ルートパラメータには、ハイフン（`-`）を使えません。下線（`_`）を代わりに使用してください。ルートパラメータは、ルートコールバック／コントローラへ順番通りに注入されます。コールバック／コントローラ引数の名前は考慮されません。/
s/^### Optional Parameters$/### 任意パラメータ/
s/^Occasionally you may need to specify a route parameter, but make the presence of that route parameter optional\. You may do so by placing a `?` mark after the parameter name\. Make sure to give the route's corresponding variable a default value:$/ルートパラメータを指定してもらう必要があるが、指定は任意にしたいこともよく起こります。パラメータ名の後に`?`を付けると、任意指定のパラメータになります。対応するルートの引数に、デフォルト値を必ず付けてください。/
s/^### Regular Expression Constraints$/### 正規表現制約/
s/^You may constrain the format of your route parameters using the `where` method on a route instance\. The `where` method accepts the name of the parameter and a regular expression defining how the parameter should be constrained:$/ルートインスタンスの`where`メソッドを使用し、ルートパラメータのフォーマットを制約できます。`where`メソッドはパラメータ名と、そのパラメータがどのように制約を受けるのかを定義する正規表現を引数に取ります。/
s/^    })->where('name', '\[A-Za-z\]\+');$/    })->where('name', '[A-Za-z]+');/
s/^    })->where('id', '\[0-9\]\+');$/    })->where('id', '[0-9]+');/
s/^    })->where(\['id' => '\[0-9\]\+', 'name' => '\[a-z\]\+'\]);$/    })->where(['id' => '[0-9]+', 'name' => '[a-z]+']);/
s/^#### Global Constraints$/#### グローバル制約/
s/^If you would like a route parameter to always be constrained by a given regular expression, you may use the `pattern` method\. You should define these patterns in the `boot` method of your `RouteServiceProvider`:$/指定した正規表現でいつもルートパラメータを制約したい場合は、`pattern`メソッドを使ってください。`RouteServiceProvider`の`boot`メソッドの中で、このようなパターンを定義します。/
s/^    \/\*\*$/    \/**/
s/^     \* Define your route model bindings, pattern filters, etc\.$/     * ルートモデル結合、パターンフィルタなどの定義/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        Route::pattern('id', '\[0-9\]\+');$/        Route::pattern('id', '[0-9]+');/
s/^Once the pattern has been defined, it is automatically applied to all routes using that parameter name:$/パターンを定義すると、パラメータ名を使用している全ルートで、自動的に提供されます。/
s/^        \/\/ Only executed if {id} is numeric\.\.\.$/        \/\/ {id}が数値の場合のみ実行される/
s/^## Named Routes$/## 名前付きルート/
s/^Named routes allow the convenient generation of URLs or redirects for specific routes\. You may specify a name for a route by chaining the `name` method onto the route definition:$/名前付きルートは特定のルートへのURLを生成したり、リダイレクトしたりする場合に便利です。ルート定義に`name`メソッドをチェーンすることで、そのルートに名前がつけられます。/
s/^You may also specify route names for controller actions:$/コントローラアクションに対しても名前を付けることができます。/
s/^#### Generating URLs To Named Routes$/#### 名前付きルートへのURLを生成する/
s/^Once you have assigned a name to a given route, you may use the route's name when generating URLs or redirects via the global `route` function:$/ルートに一度名前を付ければ、その名前をグローバルな`route`関数で使用することで、URLを生成したり、リダイレクトしたりできます。/
s/^    \/\/ Generating URLs\.\.\.$/    \/\/ URLの生成/
s/^    \/\/ Generating Redirects\.\.\.$/    \/\/ リダイレクトの生成/
s/^If the named route defines parameters, you may pass the parameters as the second argument to the `route` function\. The given parameters will automatically be inserted into the URL in their correct positions:$/そのルートでパラメーターを定義してある場合は、`route`関数の第２引数としてパラメーターを渡してください。指定されたパラメーターは自動的にURLの正しい場所へ埋め込まれます。/
s/^    $url = route('profile', \['id' => 1\]);$/    $url = route('profile', ['id' => 1]);/
s/^#### Inspecting The Current Route$/#### 現在ルートの検査/
s/^If you would like to determine if the current request was routed to a given named route, you may use the `named` method on a Route instance\. For example, you may check the current route name from a route middleware:$/現在のリクエストが指定した名前付きルートのものであるかを判定したい場合は、Routeインスタンスの`named`メソッドを使います。たとえば、ルートミドルウェアから、現在のルート名を判定できます。/
s/^    \/\*\*$/    \/**/
s/^     \* Handle an incoming request\.$/     * 送信されたリクエストの処理/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request  $request$/     * @param  \\Illuminate\\Http\\Request  $request/
s/^     \* @param  \\Closure  $next$/     * @param  \\Closure  $next/
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^## Route Groups$/## ルートグループ/
s/^Route groups allow you to share route attributes, such as middleware or namespaces, across a large number of routes without needing to define those attributes on each individual route\. Shared attributes are specified in an array format as the first parameter to the `Route::group` method\.$/ルートグループは多くのルートで共通なミドルウェアや名前空間のようなルート属性をルートごとに定義するのではなく、一括して適用するための手法です。`Route::group`メソッドの最初の引数には、共通の属性を配列で指定します。/
s/^### Middleware$/### ミドルウェア/
s/^To assign middleware to all routes within a group, you may use the `middleware` method before defining the group\. Middleware are executed in the order they are listed in the array:$/グループ中の全ルートにミドルウェアを指定するには、そのグループを定義する前に`middleware`メソッドを使用します。ミドルウェアは、配列に定義された順番で実行されます。/
s/^    Route::middleware(\['first', 'second'\])->group(function () {$/    Route::middleware(['first', 'second'])->group(function () {/
s/^            \/\/ Uses first & second Middleware$/            \/\/ firstとsecondミドルウェアを使用/
s/^            \/\/ Uses first & second Middleware$/            \/\/ firstとsecondミドルウェアを使用/
s/^### Namespaces$/### 名前空間/
s/^Another common use-case for route groups is assigning the same PHP namespace to a group of controllers using the `namespace` method:$/ルートグループのもう一つのよくあるユースケースで、グループ内のコントローラに同じPHP名前空間を指定する場合は、`namespace`メソッドを使用します。/
s/^        \/\/ Controllers Within The "App\\Http\\Controllers\\Admin" Namespace$/        \/\/ "App\\Http\\Controllers\\Admin"名前空間下のコントローラ/
s/^Remember, by default, the `RouteServiceProvider` includes your route files within a namespace group, allowing you to register controller routes without specifying the full `App\\Http\\Controllers` namespace prefix\. So, you only need to specify the portion of the namespace that comes after the base `App\\Http\\Controllers` namespace\.$/`App\\Http\\Controllers`名前空間をコントローラルート登録時に毎回指定しなくても済むように、デフォルトで`RouteServiceProvider`が名前空間グループの中で`routes.php`ファイルを読み込み、指定していることを覚えておいてください。これにより、先頭の`App\\Http\\Controllers`名前空間を省略でき、続きの部分を指定するだけで済みます。/
s/^### Sub-Domain Routing$/### サブドメインルーティング/
s/^Route groups may also be used to handle sub-domain routing\. Sub-domains may be assigned route parameters just like route URIs, allowing you to capture a portion of the sub-domain for usage in your route or controller\. The sub-domain may be specified by calling the `domain` method before defining the group:$/ルートグループはワイルドカードサブドメインをルート定義するためにも使えます。サブドメインの部分を取り出しルートやコントローラで使用するために、ルートURIにおけるルートパラメーターのように指定できます。サブドメインはグループを定義する前に、`domain`メソッドを呼び出し指定します。/
s/^    Route::domain('{account}\.myapp\.com')->group(function () {$/    Route::domain('{account}.myapp.com')->group(function () {/
s/^### Route Prefixes$/### ルートプレフィックス/
s/^The `prefix` method may be used to prefix each route in the group with a given URI\. For example, you may want to prefix all route URIs within the group with `admin`:$/`prefix`メソッドはグループ内の各ルートに対して、指定されたURIのプレフィックスを指定するために使用します。たとえばグループ内の全ルートのURIに`admin`を付けたければ、次のように指定します。/
s/^### Route Name Prefixes$/### ルート名プリフィックス/
s/^The `name` method may be used to prefix each route name in the group with a given string\. For example, you may want to prefix all of the grouped route's names with `admin`\. The given string is prefixed to the route name exactly as it is specified, so we will be sure to provide the trailing `\.` character in the prefix:$/`name`メソッドはグループ内の各ルート名へ、指定した文字列をプレフィックスするために使用します。たとえば、グループ内の全ルート名へ`admin`というプレフィックスを付けたいとしましょう。指定した指定した文字列はそのままルート名の前に付きます。そのため、プレフィックスへ最後の`.`文字を確実に指定してください。/
s/^    Route::name('admin\.')->group(function () {$/    Route::name('admin.')->group(function () {/
s/^            \/\/ Route assigned name "admin\.users"\.\.\.$/            \/\/ "admin.users"という名前へ結合したルート…/
s/^## Route Model Binding$/## モデル結合ルート/
s/^When injecting a model ID to a route or controller action, you will often query to retrieve the model that corresponds to that ID\. Laravel route model binding provides a convenient way to automatically inject the model instances directly into your routes\. For example, instead of injecting a user's ID, you can inject the entire `User` model instance that matches the given ID\.$/ルートかコントローラアクションへモデルIDが指定される場合、IDに対応するそのモデルを取得するため、大抵の場合クエリします。Laravelのモデル結合はルートへ直接、そのモデルインスタンスを自動的に注入する便利な手法を提供しています。つまり、ユーザーのIDが渡される代わりに、指定されたIDに一致する`User`モデルインスタンスが渡されます。/
s/^### Implicit Binding$/### 暗黙の結合/
s/^Laravel automatically resolves Eloquent models defined in routes or controller actions whose type-hinted variable names match a route segment name\. For example:$/Laravelはタイプヒントされた変数名とルートセグメント名が一致する場合、Laravelはルートかコントローラアクション中にEloquentモデルが定義されていると、自動的に依存解決します。/
s/^Since the `$user` variable is type-hinted as the `App\\User` Eloquent model and the variable name matches the `{user}` URI segment, Laravel will automatically inject the model instance that has an ID matching the corresponding value from the request URI\. If a matching model instance is not found in the database, a 404 HTTP response will automatically be generated\.$/`$user`変数が`App\\User` Eloquentモデルとしてタイプヒントされており、変数名が`{user}` URIセグメントと一致しているため、Laravelは、リクエストされたURIの対応する値に一致するIDを持つ、モデルインスタンスを自動的に注入します。一致するモデルインスタンスがデータベースへ存在しない場合、404 HTTPレスポンスが自動的に生成されます。/
s/^#### Customizing The Key Name$/#### キー名のカスタマイズ/
s/^If you would like model binding to use a database column other than `id` when retrieving a given model class, you may override the `getRouteKeyName` method on the Eloquent model:$/指定されたモデルクラス取得時に、`id`以外のデータベースカラムをモデル結合で使用したい場合、Eloquentモデルの`getRouteKeyName`メソッドをオーバーライドしてください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the route key for the model\.$/     * モデルのルートキーの取得/
s/^     \*$/     */
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^### Explicit Binding$/### 明示的な結合/
s/^To register an explicit binding, use the router's `model` method to specify the class for a given parameter\. You should define your explicit model bindings in the `boot` method of the `RouteServiceProvider` class:$/明示的に結合を登録するには、ルータの`model`メソッドで、渡されるパラメータに対するクラスを指定します。`RouteServiceProvider`クラスの`boot`メソッドの中で明示的なモデル結合を定義してください。/
s/^Next, define a route that contains a `{user}` parameter:$/次に`{user}`パラメーターを含むルートを定義します。/
s/^Since we have bound all `{user}` parameters to the `App\\User` model, a `User` instance will be injected into the route\. So, for example, a request to `profile\/1` will inject the `User` instance from the database which has an ID of `1`\.$/`{user}`パラメーターを`App\\User`モデルへ結合しているため、`User`インスタンスはルートへ注入されます。ですからたとえば、`profile\/1`のリクエストでは、IDが`1`の`User`インスタンスが注入されます。/
s/^If a matching model instance is not found in the database, a 404 HTTP response will be automatically generated\.$/一致するモデルインスタンスがデータベース上に見つからない場合、404 HTTPレスポンスが自動的に生成されます。/
s/^#### Customizing The Resolution Logic$/#### 依存解決ロジックのカスタマイズ/
s/^If you wish to use your own resolution logic, you may use the `Route::bind` method\. The `Closure` you pass to the `bind` method will receive the value of the URI segment and should return the instance of the class that should be injected into the route:$/独自の依存解決ロジックを使いたい場合は、`Route::bind`メソッドを使います。`bind`メソッドに渡す「クロージャ」は、URIセグメントの値を受け取るので、ルートへ注入したいクラスのインスタンスを返してください。/
s/^## Fallback Routes$/## フォールバックルート/
s/^Using the `Route::fallback` method, you may define a route that will be executed when no other route matches the incoming request\. Typically, unhandled requests will automatically render a "404" page via your application's exception handler\. However, since you may define the `fallback` route within your `routes\/web\.php` file, all middleware in the `web` midddleware group will apply to the route\. Of course, you are free to add additional middleware to this route as needed:$/`Route::fallback`メソッドを使用すれば受け取ったリクエストが、他のルートに一致しない場合に実行するルートを定義できます。通常、アプリケーションの例外ハンドラにより、処理できないリクエストに対し自動的に"404"ページがレンダ−されます。しかしながら、`routes\/web.php`ファイルに`fallback`ルートが定義されていれば、`web`ミドルウェアグループの中の全てのミドルウェアで、このルートが適用されます。もちろん必要に応じ、このルートを他のミドルウェに追加するかどうかは、皆さんの自由です。/
s/^## Rate Limiting$/## レート制限/
s/^Laravel includes a \[middleware\](\/docs\/{{version}}\/middleware) to rate limit access to routes within your application\. To get started, assign the `throttle` middleware to a route or a group of routes\. The `throttle` middleware accepts two parameters that determine the maximum number of requests that can be made in a given number of minutes\. For example, let's specify that an authenticated user may access the following group of routes 60 times per minute:$/Laravelには、アプリケーションのルートに対してレート制限をかける[ミドルウェア](\/docs\/{{version}}\/middleware) が用意されています。使用開始するには、ルートやルートグループに対し、`throttle`ミドルウェアを指定してください。`throttle`ミドルウェアは分数と、その時間内に許す最大リクエスト数の、２引数を取ります。例として、認証済みのユーザーが１分間に６０回のアクセスを許すルートグループを指定してみましょう。/
s/^#### Dynamic Rate Limiting$/#### 動的レート制限/
s/^You may specify a dynamic request maximum based on an attribute of the authenticated `User` model\. For example, if your `User` model contains a `rate_limit` attribute, you may pass the name of the attribute to the `throttle` middleware so that it is used to calculate the maximum request count:$/認証済み`User`モデルの属性に基づいて、最大リクエストを動的に指定することもできます。たとえば、`User`モデルが`rate_limit`属性を含んでいる場合、最大リクエストを計算するために使用するために、`throttle`ミドルウェアにその属性の名前を渡します。/
s/^## Form Method Spoofing$/## 擬似フォームメソッド/
s/^HTML forms do not support `PUT`, `PATCH` or `DELETE` actions\. So, when defining `PUT`, `PATCH` or `DELETE` routes that are called from an HTML form, you will need to add a hidden `_method` field to the form\. The value sent with the `_method` field will be used as the HTTP request method:$/HTMLフォームは`PUT`、`PATCH`、`DELETE`アクションをサポートしていません。ですから、HTMLフォームから呼ばれる`PUT`、`PATCH`、`DELETE`ルートを定義する時、フォームに`_method`隠しフィールドを追加する必要があります。`_method`フィールドとして送られた値は、HTTPリクエストメソッドとして使用されます。/
s/^You may use the `@method` Blade directive to generate the `_method` input:$/`_method`フィールドを生成するために、`@method` Bladeディレクティブを使用することもできます。/
s/^## Accessing The Current Route$/## 現在のルートへのアクセス/
s/^You may use the `current`, `currentRouteName`, and `currentRouteAction` methods on the `Route` facade to access information about the route handling the incoming request:$/送信されたリクエストを処理しているルートに関する情報へアクセスするには、`Route`ファサードへ`current`、`currentRouteName`、`currentRouteAction`メソッドを使用します。/
s/^Refer to the API documentation for both the \[underlying class of the Route facade\](https:\/\/laravel\.com\/api\/{{version}}\/Illuminate\/Routing\/Router\.html) and \[Route instance\](https:\/\/laravel\.com\/api\/{{version}}\/Illuminate\/Routing\/Route\.html) to review all accessible methods\.$/組み込まれている全メソッドを確認するには、[Routeファサードの裏で動作しているクラス](https:\/\/laravel.com\/api\/{{version}}\/Illuminate\/Routing\/Router.html)と、[Routeインスタンス](https:\/\/laravel.com\/api\/{{version}}\/Illuminate\/Routing\/Route.html)の２つについてのAPIドキュメントを参照してください。/
