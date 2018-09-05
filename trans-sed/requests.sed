s/^# HTTP Requests$/# HTTPリクエスト/
s/^- \[Accessing The Request\](#accessing-the-request)$/- [リクエストの取得](#accessing-the-request)/
s/^    - \[Request Path & Method\](#request-path-and-method)$/    - [リクエストパスとメソッド](#request-path-and-method)/
s/^    - \[PSR-7 Requests\](#psr7-requests)$/    - [PSR-7リクエスト](#psr7-requests)/
s/^- \[Input Trimming & Normalization\](#input-trimming-and-normalization)$/- [入力のトリムとノーマライゼーション](#input-trimming-and-normalization)/
s/^- \[Retrieving Input\](#retrieving-input)$/- [入力の取得](#retrieving-input)/
s/^    - \[Old Input\](#old-input)$/    - [直前の入力](#old-input)/
s/^    - \[Cookies\](#cookies)$/    - [クッキー](#cookies)/
s/^- \[Files\](#files)$/- [ファイル](#files)/
s/^    - \[Retrieving Uploaded Files\](#retrieving-uploaded-files)$/    - [アップロードファイルの取得](#retrieving-uploaded-files)/
s/^    - \[Storing Uploaded Files\](#storing-uploaded-files)$/    - [アップロードファイルの保存](#storing-uploaded-files)/
s/^- \[Configuring Trusted Proxies\](#configuring-trusted-proxies)$/- [Configuring Trusted Proxies](#configuring-trusted-proxies)/
s/^## Accessing The Request$/## リクエストの取得/
s/^To obtain an instance of the current HTTP request via dependency injection, you should type-hint the `Illuminate\\Http\\Request` class on your controller method\. The incoming request instance will automatically be injected by the \[service container\](\/docs\/{{version}}\/container):$/依存注入により、現在のHTTPリクエストインスタンスを取得するには、タイプヒントで`Illuminate\\Http\\Request`クラスをコントローラメソッドに指定します。現在のリクエストインスタンスが、[サービスプロバイダ](\/docs\/{{version}}\/container)により、自動的に注入されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new user\.$/         * 新しいユーザーを保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^#### Dependency Injection & Route Parameters$/#### 依存注入とルートパラメータ/
s/^If your controller method is also expecting input from a route parameter you should list your route parameters after your other dependencies\. For example, if your route is defined like so:$/もし、コントローラメソッドでルートパラメーターも併用したい場合は、依存の指定の後にルート引数を続けてリストしてください。たとえば次のようにルートを定義している場合：/
s/^You may still type-hint the `Illuminate\\Http\\Request` and access your route parameter `id` by defining your controller method as follows:$/次のようにコントローラメソッドの中で、まずタイプヒントで`Illuminate\\Http\\Request`を指定し、それからルートパラメーターの`id`へアクセスします。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the specified user\.$/         * 指定したユーザーの更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  string  $id$/         * @param  string  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^#### Accessing The Request Via Route Closures$/#### ルートクロージャでのリクエスト取得/
s/^You may also type-hint the `Illuminate\\Http\\Request` class on a route Closure\. The service container will automatically inject the incoming request into the Closure when it is executed:$/ルートクロージャでも`Illuminate\\Http\\Request`をタイプヒントで指定できます。そのルートが実行されると、送信されてきたリクエストをサービスコンテナが自動的にクロージャへ渡します。/
s/^### Request Path & Method$/### リクエストパスとメソッド/
s/^The `Illuminate\\Http\\Request` instance provides a variety of methods for examining the HTTP request for your application and extends the `Symfony\\Component\\HttpFoundation\\Request` class\. We will discuss a few of the most important methods below\.$/`Illuminate\\Http\\Request`インスタンスは、`Symfony\\Component\\HttpFoundation\\Request`クラスを拡張しており、HTTPリクエストを調べるために数多くのメソッドを提供しています。提供されている便利なメソッドをいくつか紹介しましょう。/
s/^#### Retrieving The Request Path$/#### リクエストURIの取得/
s/^The `path` method returns the request's path information\. So, if the incoming request is targeted at `http:\/\/domain\.com\/foo\/bar`, the `path` method will return `foo\/bar`:$/`path`メソッドはリクエストURIを返します。もしリクエストが`http:\/\/domain.com\/foo\/bar`に送られたとすると、`path`メソッドは`foo\/bar`を返します。/
s/^The `is` method allows you to verify that the incoming request path matches a given pattern\. You may use the `\*` character as a wildcard when utilizing this method:$/`is`メソッドにより、リクエストのURIが指定されたパターンに合致するかを確認できます。このメソッドでは`*`をワイルドカードとして使用できます。/
s/^    if ($request->is('admin\/\*')) {$/    if ($request->is('admin\/*')) {/
s/^#### Retrieving The Request URL$/#### リクエストURLの取得/
s/^To retrieve the full URL for the incoming request you may use the `url` or `fullUrl` methods\. The `url` method will return the URL without the query string, while the `fullUrl` method includes the query string:$/送信されたリクエストの完全なURLを取得する場合は、`url`か`fullUrl`メソッドを使用してください。`url`メソッドはクエリストリングを除いたURLを返し、一方の`fullUrl`メソッドはクエリストリング付きで返します。/
s/^    \/\/ Without Query String\.\.\.$/    \/\/ クエリ文字列なし/
s/^    \/\/ With Query String\.\.\.$/    \/\/ クエリ文字列付き/
s/^#### Retrieving The Request Method$/#### リクエストメソッドの取得/
s/^The `method` method will return the HTTP verb for the request\. You may use the `isMethod` method to verify that the HTTP verb matches a given string:$/`method`メソッドはリクエストのHTTP動詞を返します。また、`isMethod`メソッドを使えば、指定した文字列とHTTP動詞が一致するかを調べることができます。/
s/^### PSR-7 Requests$/### PSR-7リクエスト/
s/^The \[PSR-7 standard\](http:\/\/www\.php-fig\.org\/psr\/psr-7\/) specifies interfaces for HTTP messages, including requests and responses\. If you would like to obtain an instance of a PSR-7 request instead of a Laravel request, you will first need to install a few libraries\. Laravel uses the \*Symfony HTTP Message Bridge\* component to convert typical Laravel requests and responses into PSR-7 compatible implementations:$/[PSR-7規約](http:\/\/www.php-fig.org\/psr\/psr-7\/)はリクエストとレスポンスを含めたHTTPメッセージのインターフェイスを規定しています。PSR-7リクエストのインスタンスを受け取りたければ、ライブラリーをいくつかインストールする必要があります。LaravelはLaravelリクエストとレスポンスをPSR-7互換の実装に変換するために、**Symfony HTTPメッセージブリッジコンポーネント**を使用しています。/
s/^Once you have installed these libraries, you may obtain a PSR-7 request by type-hinting the request interface on your route Closure or controller method:$/これらのライブラリをインストールし、ルートクロージャかコントローラメソッドで、リクエストインターフェイスをタイプヒントで指定すれば、PSR-7リクエストを取得できます。/
s/^> {tip} If you return a PSR-7 response instance from a route or controller, it will automatically be converted back to a Laravel response instance and be displayed by the framework\.$/> {tip} ルートかコントローラからPSR-7レスポンスインスタンスを返せば、自動的にLaravelのレスポンスインスタンスに変換され、フレームワークにより表示されます。/
s/^## Input Trimming & Normalization$/## 入力のトリムとノーマライゼーション/
s/^By default, Laravel includes the `TrimStrings` and `ConvertEmptyStringsToNull` middleware in your application's global middleware stack\. These middleware are listed in the stack by the `App\\Http\\Kernel` class\. These middleware will automatically trim all incoming string fields on the request, as well as convert any empty string fields to `null`\. This allows you to not have to worry about these normalization concerns in your routes and controllers\.$/Laravelのデフォルトグローバルミドルウェアスタックには、`TrimStrings`と`ConvertEmptyStringsToNull`ミドルウェアが含まれています。これらのミドルウェアは、`App\\Http\\Kernel`クラスにリストされています。これらのミドルウェアは自動的にリクエストの全入力フィールドをトリムし、それと同時に空の文字列フィールドを`null`へ変換します。これにより、ルートやコントローラで、ノーマライズについて心配する必要が無くなります。/
s/^If you would like to disable this behavior, you may remove the two middleware from your application's middleware stack by removing them from the `$middleware` property of your `App\\Http\\Kernel` class\.$/この振る舞いを無効にするには、`App\\Http\\Kernel`クラスの`$middleware`プロパティからこれらのミドルウェアを削除することにより、アプリケーションのミドルウェアスタックから外してください。/
s/^## Retrieving Input$/## 入力の取得/
s/^#### Retrieving All Input Data$/#### 全入力データの取得/
s/^You may also retrieve all of the input data as an `array` using the `all` method:$/全入力を「配列」として受け取りたい場合は、`all`メソッドを使用します。/
s/^#### Retrieving An Input Value$/#### 入力値の取得/
s/^Using a few simple methods, you may access all of the user input from your `Illuminate\\Http\\Request` instance without worrying about which HTTP verb was used for the request\. Regardless of the HTTP verb, the `input` method may be used to retrieve user input:$/`Illuminate\\Http\\Request`インスタンスのシンプルなメソッドを利用すれば、ユーザー入力の全てにアクセスできます。リクエストのHTTP動詞に気をもむ必要はありません。HTTP動詞に関わらず、`input`メソッドでユーザー入力を取得できます。/
s/^You may pass a default value as the second argument to the `input` method\. This value will be returned if the requested input value is not present on the request:$/`input`メソッドには第2引数としてデフォルト値を指定できます。この値はリクエストに指定した入力値が存在していない場合に返されます。/
s/^When working with forms that contain array inputs, use "dot" notation to access the arrays:$/配列での入力を含むフォームを取り扱うときは、「ドット」記法で配列へアクセスできます。/
s/^    $name = $request->input('products\.0\.name');$/    $name = $request->input('products.0.name');/
s/^    $names = $request->input('products\.\*\.name');$/    $names = $request->input('products.*.name');/
s/^#### Retrieving Input From The Query String$/#### クエリストリングからの入力取得/
s/^While the `input` method retrieves values from entire request payload (including the query string), the `query` method will only retrieve values from the query string:$/`input`メソッドは、クエリストリングも含めたリクエストペイロード全体から、値を取得するのに対し、`query`メソッドはクエリストリングからのみ値を取得します。/
s/^If the requested query string value data is not present, the second argument to this method will be returned:$/要求したクエリストリング値が存在しない場合、このメソッドの第２引数が返ってきます。/
s/^You may call the `query` method without any arguments in order to retrieve all of the query string values as an associative array:$/`query`メソッドに引数を渡さずに呼び出せば、連想配列ですべてのクエリストリングを取得できます。/
s/^#### Retrieving Input Via Dynamic Properties$/#### 動的プロバティーでの入力取得/
s/^You may also access user input using dynamic properties on the `Illuminate\\Http\\Request` instance\. For example, if one of your application's forms contains a `name` field, you may access the value of the field like so:$/`Illuminate\\Http\\Request`インスタンスに対する動的プロパティとして、ユーザーインプットにアクセスすることも可能です。例えば、アプリケーションのフォーム上に`name`フィールドがあり、入力されたフィールド値にアクセスする場合は次のように行います。/
s/^When using dynamic properties, Laravel will first look for the parameter's value in the request payload\. If it is not present, Laravel will search for the field in the route parameters\.$/動的プロパティが使われた場合、Laravelは最初にリクエスト本体のパラメータ値を探します。存在していない場合、次にルートパラメータ上のフィールドを探します。/
s/^#### Retrieving JSON Input Values$/#### JSON入力値の取得/
s/^When sending JSON requests to your application, you may access the JSON data via the `input` method as long as the `Content-Type` header of the request is properly set to `application\/json`\. You may even use "dot" syntax to dig into JSON arrays:$/アプリケーションにJSONリクエストが送られ、`Content-Type`ヘッダプロパティに`application\/json`が指定されていたら、`input`メソッドによりJSON情報へアクセスできます。JSON配列の深い要素にアクセスするために、「ドット」記法も使用できます。/
s/^    $name = $request->input('user\.name');$/    $name = $request->input('user.name');/
s/^#### Retrieving A Portion Of The Input Data$/#### 入力データの一部取得/
s/^If you need to retrieve a subset of the input data, you may use the `only` and `except` methods\. Both of these methods accept a single `array` or a dynamic list of arguments:$/入力データの一部を取得する必要があるなら、`only`や`except`メソッドが使用できます。両方のメソッドともに限定したい入力を「配列」や引数の並びとして指定します。/
s/^    $input = $request->only(\['username', 'password'\]);$/    $input = $request->only(['username', 'password']);/
s/^    $input = $request->except(\['credit_card'\]);$/    $input = $request->except(['credit_card']);/
s/^> {tip} The `only` method returns all of the key \/ value pairs that you request; however, it will not return key \/ value pairs that are not present on the request\.$/> {tip} `only` メソッドは要求したキー／値ペアを全部返しますが、リクエストに存在しない場合は、キー／値ペアを返しません。/
s/^#### Determining If An Input Value Is Present$/#### 入力値の存在チェック/
s/^You should use the `has` method to determine if a value is present on the request\. The `has` method returns `true` if the value is present on the request:$/リクエストに値が存在するかを判定するには、`has`メソッドを使用します。`has`メソッドは、リクエストに値が存在する場合に、`true`を返します。/
s/^When given an array, the `has` method will determine if all of the specified values are present:$/配列を指定した場合、`has`メソッドは指定値がすべて存在するかを判定します。/
s/^    if ($request->has(\['name', 'email'\])) {$/    if ($request->has(['name', 'email'])) {/
s/^If you would like to determine if a value is present on the request and is not empty, you may use the `filled` method:$/値がリクエストに存在しており、かつ空でないことを判定したい場合は、`filled`メソッドを使います。/
s/^### Old Input$/### 直前の入力/
s/^Laravel allows you to keep input from one request during the next request\. This feature is particularly useful for re-populating forms after detecting validation errors\. However, if you are using Laravel's included \[validation features\](\/docs\/{{version}}\/validation), it is unlikely you will need to manually use these methods, as some of Laravel's built-in validation facilities will call them automatically\.$/Laravelでは入力を次のリクエスト一回を処理するまで保存することができます。これが特に便利なのは、バリデーションにエラーがあった場合にフォームを再表示する時です。しかし、Laravelに含まれる[バリデーション機能](\/docs\/{{version}}\/validation)を使っていれば、こうしたメソッドを自分で利用する必要はありません。組み込みバリデーション機能では自動的に利用します。/
s/^#### Flashing Input To The Session$/#### 入力をフラッシュデータとして保存/
s/^The `flash` method on the `Illuminate\\Http\\Request` class will flash the current input to the \[session\](\/docs\/{{version}}\/session) so that it is available during the user's next request to the application:$/`Illuminate\\Http\\Request`クラスの`flash`メソッドは、現在の入力を[セッション](\/docs\/{{version}}\/session)へ、アプリケーションに要求される次のユーザーリクエストの処理中だけ利用できるフラッシュデータとして保存します。/
s/^You may also use the `flashOnly` and `flashExcept` methods to flash a subset of the request data to the session\. These methods are useful for keeping sensitive information such as passwords out of the session:$/セッションへ入力の一部をフラッシュデータとして保存するには、`flashOnly`と`flashExcept`が使用できます。両メソッドは、パスワードなどの機密情報をセッションに含めないために便利です。/
s/^    $request->flashOnly(\['username', 'email'\]);$/    $request->flashOnly(['username', 'email']);/
s/^#### Flashing Input Then Redirecting$/#### 入力保存後にリダイレクト/
s/^Since you often will want to flash input to the session and then redirect to the previous page, you may easily chain input flashing onto a redirect using the `withInput` method:$/入力をフラッシュデータとして保存する必要があるのは、直前のページヘリダイレクトする場合が多いでしょうから、`withInput`メソッドをリダイレクトにチェーンして簡単に、入力をフラッシュデータとして保存できます。/
s/^#### Retrieving Old Input$/#### 直前のデータを取得/
s/^To retrieve flashed input from the previous request, use the `old` method on the `Request` instance\. The `old` method will pull the previously flashed input data from the \[session\](\/docs\/{{version}}\/session):$/直前のリクエストのフラッシュデータを取得するには、`Request`インスタンスに対し`old`メソッドを使用してください。`old`メソッドは[セッション](\/docs\/{{version}}\/session)にフラッシュデータとして保存されている入力を取り出すために役に立ちます。/
s/^Laravel also provides a global `old` helper\. If you are displaying old input within a \[Blade template\](\/docs\/{{version}}\/blade), it is more convenient to use the `old` helper\. If no old input exists for the given field, `null` will be returned:$/Laravelでは`old`グローバルヘルパ関数も用意しています。特に[Bladeテンプレート](\/docs\/{{version}}\/blade)で直前の入力値を表示したい場合に、`old`ヘルパは便利です。指定した文字列の入力が存在していないときは、`null`を返します。/
s/^### Cookies$/### クッキー/
s/^#### Retrieving Cookies From Requests$/#### リクエストからクッキーを取得/
s/^All cookies created by the Laravel framework are encrypted and signed with an authentication code, meaning they will be considered invalid if they have been changed by the client\. To retrieve a cookie value from the request, use the `cookie` method on a `Illuminate\\Http\\Request` instance:$/Laravelフレームワークが作成するクッキーは全て暗号化され、認証コードで著名されています。つまりクライアントにより変更されると、無効なクッキーとして取り扱います。リクエストからクッキー値を取得するには、`Illuminate\\Http\\Request`インスタンスに対して`cookie`メソッドを使用してください。/
s/^Alternatively, you may use the `Cookie` facade to access cookie values:$/もしくは、クッキー値にアクセスするために、`Cookie`ファサードも利用できます。/
s/^#### Attaching Cookies To Responses$/#### レスポンスへクッキーを付ける/
s/^You may attach a cookie to an outgoing `Illuminate\\Http\\Response` instance using the `cookie` method\. You should pass the name, value, and number of minutes the cookie should be considered valid to this method:$/送信する`Illuminate\\Http\\Response`インスタンスへ`cookie`メソッドを使い、クッキーを付加できます。このメソッドには、名前、値、それとこのクッキーが有効である分数を渡します。/
s/^The `cookie` method also accepts a few more arguments which are used less frequently\. Generally, these arguments have the same purpose and meaning as the arguments that would be given to PHP's native \[setcookie\](https:\/\/secure\.php\.net\/manual\/en\/function\.setcookie\.php) method:$/`cookie`メソッドには、あまり繁用されない、いくつかの引数を付けることもできます。そうした引数は、PHPネイティブの[setcookie](https:\/\/secure.php.net\/manual\/en\/function.setcookie.php)メソッドの引数と、全般的に同じ目的や意味合いを持っています。/
s/^Alternatively, you can use the `Cookie` facade to "queue" cookies for attachment to the outgoing response from your application\. The `queue` method accepts a `Cookie` instance or the arguments needed to create a `Cookie` instance\. These cookies will be attached to the outgoing response before it is sent to the browser:$/もしくは、アプリケーションから送り出すレスポンスへアタッチするクッキーを「キュー」するために、`Cookie`ファサードが使えます。`queue`メソッドは、`Cookie`インスタンスか`Cookie`インスタンスを生成するために必要な引数を受け取ります。こうしたクッキーは、ブラウザにレスポンスが送信される前にアタッチされます。/
s/^#### Generating Cookie Instances$/#### Cookieインスタンスの生成/
s/^If you would like to generate a `Symfony\\Component\\HttpFoundation\\Cookie` instance that can be given to a response instance at a later time, you may use the global `cookie` helper\. This cookie will not be sent back to the client unless it is attached to a response instance:$/後からレスポンスインスタンスへ付けることが可能な、`Symfony\\Component\\HttpFoundation\\Cookie`インスタンスを生成したければ、`cookie`グローバルヘルパが使えます。このクッキーはレスポンスインスタンスへアタッチしない限り、クライアントへ送信されません。/
s/^## Files$/## ファイル/
s/^### Retrieving Uploaded Files$/### アップロードファイルの取得/
s/^You may access uploaded files from a `Illuminate\\Http\\Request` instance using the `file` method or using dynamic properties\. The `file` method returns an instance of the `Illuminate\\Http\\UploadedFile` class, which extends the PHP `SplFileInfo` class and provides a variety of methods for interacting with the file:$/アップロードしたファイルへアクセスするには、`Illuminate\\Http\\Request`インスタンスに含まれている`file`メソッドか、動的プロパティを使用します。`file`メソッドは`Illuminate\\Http\\UploadedFile`クラスのインスタンスを返します。これはPHPの`SplFileInfo`クラスを拡張してあり、様々なファイル操作のメソッドを提供しています。/
s/^You may determine if a file is present on the request using the `hasFile` method:$/リクエスト中にファイルが存在しているかを判定するには、`hadFile`メソッドを使います。/
s/^#### Validating Successful Uploads$/#### アップロードに成功したか確認/
s/^In addition to checking if the file is present, you may verify that there were no problems uploading the file via the `isValid` method:$/ファイルが存在しているかに付け加え、`isValid`メソッドで問題なくアップロードできたのかを確認できます。/
s/^#### File Paths & Extensions$/#### ファイルパスと拡張子/
s/^The `UploadedFile` class also contains methods for accessing the file's fully-qualified path and its extension\. The `extension` method will attempt to guess the file's extension based on its contents\. This extension may be different from the extension that was supplied by the client:$/`UploadedFile`クラスはファイルの絶対パスと拡張子へアクセスするメソッドも提供しています。`extension`メソッドは、ファイルのコンテンツを元に拡張子を推測します。この拡張子はクライアントから提供された拡張子と異なっている可能性があります。/
s/^#### Other File Methods$/#### 他のファイルメソッド/
s/^There are a variety of other methods available on `UploadedFile` instances\. Check out the \[API documentation for the class\](http:\/\/api\.symfony\.com\/3\.0\/Symfony\/Component\/HttpFoundation\/File\/UploadedFile\.html) for more information regarding these methods\.$/他にも、たくさんのメソッドが`UploadedFile`インスタンスに存在しています。[このクラスのAPIドキュメント](http:\/\/api.symfony.com\/3.0\/Symfony\/Component\/HttpFoundation\/File\/UploadedFile.html)で、より詳細な情報が得られます。/
s/^### Storing Uploaded Files$/### アップロードファイルの保存/
s/^To store an uploaded file, you will typically use one of your configured \[filesystems\](\/docs\/{{version}}\/filesystem)\. The `UploadedFile` class has a `store` method which will move an uploaded file to one of your disks, which may be a location on your local filesystem or even a cloud storage location like Amazon S3\.$/アップロードファイルを保存するには、通常設定済みの[ファイルシステム](\/docs\/{{version}}\/filesystem)の１つを使います。`UploadedFile`クラスの`store`メソッドは、ローカルにあろうが、Amazon S3のようなクラウドストレージであろうが、ディスクの１つへアップロードファイルを移動します。/
s/^The `store` method accepts the path where the file should be stored relative to the filesystem's configured root directory\. This path should not contain a file name, since a unique ID will automatically be generated to serve as the file name\.$/`store`メソッドへは、ファイルシステムで設定したルートディレクトリからの相対位置で、どこに保存するか指定します。このパスにはファイル名を含んではいけません。保存ファイル名として一意のIDが自動的に生成されるためです。/
s/^The `store` method also accepts an optional second argument for the name of the disk that should be used to store the file\. The method will return the path of the file relative to the disk's root:$/`store`メソッドには、ファイルを保存するために使用するディスクの名前を任意の第２引数として指定もできます。メソッドはディスクルートからの相対ファイルパスを返します。/
s/^If you do not want a file name to be automatically generated, you may use the `storeAs` method, which accepts the path, file name, and disk name as its arguments:$/ファイル名を自動で生成したくない場合は、パスとファイル名、ディスク名を引数に取る、`storeAs`メソッドを使ってください。/
s/^    $path = $request->photo->storeAs('images', 'filename\.jpg');$/    $path = $request->photo->storeAs('images', 'filename.jpg');/
s/^    $path = $request->photo->storeAs('images', 'filename\.jpg', 's3');$/    $path = $request->photo->storeAs('images', 'filename.jpg', 's3');/
s/^## Configuring Trusted Proxies$/## 信用するプロキシの設定/
s/^When running your applications behind a load balancer that terminates TLS \/ SSL certificates, you may notice your application sometimes does not generate HTTPS links\. Typically this is because your application is being forwarded traffic from your load balancer on port 80 and does not know it should generate secure links\.$/TLS／SSL証明を行うロードバランサの裏でアプリケーションが実行されている場合、アプリケーションが時々HTTPSリンクを生成しないことに、気づくでしょう。典型的な理由は、トラフィックがロードバランサにより８０番ポートへフォワーディングされるため、セキュアなリンクを生成すべきだと判断できないからです。/
s/^To solve this, you may use the `App\\Http\\Middleware\\TrustProxies` middleware that is included in your Laravel application, which allows you to quickly customize the load balancers or proxies that should be trusted by your application\. Your trusted proxies should be listed as an array on the `$proxies` property of this middleware\. In addition to configuring the trusted proxies, you may configure the proxy `$headers` that should be trusted:$/これを解決するには、Laravelアプリケーションに含まれている、`App\\Http\\Middleware\\TrustProxies`ミドルウェアを使用します。これでアプリケーションにとって信用できるロードバランサやプロキシを簡単にカスタマイズできます。信用できるプロキシをこのミドルウェアの`$proxies`プロパティへ配列としてリストしてください。信用するプロキシの設定に加え、信用できるプロキシの`$headers`も設定できます。/
s/^        \/\*\*$/        \/**/
s/^         \* The trusted proxies for this application\.$/         * このアプリケーションで信用するプロキシ/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $proxies = \[$/        protected $proxies = [/
s/^            '192\.168\.1\.1',$/            '192.168.1.1',/
s/^            '192\.168\.1\.2',$/            '192.168.1.2',/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* The headers that should be used to detect proxies\.$/         * プロキシを検出するために使用するヘッダ/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^> {tip} If you are using AWS Elastic Load Balancing, your `$headers` value should be `Request::HEADER_X_FORWARDED_AWS_ELB`\. For more information on the constants that may be used in the `$headers` property, check out Symfony's documentation on \[trusting proxies\](http:\/\/symfony\.com\/doc\/current\/deployment\/proxies\.html)\.$/> {tip} AWS Elastic Load Balancingを使用している場合、`$headers`の値は`Request::HEADER_X_FORWARDED_AWS_ELB`に設定する必要があります。`$headers`で使用する内容の詳細は、Symfonyの[trusting proxies](http:\/\/symfony.com\/doc\/current\/deployment\/proxies.html)ドキュメントを参照してください。/
s/^#### Trusting All Proxies$/#### 全プロキシを信用/
s/^If you are using Amazon AWS or another "cloud" load balancer provider, you may not know the IP addresses of your actual balancers\. In this case, you may use `\*` to trust all proxies:$/Amazon AWSや他の「クラウド」ロードバランサプロバイダを使用している場合は、実際のバランサのIPアドレスは分かりません。このような場合、全プロキシを信用するために、`*`を使います。/
s/^    \/\*\*$/    \/**/
s/^     \* The trusted proxies for this application\.$/     * このアプリケーションで信用するプロキシ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $proxies = '\*';$/    protected $proxies = '*';/
