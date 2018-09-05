s/^# Views$/# ビュー/
s/^- \[Creating Views\](#creating-views)$/- [ビューの作成](#creating-views)/
s/^- \[Passing Data To Views\](#passing-data-to-views)$/- [ビューにデータを渡す](#passing-data-to-views)/
s/^    - \[Sharing Data With All Views\](#sharing-data-with-all-views)$/    - [全ビュー間のデータ共有](#sharing-data-with-all-views)/
s/^- \[View Composers\](#view-composers)$/- [ビューコンポーザ](#view-composers)/
s/^## Creating Views$/## ビューの作成/
s/^> {tip} Looking for more information on how to write Blade templates? Check out the full \[Blade documentation\](\/docs\/{{version}}\/blade) to get started\.$/> {tip} Bladeテンプレートをどう書いたら良いのかをもっと知りたいですか？取り掛かるには、[Bladeのドキュメント](\/docs\/{{version}}\/blade)を確認してください。/
s/^Views contain the HTML served by your application and separate your controller \/ application logic from your presentation logic\. Views are stored in the `resources\/views` directory\. A simple view might look something like this:$/ビューはアプリケーションとして動作するHTMLにより構成されており、コントローラ／アプリケーションロジックをプレゼンテーションロジックから分離します。ビューは`resources\/views`ディレクトリに保存します。 シンプルなビューは、以下のような形態です。/
s/^    <!-- View stored in resources\/views\/greeting\.blade\.php -->$/    <!-- resources\/views\/greeting.blade.phpとして保存されているビュー -->/
s/^Since this view is stored at `resources\/views\/greeting\.blade\.php`, we may return it using the global `view` helper like so:$/このビューを`resources\/views\/greeting.blade.php`として保存していますので、以下のようにグローバル`view`ヘルパ関数を使用し結果を返します。/
s/^        return view('greeting', \['name' => 'James'\]);$/        return view('greeting', ['name' => 'James']);/
s/^As you can see, the first argument passed to the `view` helper corresponds to the name of the view file in the `resources\/views` directory\. The second argument is an array of data that should be made available to the view\. In this case, we are passing the `name` variable, which is displayed in the view using \[Blade syntax\](\/docs\/{{version}}\/blade)\.$/ご覧の通り、`view`ヘルパに渡している最初の引数は、`resources\/views`ディレクトリ中のビューファイル名に対応しています。２つ目の引数は、ビューで使用するデータの配列です。上記の例では、ビューに`name`変数を渡し、それは[Blade記法](\/docs\/{{version}}\/blade)を使用しているビューの中に表示されます。/
s/^Of course, views may also be nested within sub-directories of the `resources\/views` directory\. "Dot" notation may be used to reference nested views\. For example, if your view is stored at `resources\/views\/admin\/profile\.blade\.php`, you may reference it like so:$/もちろん、ビューは`resources\/views`ディレクトリのサブディレクトリにネストすることもできます。ネストしたビューを参照するために「ドット」記法が使えます。例えば、ビューが`resources\/views\/admin\/profile.blade.php`として保存するなら、次のように指定します。/
s/^    return view('admin\.profile', $data);$/    return view('admin.profile', $data);/
s/^#### Determining If A View Exists$/#### ビューの存在を検査/
s/^If you need to determine if a view exists, you may use the `View` facade\. The `exists` method will return `true` if the view exists:$/ビューが存在しているかを判定する必要があれば、`View`ファサードを使います。ビューが存在していれば、`exists`メソッドは`true`を返します。/
s/^    if (View::exists('emails\.customer')) {$/    if (View::exists('emails.customer')) {/
s/^#### Creating The First Available View$/#### 利用可能な最初のViewの作成/
s/^Using the `first` method, you may create the first view that exists in a given array of views\. This is useful if your application or package allows views to be customized or overwritten:$/`first`メソッドは、指定したビュー配列の中で、最初に存在するビューを作成します。これはアプリケーションやパッケージで、ビューをカスタマイズ、上書きする場合に役立ちます。/
s/^    return view()->first(\['custom\.admin', 'admin'\], $data);$/    return view()->first(['custom.admin', 'admin'], $data);/
s/^Of course, you may also call this method via the `View` \[facade\](\/docs\/{{version}}\/facades):$/もちろん、`View`[ファサード](\/docs\/{{version}}\/facades)を使い、このメソッドを呼び出すこともできます。/
s/^    return View::first(\['custom\.admin', 'admin'\], $data);$/    return View::first(['custom.admin', 'admin'], $data);/
s/^## Passing Data To Views$/## ビューにデータを渡す/
s/^As you saw in the previous examples, you may pass an array of data to views:$/前例で見たように、簡単にデータを配列でビューに渡せます。/
s/^    return view('greetings', \['name' => 'Victoria'\]);$/    return view('greetings', ['name' => 'Victoria']);/
s/^When passing information in this manner, the data should be an array with key \/ value pairs\. Inside your view, you can then access each value using its corresponding key, such as `<?php echo $key; ?>`\. As an alternative to passing a complete array of data to the `view` helper function, you may use the `with` method to add individual pieces of data to the view:$/この方法で情報を渡す場合、その情報はキー／値ペアの配列です。ビューの中で各値へは対抗するキーでアクセスできます。たとえば`<?php echo $key; ?>`のように表示可能です。全データを`view`ヘルパ関数に渡す代わりに、`with`メソッドでビューに渡すデータを個別に追加することもできます。/
s/^#### Sharing Data With All Views$/#### 全ビュー間のデータ共有/
s/^Occasionally, you may need to share a piece of data with all views that are rendered by your application\. You may do so using the view facade's `share` method\. Typically, you should place calls to `share` within a service provider's `boot` method\. You are free to add them to the `AppServiceProvider` or generate a separate service provider to house them:$/アプリケーションでレンダーする全ビューに対し、一部のデータを共有する必要があることも多いと思います。Viewファサードの`share`メソッドを使ってください。 通常、サービスプロバイダの`boot`メソッド内で`share`を呼び出します。`AppServiceProvider`に追加しても良いですし、独立したサービスプロバイダを作成することもできます。/
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
s/^## View Composers$/## ビューコンポーザ/
s/^View composers are callbacks or class methods that are called when a view is rendered\. If you have data that you want to be bound to a view each time that view is rendered, a view composer can help you organize that logic into a single location\.$/ビューコンポーザはビューがレンダーされる時に呼び出される、コールバックかクラスメソッドのことです。ビューがレンダーされるたびに結合したい情報があるなら、ビューコンポーザがロジックを一箇所にまとめるのに役立ちます。/
s/^For this example, let's register the view composers within a \[service provider\](\/docs\/{{version}}\/providers)\. We'll use the `View` facade to access the underlying `Illuminate\\Contracts\\View\\Factory` contract implementation\. Remember, Laravel does not include a default directory for view composers\. You are free to organize them however you wish\. For example, you could create an `app\/Http\/ViewComposers` directory:$/この例の[サービスプロバイダ](\/docs\/{{version}}\/providers)の中に、ビューコンポーザを組み込みましょう。`View`ファサードの裏で動作している、`Illuminate\\Contracts\\View\\Factory`契約の実装にアクセスします。Laravelはデフォルトのビューコンポーザ置き場を用意していないことに注意してください。お好きな場所に置くことができます。たとえば、`app\\Http\\ViewComposers`ディレクトリを作成することもできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナ結合の登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Using class based composers\.\.\.$/            \/\/ クラスベースのコンポーザを使用する/
s/^            \/\/ Using Closure based composers\.\.\.$/            \/\/ クロージャベースのコンポーザを使用する/
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダ登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^> {note} Remember, if you create a new service provider to contain your view composer registrations, you will need to add the service provider to the `providers` array in the `config\/app\.php` configuration file\.$/> {note} 新しいサービスプロバイダをビューコンポーザ登録のために作成したら、`config\/app.php`設定ファイルの`providers`配列へ追加する必要があるのを忘れないでください。/
s/^Now that we have registered the composer, the `ProfileComposer@compose` method will be executed each time the `profile` view is being rendered\. So, let's define the composer class:$/では`profile`ビューがレンダーされるたび実行される、`ProfileComposer@compose`メソッドをコンポーザとして登録してみましょう。まず、このコンポーザクラスを定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* The user repository implementation\.$/         * userリポジトリの実装/
s/^         \*$/         */
s/^         \* @var UserRepository$/         * @var UserRepository/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new profile composer\.$/         * 新しいプロフィールコンポーザの生成/
s/^         \*$/         */
s/^         \* @param  UserRepository  $users$/         * @param  UserRepository  $users/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Dependencies automatically resolved by service container\.\.\.$/            \/\/ 依存はサービスコンテナにより自動的に解決される/
s/^        \/\*\*$/        \/**/
s/^         \* Bind data to the view\.$/         * データをビューと結合/
s/^         \*$/         */
s/^         \* @param  View  $view$/         * @param  View  $view/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Just before the view is rendered, the composer's `compose` method is called with the `Illuminate\\View\\View` instance\. You may use the `with` method to bind data to the view\.$/ビューがレンダーされる直前に、`Illuminate\\View\\View`インスタンスに対しコンポーザの`compose`メソッドが呼びだされます。/
s/^> {tip} All view composers are resolved via the \[service container\](\/docs\/{{version}}\/container), so you may type-hint any dependencies you need within a composer's constructor\.$/> {tip} すべてのビューコンポーザは[サービスコンテナ](\/docs\/{{version}}\/container)により依存解決されます。ですから、コンポーザのコンストラクターで必要な依存をタイプヒントで指定できます。/
s/^#### Attaching A Composer To Multiple Views$/#### 複数ビューへの適用/
s/^You may attach a view composer to multiple views at once by passing an array of views as the first argument to the `composer` method:$/複数のビューにビューコンポーザを適用するには、`composer`メソッドの最初の引数にビューの配列を渡してください。/
s/^        \['profile', 'dashboard'\],$/        ['profile', 'dashboard'],/
s/^The `composer` method also accepts the `\*` character as a wildcard, allowing you to attach a composer to all views:$/全ビューコンポーザに適用できるように、`composer`メソッドでは`*`をワイルドカードとして使用できます。/
s/^    View::composer('\*', function ($view) {$/    View::composer('*', function ($view) {/
s/^#### View Creators$/#### Viewクリエーター/
s/^View \*\*creators\*\* are very similar to view composers; however, they are executed immediately after the view is instantiated instead of waiting until the view is about to render\. To register a view creator, use the `creator` method:$/ビュー**クリエイター**は、ビューコンポーザとほぼ同じ働きをします。しかし、ビューがレンダーされるまで待つのではなく、インスタンス化されるとすぐに実行されます。ビュークリエイターを登録するには、`creator`メソッドを使います。/
