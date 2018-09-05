s/^# HTTP Responses$/# HTTPレスポンス/
s/^- \[Creating Responses\](#creating-responses)$/- [レスポンスの生成](#creating-responses)/
s/^    - \[Attaching Headers To Responses\](#attaching-headers-to-responses)$/    - [ヘッダの付加](#attaching-headers-to-responses)/
s/^    - \[Attaching Cookies To Responses\](#attaching-cookies-to-responses)$/    - [クッキーの付加](#attaching-cookies-to-responses)/
s/^    - \[Cookies & Encryption\](#cookies-and-encryption)$/    - [クッキーと暗号化](#cookies-and-encryption)/
s/^- \[Redirects\](#redirects)$/- [リダイレクト](#redirects)/
s/^    - \[Redirecting To Named Routes\](#redirecting-named-routes)$/    - [名前付きルートへのリダイレクト](#redirecting-named-routes)/
s/^    - \[Redirecting To Controller Actions\](#redirecting-controller-actions)$/    - [コントローラアクションへのリダイレクト](#redirecting-controller-actions)/
s/^    - \[Redirecting To External Domains\](#redirecting-external-domains)$/    - [外部ドメインへのリダイレクト](#redirecting-external-domains)/
s/^    - \[Redirecting With Flashed Session Data\](#redirecting-with-flashed-session-data)$/    - [フラッシュデータを保存するリダイレクト](#redirecting-with-flashed-session-data)/
s/^- \[Other Response Types\](#other-response-types)$/- [他のレスポンスタイプ](#other-response-types)/
s/^    - \[View Responses\](#view-responses)$/    - [Viewレスポンス](#view-responses)/
s/^    - \[JSON Responses\](#json-responses)$/    - [JSONレスポンス](#json-responses)/
s/^    - \[File Downloads\](#file-downloads)$/    - [Fileダウンロード](#file-downloads)/
s/^    - \[File Responses\](#file-responses)$/    - [Fileレスポンス](#file-responses)/
s/^- \[Response Macros\](#response-macros)$/- [レスポンスマクロ](#response-macros)/
s/^## Creating Responses$/## レスポンスの生成/
s/^#### Strings & Arrays$/#### 文字列と配列/
s/^All routes and controllers should return a response to be sent back to the user's browser\. Laravel provides several different ways to return responses\. The most basic response is returning a string from a route or controller\. The framework will automatically convert the string into a full HTTP response:$/当然ながら全てのルートやコントローラは、ユーザーのブラウザーに対し、何らかのレスポンスを返す必要があります。Laravelはレスポンスを返すために様々な手段を用意しています。一番基本的なレスポンスは、ルートかコントローラから文字列を返します。フレームワークが自動的に、文字列を完全なHTTPレスポンスへ変換します。/
s/^In addition to returning strings from your routes and controllers, you may also return arrays\. The framework will automatically convert the array into a JSON response:$/ルートやコントローラから文字列を返す他に、配列も返せます。フレームワークは自動的に、配列をJSONレスポンスへ変換します。/
s/^        return \[1, 2, 3\];$/        return [1, 2, 3];/
s/^> {tip} Did you know you can also return \[Eloquent collections\](\/docs\/{{version}}\/eloquent-collections) from your routes or controllers? They will automatically be converted to JSON\. Give it a shot!$/> {tip} [Eloquentコレクション](\/docs\/{{version}}\/eloquent-collections)も返せることを知っていますか？　自動的にJSONへ変換されます。試してください！/
s/^#### Response Objects$/#### レスポンスオブジェクト/
s/^Typically, you won't just be returning simple strings or arrays from your route actions\. Instead, you will be returning full `Illuminate\\Http\\Response` instances or \[views\](\/docs\/{{version}}\/views)\.$/通常、皆さんは単純な文字列や配列をルートアクションから返すだけじゃありませんよね。代わりに、`Illuminate\\Http\\Response`インスタンスか[views](\/docs\/{{version}}\/views)を返したいですよね。/
s/^Returning a full `Response` instance allows you to customize the response's HTTP status code and headers\. A `Response` instance inherits from the `Symfony\\Component\\HttpFoundation\\Response` class, which provides a variety of methods for building HTTP responses:$/完全な`Response`インスタンスを返せば、レスポンスのHTTPステータスコードやヘッダをカスタマイズできます。`Response`インスタンスは、`Symfony\\Component\\HttpFoundation\\Response`クラスを継承しており、HTTPレスポンスを構築するために様々なメソッドを提供しています。/
s/^#### Attaching Headers To Responses$/#### ヘッダの付加/
s/^Keep in mind that most response methods are chainable, allowing for the fluent construction of response instances\. For example, you may use the `header` method to add a series of headers to the response before sending it back to the user:$/レスポンスインスタンスをスラスラと構築できるように、ほとんどのレスポンスメソッドはチェーンとしてつなげられることを覚えておきましょう。たとえば、ユーザーにレスポンスを送り返す前に、`header`メソッドでいくつかのヘッダを追加できます。/
s/^Or, you may use the `withHeaders` method to specify an array of headers to be added to the response:$/もしくは、`withHeaders`メソッドで、レスポンスへ追加したいヘッダの配列を指定します。/
s/^                ->withHeaders(\[$/                ->withHeaders([/
s/^                \]);$/                ]);/
s/^#### Attaching Cookies To Responses$/#### クッキーの付加/
s/^The `cookie` method on response instances allows you to easily attach cookies to the response\. For example, you may use the `cookie` method to generate a cookie and fluently attach it to the response instance like so:$/レスポンスインスタンスの`cookie`メソッドで、レスポンスへ簡単にクッキーを付加できます。たとえば、`cookie`メソッドでクッキーを生成し、レスポンスインスタンスへ、さっと付加してみましょう。/
s/^The `cookie` method also accepts a few more arguments which are used less frequently\. Generally, these arguments have the same purpose and meaning as the arguments that would be given to PHP's native \[setcookie\](https:\/\/secure\.php\.net\/manual\/en\/function\.setcookie\.php) method:$/`cookie`メソッドは、さらに使用機会が少ない引数をいくつか受け付けます。これらの引数は、全般的にPHPネイティブの[setcookie](https:\/\/secure.php.net\/manual\/en\/function.setcookie.php)メソッドに指定する引数と、同じ目的、同じ意味合いを持っています。/
s/^Alternatively, you can use the `Cookie` facade to "queue" cookies for attachment to the outgoing response from your application\. The `queue` method accepts a `Cookie` instance or the arguments needed to create a `Cookie` instance\. These cookies will be attached to the outgoing response before it is sent to the browser:$/もしくは、アプリケーションから送り出すレスポンスへアタッチするクッキーを「キュー」するために、`Cookie`ファサードが使えます。`queue`メソッドは、`Cookie`インスタンスか`Cookie`インスタンスを生成するために必要な引数を受け取ります。こうしたクッキーは、ブラウザにレスポンスが送信される前にアタッチされます。/
s/^#### Cookies & Encryption$/#### クッキーと暗号化/
s/^By default, all cookies generated by Laravel are encrypted and signed so that they can't be modified or read by the client\. If you would like to disable encryption for a subset of cookies generated by your application, you may use the `$except` property of the `App\\Http\\Middleware\\EncryptCookies` middleware, which is located in the `app\/Http\/Middleware` directory:$/Laravelにより生成されるクッキーは、クライアントにより変更されたり読まれたりされないようにデフォルトで暗号化され、署名されます。アプリケーションで生成する特定のクッキーで暗号化を無効にしたい場合は、`app\/Http\/Middleware`ディレクトリ中に存在する、`App\\Http\\Middleware\\EncryptCookies`ミドルウェアの`$except`プロパティで指定してください。/
s/^    \/\*\*$/    \/**/
s/^     \* The names of the cookies that should not be encrypted\.$/     * 暗号化しないクッキー名/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $except = \[$/    protected $except = [/
s/^    \];$/    ];/
s/^## Redirects$/## リダイレクト/
s/^Redirect responses are instances of the `Illuminate\\Http\\RedirectResponse` class, and contain the proper headers needed to redirect the user to another URL\. There are several ways to generate a `RedirectResponse` instance\. The simplest method is to use the global `redirect` helper:$/リダイレクトのレスポンスは`Illuminate\\Http\\RedirectResponse`クラスのインスタンスであり、ユーザーを他のURLへリダイレクトさせるために必要なしっかりとしたヘッダを含んでいます。`RedirectResponse`インスタンスを生成するには様々な方法があります。一番簡単な方法は、グローバルな`redirect`ヘルパを使う方法です。/
s/^Sometimes you may wish to redirect the user to their previous location, such as when a submitted form is invalid\. You may do so by using the global `back` helper function\. Since this feature utilizes the \[session\](\/docs\/{{version}}\/session), make sure the route calling the `back` function is using the `web` middleware group or has all of the session middleware applied:$/例えば送信されたフォーム内容にエラーがある場合など、直前のページヘユーザーをリダイレクトさせたい場合もあります。グローバルな`back`ヘルパ関数を使ってください。この機能は[セッション](\/docs\/{{version}}\/session)を利用しているため、`back`関数を使用するルートは`web`ミドルウェアグループに属しているか、セッションミドルウェアが適用されることを確認してください。/
s/^        \/\/ Validate the request\.\.\.$/        \/\/ レスポンスのバリデーション処理…/
s/^### Redirecting To Named Routes$/### 名前付きルートへのリダイレクト/
s/^When you call the `redirect` helper with no parameters, an instance of `Illuminate\\Routing\\Redirector` is returned, allowing you to call any method on the `Redirector` instance\. For example, to generate a `RedirectResponse` to a named route, you may use the `route` method:$/`redirect`ヘルパを引数無しで呼ぶと、`Illuminate\\Routing\\Redirector`インスタンスが返され、`Redirector`インスタンスのメソッドが呼び出せるようになります。たとえば、名前付きルートに対する`RedirectResponse`を生成したい場合は、`route`メソッドが使えます。/
s/^If your route has parameters, you may pass them as the second argument to the `route` method:$/ルートにパラメーターがある場合は、`route`メソッドの第２引数として渡してください。/
s/^    \/\/ For a route with the following URI: profile\/{id}$/    \/\/ profile\/{id}のURIへのリダイレクト/
s/^    return redirect()->route('profile', \['id' => 1\]);$/    return redirect()->route('profile', ['id' => 1]);/
s/^#### Populating Parameters Via Eloquent Models$/#### Eloquentモデルによる、パラメータの埋め込み/
s/^If you are redirecting to a route with an "ID" parameter that is being populated from an Eloquent model, you may pass the model itself\. The ID will be extracted automatically:$/Eloquentモデルの"ID"をルートパラメーターとしてリダイレクトする場合は、モデルをそのまま渡してください。IDは自動的にとり出されます。/
s/^    \/\/ For a route with the following URI: profile\/{id}$/    \/\/ profile\/{id}のURIへのリダイレクト/
s/^    return redirect()->route('profile', \[$user\]);$/    return redirect()->route('profile', [$user]);/
s/^If you would like to customize the value that is placed in the route parameter, you should override the `getRouteKey` method on your Eloquent model:$/ルートパラメータに埋め込む値をカスタマイズしたい場合は、Eloquentモデルの`getRouteKey`メソッドをオーバーライドします。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the value of the model's route key\.$/     * モデルのルートキー値の取得/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^### Redirecting To Controller Actions$/### コントローラアクションへのリダイレクト/
s/^You may also generate redirects to \[controller actions\](\/docs\/{{version}}\/controllers)\. To do so, pass the controller and action name to the `action` method\. Remember, you do not need to specify the full namespace to the controller since Laravel's `RouteServiceProvider` will automatically set the base controller namespace:$/[コントローラアクション](\/docs\/{{version}}\/controllers)に対するリダイレクトを生成することもできます。そのためには、コントローラとアクションの名前を`action`メソッドに渡してください。Laravelの`RouteServiceProvider`により、ベースのコントローラ名前空間が自動的に設定されるため、コントローラの完全名前空間名を指定する必要がないことを覚えておいてください。/
s/^If your controller route requires parameters, you may pass them as the second argument to the `action` method:$/コントローラルートにパラメーターが必要ならば、`action`メソッドの第２引数として渡してください。/
s/^        'UserController@profile', \['id' => 1\]$/        'UserController@profile', ['id' => 1]/
s/^### Redirecting To External Domains$/### 外部ドメインへのリダイレクト/
s/^Sometimes you may need to redirect to a domain outside of your application\. You may do so by calling the `away` method, which creates a `RedirectResponse` without any additional URL encoding, validation, or verification:$/アプリケーション外のドメインへリダイレクトする必要が時々起きます。このためには`away`メソッドを呼び出してください。これは`RedirectResponse`を生成しますが、URLエンコードを追加せず、バリデーションも検証も行いません。/
s/^    return redirect()->away('https:\/\/www\.google\.com');$/    return redirect()->away('https:\/\/www.google.com');/
s/^### Redirecting With Flashed Session Data$/### フラッシュデータを保存するリダイレクト/
s/^Redirecting to a new URL and \[flashing data to the session\](\/docs\/{{version}}\/session#flash-data) are usually done at the same time\. Typically, this is done after successfully performing an action when you flash a success message to the session\. For convenience, you may create a `RedirectResponse` instance and flash data to the session in a single, fluent method chain:$/新しいURLへリダイレクトし、[セッションへフラッシュデータを保存する](\/docs\/{{version}}\/session#flash-data)のは、一度にまとめて行われる典型的な作業です。典型的な使い方は、あるアクションが実行成功した後に、実効成功メッセージをフラッシュデータとしてセッションに保存する場合でしょう。これに便利なように、`RedirectResponse`インスタンスを生成し、メソッドチェーンを一つだけさっと書けば、データをセッションへ保存できるようになっています。/
s/^        \/\/ Update the user's profile\.\.\.$/        \/\/ ユーザープロフィールの更新処理…/
s/^After the user is redirected, you may display the flashed message from the \[session\](\/docs\/{{version}}\/session)\. For example, using \[Blade syntax\](\/docs\/{{version}}\/blade):$/ユーザーを新しいページヘリダイレクトした後、[セッション](\/docs\/{{version}}\/session)へ保存したフラッシュデータのメッセージを取り出して、表示します。たとえば、[Blade記法](\/docs\/{{version}}\/blade)を使ってみましょう。/
s/^## Other Response Types$/## 他のレスポンスタイプ/
s/^The `response` helper may be used to generate other types of response instances\. When the `response` helper is called without arguments, an implementation of the `Illuminate\\Contracts\\Routing\\ResponseFactory` \[contract\](\/docs\/{{version}}\/contracts) is returned\. This contract provides several helpful methods for generating responses\.$/`response`ヘルパは、他のタイプのレスポンスインスタンスを生成するために便利です。`response`ヘルパが引数なしで呼び出されると、`Illuminate\\Contracts\\Routing\\ResponseFactory`[契約](\/docs\/{{version}}\/contracts)が返されます。この契約はレスポンスを生成するための、様々なメソッドを提供しています。/
s/^### View Responses$/### Viewレスポンス/
s/^If you need control over the response's status and headers but also need to return a \[view\](\/docs\/{{version}}\/views) as the response's content, you should use the `view` method:$/レスポンスのステータスやヘッダをコントロールしながらも、レスポンス内容として[ビュー](\/docs\/{{version}}\/views)を返す必要がある場合は、`view`メソッドを使用してください。/
s/^Of course, if you do not need to pass a custom HTTP status code or custom headers, you should use the global `view` helper function\.$/もちろん、カスタムHTTPステータスコードやヘッダの指定が不必要であれば、シンプルにグローバル`view`ヘルパ関数を使用することもできます。/
s/^### JSON Responses$/### JSONレスポンス/
s/^The `json` method will automatically set the `Content-Type` header to `application\/json`, as well as convert the given array to JSON using the `json_encode` PHP function:$/`json`メソッドは自動的に`Content-Type`ヘッダを`application\/json`にセットし、同時に指定された配列を`json_encode` PHP関数によりJSONへ変換します。/
s/^    return response()->json(\[$/    return response()->json([/
s/^    \]);$/    ]);/
s/^If you would like to create a JSONP response, you may use the `json` method in combination with the `withCallback` method:$/JSONPレスポンスを生成したい場合は、`json`メソッドと`withCallback`メソッドを組み合わせてください。/
s/^                ->json(\['name' => 'Abigail', 'state' => 'CA'\])$/                ->json(['name' => 'Abigail', 'state' => 'CA'])/
s/^### File Downloads$/### Fileダウンロード/
s/^The `download` method may be used to generate a response that forces the user's browser to download the file at the given path\. The `download` method accepts a file name as the second argument to the method, which will determine the file name that is seen by the user downloading the file\. Finally, you may pass an array of HTTP headers as the third argument to the method:$/`download`メソッドは指定したパスのファイルをダウンロードようにブラウザに強要するレスポンスを生成するために使用します。`download`メソッドはファイル名を第２引数として受け取り、ユーザーがダウンロードするファイル名になります。第３引数にHTTPヘッダの配列を渡すこともできます。/
s/^> {note} Symfony HttpFoundation, which manages file downloads, requires the file being downloaded to have an ASCII file name\.$/> {note} ファイルダウンロードを管理しているSymfony HttpFoundationクラスは、ASCIIのダウンロードファイル名を指定するよう要求しています。/
s/^#### Streamed Downloads$/#### ストリームダウンロード/
s/^Sometimes you may wish to turn the string response of a given operation into a downloadable response without having to write the contents of the operation to disk\. You may use the `streamDownload` method in this scenario\. This method accepts a callback, file name, and an optional array of headers as its arguments:$/操作するコンテンツをディスクへ書き込まずに、指定した操作の文字列レスポンスをダウンロード可能なレスポンスへ変えたい場合もあります。そうしたシナリオでは、`streamDownload`メソッドを使用します。このメソッドは引数として、コールバック、ファイル名、それにオプションとしてヘッダの配列を受け取ります。/
s/^                    ->readme('laravel', 'laravel')\['contents'\];$/                    ->readme('laravel', 'laravel')['contents'];/
s/^    }, 'laravel-readme\.md');$/    }, 'laravel-readme.md');/
s/^### File Responses$/### Fileレスポンス/
s/^The `file` method may be used to display a file, such as an image or PDF, directly in the user's browser instead of initiating a download\. This method accepts the path to the file as its first argument and an array of headers as its second argument:$/`file`メソッドは、ダウンロードする代わりに、ブラウザへ画像やPDFのようなファイルを表示するために使用します。このメソッドは第1引数にファイルパス、第2引数にヘッダの配列を指定します。/
s/^## Response Macros$/## レスポンスマクロ/
s/^If you would like to define a custom response that you can re-use in a variety of your routes and controllers, you may use the `macro` method on the `Response` facade\. For example, from a \[service provider's\](\/docs\/{{version}}\/providers) `boot` method:$/いろいろなルートやコントローラで、再利用するためのカスタムレスポンスを定義したい場合は`Response`ファサードの`macro`メソッドが使用できます。たとえば、[サービスプロバイダ](\/docs\/{{version}}\/providers)の`boot`メソッドで定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* Register the application's response macros\.$/         * アプリケーションのレスポンスマクロ登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^The `macro` function accepts a name as its first argument, and a Closure as its second\. The macro's Closure will be executed when calling the macro name from a `ResponseFactory` implementation or the `response` helper:$/`macro`メソッドは登録名を第１引数、クロージャを第２引数に取ります。マクロのクロージャは`ResponseFactory`の実装か、`response`ヘルパに対し、登録名で呼び出すことで、実行されます。/
