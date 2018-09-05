s/^# Controllers$/# コントローラ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Basic Controllers\](#basic-controllers)$/- [基本のコントローラ](#basic-controllers)/
s/^    - \[Defining Controllers\](#defining-controllers)$/    - [コントローラの定義](#defining-controllers)/
s/^    - \[Controllers & Namespaces\](#controllers-and-namespaces)$/    - [コントローラと名前空間](#controllers-and-namespaces)/
s/^    - \[Single Action Controllers\](#single-action-controllers)$/    - [シングルアクションコントローラ](#single-action-controllers)/
s/^- \[Controller Middleware\](#controller-middleware)$/- [コントローラミドルウェア](#controller-middleware)/
s/^- \[Resource Controllers\](#resource-controllers)$/- [リソースコントローラ](#resource-controllers)/
s/^    - \[Partial Resource Routes\](#restful-partial-resource-routes)$/    - [部分的なリソースルート](#restful-partial-resource-routes)/
s/^    - \[Naming Resource Routes\](#restful-naming-resource-routes)$/    - [リソースルートの命名](#restful-naming-resource-routes)/
s/^    - \[Naming Resource Route Parameters\](#restful-naming-resource-route-parameters)$/    - [リソースルートパラメータの命名](#restful-naming-resource-route-parameters)/
s/^    - \[Localizing Resource URIs\](#restful-localizing-resource-uris)$/    - [リソースURIのローカライズ](#restful-localizing-resource-uris)/
s/^    - \[Supplementing Resource Controllers\](#restful-supplementing-resource-controllers)$/    - [リソースコントローラへのルート追加](#restful-supplementing-resource-controllers)/
s/^- \[Dependency Injection & Controllers\](#dependency-injection-and-controllers)$/- [依存注入とコントローラ](#dependency-injection-and-controllers)/
s/^- \[Route Caching\](#route-caching)$/- [ルートキャッシュ](#route-caching)/
s/^## Introduction$/## イントロダクション/
s/^Instead of defining all of your request handling logic as Closures in route files, you may wish to organize this behavior using Controller classes\. Controllers can group related request handling logic into a single class\. Controllers are stored in the `app\/Http\/Controllers` directory\.$/全リクエストの処理をルートファイルのクロージャで定義するよりも、コントローラクラスにより組織立てたいと、皆さんも考えるでしょう。関連のあるHTTPリクエストの処理ロジックを一つのクラスへまとめ、グループ分けができます。コントローラは`app\/Http\/Controllers`ディレクトリ下に設置します。/
s/^## Basic Controllers$/## 基本のコントローラ/
s/^### Defining Controllers$/### コントローラの定義/
s/^Below is an example of a basic controller class\. Note that the controller extends the base controller class included with Laravel\. The base class provides a few convenience methods such as the `middleware` method, which may be used to attach middleware to controller actions:$/これは基本的なコントローラの一例です。全てのLaravelコントローラはLaravelに含まれている基本コントローラクラスを拡張します。コントローラアクションにミドルウェアを追加するために使う`middleware`メソッドのように、便利なメソッドをベースクラスは提供しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定ユーザーのプロフィール表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            return view('user\.profile', \['user' => User::findOrFail($id)\]);$/            return view('user.profile', ['user' => User::findOrFail($id)]);/
s/^You can define a route to this controller action like so:$/コントローラアクションへルート付けるには、次のようにします。/
s/^Now, when a request matches the specified route URI, the `show` method on the `UserController` class will be executed\. Of course, the route parameters will also be passed to the method\.$/これで指定したルートのURIにリクエストが一致すれば、`UserController`の`show`メソッドが実行されます。もちろん、ルートパラメーターはメソッドに渡されます。/
s/^> {tip} Controllers are not \*\*required\*\* to extend a base class\. However, you will not have access to convenience features such as the `middleware`, `validate`, and `dispatch` methods\.$/> {tip} コントローラはベースクラスの拡張を**要求**してはいません。しかし、`middleware`、`validate`、`dispatch`のような便利な機能へアクセスできなくなります。/
s/^### Controllers & Namespaces$/### コントローラと名前空間/
s/^It is very important to note that we did not need to specify the full controller namespace when defining the controller route\. Since the `RouteServiceProvider` loads your route files within a route group that contains the namespace, we only specified the portion of the class name that comes after the `App\\Http\\Controllers` portion of the namespace\.$/とても重要な注目ポイントはコントローラルートの定義時に、コントローラの完全な名前空間を指定する必要がないことです。`RouteServiceProvider`が、コントローラの名前空間を指定したルートグループの中で、ルートファイルをロードしていますので、「先頭」の`App\\Http\\Controllers`名前空間に続くクラス名の部分だけを指定するだけで済みます。/
s/^If you choose to nest your controllers deeper into the `App\\Http\\Controllers` directory, use the specific class name relative to the `App\\Http\\Controllers` root namespace\. So, if your full controller class is `App\\Http\\Controllers\\Photos\\AdminController`, you should register routes to the controller like so:$/`App\\Http\\Controllers`ディレクトリより深く、コントローラのPHP名前空間をネストしたり、組織立てたりする場合でも、先頭の`App\\Http\\Controllers`名前空間からの相対クラス名を指定します。ですから、コントローラの完全なクラス名が`App\\Http\\Controllers\\Photos\\AdminController`ならば、次のようにルートを登録します。/
s/^### Single Action Controllers$/### シングルアクションコントローラ/
s/^If you would like to define a controller that only handles a single action, you may place a single `__invoke` method on the controller:$/アクションを一つだけ含むコントローラを定義したい場合は、そのコントローラに`__invoke`メソッドを設置してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定ユーザーのプロフィール表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            return view('user\.profile', \['user' => User::findOrFail($id)\]);$/            return view('user.profile', ['user' => User::findOrFail($id)]);/
s/^When registering routes for single action controllers, you do not need to specify a method:$/シングルアクションコントローラへのルートを定義するとき、メソッドを指定する必要はありません。/
s/^You may generate an invokable controller by using the `--invokable` option of the `make:controller` Artisan command:$/`make:controller` Artisanコマンドに、`--invokable`オプションを指定すると、`__invoke`メソッドを含んだコントローラを生成できます。/
s/^## Controller Middleware$/## コントローラミドルウェア/
s/^\[Middleware\](\/docs\/{{version}}\/middleware) may be assigned to the controller's routes in your route files:$/[ミドルウェア](\/docs\/{{version}}\/middleware)はルートファイルの中で、コントローラのルートに対して指定します。/
s/^However, it is more convenient to specify middleware within your controller's constructor\. Using the `middleware` method from your controller's constructor, you may easily assign middleware to the controller's action\. You may even restrict the middleware to only certain methods on the controller class:$/もしくは、コントローラのコンストラクタの中でミドルウェアを指定するほうが、より便利でしょう。コントローラのコンストラクタで、`middleware`メソッドを使い、コントローラのアクションに対するミドルウェアを簡単に指定できます。コントローラクラスの特定のメソッドに対してのみ、ミドルウェアの適用を制限することもできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Instantiate a new controller instance\.$/         * 新しいUserControllerインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Controllers also allow you to register middleware using a Closure\. This provides a convenient way to define a middleware for a single controller without defining an entire middleware class:$/コントローラではクロージャを使い、ミドルウェアを登録することもできます。これはミドルウェア全体を定義せずに、一つのコントローラのために、一つのミドルウェアを定義する便利な方法です。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^> {tip} You may assign middleware to a subset of controller actions; however, it may indicate your controller is growing too large\. Instead, consider breaking your controller into multiple, smaller controllers\.$/> {tip} コントローラアクションの一部へミドルウェアを適用することはできますが、しかしながら、これはコントローラが大きくなりすぎたことを示しています。代わりに、コントローラを複数の小さなコントローラへ分割することを考えてください。/
s/^## Resource Controllers$/## リソースコントローラ/
s/^Laravel resource routing assigns the typical "CRUD" routes to a controller with a single line of code\. For example, you may wish to create a controller that handles all HTTP requests for "photos" stored by your application\. Using the `make:controller` Artisan command, we can quickly create such a controller:$/Laravelリソースルートは一行のコードで、典型的な「CRUD」ルートをコントローラへ割り付けます。たとえば、アプリケーションへ保存されている「写真(photo)」に対する全HTTPリクエストを処理するコントローラを作成したいとしましょう。`make:controller` Artisanコマンドを使えば、このようなコントローラは素早く生成できます。/
s/^This command will generate a controller at `app\/Http\/Controllers\/PhotoController\.php`\. The controller will contain a method for each of the available resource operations\.$/このArtisanコマンドは`app\/Http\/Controllers\/PhotoController.php`としてコントローラファイルを生成します。コントローラは使用可能な各リソース操作に対するメソッドを含んでいます。/
s/^Next, you may register a resourceful route to the controller:$/次に、コントローラへのリソースフルルートを登録します。/
s/^This single route declaration creates multiple routes to handle a variety of actions on the resource\. The generated controller will already have methods stubbed for each of these actions, including notes informing you of the HTTP verbs and URIs they handle\.$/リソースに対する様々なアクションを処理する、複数のルートがこの１定義により生成されます。これらのアクションをHTTP動詞と処理するURIの情報を注記と一緒に含むスタブメソッドとして、生成されたコントローラはすでに含んでいます。/
s/^You may register many resource controllers at once by passing an array to the `resources` method:$/一度に多くのリソースコントローラを登録するには、`resources`メソッドへ配列で渡します。/
s/^    Route::resources(\[$/    Route::resources([/
s/^    \]);$/    ]);/
s/^#### Actions Handled By Resource Controller$/#### リソースコントローラにより処理されるアクション/
s/^Verb      | URI                  | Action       | Route Name$/動詞      | URI                  | アクション       | ルート名/
s/^GET       | `\/photos`              | index        | photos\.index$/GET       | `\/photos`              | index        | photos.index/
s/^GET       | `\/photos\/create`       | create       | photos\.create$/GET       | `\/photos\/create`       | create       | photos.create/
s/^POST      | `\/photos`              | store        | photos\.store$/POST      | `\/photos`              | store        | photos.store/
s/^GET       | `\/photos\/{photo}`      | show         | photos\.show$/GET       | `\/photos\/{photo}`      | show         | photos.show/
s/^GET       | `\/photos\/{photo}\/edit` | edit         | photos\.edit$/GET       | `\/photos\/{photo}\/edit` | edit         | photos.edit/
s/^PUT\/PATCH | `\/photos\/{photo}`      | update       | photos\.update$/PUT\/PATCH | `\/photos\/{photo}`      | update       | photos.update/
s/^DELETE    | `\/photos\/{photo}`      | destroy      | photos\.destroy$/DELETE    | `\/photos\/{photo}`      | destroy      | photos.destroy/
s/^#### Specifying The Resource Model$/#### リソースモデルの指定/
s/^If you are using route model binding and would like the resource controller's methods to type-hint a model instance, you may use the `--model` option when generating the controller:$/ルートモデル結合を使用しているが、リソースコントローラのメソッドでタイプヒントされるモデルインスタンスを指定したい場合は、コントローラの生成時に`--model`オプションを使用します。/
s/^#### Spoofing Form Methods$/#### 擬似フォームメソッド/
s/^Since HTML forms can't make `PUT`, `PATCH`, or `DELETE` requests, you will need to add a hidden `_method` field to spoof these HTTP verbs\. The `@method` Blade directive can create this field for you:$/HTMLフォームは`PUT`、`PATCH`、`DELETE`リクエストを作成できませんので、HTTP動詞を偽装するために、`_method`隠しフィールドを追加する必要が起きるでしょう。`@method` Bladeディレクティブでこのフィールドを生成できます。/
s/^### Partial Resource Routes$/### 部分的なリソースルート/
s/^When declaring a resource route, you may specify a subset of actions the controller should handle instead of the full set of default actions:$/リソースルートの宣言時に、デフォルトアクション全部を指定する代わりに、ルートで処理するアクションの一部を指定可能です。/
s/^    Route::resource('photos', 'PhotoController')->only(\[$/    Route::resource('photos', 'PhotoController')->only([/
s/^    \]);$/    ]);/
s/^    Route::resource('photos', 'PhotoController')->except(\[$/    Route::resource('photos', 'PhotoController')->except([/
s/^    \]);$/    ]);/
s/^#### API Resource Routes$/#### APIリソースルート/
s/^When declaring resource routes that will be consumed by APIs, you will commonly want to exclude routes that present HTML templates such as `create` and `edit`\. For convenience, you may use the `apiResource` method to automatically exclude these two routes:$/APIに使用するリソースルートを宣言する場合、`create`や`edit`のようなHTMLテンプレートを提供するルートを除外したいことがよく起こります。そのため、これらの２ルートを自動的に除外する、`apiResource`メソッドが使用できます。/
s/^You may register many API resource controllers at once by passing an array to the `apiResources` method:$/`apiResources`メソッドに配列として渡すことで、一度に複数のAPIリソースコントローラを登録できます。/
s/^    Route::apiResources(\[$/    Route::apiResources([/
s/^    \]);$/    ]);/
s/^To quickly generate an API resource controller that does not include the `create` or `edit` methods, use the `--api` switch when executing the `make:controller` command:$/`create`や`edit`メソッドを含まないAPIリソースコントローラを素早く生成するには、`make:controller`コマンドを実行する際、`--api`スイッチを使用してください。/
s/^### Naming Resource Routes$/### リソースルートの命名/
s/^By default, all resource controller actions have a route name; however, you can override these names by passing a `names` array with your options:$/全てのリソースコントローラアクションは、デフォルトのルート名が決められています。しかし、オプションに`names`配列を渡せば、こうした名前をオーバーライドできます。/
s/^    Route::resource('photos', 'PhotoController')->names(\[$/    Route::resource('photos', 'PhotoController')->names([/
s/^        'create' => 'photos\.build'$/        'create' => 'photos.build'/
s/^    \]);$/    ]);/
s/^### Naming Resource Route Parameters$/### リソースルートパラメータの命名/
s/^By default, `Route::resource` will create the route parameters for your resource routes based on the "singularized" version of the resource name\. You can easily override this on a per resource basis by using the `parameters` method\. The array passed into the `parameters` method should be an associative array of resource names and parameter names:$/By default, `Route::resource` will create the route parameters for your resource routes based on the "singularized" version of the resource name. You can easily override this on a per resource basis by using the `parameters` method. The array passed into the `parameters` method should be an associative array of resource names and parameter names:/
s/^    Route::resource('users', 'AdminUserController')->parameters(\[$/    Route::resource('users', 'AdminUserController')->parameters([/
s/^    \]);$/    ]);/
s/^ The example above generates the following URIs for the resource's `show` route:$/上記のサンプルコードは、リソースの`show`ルートで次のURIを生成します。/
s/^### Localizing Resource URIs$/### リソースURIのローカライズ/
s/^By default, `Route::resource` will create resource URIs using English verbs\. If you need to localize the `create` and `edit` action verbs, you may use the `Route::resourceVerbs` method\. This may be done in the `boot` method of your `AppServiceProvider`:$/`Route::resource`はデフォルトで、リソースURIに英語の動詞を使います。`create`と`edit`アクションの動詞をローカライズする場合は、`Route::resourceVerbs`メソッドを使います。このメソッドは、`AppServiceProvider`の`boot`メソッド中で呼び出します。/
s/^    \/\*\*$/    \/**/
s/^     \* Bootstrap any application services\.$/     * 全アプリケーションサービスの初期起動処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        Route::resourceVerbs(\[$/        Route::resourceVerbs([/
s/^        \]);$/        ]);/
s/^Once the verbs have been customized, a resource route registration such as `Route::resource('fotos', 'PhotoController')` will produce the following URIs:$/動詞をカスタマイズすると、`Route::resource('fotos', 'PhotoController')`のようなリソースルートの登録により、以下のようなURIが生成されるようになります。/
s/^### Supplementing Resource Controllers$/### リソースコントローラへのルート追加/
s/^If you need to add additional routes to a resource controller beyond the default set of resource routes, you should define those routes before your call to `Route::resource`; otherwise, the routes defined by the `resource` method may unintentionally take precedence over your supplemental routes:$/デフォルトのリソースルート以外のルートをリソースコントローラへ追加する場合は、`Route::resource`の呼び出しより前に定義する必要があります。そうしないと、`resource`メソッドにより定義されるルートが、追加のルートより意図に反して優先されます。/
s/^> {tip} Remember to keep your controllers focused\. If you find yourself routinely needing methods outside of the typical set of resource actions, consider splitting your controller into two, smaller controllers\.$/> {tip} コントローラの責務を限定することを思い出してください。典型的なリソースアクションから外れたメソッドが繰り返して必要になっているようであれば、コントローラを２つに分け、小さなコントローラにすることを考えましょう。/
s/^## Dependency Injection & Controllers$/## 依存注入とコントローラ/
s/^#### Constructor Injection$/#### コンストラクターインジェクション/
s/^The Laravel \[service container\](\/docs\/{{version}}\/container) is used to resolve all Laravel controllers\. As a result, you are able to type-hint any dependencies your controller may need in its constructor\. The declared dependencies will automatically be resolved and injected into the controller instance:$/全コントローラの依存を解決するために、Laravelの[サービスコンテナ](\/docs\/{{version}}\/container)が使用されます。これにより、コントローラが必要な依存をコンストラクターにタイプヒントで指定できるのです。依存クラスは自動的に解決され、コントローラへインスタンスが注入されます。/
s/^        \/\*\*$/        \/**/
s/^         \* The user repository instance\.$/         * ユーザーリポジトリインスタンス/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new controller instance\.$/         * 新しいコントローラインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  UserRepository  $users$/         * @param  UserRepository  $users/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Of course, you may also type-hint any \[Laravel contract\](\/docs\/{{version}}\/contracts)\. If the container can resolve it, you can type-hint it\. Depending on your application, injecting your dependencies into your controller may provide better testability\.$/もちろん、[Laravelの契約](\/docs\/{{version}}\/contracts)もタイプヒントに指定できます。コンテナが解決できるのであれば、タイプヒントで指定できます。 アプリケーションによっては、依存をコントローラへ注入すれば、より良いテスタビリティが得られるでしょう。/
s/^#### Method Injection$/#### メソッドインジェクション/
s/^In addition to constructor injection, you may also type-hint dependencies on your controller's methods\. A common use-case for method injection is injecting the `Illuminate\\Http\\Request` instance into your controller methods:$/コンストラクターによる注入に加え、コントローラのメソッドでもタイプヒントにより依存を指定することもできます。メソッドインジェクションの典型的なユースケースは、コントローラメソッドへ`Illuminate\\Http\\Request`インスタンスを注入する場合です。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new user\.$/         * 新ユーザーの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^If your controller method is also expecting input from a route parameter, list your route arguments after your other dependencies\. For example, if your route is defined like so:$/コントローラメソッドへルートパラメーターによる入力値が渡される場合も、依存定義の後に続けてルート引数を指定します。たとえば以下のようにルートが定義されていれば：/
s/^You may still type-hint the `Illuminate\\Http\\Request` and access your `id` parameter by defining your controller method as follows:$/下記のように`Illuminate\\Http\\Request`をタイプヒントで指定しつつ、コントローラメソッドで定義している`id`パラメータにアクセスできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the given user\.$/         * 指定ユーザーの更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  string  $id$/         * @param  string  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^## Route Caching$/## ルートキャッシュ/
s/^> {note} Closure based routes cannot be cached\. To use route caching, you must convert any Closure routes to controller classes\.$/> {note} ルートキャッシュはクロージャベースのルートには動作しません。ルートキャッシュを使用するには、全クロージャルートをコントローラクラスを使用するように変更する必要があります。/
s/^If your application is exclusively using controller based routes, you should take advantage of Laravel's route cache\. Using the route cache will drastically decrease the amount of time it takes to register all of your application's routes\. In some cases, your route registration may even be up to 100x faster\. To generate a route cache, just execute the `route:cache` Artisan command:$/アプリケーションがコントローラベースのルート定義だけを使用しているなら、Laravelのルートキャッシュを利用できる利点があります。ルートキャッシュを使用すれば、アプリケーションの全ルートを登録するのに必要な時間を劇的に減らすことができます。ある場合には、ルート登録が１００倍も早くなります。ルートキャッシュを登録するには、`route:cache` Arisanコマンドを実行するだけです。/
s/^After running this command, your cached routes file will be loaded on every request\. Remember, if you add any new routes you will need to generate a fresh route cache\. Because of this, you should only run the `route:cache` command during your project's deployment\.$/このコマンドを実行後、キャッシュ済みルートファイルが、リクエストのたびに読み込まれます。新しいルートを追加する場合は、新しいルートキャッシュを生成する必要があることを覚えておきましょう。ですからプロジェクトの開発期間の最後に、一度だけ`route:cache`を実行するほうが良いでしょう。/
s/^You may use the `route:clear` command to clear the route cache:$/キャッシュルートのファイルを削除するには、`route:clear`コマンドを使います。/
