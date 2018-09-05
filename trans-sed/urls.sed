s/^# URL Generation$/# URL生成/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[The Basics\](#the-basics)$/- [基礎](#the-basics)/
s/^    - \[Generating Basic URLs\](#generating-basic-urls)$/    - [URL生成の基礎](#generating-basic-urls)/
s/^    - \[Accessing The Current URL\](#accessing-the-current-url)$/    - [現在のURLへのアクセス](#accessing-the-current-url)/
s/^- \[URLs For Named Routes\](#urls-for-named-routes)$/- [名前付きルートのURL](#urls-for-named-routes)/
s/^    - \[Signed URLs\](#signed-urls)$/    - [署名付きURL](#signed-urls)/
s/^- \[URLs For Controller Actions\](#urls-for-controller-actions)$/- [コントローラアクションのURL](#urls-for-controller-actions)/
s/^- \[Default Values\](#default-values)$/- [デフォルト値](#default-values)/
s/^## Introduction$/## イントロダクション/
s/^Laravel provides several helpers to assist you in generating URLs for your application\. Of course, these are mainly helpful when building links in your templates and API responses, or when generating redirect responses to another part of your application\.$/Laravelはアプリケーションに対するURL生成の手助けとなる、数多くのヘルパを提供しています。これは主にテンプレートやAPIレスポンスでリンクを構築するためにはもちろんのこと、リダイレクトレスポンスの生成や、アプリケーションの他の部分でも役立ちます。/
s/^## The Basics$/## 基礎/
s/^### Generating Basic URLs$/### URL生成の基礎/
s/^The `url` helper may be used to generate arbitrary URLs for your application\. The generated URL will automatically use the scheme (HTTP or HTTPS) and host from the current request:$/`url`ヘルパは、アプリケーションに対する任意のURLを生成するために使用されます。生成されるURLには自動的に、現在のリクエストのスキーム（HTTP／HTTPS）とホストが使用されます。/
s/^    \/\/ http:\/\/example\.com\/posts\/1$/    \/\/ http:\/\/example.com\/posts\/1/
s/^### Accessing The Current URL$/### 現在のURLへのアクセス/
s/^If no path is provided to the `url` helper, a `Illuminate\\Routing\\UrlGenerator` instance is returned, allowing you to access information about the current URL:$/`url`ヘルパにパスを指定しないと、`Illuminate\\Routing\\UrlGenerator`インスタンスが返され、現在のURLに関する情報へアクセスできます。/
s/^    \/\/ Get the current URL without the query string\.\.\.$/    \/\/ クエリ文字列を除いた現在のURL/
s/^    \/\/ Get the current URL including the query string\.\.\.$/    \/\/ クエリ文字列を含んだ現在のURL/
s/^    \/\/ Get the full URL for the previous request\.\.\.$/    \/\/ 直前のリクエストの完全なURL/
s/^Each of these methods may also be accessed via the `URL` \[facade\](\/docs\/{{version}}\/facades):$/こうしたメソッドには、`URL`[ファサード](\/docs\/{{version}}\/facades)を使用してもアクセスできます。/
s/^## URLs For Named Routes$/## 名前付きルートのURL/
s/^The `route` helper may be used to generate URLs to named routes\. Named routes allow you to generate URLs without being coupled to the actual URL defined on the route\. Therefore, if the route's URL changes, no changes need to be made to your `route` function calls\. For example, imagine your application contains a route defined like the following:$/`route`ヘルパは、名前付きルートへのURLを生成するために使用します。名前付きルートにより、定義したルートの実際のURLを指定せずとも、URLを生成することができます。ですから、ルートのURLを変更しても、`route`関数の呼び出しを変更する必要はありません。例として以下のように、アプリケーションが次のルートを持っていると想像してください。/
s/^    })->name('post\.show');$/    })->name('post.show');/
s/^To generate a URL to this route, you may use the `route` helper like so:$/このルートへのURLを生成するには、次のように`route`ヘルパを使用します。/
s/^    echo route('post\.show', \['post' => 1\]);$/    echo route('post.show', ['post' => 1]);/
s/^    \/\/ http:\/\/example\.com\/post\/1$/    \/\/ http:\/\/example.com\/post\/1/
s/^You will often be generating URLs using the primary key of \[Eloquent models\](\/docs\/{{version}}\/eloquent)\. For this reason, you may pass Eloquent models as parameter values\. The `route` helper will automatically extract the model's primary key:$/[Eloquentモデル](\/docs\/{{version}}\/eloquent)の主キーを使用するURLを生成することもよくあると思います。そのため、Eloquentモデルをパラメータ値として渡すことができます。`route`ヘルパは、そのモデルの主キーを自動的に取り出します。/
s/^    echo route('post\.show', \['post' => $post\]);$/    echo route('post.show', ['post' => $post]);/
s/^### Signed URLs$/### 署名付きURL/
s/^Laravel allows you to easily create "signed" URLs to named routes\. These URLs have a "signature" hash appended to the query string which allows Laravel to verify that the URL has not been modified since it was created\. Signed URLs are especially useful for routes that are publicly accessible yet need a layer of protection against URL manipulation\.$/Laravelでは名前付きルートに対し、簡単に「署名付きURL」を作成できます。このURLは「署名」ハッシュをクエリ文字列として付加し、作成されてからそのURLが変更されていないかをLaravelで確認できるようにします。署名付きURLは公にアクセスさせるルートではあるが、URL操作に対する保護レイヤが必要な場合に特に便利です。/
s/^For example, you might use signed URLs to implement a public "unsubscribe" link that is emailed to your customers\. To create a signed URL to a named route, use the `signedRoute` method of the `URL` facade:$/たとえば、公の「購読終了」リンクを顧客へのメールに用意するために、署名付きURLが使用できます。名前付きルートに対し署名URLを作成するには、`URL`ファサードの`signedRoute`メソッドを使用します。/
s/^    return URL::signedRoute('unsubscribe', \['user' => 1\]);$/    return URL::signedRoute('unsubscribe', ['user' => 1]);/
s/^If you would like to generate a temporary signed route URL that expires, you may use the `temporarySignedRoute` method:$/一定期間で無効になる署名URLを生成したい場合は、`temporarySignedRoute`メソッドを使用します。/
s/^        'unsubscribe', now()->addMinutes(30), \['user' => 1\]$/        'unsubscribe', now()->addMinutes(30), ['user' => 1]/
s/^#### Validating Signed Route Requests$/#### 署名付きルートリクエストの検査/
s/^To verify that an incoming request has a valid signature, you should call the `hasValidSignature` method on the incoming `Request`:$/送信されてきたリクエストが有効な著名を持っているかを検査するには、送信された`Request`に対して、`hasValidSignature`メソッドを呼び出します。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^Alternatively, you may assign the `Illuminate\\Routing\\Middleware\\ValidateSignature` middleware to the route\. If it is not already present, you should assign this middleware a key in your HTTP kernel's `routeMiddleware` array:$/もしくは、`Illuminate\\Routing\\Middleware\\ValidateSignature`ミドルウェアをそのルートへ指定します。用意していない場合、このミドルウェアをHTTPカーネルの`routeMiddleware`配列で指定してください。/
s/^    \/\*\*$/    \/**/
s/^     \* The application's route middleware\.$/     * アプリケーションルートのミドルウェア/
s/^     \*$/     */
s/^     \* These middleware may be assigned to groups or used individually\.$/     * これらのミドルウェアはグループ、もしくは個別に指定される。/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $routeMiddleware = \[$/    protected $routeMiddleware = [/
s/^    \];$/    ];/
s/^Once you have registered the middleware in your kernel, you may attach it to a route\. If the incoming request does not have a valid signature, the middleware will automatically return a `403` error response:$/このミドルウェアをカーネルへ登録できたら、ルートで指定できます。送信されたリクエストは有効な著名を持っていない場合、このミドルウェアは自動的に`403`エラーレスポンスを返します。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^## URLs For Controller Actions$/## コントローラアクションのURL/
s/^The `action` function generates a URL for the given controller action\. You do not need to pass the full namespace of the controller\. Instead, pass the controller class name relative to the `App\\Http\\Controllers` namespace:$/`action`関数は、指定するコントローラアクションに対するURLを生成します。コントローラの完全な名前空間を渡す必要はありません。代わりに、`App\\Http\\Controllers`名前空間からの相対的なコントローラクラス名を指定してください。/
s/^You may also reference actions with a "callable" array syntax:$/「呼び出し可能な」配列の記法により、アクションを参照することもできます。/
s/^    $url = action(\[HomeController::class, 'index'\]);$/    $url = action([HomeController::class, 'index']);/
s/^If the controller method accepts route parameters, you may pass them as the second argument to the function:$/コントローラメソッドが、ルートパラメータを受け取る場合、この関数の第２引数として渡すことができます。/
s/^    $url = action('UserController@profile', \['id' => 1\]);$/    $url = action('UserController@profile', ['id' => 1]);/
s/^## Default Values$/## デフォルト値/
s/^For some applications, you may wish to specify request-wide default values for certain URL parameters\. For example, imagine many of your routes define a `{locale}` parameter:$/アプリケーションにより、特定のURLパラメータのデフォルト値をリクエスト全体で指定したい場合もあります。たとえば、多くのルートで`{locale}`パラメータを定義していると想像してください。/
s/^    })->name('post\.index');$/    })->name('post.index');/
s/^It is cumbersome to always pass the `locale` every time you call the `route` helper\. So, you may use the `URL::defaults` method to define a default value for this parameter that will always be applied during the current request\. You may wish to call this method from a \[route middleware\](\/docs\/{{version}}\/middleware#assigning-middleware-to-routes) so that you have access to the current request:$/毎回`route`ヘルパを呼び出すごとに、`locale`をいつも指定するのは厄介です。そのため、現在のリクエストの間、常に適用されるこのパラメートのデフォルト値は、`URL::defaults`メソッドを使用し定義できます。現在のリクエストでアクセスできるように、[ルートミドルウェア](\/docs\/{{version}}\/middleware#assigning-middleware-to-routes)から、このメソッドを呼び出したいかと思います。/
s/^            URL::defaults(\['locale' => $request->user()->locale\]);$/            URL::defaults(['locale' => $request->user()->locale]);/
s/^Once the default value for the `locale` parameter has been set, you are no longer required to pass its value when generating URLs via the `route` helper\.$/一度`locale`パラメータに対するデフォルト値をセットしたら、`route`ヘルパを使いURLを生成する時に、値を渡す必要はもうありません。/
