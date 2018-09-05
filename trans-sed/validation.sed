s/^# Validation$/# バリデーション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Validation Quickstart\](#validation-quickstart)$/- [クイックスタート](#validation-quickstart)/
s/^    - \[Defining The Routes\](#quick-defining-the-routes)$/    - [ルート定義](#quick-defining-the-routes)/
s/^    - \[Creating The Controller\](#quick-creating-the-controller)$/    - [コントローラ作成](#quick-creating-the-controller)/
s/^    - \[Writing The Validation Logic\](#quick-writing-the-validation-logic)$/    - [バリデーションロジック作成](#quick-writing-the-validation-logic)/
s/^    - \[Displaying The Validation Errors\](#quick-displaying-the-validation-errors)$/    - [バリデーションエラー表示](#quick-displaying-the-validation-errors)/
s/^    - \[A Note On Optional Fields\](#a-note-on-optional-fields)$/    - [オプションフィールドに対する注意](#a-note-on-optional-fields)/
s/^- \[Form Request Validation\](#form-request-validation)$/- [フォームリクエストバリデーション](#form-request-validation)/
s/^    - \[Creating Form Requests\](#creating-form-requests)$/    - [フォームリクエスト作成](#creating-form-requests)/
s/^    - \[Authorizing Form Requests\](#authorizing-form-requests)$/    - [フォームリクエストの認可](#authorizing-form-requests)/
s/^    - \[Customizing The Error Messages\](#customizing-the-error-messages)$/    - [エラーメッセージのカスタマイズ](#customizing-the-error-messages)/
s/^- \[Manually Creating Validators\](#manually-creating-validators)$/- [バリデータの生成](#manually-creating-validators)/
s/^    - \[Automatic Redirection\](#automatic-redirection)$/    - [自動リダイレクト](#automatic-redirection)/
s/^    - \[Named Error Bags\](#named-error-bags)$/    - [名前付きエラーバッグ](#named-error-bags)/
s/^    - \[After Validation Hook\](#after-validation-hook)$/    - [バリデーション後フック](#after-validation-hook)/
s/^- \[Working With Error Messages\](#working-with-error-messages)$/- [エラーメッセージ操作](#working-with-error-messages)/
s/^    - \[Custom Error Messages\](#custom-error-messages)$/    - [カスタムエラーメッセージ](#custom-error-messages)/
s/^- \[Available Validation Rules\](#available-validation-rules)$/- [使用可能なバリデーションルール](#available-validation-rules)/
s/^- \[Conditionally Adding Rules\](#conditionally-adding-rules)$/- [条件付きの追加ルール](#conditionally-adding-rules)/
s/^- \[Validating Arrays\](#validating-arrays)$/- [配列のバリデーション](#validating-arrays)/
s/^- \[Custom Validation Rules\](#custom-validation-rules)$/- [カスタムバリデーションルール](#custom-validation-rules)/
s/^    - \[Using Rule Objects\](#using-rule-objects)$/    - [ルールオブジェクトの使用](#using-rule-objects)/
s/^    - \[Using Closures\](#using-closures)$/    - [クロージャの使用](#using-closures)/
s/^    - \[Using Extensions\](#using-extensions)$/    - [拡張の使用](#using-extensions)/
s/^## Introduction$/## イントロダクション/
s/^Laravel provides several different approaches to validate your application's incoming data\. By default, Laravel's base controller class uses a `ValidatesRequests` trait which provides a convenient method to validate incoming HTTP request with a variety of powerful validation rules\.$/Laravelは入力されたデータに対するバリデーションの様々なアプローチを提供しています。Laravelの基本コントローラクラスはパワフルでバラエティー豊かなバリデーションルールを使いHTTPリクエストをバリデーションするために便利な手法を提供している、`ValidatesRequests`トレイトをデフォルトで使用しています。/
s/^## Validation Quickstart$/## クイックスタート/
s/^To learn about Laravel's powerful validation features, let's look at a complete example of validating a form and displaying the error messages back to the user\.$/パワフルなバリデーション機能を学ぶために、フォームバリデーションとユーザーにエラーメッセージを表示する完全な例を見てください。/
s/^### Defining The Routes$/### ルート定義/
s/^First, let's assume we have the following routes defined in our `routes\/web\.php` file:$/まず、`routes\/web.php`ファイルに以下のルートを定義してあるとしましょう。/
s/^Of course, the `GET` route will display a form for the user to create a new blog post, while the `POST` route will store the new blog post in the database\.$/もちろん、`GET`のルートは新しいブログポストを作成するフォームをユーザーへ表示し、`POST`ルートで新しいブログポストをデータベースへ保存します。/
s/^### Creating The Controller$/### コントローラ作成/
s/^Next, let's take a look at a simple controller that handles these routes\. We'll leave the `store` method empty for now:$/次に、これらのルートを処理する簡単なコントローラを見てみましょう。今のところ`store`メソッドは空のままです。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the form to create a new blog post\.$/         * 新ブログポスト作成フォームの表示/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            return view('post\.create');$/            return view('post.create');/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new blog post\.$/         * 新しいブログポストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Validate and store the blog post\.\.\.$/            \/\/ ブログポストのバリデーションと保存コード…/
s/^### Writing The Validation Logic$/### バリデーションロジック/
s/^Now we are ready to fill in our `store` method with the logic to validate the new blog post\. To do this, we will use the `validate` method provided by the `Illuminate\\Http\\Request` object\. If the validation rules pass, your code will keep executing normally; however, if validation fails, an exception will be thrown and the proper error response will automatically be sent back to the user\. In the case of a traditional HTTP request, a redirect response will be generated, while a JSON response will be sent for AJAX requests\.$/これで新しいブログポストに対するバリデーションロジックを`store`メソッドに埋め込む準備ができました。そのためには、`Illuminate\\Http\\Request`オブジェクトが提供する、`validate`メソッドを使います。バリデーションルールに成功すると、コードは通常通り続けて実行されます。逆にバリデーションに失敗すると、例外が投げられ、ユーザーに対し自動的に適切なエラーレスポンスが返されます。伝統的なHTTPリクエストの場合は、リダイレクトレスポンスが生成され、一方でAJAXリクエストにはJSONレスポンスが返されます。/
s/^To get a better understanding of the `validate` method, let's jump back into the `store` method:$/`validate`メソッドをもっとよく理解するため、`store`メソッドに取り掛かりましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Store a new blog post\.$/     * 新ブログポストの保存/
s/^     \*$/     */
s/^     \* @param  Request  $request$/     * @param  Request  $request/
s/^     \* @return Response$/     * @return Response/
s/^     \*\/$/     *\//
s/^        $validatedData = $request->validate(\[$/        $validatedData = $request->validate([/
s/^        \]);$/        ]);/
s/^        \/\/ The blog post is valid\.\.\.$/        \/\/ ブログポストは有効/
s/^As you can see, we pass the desired validation rules into the `validate` method\. Again, if the validation fails, the proper response will automatically be generated\. If the validation passes, our controller will continue executing normally\.$/ご覧のとおりに、実行したいバリデーションルールを`validate`メソッドへ渡します。繰り返しますが、バリデーションに失敗すれば、適切なレスポンスが自動的に生成されます。バリデーションに成功すれば、コントローラは続けて通常通り実行されます。/
s/^#### Stopping On First Validation Failure$/#### 最初のバリデーション失敗時に停止/
s/^Sometimes you may wish to stop running validation rules on an attribute after the first validation failure\. To do so, assign the `bail` rule to the attribute:$/最初のバリデーションに失敗したら、残りのバリデーションルールの判定を停止したいことも、時々あります。このためには、`bail`ルールを使ってください。/
s/^    $request->validate(\[$/    $request->validate([/
s/^    \]);$/    ]);/
s/^In this example, if the `unique` rule on the `title` attribute fails, the `max` rule will not be checked\. Rules will be validated in the order they are assigned\.$/この例の場合、`title`属性の`unique`ルールに失敗すると、`max`ルールはチェックされません。ルールは指定した順番にバリデートされます。/
s/^#### A Note On Nested Attributes$/#### ネストした属性の注意点/
s/^If your HTTP request contains "nested" parameters, you may specify them in your validation rules using "dot" syntax:$/HTTPリクエストに「ネスト」したパラメーターが含まれている場合、バリデーションルールは「ドット」記法により指定します。/
s/^    $request->validate(\[$/    $request->validate([/
s/^        'author\.name' => 'required',$/        'author.name' => 'required',/
s/^        'author\.description' => 'required',$/        'author.description' => 'required',/
s/^    \]);$/    ]);/
s/^### Displaying The Validation Errors$/### バリデーションエラー表示/
s/^So, what if the incoming request parameters do not pass the given validation rules? As mentioned previously, Laravel will automatically redirect the user back to their previous location\. In addition, all of the validation errors will automatically be \[flashed to the session\](\/docs\/{{version}}\/session#flash-data)\.$/ではやって来たリクエストの入力が指定したバリデーションルールに当てはまらなかった場合はどうなるんでしょう？　既に説明した通り、Laravelは自動的にユーザーを以前のページヘリダイレクトします。付け加えて、バリデーションエラーは全部自動的に[フラッシュデータとしてセッション](\/docs\/{{version}}\/session#flash-data)へ保存されます。/
s/^Again, notice that we did not have to explicitly bind the error messages to the view in our `GET` route\. This is because Laravel will check for errors in the session data, and automatically bind them to the view if they are available\. The `$errors` variable will be an instance of `Illuminate\\Support\\MessageBag`\. For more information on working with this object, \[check out its documentation\](#working-with-error-messages)\.$/`GET`ルートのビューへエラーメッセージを明示的に結合する必要がないことに注目してください。これはつまり、Laravelはいつもセッションデータの中にエラーの存在をチェックしており、見つけた場合は自動的に結合しているからです。`$errors`変数は`Illuminate\\Support\\MessageBag`のインスタンスです。このオブジェクトの詳細は、[ドキュメント](#working-with-error-messages)を参照してください。/
s/^> {tip} The `$errors` variable is bound to the view by the `Illuminate\\View\\Middleware\\ShareErrorsFromSession` middleware, which is provided by the `web` middleware group\. \*\*When this middleware is applied an `$errors` variable will always be available in your views\*\*, allowing you to conveniently assume the `$errors` variable is always defined and can be safely used\.$/> {tip} `$errors`変数は`web`ミドルウェアグループに所属する、`Illuminate\\View\\Middleware\\ShareErrorsFromSession`ミドルウェアによりビューに結合されます。**このミドルウェアが適用される場合は、いつでもビューの中で`$errors`変数が使えます。**`$errors`変数はいつでも定義済みであると想定でき、安心して使えます。/
s/^So, in our example, the user will be redirected to our controller's `create` method when validation fails, allowing us to display the error messages in the view:$/この例では、バリデーションに失敗すると、エラーメッセージをビューで表示できるように、コントローラの`create`メソッドにリダイレクトされることになります。/
s/^    <!-- \/resources\/views\/post\/create\.blade\.php -->$/    <!-- \/resources\/views\/post\/create.blade.php -->/
s/^    <h1>Create Post<\/h1>$/    <h1>ポスト作成<\/h1>/
s/^    <!-- Create Post Form -->$/    <!-- ポスト作成フォーム -->/
s/^### A Note On Optional Fields$/### オプションフィールドに対する注意/
s/^By default, Laravel includes the `TrimStrings` and `ConvertEmptyStringsToNull` middleware in your application's global middleware stack\. These middleware are listed in the stack by the `App\\Http\\Kernel` class\. Because of this, you will often need to mark your "optional" request fields as `nullable` if you do not want the validator to consider `null` values as invalid\. For example:$/Laravelは`TrimStrings`と`ConvertEmptyStringsToNull`ミドルウェアをアプリケーションのデフォルトグローバルミドルウェアスタックに含んでいます。これらのミドルウェアは`App\\Http\\Kernel`クラスでリストされています。このため、バリデータが`null`値が無効であると判定されないように、オプションフィールドへ`nullable`を付ける必要がたびたび起きるでしょう。/
s/^    $request->validate(\[$/    $request->validate([/
s/^    \]);$/    ]);/
s/^In this example, we are specifying that the `publish_at` field may be either `null` or a valid date representation\. If the `nullable` modifier is not added to the rule definition, the validator would consider `null` an invalid date\.$/上記の例の場合、`publish_at`フィールドが`null`か、有効な日付表現であることを指定しています。ルール定義に`nullable`が追加されないと、バリデータは`null`を無効な日付として判定します。/
s/^#### AJAX Requests & Validation$/#### AJAXリクエストとバリデーション/
s/^In this example, we used a traditional form to send data to the application\. However, many applications use AJAX requests\. When using the `validate` method during an AJAX request, Laravel will not generate a redirect response\. Instead, Laravel generates a JSON response containing all of the validation errors\. This JSON response will be sent with a 422 HTTP status code\.$/この例ではアプリケーションにデータを送るために伝統的なフォームを使いました。しかし、多くのアプリケーションでAJAXリクエストが使用されています。AJAXリクエストに`validate`メソッドを使う場合、Laravelはリダイレクトレスポンスを生成しません。代わりにバリデーションエラーを全部含んだJSONレスポンスを生成します。このJSONレスポンスは422 HTTPステータスコードで送られます。/
s/^## Form Request Validation$/## フォームリクエストバリデーション/
s/^### Creating Form Requests$/### フォームリクエスト作成/
s/^For more complex validation scenarios, you may wish to create a "form request"\. Form requests are custom request classes that contain validation logic\. To create a form request class, use the `make:request` Artisan CLI command:$/より複雑なバリデーションのシナリオでは、「フォームリクエスト」を生成したほうが良いでしょう。フォームリクエストは、バリデーションロジックを含んだカスタムリクエストクラスです。フォームリクエストクラスを作成するには、`make:request` Artisan CLIコマンドを使用します。/
s/^The generated class will be placed in the `app\/Http\/Requests` directory\. If this directory does not exist, it will be created when you run the `make:request` command\. Let's add a few validation rules to the `rules` method:$/生成されたクラスは、`app\/Http\/Request`ディレクトリへ設置されます。このディレクトリが存在しなくても、`make:request`コマンドを実行すれば作成されます。では、バリデーションルールを少し`rules`メソッドへ追加してみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the validation rules that apply to the request\.$/     * リクエストに適用するバリデーションルールを取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^> {tip} You may type-hint any dependencies you need within the `rules` method's signature\. They will automatically be resolved via the Laravel \[service container\](\/docs\/{{version}}\/container)\.$/> {tip} `rules`メソッドの引数として、必要な依存をタイプヒントで指定できます。それらはLaravelの[サービスコンテナ](\/docs\/{{version}}\/container)により、自動的に依存解決されます。/
s/^So, how are the validation rules evaluated? All you need to do is type-hint the request on your controller method\. The incoming form request is validated before the controller method is called, meaning you do not need to clutter your controller with any validation logic:$/では、どのようにバリデーションルールを実行するのでしょうか？必要なのは、コントローラのメソッドで、このリクエストをタイプヒントで指定することです。やって来たフォームリクエストはコントローラメソッドが呼び出される前にバリデーションを行います。つまり、コントローラにバリデーションロジックを取っ散らかす必要はありません。/
s/^    \/\*\*$/    \/**/
s/^     \* Store the incoming blog post\.$/     * ブログポストの保存/
s/^     \*$/     */
s/^     \* @param  StoreBlogPost  $request$/     * @param  StoreBlogPost  $request/
s/^     \* @return Response$/     * @return Response/
s/^     \*\/$/     *\//
s/^        \/\/ The incoming request is valid\.\.\.$/        \/\/ 送信されたリクエストは正しい/
s/^        \/\/ Retrieve the validated input data\.\.\.$/        \/\/ バリデーション済みデータの取得/
s/^If validation fails, a redirect response will be generated to send the user back to their previous location\. The errors will also be flashed to the session so they are available for display\. If the request was an AJAX request, a HTTP response with a 422 status code will be returned to the user including a JSON representation of the validation errors\.$/バリデーションに失敗すると、前のアドレスにユーザーを戻すために、リダイレクトレスポンスが生成されます。エラーも表示できるように、フラッシュデーターとしてセッションに保存されます。もしリクエストがAJAXリクエストであれば、バリデーションエラーを表現するJSONを含んだ、422ステータスコードのHTTPレスポンスがユーザーに返されます。/
s/^#### Adding After Hooks To Form Requests$/#### フォームリクエストへのAfterフックを追加/
s/^If you would like to add an "after" hook to a form request, you may use the `withValidator` method\. This method receives the fully constructed validator, allowing you to call any of its methods before the validation rules are actually evaluated:$/フォームリクエストへ"after"フックを追加したい場合は、`withValidator`メソッドを使用します。このメソッドは完全に構築されたバリデータを受け取るため、バリデーションルールが実際に評価される前に、バリデータのどんなメソッドも呼び出すことができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Configure the validator instance\.$/     * バリデータインスタンスの設定/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Validation\\Validator  $validator$/     * @param  \\Illuminate\\Validation\\Validator  $validator/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^### Authorizing Form Requests$/### フォームリクエストの認可/
s/^The form request class also contains an `authorize` method\. Within this method, you may check if the authenticated user actually has the authority to update a given resource\. For example, you may determine if a user actually owns a blog comment they are attempting to update:$/フォームリクエストクラスは`authorize`メソッドも用意しています。このメソッドでは認証されているユーザーが、指定されたリソースを更新する権限を実際に持っているのかを確認します。たとえば、ユーザーが更新しようとしているブログコメントを実際に所有しているかを判断するとしましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if the user is authorized to make this request\.$/     * ユーザーがこのリクエストの権限を持っているかを判断する/
s/^     \*$/     */
s/^     \* @return bool$/     * @return bool/
s/^     \*\/$/     *\//
s/^        return $comment && $this->user()->can('update', $comment);$/        return $comment \&\& $this->user()->can('update', $comment);/
s/^Since all form requests extend the base Laravel request class, we may use the `user` method to access the currently authenticated user\. Also note the call to the `route` method in the example above\. This method grants you access to the URI parameters defined on the route being called, such as the `{comment}` parameter in the example below:$/全リフォームリクエストはLaravelのベースリクエストクラスを拡張していますので、現在認証されているユーザーへアクセスする、`user`メソッドが使えます。また、上記例中の`route`メソッドの呼び出しにも、注目してください。例えば`{comment}`パラメーターのような、呼び出しているルートで定義されているURIパラメータにもアクセスできます。/
s/^If the `authorize` method returns `false`, a HTTP response with a 403 status code will automatically be returned and your controller method will not execute\.$/`authorize`メソッドが`false`を返すと、403ステータスコードのHTTPレスポンスが自動的に返され、コントローラメソッドは実行されません。/
s/^If you plan to have authorization logic in another part of your application, return `true` from the `authorize` method:$/アプリケーションの他の場所で認証のロジックを行おうと設計しているのでしたら、`authorize`メソッドから`true`を返してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if the user is authorized to make this request\.$/     * ユーザーがこのリクエストの権限を持っているかを判断する/
s/^     \*$/     */
s/^     \* @return bool$/     * @return bool/
s/^     \*\/$/     *\//
s/^> {tip} You may type-hint any dependencies you need within the `authorize` method's signature\. They will automatically be resolved via the Laravel \[service container\](\/docs\/{{version}}\/container)\.$/> {tip} `authorize`メソッドの引数として、必要な依存をタイプヒントで指定できます。それらはLaravelの[サービスコンテナ](\/docs\/{{version}}\/container)により、自動的に依存解決されます。/
s/^### Customizing The Error Messages$/### エラーメッセージのカスタマイズ/
s/^You may customize the error messages used by the form request by overriding the `messages` method\. This method should return an array of attribute \/ rule pairs and their corresponding error messages:$/フォームリクエストにより使用されているメッセージは`message`メソッドをオーバーライドすることによりカスタマイズできます。このメソッドから属性／ルールと対応するエラーメッセージのペアを配列で返してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the error messages for the defined validation rules\.$/     * 定義済みバリデーションルールのエラーメッセージ取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^            'title\.required' => 'A title is required',$/            'title.required' => 'A title is required',/
s/^            'body\.required'  => 'A message is required',$/            'body.required'  => 'A message is required',/
s/^        \];$/        ];/
s/^## Manually Creating Validators$/## バリデータの生成/
s/^If you do not want to use the `validate` method on the request, you may create a validator instance manually using the `Validator` \[facade\](\/docs\/{{version}}\/facades)\. The `make` method on the facade generates a new validator instance:$/リクエストの`validate`メソッドを使用したくない場合は、`Validator`[ファサード](\/docs\/{{version}}\/facades)を使用し、バリデータインスタンスを生成する必要があります。 このファサードの`make`メソッドで、新しいバリデータインスタンスを生成します。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a new blog post\.$/         * 新しいブログポストの保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            $validator = Validator::make($request->all(), \[$/            $validator = Validator::make($request->all(), [/
s/^            \]);$/            ]);/
s/^            \/\/ Store the blog post\.\.\.$/            \/\/ ブログポストの保存処理…/
s/^The first argument passed to the `make` method is the data under validation\. The second argument is the validation rules that should be applied to the data\.$/`make`メソッドの第１引数は、バリデーションを行うデータです。第２引数はそのデータに適用するバリデーションルールです。/
s/^After checking if the request validation failed, you may use the `withErrors` method to flash the error messages to the session\. When using this method, the `$errors` variable will automatically be shared with your views after redirection, allowing you to easily display them back to the user\. The `withErrors` method accepts a validator, a `MessageBag`, or a PHP `array`\.$/リクエストのバリデーションが失敗するかを確認した後、セッションにエラーメッセージをフラッシュデータとして保存するために`withErrors`メソッドが利用できます。このメソッドを使うと、簡単にユーザーに情報を表示できるようにするため、リダイレクトの後でビューに対し`$errors`変数を自動的に共有します。`withErrors`メソッドはバリデータか`MessageBag`、PHPの配列を受け取ります。/
s/^### Automatic Redirection$/### 自動リダイレクト/
s/^If you would like to create a validator instance manually but still take advantage of the automatic redirection offered by the requests's `validate` method, you may call the `validate` method on an existing validator instance\. If validation fails, the user will automatically be redirected or, in the case of an AJAX request, a JSON response will be returned:$/バリデータインスタンスを自分で生成したいが、リクエストの`validate`メソッドが提供する自動リダイレクト機能を使用したい場合は、生成したバリデータインスタンスの`validate`メソッドを呼び出すこともできます。バリデーションに失敗すると、ユーザーは自動的にリダイレクトされるか、AJAXリクエストの場合は、JSONリクエストが返されます。/
s/^    Validator::make($request->all(), \[$/    Validator::make($request->all(), [/
s/^    \])->validate();$/    ])->validate();/
s/^### Named Error Bags$/### 名前付きエラーバッグ/
s/^If you have multiple forms on a single page, you may wish to name the `MessageBag` of errors, allowing you to retrieve the error messages for a specific form\. Pass a name as the second argument to `withErrors`:$/１ページの中に複数のフォームを入れている場合は、特定のフォームのエラーメッセージを受け取れるように、`MessageBag`へ名前を付けてください。`withErrors`の第２引数に名前を渡します。/
s/^You may then access the named `MessageBag` instance from the `$errors` variable:$/`$errors`変数を使い、名前を付けた`MessageBag`インスタンスへアクセスできます。/
s/^### After Validation Hook$/### バリデーション後のフック/
s/^The validator also allows you to attach callbacks to be run after validation is completed\. This allows you to easily perform further validation and even add more error messages to the message collection\. To get started, use the `after` method on a validator instance:$/バリデータにはさらに、バリデーションが終了した時点で実行するコールバックを付け加えられます。これにより、追加のバリデーションを行い、さらにエラーメッセージコレクションにエラーメッセージを追加することが簡単にできます。バリデータインスタンスの`after`メソッドを使ってみましょう。/
s/^    $validator = Validator::make(\.\.\.);$/    $validator = Validator::make(...);/
s/^## Working With Error Messages$/## エラーメッセージの操作/
s/^After calling the `errors` method on a `Validator` instance, you will receive an `Illuminate\\Support\\MessageBag` instance, which has a variety of convenient methods for working with error messages\. The `$errors` variable that is automatically made available to all views is also an instance of the `MessageBag` class\.$/`Validator`インスタンスの`errors`メソッドを呼び出すと、エラーメッセージを操作する便利なメソッドを数揃えた、`Illuminate\\Support\\MessageBag`インスタンスを受け取ります。自動的に作成され、全てのビューで使用できる`$errors`変数も、`MessageBag`クラスのインスタンスです。/
s/^#### Retrieving The First Error Message For A Field$/#### 指定フィールドの最初のエラーメッセージ取得/
s/^To retrieve the first error message for a given field, use the `first` method:$/指定したフィールドの最初のエラーメッセージを取得するには、`first`メソッドを使います。/
s/^#### Retrieving All Error Messages For A Field$/#### 指定フィールドの全エラーメッセージ取得/
s/^If you need to retrieve an array of all the messages for a given field, use the `get` method:$/指定したフィールドの全エラーメッセージを配列で取得したい場合は、`get`メソッドを使います。/
s/^If you are validating an array form field, you may retrieve all of the messages for each of the array elements using the `\*` character:$/配列形式のフィールドをバリデーションする場合は、`*`文字を使用し、各配列要素の全メッセージを取得できます。/
s/^    foreach ($errors->get('attachments\.\*') as $message) {$/    foreach ($errors->get('attachments.*') as $message) {/
s/^#### Retrieving All Error Messages For All Fields$/#### 全フィールドの全エラーメッセージ取得/
s/^To retrieve an array of all messages for all fields, use the `all` method:$/全フィールドの全メッセージの配列を取得したい場合は、`all`メソッドを使います。/
s/^#### Determining If Messages Exist For A Field$/#### 指定フィールドのメッセージ存在確認/
s/^The `has` method may be used to determine if any error messages exist for a given field:$/`has`メソッドは、指定したフィールドのエラーメッセージが存在しているかを判定するために使います。/
s/^### Custom Error Messages$/### カスタムエラーメッセージ/
s/^If needed, you may use custom error messages for validation instead of the defaults\. There are several ways to specify custom messages\. First, you may pass the custom messages as the third argument to the `Validator::make` method:$/必要であればバリデーションでデフォルトのメッセージの代わりに、カスタムエラーメッセージを使うことができます。カスタムメッセージを指定するにはいくつか方法があります。最初の方法は`Validator::make`メソッドの第３引数として、カスタムメッセージを渡す方法です。/
s/^    $messages = \[$/    $messages = [/
s/^        'required' => 'The :attribute field is required\.',$/        'required' => 'The :attribute field is required.',/
s/^    \];$/    ];/
s/^In this example, the `:attribute` place-holder will be replaced by the actual name of the field under validation\. You may also utilize other place-holders in validation messages\. For example:$/この例中の`attribute`プレースホルダーはバリデーション対象のフィールドの名前に置き換えられます。バリデーションメッセージ中で他のプレースホルダーを使うこともできます。例を見てください。/
s/^    $messages = \[$/    $messages = [/
s/^        'same'    => 'The :attribute and :other must match\.',$/        'same'    => 'The :attribute and :other must match.',/
s/^        'size'    => 'The :attribute must be exactly :size\.',$/        'size'    => 'The :attribute must be exactly :size.',/
s/^        'between' => 'The :attribute value :input is not between :min - :max\.',$/        'between' => 'The :attribute value :input is not between :min - :max.',/
s/^    \];$/    ];/
s/^#### Specifying A Custom Message For A Given Attribute$/#### 指定フィールドにカスタムメッセージ指定/
s/^Sometimes you may wish to specify a custom error messages only for a specific field\. You may do so using "dot" notation\. Specify the attribute's name first, followed by the rule:$/時々特定のフィールドに対するカスタムエラーメッセージを指定したい場合があります。「ドット」記法を使用し行います。属性名が最初で、続いてルールをつなげます。/
s/^    $messages = \[$/    $messages = [/
s/^        'email\.required' => 'We need to know your e-mail address!',$/        'email.required' => 'We need to know your e-mail address!',/
s/^    \];$/    ];/
s/^#### Specifying Custom Messages In Language Files$/#### 言語ファイルでカスタムメッセージ指定/
s/^In most cases, you will probably specify your custom messages in a language file instead of passing them directly to the `Validator`\. To do so, add your messages to `custom` array in the `resources\/lang\/xx\/validation\.php` language file\.$/多くの場合、`Validator`に直接カスタムメッセージを渡すよりは言語ファイルに指定したいですよね。ならば`resources\/lang\/xx\/validation.php`言語ファイルの`custom`配列にメッセージを追加してください。/
s/^    'custom' => \[$/    'custom' => [/
s/^        'email' => \[$/        'email' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^#### Specifying Custom Attributes In Language Files$/#### 言語ファイル中のカスタム属性名の指定/
s/^If you would like the `:attribute` portion of your validation message to be replaced with a custom attribute name, you may specify the custom name in the `attributes` array of your `resources\/lang\/xx\/validation\.php` language file:$/バリデーションメッセージの`:attribute`部分をカスタムアトリビュート名で置き換えたい場合は、`resources\/lang\/xx\/validation.php`言語ファイルの`attributes`配列でカスタム名を指定してください。/
s/^    'attributes' => \[$/    'attributes' => [/
s/^    \],$/    ],/
s/^## Available Validation Rules$/## 使用可能なバリデーションルール/
s/^Below is a list of all available validation rules and their function:$/使用可能な全バリデーションルールとその機能の一覧です。/
s/^    \.collection-method-list > p {$/    .collection-method-list > p {/
s/^    \.collection-method-list a {$/    .collection-method-list a {/
s/^\[Accepted\](#rule-accepted)$/[受け入れ](#rule-accepted)/
s/^\[Active URL\](#rule-active-url)$/[アクティブなURL](#rule-active-url)/
s/^\[After (Date)\](#rule-after)$/[（日付）より後](#rule-after)/
s/^\[After Or Equal (Date)\](#rule-after-or-equal)$/[（日付）以降](#rule-after-or-equal)/
s/^\[Alpha\](#rule-alpha)$/[アルファベット](#rule-alpha)/
s/^\[Alpha Dash\](#rule-alpha-dash)$/[アルファベット記号](#rule-alpha-dash)/
s/^\[Alpha Numeric\](#rule-alpha-num)$/[アルファベット数字](#rule-alpha-num)/
s/^\[Array\](#rule-array)$/[配列](#rule-array)/
s/^\[Bail\](#rule-bail)$/[継続終了](#rule-bail)/
s/^\[Before (Date)\](#rule-before)$/[（日付）より前](#rule-before)/
s/^\[Before Or Equal (Date)\](#rule-before-or-equal)$/[（日付）以前](#rule-before-or-equal)/
s/^\[Between\](#rule-between)$/[範囲](#rule-between)/
s/^\[Boolean\](#rule-boolean)$/[論理](#rule-boolean)/
s/^\[Confirmed\](#rule-confirmed)$/[確認](#rule-confirmed)/
s/^\[Date\](#rule-date)$/[日付](#rule-date)/
s/^\[Date Equals\](#rule-date-equals)$/[同一日付](#rule-date-equals)/
s/^\[Date Format\](#rule-date-format)$/[日付形式](#rule-date-format)/
s/^\[Different\](#rule-different)$/[相違](#rule-different)/
s/^\[Digits\](#rule-digits)$/[桁指定数値](#rule-digits)/
s/^\[Digits Between\](#rule-digits-between)$/[桁範囲指定数値](#rule-digits-between)/
s/^\[Dimensions (Image Files)\](#rule-dimensions)$/[寸法(画像ファイル)](#rule-dimensions)/
s/^\[Distinct\](#rule-distinct)$/[別々](#rule-distinct)/
s/^\[E-Mail\](#rule-email)$/[メールアドレス](#rule-email)/
s/^\[Exists (Database)\](#rule-exists)$/[存在（データベース）](#rule-exists)/
s/^\[File\](#rule-file)$/[ファイル](#rule-file)/
s/^\[Filled\](#rule-filled)$/[充満](#rule-filled)/
s/^\[Greater Than\](#rule-gt)$/[より大きい](#rule-gt)/
s/^\[Greater Than Or Equal\](#rule-gte)$/[以上](#rule-gte)/
s/^\[Image (File)\](#rule-image)$/[画像（ファイル)](#rule-image)/
s/^\[In\](#rule-in)$/[内包](#rule-in)/
s/^\[In Array\](#rule-in-array)$/[配列内](#rule-in-array)/
s/^\[Integer\](#rule-integer)$/[整数](#rule-integer)/
s/^\[IP Address\](#rule-ip)$/[IPアドレス](#rule-ip)/
s/^\[JSON\](#rule-json)$/[JSON](#rule-json)/
s/^\[Less Than\](#rule-lt)$/[より小さい](#rule-lt)/
s/^\[Less Than Or Equal\](#rule-lte)$/[以下](#rule-lte)/
s/^\[Max\](#rule-max)$/[最大値](#rule-max)/
s/^\[MIME Types\](#rule-mimetypes)$/[MIMEタイプ](#rule-mimetypes)/
s/^\[MIME Type By File Extension\](#rule-mimes)$/[MIMEタイプ(ファイル拡張子)](#rule-mimes)/
s/^\[Min\](#rule-min)$/[最小値](#rule-min)/
s/^\[Not In\](#rule-not-in)$/[非内包](#rule-not-in)/
s/^\[Not Regex\](#rule-not-regex)$/[正規表現不一致](#rule-not-regex)/
s/^\[Nullable\](#rule-nullable)$/[NULL許可](#rule-nullable)/
s/^\[Numeric\](#rule-numeric)$/[数値](#rule-numeric)/
s/^\[Present\](#rule-present)$/[存在](#rule-present)/
s/^\[Regular Expression\](#rule-regex)$/[正規表現](#rule-regex)/
s/^\[Required\](#rule-required)$/[必須](#rule-required)/
s/^\[Required If\](#rule-required-if)$/[指定フィールド値一致時必須](#rule-required-if)/
s/^\[Required Unless\](#rule-required-unless)$/[指定フィールド値非一致時必須](#rule-required-unless)/
s/^\[Required With\](#rule-required-with)$/[指定フィールド存在時必須](#rule-required-with)/
s/^\[Required With All\](#rule-required-with-all)$/[全指定フィールド存在時必須](#rule-required-with-all)/
s/^\[Required Without\](#rule-required-without)$/[指定フィールド非存在時必須](#rule-required-without)/
s/^\[Required Without All\](#rule-required-without-all)$/[全指定フィールド非存在時必須](#rule-required-without-all)/
s/^\[Same\](#rule-same)$/[同一](#rule-same)/
s/^\[Size\](#rule-size)$/[サイズ](#rule-size)/
s/^\[String\](#rule-string)$/[文字列](#rule-string)/
s/^\[Timezone\](#rule-timezone)$/[タイムゾーン](#rule-timezone)/
s/^\[Unique (Database)\](#rule-unique)$/[一意（データベース）](#rule-unique)/
s/^\[URL\](#rule-url)$/[URL](#rule-url)/
s/^The field under validation must be _yes_, _on_, _1_, or _true_\. This is useful for validating "Terms of Service" acceptance\.$/そのフィールドが**yes**、**on**、**1**、**true**であることをバリデートします。これは「サービス利用規約」同意のバリデーションに便利です。/
s/^The field under validation must have a valid A or AAAA record according to the `dns_get_record` PHP function\.$/フィールドが、`dns_get_record` PHP関数により、有効なAかAAAAレコードであることをバリデートします。/
s/^#### after:_date_$/#### after:_日付_/
s/^The field under validation must be a value after a given date\. The dates will be passed into the `strtotime` PHP function:$/フィールドの値が与えられた日付より後であるかバリデーションします。日付はPHPの`strtotime`関数で処理されます。/
s/^Instead of passing a date string to be evaluated by `strtotime`, you may specify another field to compare against the date:$/`strtotime`により評価される日付文字列を渡す代わりに、その日付と比較する他のフィールドを指定することもできます。/
s/^#### after\\_or\\_equal:_date_$/#### after\\_or\\_equal:_日付_/
s/^The field under validation must be a value after or equal to the given date\. For more information, see the \[after\](#rule-after) rule\.$/フィールドが指定した日付以降であることをバリデートします。詳細は[after](#rule-after)ルールを参照してください。/
s/^The field under validation must be entirely alphabetic characters\.$/フィールドが全部アルファベット文字であることをバリデートします。/
s/^The field under validation may have alpha-numeric characters, as well as dashes and underscores\.$/フィールドが全部アルファベット文字と数字、ダッシュ(-)、下線(_)であることをバリデートします。/
s/^The field under validation must be entirely alpha-numeric characters\.$/フィールドが全部アルファベット文字と数字であることをバリデートします。/
s/^The field under validation must be a PHP `array`\.$/フィールドが配列タイプであることをバリデートします。/
s/^Stop running validation rules after the first validation failure\.$/バリデーションに初めて失敗した時点で、残りのルールのバリデーションを中止します。/
s/^#### before:_date_$/#### before:_日付_/
s/^The field under validation must be a value preceding the given date\. The dates will be passed into the PHP `strtotime` function\.$/フィールドが指定された日付より前であることをバリデートします。日付はPHPの`strtotime`関数で処理されます。/
s/^#### before\\_or\\_equal:_date_$/#### before\\_or\\_equal:_日付_/
s/^The field under validation must be a value preceding or equal to the given date\. The dates will be passed into the PHP `strtotime` function\.$/フィールドが指定した日付以前であることをバリデートします。日付はPHPの`strtotime`関数で処理されます。/
s/^The field under validation must have a size between the given _min_ and _max_\. Strings, numerics, arrays, and files are evaluated in the same fashion as the \[`size`\](#rule-size) rule\.$/フィールドが指定された*最小値*と*最大値*の間のサイズであることをバリデートします。[`size`](#rule-size)ルールと同様の判定方法で、文字列、数値、配列、ファイルが評価されます。/
s/^The field under validation must be able to be cast as a boolean\. Accepted input are `true`, `false`, `1`, `0`, `"1"`, and `"0"`\.$/フィールドが論理値として有効であることをバリデートします。受け入れられる入力は、`true`、`false`、`1`、`0`、`"1"`、`"0"`です。/
s/^The field under validation must have a matching field of `foo_confirmation`\. For example, if the field under validation is `password`, a matching `password_confirmation` field must be present in the input\.$/フィールドがそのフィールド名＋`_confirmation`フィールドと同じ値であることをバリデートします。例えば、バリデーションするフィールドが`password`であれば、同じ値の`password_confirmation`フィールドが入力に存在していなければなりません。/
s/^The field under validation must be a valid date according to the `strtotime` PHP function\.$/パリデーションされる値はPHP関数の`strtotime`を使用し確認されます。/
s/^#### date_equals:_date_$/#### date_equals:_日付_/
s/^The field under validation must be equal to the given date\. The dates will be passed into the PHP `strtotime` function\.$/バリデーションされる値が、指定した日付と同じことをバリデートします。日付は、PHPの`strtotime`関数へ渡されます。/
s/^#### date_format:_format_$/#### date\\_format:_フォーマット_/
s/^The field under validation must match the given _format_\. You should use \*\*either\*\* `date` or `date_format` when validating a field, not both\.$/バリデーションされる値が**フォーマット**定義と一致するか確認します。バリデーション時には`date`か`date_format`の**どちらか**を使用しなくてはならず、両方はできません。/
s/^#### different:_field_$/#### different:_フィールド_/
s/^The field under validation must have a different value than _field_\.$/フィールドが指定された**フィールド**と異なった値を指定されていることをバリデートします。/
s/^#### digits:_value_$/#### digits:_値_/
s/^The field under validation must be _numeric_ and must have an exact length of _value_\.$/フィールドが**数値**で、**値**の桁数であることをバリデートします。/
s/^#### digits_between:_min_,_max_$/#### digits_between:_最小値_,_最大値_/
s/^The field under validation must have a length between the given _min_ and _max_\.$/フィールドが**整数で**、桁数が**最小値**から**最大値**の間であることをバリデートします。/
s/^The file under validation must be an image meeting the dimension constraints as specified by the rule's parameters:$/バリデーション対象のファイルが、パラメータにより指定されたサイズに合致することをバリデートします。/
s/^Available constraints are: _min\\_width_, _max\\_width_, _min\\_height_, _max\\_height_, _width_, _height_, _ratio_\.$/使用可能なパラメータは、_min\\_width_、_max\\_width_、_min\\_height_、_max\\_height_、_width_、_height_、_ratio_です。/
s/^A _ratio_ constraint should be represented as width divided by height\. This can be specified either by a statement like `3\/2` or a float like `1\.5`:$/_ratio_制約は、横／縦比を表します。`3\/2`という指定も、`1.5`のようにfloatでの指定も可能です。/
s/^Since this rule requires several arguments, you may use the `Rule::dimensions` method to fluently construct the rule:$/このルールは多くの引数を要求するので、`Rule::dimensions`メソッドを使い、記述的にこのルールを構築してください。/
s/^    Validator::make($data, \[$/    Validator::make($data, [/
s/^        'avatar' => \[$/        'avatar' => [/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^When working with arrays, the field under validation must not have any duplicate values\.$/対象が配列の時、フィールドに重複した値がないことをバリデートします。/
s/^    'foo\.\*\.id' => 'distinct'$/    'foo.*.id' => 'distinct'/
s/^The field under validation must be formatted as an e-mail address\.$/フィールドがメールアドレスとして正しいことをバリデートします。/
s/^#### exists:_table_,_column_$/#### exists:_テーブル_,_カラム_/
s/^The field under validation must exist on a given database table\.$/フィールドの値が、指定されたデータベーステーブルに存在することをバリデートします。/
s/^#### Basic Usage Of Exists Rule$/#### 基本的なExistsルールの使用法/
s/^If the `column` option is not specified, the field name will be used\.$/`column`オプションを指定しない場合、フィールド名が利用されます。/
s/^#### Specifying A Custom Column Name$/#### カスタムカラム名の指定/
s/^Occasionally, you may need to specify a specific database connection to be used for the `exists` query\. You can accomplish this by prepending the connection name to the table name using "dot" syntax:$/`exists`クエリにデータベース接続を指定する必要があることも多いでしょう。「ドット」記法を用い、テーブル名の前に接続名を付けることで、指定可能です。/
s/^    'email' => 'exists:connection\.staff,email'$/    'email' => 'exists:connection.staff,email'/
s/^If you would like to customize the query executed by the validation rule, you may use the `Rule` class to fluently define the rule\. In this example, we'll also specify the validation rules as an array instead of using the `|` character to delimit them:$/バリデーションルールで実行されるクエリをカスタマイズしたい場合は、ルールをスラスラと定義できる`Rule`クラスを使ってください。下の例では、`|`文字を区切りとして使用する代わりに、バリデーションルールを配列として指定しています。/
s/^    Validator::make($data, \[$/    Validator::make($data, [/
s/^        'email' => \[$/        'email' => [/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^The field under validation must be a successfully uploaded file\.$/フィールドがアップロードに成功したファイルであることをバリデートします。/
s/^The field under validation must not be empty when it is present\.$/フィールドが存在する場合、空でないことをバリデートします。/
s/^The field under validation must be greater than the given _field_\. The two fields must be of the same type\. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule\.$/The field under validation must be greater than the given _field_. The two fields must be of the same type. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule./
s/^The field under validation must be greater than or equal to the given _field_\. The two fields must be of the same type\. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule\.$/The field under validation must be greater than or equal to the given _field_. The two fields must be of the same type. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule./
s/^The file under validation must be an image (jpeg, png, bmp, gif, or svg)$/フィールドで指定されたファイルが画像(jpg、png、bmp、gif、svg)であることをバリデートします。/
s/^#### in:_foo_,_bar_,\.\.\.$/#### in:foo,bar.../
s/^The field under validation must be included in the given list of values\. Since this rule often requires you to `implode` an array, the `Rule::in` method may be used to fluently construct the rule:$/フィールドが指定したリストの中の値に含まれていることをバリデートします。このルールを使用するために配列を`implode`する必要が多くなりますので、ルールを記述的に構築するには、`Rule::in`メソッドを使ってください。/
s/^    Validator::make($data, \[$/    Validator::make($data, [/
s/^        'zones' => \[$/        'zones' => [/
s/^            Rule::in(\['first-zone', 'second-zone'\]),$/            Rule::in(['first-zone', 'second-zone']),/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^#### in_array:_anotherfield_$/#### in_array:_別のフィールド_/
s/^The field under validation must exist in _anotherfield_'s values\.$/フィールドが、*他のフィールド*の値のどれかであることをバリデートします。/
s/^The field under validation must be an integer\.$/フィールドが整数値であることをバリデートします。/
s/^The field under validation must be an IP address\.$/フィールドがIPアドレスの形式として正しいことをバリデートします。/
s/^The field under validation must be an IPv4 address\.$/フィールドがIPv4アドレスの形式として正しいことをバリデートします。/
s/^The field under validation must be an IPv6 address\.$/フィールドがIPv6アドレスの形式として正しいことをバリデートします。/
s/^The field under validation must be a valid JSON string\.$/フィールドが有効なJSON文字列であることをバリデートします。/
s/^The field under validation must be less than the given _field_\. The two fields must be of the same type\. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule\.$/The field under validation must be less than the given _field_. The two fields must be of the same type. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule./
s/^The field under validation must be less than or equal to the given _field_\. The two fields must be of the same type\. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule\.$/The field under validation must be less than or equal to the given _field_. The two fields must be of the same type. Strings, numerics, arrays, and files are evaluated using the same conventions as the `size` rule./
s/^#### max:_value_$/#### max:_値_/
s/^The field under validation must be less than or equal to a maximum _value_\. Strings, numerics, arrays, and files are evaluated in the same fashion as the \[`size`\](#rule-size) rule\.$/フィールドが最大値として指定された**値**以下であることをバリデートします。[`size`](#rule-size)ルールと同様の判定方法で、文字列、数値、配列、ファイルが評価されます。/
s/^#### mimetypes:_text\/plain_,\.\.\.$/#### mimetypes:*text\/plain*,.../
s/^The file under validation must match one of the given MIME types:$/フィールドが指定されたMIMEタイプのどれかであることをバリデートします。/
s/^To determine the MIME type of the uploaded file, the file's contents will be read and the framework will attempt to guess the MIME type, which may be different from the client provided MIME type\.$/アップロードされたファイルのMIMEタイプを決定するために、フレームワークはその内容を読み込み、MIMEタイプを推測します。クライアントが提供するMIMEタイプとは異なります。/
s/^#### mimes:_foo_,_bar_,\.\.\.$/#### mimes:_foo_,_bar_,.../
s/^The file under validation must have a MIME type corresponding to one of the listed extensions\.$/フィールドで指定されたファイルが拡張子のリストの中のMIMEタイプのどれかと一致することをバリデートします。/
s/^#### Basic Usage Of MIME Rule$/#### MIMEルールの基本的な使用法/
s/^Even though you only need to specify the extensions, this rule actually validates against the MIME type of the file by reading the file's contents and guessing its MIME type\.$/拡張子だけを限定する必要があるとしても、このルールはファイルのMIMEタイプに基づき、ファイルの内容を読み、MIMEタイプを推測することでバリデーションを行います。/
s/^A full listing of MIME types and their corresponding extensions may be found at the following location: \[https:\/\/svn\.apache\.org\/repos\/asf\/httpd\/httpd\/trunk\/docs\/conf\/mime\.types\](https:\/\/svn\.apache\.org\/repos\/asf\/httpd\/httpd\/trunk\/docs\/conf\/mime\.types)$/MIMEタイプと対応する拡張子の完全なリストは、[https:\/\/svn.apache.org\/repos\/asf\/httpd\/httpd\/trunk\/docs\/conf\/mime.types](https:\/\/svn.apache.org\/repos\/asf\/httpd\/httpd\/trunk\/docs\/conf\/mime.types)で確認できます。/
s/^#### min:_value_$/#### min:_値_/
s/^The field under validation must have a minimum _value_\. Strings, numerics, arrays, and files are evaluated in the same fashion as the \[`size`\](#rule-size) rule\.$/フィールドが最小値として指定された**値**以上であることをバリデートします。[`size`](#rule-size)ルールと同様の判定方法で、文字列、数値、配列、ファイルが評価されます。/
s/^#### not_in:_foo_,_bar_,\.\.\.$/#### not_in:_foo_,_bar_,.../
s/^The field under validation must not be included in the given list of values\. The `Rule::notIn` method may be used to fluently construct the rule:$/フィールドが指定された値のリスト中に含まれていないことをバリデートします。`Rule::notIn`メソッドのほうが、ルールの構成が読み書きしやすいでしょう。/
s/^    Validator::make($data, \[$/    Validator::make($data, [/
s/^        'toppings' => \[$/        'toppings' => [/
s/^            Rule::notIn(\['sprinkles', 'cherries'\]),$/            Rule::notIn(['sprinkles', 'cherries']),/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^The field under validation must not match the given regular expression\.$/フィールドが指定した正規表現と一致しないことをバリデートします。/
s/^\*\*Note:\*\* When using the `regex` \/ `not_regex` patterns, it may be necessary to specify rules in an array instead of using pipe delimiters, especially if the regular expression contains a pipe character\.$/**注目：** `regex`と`not_regex`パターンを使用する場合はルールをパイプ（縦棒）で区切らず、ルールの配列で指定する必要があります。特に正規表現に縦棒を含んでいる場合に該当します。/
s/^The field under validation may be `null`\. This is particularly useful when validating primitive such as strings and integers that can contain `null` values\.$/フィールドが`null`でも良いことをバリデートします。これは特に`null`値を含む文字列や整数のようなプリミティブをバリデートする場合に便利です。/
s/^The field under validation must be numeric\.$/フィールドは数値であることをバリデートします。/
s/^The field under validation must be present in the input data but can be empty\.$/フィールドが存在していることをバリデートしますが、存在していれば空を許します。/
s/^#### regex:_pattern_$/#### regex:_正規表現_/
s/^The field under validation must match the given regular expression\.$/フィールドが指定された正規表現にマッチすることをバリデートします。/
s/^\*\*Note:\*\* When using the `regex` \/ `not_regex` patterns, it may be necessary to specify rules in an array instead of using pipe delimiters, especially if the regular expression contains a pipe character\.$/**注目：** `regex`と`not_regex`パターンを使用する場合はルールをパイプ（縦棒）で区切らず、ルールの配列で指定する必要があります。特に正規表現に縦棒を含んでいる場合に該当します。/
s/^The field under validation must be present in the input data and not empty\. A field is considered "empty" if one of the following conditions are true:$/フィールドが入力データに存在しており、かつ空でないことをバリデートします。フィールドは以下の条件の場合、「空」であると判断されます。/
s/^- The value is `null`\.$/- 値が`null`である。/
s/^- The value is an empty string\.$/- 値が空文字列である。/
s/^- The value is an empty array or empty `Countable` object\.$/- 値が空の配列か、空の`Countable`オブジェクトである。/
s/^- The value is an uploaded file with no path\.$/- 値がパスのないアップロード済みファイルである。/
s/^#### required_if:_anotherfield_,_value_,\.\.\.$/#### required\\_if:_他のフィールド_,_値_,.../
s/^The field under validation must be present and not empty if the _anotherfield_ field is equal to any _value_\.$/**他のフィールド**が**値**のどれかと一致している場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### required_unless:_anotherfield_,_value_,\.\.\.$/#### required\\_unless:_他のフィールド_,_値_,.../
s/^The field under validation must be present and not empty unless the _anotherfield_ field is equal to any _value_\.$/**他のフィールド**が**値**のどれとも一致していない場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### required_with:_foo_,_bar_,\.\.\.$/#### required\\_with:_foo_,_bar_,.../
s/^The field under validation must be present and not empty _only if_ any of the other specified fields are present\.$/指定した他のフィールドが**一つでも存在している**場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### required_with_all:_foo_,_bar_,\.\.\.$/#### required\\_with_all:_foo_,_bar_,.../
s/^The field under validation must be present and not empty _only if_ all of the other specified fields are present\.$/指定した他のフィールドが**すべて存在している**場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### required_without:_foo_,_bar_,\.\.\.$/#### required\\_without:_foo_,_bar_,.../
s/^The field under validation must be present and not empty _only when_ any of the other specified fields are not present\.$/指定した他のフィールドの**どれか一つでも存在していない**場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### required_without_all:_foo_,_bar_,\.\.\.$/#### required\\_without_all:_foo_,_bar_,.../
s/^The field under validation must be present and not empty _only when_ all of the other specified fields are not present\.$/指定した他のフィールドが**すべて存在していない**場合、このフィールドが存在し、かつ空でないことをバリデートします。/
s/^#### same:_field_$/#### same:_フィールド_/
s/^The given _field_ must match the field under validation\.$/フィールドが、指定されたフィールドと同じ値であることをバリデートします。/
s/^#### size:_value_$/#### size:_値_/
s/^The field under validation must have a size matching the given _value_\. For string data, _value_ corresponds to the number of characters\. For numeric data, _value_ corresponds to a given integer value\. For an array, _size_ corresponds to the `count` of the array\. For files, _size_ corresponds to the file size in kilobytes\.$/フィールドは指定された*値*と同じサイズであることをバリデートします。文字列の場合、*値*は文字長です。数値項目の場合、*値*は整数値です。配列の場合、*値*は配列の個数(`count`)です。ファイルの場合、*値*はキロバイトのサイズです。/
s/^The field under validation must be a string\. If you would like to allow the field to also be `null`, you should assign the `nullable` rule to the field\.$/フィルードは文字列タイプであることをバリデートします。フィールドが`null`であることも許す場合は、そのフィールドに`nullable`ルールも指定してください。/
s/^The field under validation must be a valid timezone identifier according to the `timezone_identifiers_list` PHP function\.$/`timezone_identifiers_list` PHP関数の値に基づき、フィールドがタイムゾーンとして識別されることをバリデートします。/
s/^#### unique:_table_,_column_,_except_,_idColumn_$/#### unique:_テーブル_,_カラム_,_除外ID_,_IDカラム_/
s/^The field under validation must be unique in a given database table\. If the `column` option is not specified, the field name will be used\.$/フィールドは指定されたデータベーステーブルで一意であることをバリデートします。`column`オプションが指定されない場合、フィールド名が使用されます。/
s/^\*\*Specifying A Custom Column Name:\*\*$/**カスタムカラム名の指定**/
s/^\*\*Custom Database Connection\*\*$/**カスタムデータベース接続**/
s/^Occasionally, you may need to set a custom connection for database queries made by the Validator\. As seen above, setting `unique:users` as a validation rule will use the default database connection to query the database\. To override this, specify the connection and the table name using "dot" syntax:$/場合により、バリデータにより生成されるデータベースクエリに、カスタム接続を設定する必要があるかもしれません。上記のバリデーションルール、`unique:users`ではクエリに対し、デフォルトデータベース接続が使用されます。これをオーバーライドするにはドット記法で、接続に続けテーブル名を指定してください。/
s/^    'email' => 'unique:connection\.users,email_address'$/    'email' => 'unique:connection.users,email_address'/
s/^\*\*Forcing A Unique Rule To Ignore A Given ID:\*\*$/**指定されたIDのuniqueルールを無視する**/
s/^Sometimes, you may wish to ignore a given ID during the unique check\. For example, consider an "update profile" screen that includes the user's name, e-mail address, and location\. Of course, you will want to verify that the e-mail address is unique\. However, if the user only changes the name field and not the e-mail field, you do not want a validation error to be thrown because the user is already the owner of the e-mail address\.$/uniqueチェックで指定したIDを除外したい場合があります。たとえばユーザー名、メールアドレス、それと住所の「プロフィール更新」の状況を考えてください。もちろん、メールアドレスは一意であることを確認したいと思います。しかし、もしユーザーが名前フィールドだけ変更し、メールフィールドを変更しなければ、そのユーザーが既にそのメールアドレスの所有者として登録されているために起きるバリデーションエラーを避けたいと思うでしょう。/
s/^To instruct the validator to ignore the user's ID, we'll use the `Rule` class to fluently define the rule\. In this example, we'll also specify the validation rules as an array instead of using the `|` character to delimit the rules:$/バリデータにユーザーIDを無視するように指示するには、ルールをスラスラと定義できる`Rule`クラスを使います。以下の例の場合、さらにルールを`|`文字を区切りとして使用する代わりに、バリデーションルールを配列として指定しています。/
s/^    Validator::make($data, \[$/    Validator::make($data, [/
s/^        'email' => \[$/        'email' => [/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^You may specify the name of the column under validation using the second parameter of the `unique` method\. Otherwise, the validation rule attribute name will be used as the column name:$/`unique`メソッドの第２パラメータにバリデーション対象のカラム名を指定できます。指定しなかった場合、バリデーションルールの属性名をカラム名として使用します。/
s/^If your table uses a primary key column name other than `id`, you may specify the name of the column when calling the `ignore` method:$/もし、テーブルの主キーとして`id`以外のカラム名を使用している場合は、`ignore`メソッドを呼び出す時に、カラムの名前を指定してください。/
s/^\*\*Adding Additional Where Clauses:\*\*$/**追加のWHERE節を付け加える**/
s/^You may also specify additional query constraints by customizing the query using the `where` method\. For example, let's add a constraint that verifies the `account_id` is `1`:$/`where`メソッドを使用し、クエリをカスタマイズすることにより、追加のクエリ制約を指定することも可能です。例として、`account_id`が`1`であることを確認する制約を追加してみましょう。/
s/^The field under validation must be a valid URL\.$/フィールドが有効なURLであることをバリデートします。/
s/^## Conditionally Adding Rules$/## 条件付きでルールを追加する/
s/^#### Validating When Present$/#### 項目存在時のバリデーション/
s/^In some situations, you may wish to run validation checks against a field \*\*only\*\* if that field is present in the input array\. To quickly accomplish this, add the `sometimes` rule to your rule list:$/ある状況では、そのフィールドが入力配列の中に存在する場合**のみ**、バリデーションを実行したいことがあると思います。これを簡単に行うには、`sometimes`ルールを追加してください。/
s/^    $v = Validator::make($data, \[$/    $v = Validator::make($data, [/
s/^    \]);$/    ]);/
s/^In the example above, the `email` field will only be validated if it is present in the `$data` array\.$/上の例では`email`フィールドが、`$data`配列の中に存在している場合のみバリデーションが実行されます。/
s/^> {tip} If you are attempting to validate a field that should always be present but may be empty, check out \[this note on optional fields\](#a-note-on-optional-fields)$/> {tip} フィールドが常に存在しているが、空であることをバリデートする場合は、[この追加フィールドに対する注意事項](#a-note-on-optional-fields)を確認してください。/
s/^#### Complex Conditional Validation$/#### 複雑な条件のバリデーション/
s/^Sometimes you may wish to add validation rules based on more complex conditional logic\. For example, you may wish to require a given field only if another field has a greater value than 100\. Or, you may need two fields to have a given value only when another field is present\. Adding these validation rules doesn't have to be a pain\. First, create a `Validator` instance with your _static rules_ that never change:$/時々もっと複雑な条件のロジックによりバリデーションルールを追加したい場合もあります。たとえば他のフィールドが１００より大きい場合のみ、指定したフィールドが入力されているかをバリデートしたいときなどです。もしくは２つのフィールドのどちらか一方が存在する場合は、両方共に値を指定する必要がある場合です。こうしたルールを付け加えるのも面倒ではありません。最初に`Validator`インスタンスを生成するのは、**固定ルール**の場合と同じです。/
s/^    $v = Validator::make($data, \[$/    $v = Validator::make($data, [/
s/^    \]);$/    ]);/
s/^Let's assume our web application is for game collectors\. If a game collector registers with our application and they own more than 100 games, we want them to explain why they own so many games\. For example, perhaps they run a game resale shop, or maybe they just enjoy collecting\. To conditionally add this requirement, we can use the `sometimes` method on the `Validator` instance\.$/ゲームコレクターのためのWebアプリケーションだと仮定しましょう。ゲームコレクターがアプリケーションに登録する時に、100ゲーム以上所有しているのであれば、なぜそんなに多く持っているのか理由を説明してもらいます。たとえば販売店を運営しているのかも知れませんし、ただ収集家なのかも知れません。この条件付きの要求を追加するために`Validator`インスタンスへ、`sometimes`メソッドを使用してください。/
s/^The first argument passed to the `sometimes` method is the name of the field we are conditionally validating\. The second argument is the rules we want to add\. If the `Closure` passed as the third argument returns `true`, the rules will be added\. This method makes it a breeze to build complex conditional validations\. You may even add conditional validations for several fields at once:$/`sometimes`メソッドの最初の引数は条件付きでバリデーションを行うフィールドの名前です。2つ目の引数は追加したいルールです。3つ目の引数にクロージャが渡され、`true`を返したらそのルールは追加されます。このメソッドにより複雑な条件付きのバリデーションが簡単に作成できます。一度に多くのフィールドに、条件付きバリデーションを追加することもできます。/
s/^    $v->sometimes(\['reason', 'cost'\], 'required', function ($input) {$/    $v->sometimes(['reason', 'cost'], 'required', function ($input) {/
s/^> {tip} The `$input` parameter passed to your `Closure` will be an instance of `Illuminate\\Support\\Fluent` and may be used to access your input and files\.$/> {tip} クロージャに渡される`$input`パラメーターは`Illuminate\\Support\\Fluent`のインスタンスで、フィールドと入力値にアクセスするためのオブジェクトです。/
s/^## Validating Arrays$/## 配列のバリデーション/
s/^Validating array based form input fields doesn't have to be a pain\. You may use "dot notation" to validate attributes within an array\. For example, if the incoming HTTP request contains a `photos\[profile\]` field, you may validate it like so:$/フォーム入力フィールドの配列をバリデーションするのに苦労する必要はありません。配列中の属性をバリデーションするために「ドット記法」が使えます。たとえば、送信されたHTTPリクエストに、`photos[profile]`フィールドが含まれているかをバリデーションするには、次のように行います。/
s/^    $validator = Validator::make($request->all(), \[$/    $validator = Validator::make($request->all(), [/
s/^        'photos\.profile' => 'required|image',$/        'photos.profile' => 'required|image',/
s/^    \]);$/    ]);/
s/^You may also validate each element of an array\. For example, to validate that each e-mail in a given array input field is unique, you may do the following:$/配列の各要素をバリデーションすることもできます。たとえば、配列中の各メールアドレスの入力フィールドが、一位であることを確認するには、以下のように行います。/
s/^    $validator = Validator::make($request->all(), \[$/    $validator = Validator::make($request->all(), [/
s/^        'person\.\*\.email' => 'email|unique:users',$/        'person.*.email' => 'email|unique:users',/
s/^        'person\.\*\.first_name' => 'required_with:person\.\*\.last_name',$/        'person.*.first_name' => 'required_with:person.*.last_name',/
s/^    \]);$/    ]);/
s/^Likewise, you may use the `\*` character when specifying your validation messages in your language files, making it a breeze to use a single validation message for array based fields:$/言語ファイルで配列ベースのフィールドバリデーションメッセージを指定するのも、同様に`*`文字を使えば簡単です。/
s/^    'custom' => \[$/    'custom' => [/
s/^        'person\.\*\.email' => \[$/        'person.*.email' => [/
s/^        \]$/        ]/
s/^    \],$/    ],/
s/^## Custom Validation Rules$/## カスタムバリデーションルール/
s/^### Using Rule Objects$/### ルールオブジェクトの使用/
s/^Laravel provides a variety of helpful validation rules; however, you may wish to specify some of your own\. One method of registering custom validation rules is using rule objects\. To generate a new rule object, you may use the `make:rule` Artisan command\. Let's use this command to generate a rule that verifies a string is uppercase\. Laravel will place the new rule in the `app\/Rules` directory:$/Laravelは様々な便利なバリデーションルールを提供しています。しかし、独自のバリデーションも利用したいでしょう。カスタムバリデーションルールを登録する一つ目の方法は、ルールオブジェクトを使うやり方です。新しいルールオブジェクトを生成するには、`make:rule` Artisanコマンドを使用します。このコマンドを使用し、文字列が大文字であることをバリデートするルールを生成してみましょう。Laravelの新しいルールは、`app\/Rules`ディレクトリに設置されます。/
s/^Once the rule has been created, we are ready to define its behavior\. A rule object contains two methods: `passes` and `message`\. The `passes` method receives the attribute value and name, and should return `true` or `false` depending on whether the attribute value is valid or not\. The `message` method should return the validation error message that should be used when validation fails:$/ルールを生成したら、動作を定義する準備ができました。ルールオブジェクトは２つのメソッドを含みます。`passes`と`message`です。`passes`メソッドは属性の値と名前を受け取り、その属性値が有効であれば`true`、無効であれば`false`を返します。`message`メソッドは、バリデーション失敗時に使用する、バリデーションエラーメッセージを返します。/
s/^        \/\*\*$/        \/**/
s/^         \* Determine if the validation rule passes\.$/         * バリデーションの成功を判定/
s/^         \*$/         */
s/^         \* @param  string  $attribute$/         * @param  string  $attribute/
s/^         \* @param  mixed  $value$/         * @param  mixed  $value/
s/^         \* @return bool$/         * @return bool/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get the validation error message\.$/         * バリデーションエラーメッセージの取得/
s/^         \*$/         */
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^            return 'The :attribute must be uppercase\.';$/            return 'The :attribute must be uppercase.';/
s/^Of course, you may call the `trans` helper from your `message` method if you would like to return an error message from your translation files:$/もちろん、翻訳ファイルのエラーメッセージを返したい場合は、`message`メソッドから`trans`ヘルパを呼び出せます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the validation error message\.$/     * バリデーションエラーメッセージの取得/
s/^     \*$/     */
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^        return trans('validation\.uppercase');$/        return trans('validation.uppercase');/
s/^Once the rule has been defined, you may attach it to a validator by passing an instance of the rule object with your other validation rules:$/ルールが定義できたら、他のバリデーションルールと一緒に、ルールオブジェクトのインスタンスをバリデータへ渡し、指定します。/
s/^    $request->validate(\[$/    $request->validate([/
s/^        'name' => \['required', 'string', new Uppercase\],$/        'name' => ['required', 'string', new Uppercase],/
s/^    \]);$/    ]);/
s/^### Using Closures$/### クロージャの使用/
s/^If you only need the functionality of a custom rule once throughout your application, you may use a Closure instead of a rule object\. The Closure receives the attribute's name, the attribute's value, and a `$fail` callback that should be called if validation fails:$/アプリケーション全体で一回のみカスタムルールの機能が必要な場合は、ルールオブジェクトの代わりにクロージャが使えます。属性名、属性の値、バリデーション失敗時に返す必要のある`$fail`コールバックがクロージャに渡されます。/
s/^    $validator = Validator::make($request->all(), \[$/    $validator = Validator::make($request->all(), [/
s/^        'title' => \[$/        'title' => [/
s/^                    return $fail($attribute\.' is invalid\.');$/                    return $fail($attribute.' is invalid.');/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^### Using Extensions$/### 拡張の使用/
s/^Another method of registering custom validation rules is using the `extend` method on the `Validator` \[facade\](\/docs\/{{version}}\/facades)\. Let's use this method within a \[service provider\](\/docs\/{{version}}\/providers) to register a custom validation rule:$/カスタムバリデーションルールを登録するもう一つの方法では、`Validator`[ファサード](\/docs\/{{version}}\/facades)の`extend`メソッドを使用します。カスタムバリデーションルールを登録するために、 [サービスプロバイダ](\/docs\/{{version}}\/providers)の中で、このメソッドを使ってみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションサービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダ登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^The custom validator Closure receives four arguments: the name of the `$attribute` being validated, the `$value` of the attribute, an array of `$parameters` passed to the rule, and the `Validator` instance\.$/カスタムバリデータのクロージャは４つの引数を取ります。`$attribute`はバリデーションをしているフィールド、`$value`はその値、`$parameters`はルールに渡された引数、最後は`Validator`インスタンスです。/
s/^You may also pass a class and method to the `extend` method instead of a Closure:$/クロージャの代わりに`extend`メソッドへクラスとメソッドを渡すこともできます。/
s/^#### Defining The Error Message$/#### エラーメッセージの定義/
s/^You will also need to define an error message for your custom rule\. You can do so either using an inline custom message array or by adding an entry in the validation language file\. This message should be placed in the first level of the array, not within the `custom` array, which is only for attribute-specific error messages:$/カスタムルールに対するエラーメッセージを定義する必要もあります。インラインでカスタムエラーの配列を使うか、バリデーション言語ファイルにエントリーを追加するどちらかで行えます。このメッセージは属性とエラーメッセージを指定するだけの一次配列で、「カスタマイズ」した配列を入れてはいけません。/
s/^    "accepted" => "The :attribute must be accepted\.",$/    "accepted" => "The :attribute must be accepted.",/
s/^    \/\/ The rest of the validation error messages\.\.\.$/    \/\/ 残りのバリデーションエラーメッセージ…/
s/^When creating a custom validation rule, you may sometimes need to define custom place-holder replacements for error messages\. You may do so by creating a custom Validator as described above then making a call to the `replacer` method on the `Validator` facade\. You may do this within the `boot` method of a \[service provider\](\/docs\/{{version}}\/providers):$/カスタムバリデーションルールを作成する場合、エラーメッセージのカスタムプレースフォルダも定義したいことがあります。前記の方法でカスタムバリデータを作成し、それから`Validator`ファサードの`replacer`メソッドを呼びだしてください。これは[サービスプロバイダ](\/docs\/{{version}}\/providers)の`boot`メソッドの中で行います。/
s/^    \/\*\*$/    \/**/
s/^     \* Bootstrap any application services\.$/     * 全アプリケーションサービスの初期処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        Validator::extend(\.\.\.);$/        Validator::extend(...);/
s/^            return str_replace(\.\.\.);$/            return str_replace(...);/
s/^#### Implicit Extensions$/#### 暗黙の拡張/
s/^By default, when an attribute being validated is not present or contains an empty value as defined by the \[`required`\](#rule-required) rule, normal validation rules, including custom extensions, are not run\. For example, the \[`unique`\](#rule-unique) rule will not be run against a `null` value:$/バリデートする属性が存在していない場合か、[`required`](#rule-required)ルールで定義している「空」の場合、カスタム拡張したものも含め、通常のバリデーションルールは実行されません。たとえば[`unique`](#rule-unique)ルールは`null`値に対して実行されません。/
s/^    $rules = \['name' => 'unique'\];$/    $rules = ['name' => 'unique'];/
s/^    $input = \['name' => null\];$/    $input = ['name' => null];/
s/^For a rule to run even when an attribute is empty, the rule must imply that the attribute is required\. To create such an "implicit" extension, use the `Validator::extendImplicit()` method:$/属性が空であってもルールを実行するということは、その属性が必須であることを暗黙のうちに示しています。このような「暗黙の」拡張を作成するには、`Validator::extendImplicit()`メソッドを使います。/
s/^> {note} An "implicit" extension only _implies_ that the attribute is required\. Whether it actually invalidates a missing or empty attribute is up to you\.$/> {note} 「暗黙の」拡張は、単にその属性が必須であると**ほのめかしている**だけです。属性が存在しない場合や空のときに、実際にバリデーションを失敗と判断するかどうかは、みなさん次第です。/
