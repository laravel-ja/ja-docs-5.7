s/^# Browser Tests (Laravel Dusk)$/# ブラウザテスト(Laravel Dusk)/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Using Other Browsers\](#using-other-browsers)$/    - [他ブラウザの使用](#using-other-browsers)/
s/^- \[Getting Started\](#getting-started)$/- [利用の開始](#getting-started)/
s/^    - \[Generating Tests\](#generating-tests)$/    - [テストの生成](#generating-tests)/
s/^    - \[Running Tests\](#running-tests)$/    - [テストの実行](#running-tests)/
s/^    - \[Environment Handling\](#environment-handling)$/    - [環境の処理](#environment-handling)/
s/^    - \[Creating Browsers\](#creating-browsers)$/    - [ブラウザの生成](#creating-browsers)/
s/^    - \[Authentication\](#authentication)$/    - [認証](#authentication)/
s/^    - \[Database Migrations\](#migrations)$/    - [データベースマイグレーション](#migrations)/
s/^- \[Interacting With Elements\](#interacting-with-elements)$/- [要素の操作](#interacting-with-elements)/
s/^    - \[Dusk Selectors\](#dusk-selectors)$/    - [Duskセレクタ](#dusk-selectors)/
s/^    - \[Clicking Links\](#clicking-links)$/    - [リンクのクリック](#clicking-links)/
s/^    - \[Text, Values, & Attributes\](#text-values-and-attributes)$/    - [テキスト、値、属性](#text-values-and-attributes)/
s/^    - \[Using Forms\](#using-forms)$/    - [フォームの使用](#using-forms)/
s/^    - \[Attaching Files\](#attaching-files)$/    - [添付ファイル](#attaching-files)/
s/^    - \[Using The Keyboard\](#using-the-keyboard)$/    - [キーワードの使用](#using-the-keyboard)/
s/^    - \[Using The Mouse\](#using-the-mouse)$/    - [マウスの使用](#using-the-mouse)/
s/^    - \[Scoping Selectors\](#scoping-selectors)$/    - [セレクタの範囲指定](#scoping-selectors)/
s/^    - \[Waiting For Elements\](#waiting-for-elements)$/    - [要素の待機](#waiting-for-elements)/
s/^    - \[Making Vue Assertions\](#making-vue-assertions)$/    - [Veuアサーションの作成](#making-vue-assertions)/
s/^- \[Available Assertions\](#available-assertions)$/- [使用可能なアサート](#available-assertions)/
s/^- \[Pages\](#pages)$/- [ページ](#pages)/
s/^    - \[Generating Pages\](#generating-pages)$/    - [ページの生成](#generating-pages)/
s/^    - \[Configuring Pages\](#configuring-pages)$/    - [ページの設定](#configuring-pages)/
s/^    - \[Navigating To Pages\](#navigating-to-pages)$/    - [ページへのナビゲーション](#navigating-to-pages)/
s/^    - \[Shorthand Selectors\](#shorthand-selectors)$/    - [セレクタの簡略記述](#shorthand-selectors)/
s/^    - \[Page Methods\](#page-methods)$/    - [ページメソッド](#page-methods)/
s/^- \[Components\](#components)$/- [コンポーネント](#components)/
s/^    - \[Generating Components\](#generating-components)$/    - [コンポーネント生成](#generating-components)/
s/^    - \[Using Components\](#using-components)$/    - [コンポーネントの使用](#using-components)/
s/^- \[Continuous Integration\](#continuous-integration)$/- [継続的インテグレーション](#continuous-integration)/
s/^    - \[CircleCI\](#running-tests-on-circle-ci)$/    - [CircleCI](#running-tests-on-circle-ci)/
s/^    - \[Codeship\](#running-tests-on-codeship)$/    - [Codeship](#running-tests-on-codeship)/
s/^    - \[Heroku CI\](#running-tests-on-heroku-ci)$/    - [Heroku CI](#running-tests-on-heroku-ci)/
s/^    - \[Travis CI\](#running-tests-on-travis-ci)$/    - [Travis CI](#running-tests-on-travis-ci)/
s/^## Introduction$/## イントロダクション/
s/^Laravel Dusk provides an expressive, easy-to-use browser automation and testing API\. By default, Dusk does not require you to install JDK or Selenium on your machine\. Instead, Dusk uses a standalone \[ChromeDriver\](https:\/\/sites\.google\.com\/a\/chromium\.org\/chromedriver\/home) installation\. However, you are free to utilize any other Selenium compatible driver you wish\.$/Laravel Dusk（ダースク：夕暮れ）は、利用が簡単なブラウザの自動操作／テストAPIを提供します。デフォルトのDuskは皆さんのマシンへ、JDKやSeleniumのインストールを求めません。代わりにDuskはスタンドアローンの[ChromeDriver](https:\/\/sites.google.com\/a\/chromium.org\/chromedriver\/home)を使用します。しかし、好みのSeleniumコンパチドライバも自由に使用することもできます。/
s/^## Installation$/## インストール/
s/^To get started, you should add the `laravel\/dusk` Composer dependency to your project:$/使用を開始するには、`laravel\/dusk`コンポーサ依存パッケージをプロジェクトへ追加します。/
s/^Once Dusk is installed, you should register the `Laravel\\Dusk\\DuskServiceProvider` service provider\. Typically, this will be done automatically via Laravel's automatic service provider registration\.$/Duskをインストールしたら、`Laravel\\Dusk\\DuskServiceProvider`サービスプロバイダを登録する必要があります。通常、Laravelの自動サービスプロバイダ登録により、自動的に行われます。/
s/^> {note} If you are manually registering Dusk's service provider, you should \*\*never\*\* register it in your production environment, as doing so could lead to arbitrary users being able to authenticate with your application\.$/> {note} 本番環境にDuskをインストールしてはいけません。インストールすると、アプリケーションに対する未認証でのアクセスを許すようになります。/
s/^After installing the Dusk package, run the `dusk:install` Artisan command:$/Duskパッケージをインストールし終えたら、`dusk:install` Artisanコマンドを実行します。/
s/^A `Browser` directory will be created within your `tests` directory and will contain an example test\. Next, set the `APP_URL` environment variable in your `\.env` file\. This value should match the URL you use to access your application in a browser\.$/`test`ディレクトリ中に、サンプルテストを含んだ`Browser`ディレクトリが作成されます。次に、`.env`ファイルで`APP_URL`環境変数を指定します。この値は、ブラウザからアクセスするアプリケーションで使用するURLと一致させます。/
s/^To run your tests, use the `dusk` Artisan command\. The `dusk` command accepts any argument that is also accepted by the `phpunit` command:$/テストを実行するには、`dusk` Artisanコマンドを使います。`dusk`コマンドには、`phpunit`コマンドが受け付ける引数を全て指定できます。/
s/^### Using Other Browsers$/### 他ブラウザの使用/
s/^By default, Dusk uses Google Chrome and a standalone \[ChromeDriver\](https:\/\/sites\.google\.com\/a\/chromium\.org\/chromedriver\/home) installation to run your browser tests\. However, you may start your own Selenium server and run your tests against any browser you wish\.$/デフォルトのDuskは、Google Chromeとスタンドアローンの[ChromeDriver](https:\/\/sites.google.com\/a\/chromium.org\/chromedriver\/home)をブラウザテスト実行に使用します。しかし、自身のSeleniumサーバを起動し、希望するブラウザに対しテストを実行することもできます。/
s/^To get started, open your `tests\/DuskTestCase\.php` file, which is the base Dusk test case for your application\. Within this file, you can remove the call to the `startChromeDriver` method\. This will stop Dusk from automatically starting the ChromeDriver:$/開始するには、アプリケーションのベースDuskテストケースである、`tests\/DuskTestCase.php`ファイルを開きます。このファイルの中の、`startChromeDriver`メソッド呼び出しを削除してください。これにより、ChromeDriverの自動起動を停止します。/
s/^    \/\*\*$/    \/**/
s/^     \* Prepare for Dusk test execution\.$/     * Duskテスト実行準備/
s/^     \*$/     */
s/^     \* @beforeClass$/     * @beforeClass/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Next, you may modify the `driver` method to connect to the URL and port of your choice\. In addition, you may modify the "desired capabilities" that should be passed to the WebDriver:$/次に、皆さんが選んだURLとポートへ接続するために、`driver`メソッドを変更します。WebDriverに渡すべき、"desired capabilities"を更新することもできます。/
s/^    \/\*\*$/    \/**/
s/^     \* Create the RemoteWebDriver instance\.$/     * RemoteWebDriverインスタンスの生成/
s/^     \*$/     */
s/^     \* @return \\Facebook\\WebDriver\\Remote\\RemoteWebDriver$/     * @return \\Facebook\\WebDriver\\Remote\\RemoteWebDriver/
s/^     \*\/$/     *\//
s/^## Getting Started$/## 利用の開始/
s/^### Generating Tests$/### テストの生成/
s/^To generate a Dusk test, use the `dusk:make` Artisan command\. The generated test will be placed in the `tests\/Browser` directory:$/Duskのテストを生成するには、`dusk:make` Artisanコマンドを使います。生成されたテストは、`tests\/Browser`ディレクトリへ設置されます。/
s/^### Running Tests$/### テストの実行/
s/^To run your browser tests, use the `dusk` Artisan command:$/ブラウザテストを実行するには、`dusk` Artisanコマンドを使用します。/
s/^The `dusk` command accepts any argument that is normally accepted by the PHPUnit test runner, allowing you to only run the tests for a given \[group\](https:\/\/phpunit\.de\/manual\/current\/en\/appendixes\.annotations\.html#appendixes\.annotations\.group), etc:$/PHPUnitテストランナが通常受け付ける引数は、`dusk`コマンドでも指定できます。たとえば、指定した[グループ](https:\/\/phpunit.de\/manual\/current\/en\/appendixes.annotations.html#appendixes.annotations.group)のテストのみを実行するなどです。/
s/^#### Manually Starting ChromeDriver$/#### ChromeDriverの手動起動/
s/^By default, Dusk will automatically attempt to start ChromeDriver\. If this does not work for your particular system, you may manually start ChromeDriver before running the `dusk` command\. If you choose to start ChromeDriver manually, you should comment out the following line of your `tests\/DuskTestCase\.php` file:$/デフォルトのDuskは、ChromeDriverを自動的に起動しようとします。特定のシステムで自動起動しない場合は、`dusk`コマンドを実行する前に手動でChromeDriverを起動することもできます。ChromeDriverを手動起動する場合は、`tests\/DuskTestCase.php`ファイルの以下の行をコメントアウトしてください。/
s/^    \/\*\*$/    \/**/
s/^     \* Prepare for Dusk test execution\.$/     * Duskテスト実行準備/
s/^     \*$/     */
s/^     \* @beforeClass$/     * @beforeClass/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^In addition, if you start ChromeDriver on a port other than 9515, you should modify the `driver` method of the same class:$/また、ChromeDriverを9515以外のポートで起動した場合、同じクラスの`driver`メソッドを変更する必要があります。/
s/^    \/\*\*$/    \/**/
s/^     \* Create the RemoteWebDriver instance\.$/     * RemoteWebDriverインスタンスの生成/
s/^     \*$/     */
s/^     \* @return \\Facebook\\WebDriver\\Remote\\RemoteWebDriver$/     * @return \\Facebook\\WebDriver\\Remote\\RemoteWebDriver/
s/^     \*\/$/     *\//
s/^### Environment Handling$/### 環境の処理/
s/^To force Dusk to use its own environment file when running tests, create a `\.env\.dusk\.{environment}` file in the root of your project\. For example, if you will be initiating the `dusk` command from your `local` environment, you should create a `\.env\.dusk\.local` file\.$/テスト実行時に独自の環境ファイルを強制的に使用させるには、プロジェクトのルートに`.env.dusk.{environment}`ファイルを作成します。たとえば、`local`環境から`dusk`コマンドを起動する場合は、`.env.dusk.local`ファイルを作成します。/
s/^When running tests, Dusk will back-up your `\.env` file and rename your Dusk environment to `\.env`\. Once the tests have completed, your `\.env` file will be restored\.$/テストを実行すると、Duskは`.env`ファイルをバックアップし、皆さんのDusk環境を`.env`へリネームします。テストが完了したら、`.env`ファイルをリストアします。/
s/^### Creating Browsers$/### ブラウザの生成/
s/^To get started, let's write a test that verifies we can log into our application\. After generating a test, we can modify it to navigate to the login page, enter some credentials, and click the "Login" button\. To create a browser instance, call the `browse` method:$/手始めに、アプリケーションへログインできることを確認するテストを書いてみましょう。テストを生成したら、ログインページへ移動し、認証情報を入力し、"Login"ボタンをクリックするように変更します。ブラウザインスタンスを生成するには、`browser`メソッドを呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic browser test example\.$/         * 基本的なブラウザテスト例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            $user = factory(User::class)->create(\[$/            $user = factory(User::class)->create([/
s/^                'email' => 'taylor@laravel\.com',$/                'email' => 'taylor@laravel.com',/
s/^            \]);$/            ]);/
s/^As you can see in the example above, the `browse` method accepts a callback\. A browser instance will automatically be passed to this callback by Dusk and is the main object used to interact with and make assertions against your application\.$/上記の例のように、`browse`メソッドはコールバックを引数に受けます。　Duskによりブラウザインスタンスは自動的にこのコールバックに渡され、このオブジェクトで、アプリケーションに対する操作やアサートを行います。/
s/^> {tip} This test can be used to test the login screen generated by the `make:auth` Artisan command\.$/> {tip} このテストは、`make:auth` Artisanコマンドにより生成される、ログインスクリーンのテストに使用できます。/
s/^#### Creating Multiple Browsers$/#### 複数ブラウザの生成/
s/^Sometimes you may need multiple browsers in order to properly carry out a test\. For example, multiple browsers may be needed to test a chat screen that interacts with websockets\. To create multiple browsers, "ask" for more than one browser in the signature of the callback given to the `browse` method:$/テストを行うために複数のブラウザが必要なこともあります。たとえば、Webソケットを使用するチャットスクリーンをテストするためには、複数のブラウザが必要でしょう。複数ブラウザを生成するには、`browse`メソッドに指定するコールバックの引数で、一つ以上のブラウザを指定します。/
s/^#### Resizing Browser Windows$/#### ブラウザウィンドウのリサイズ/
s/^You may use the `resize` method to adjust the size of the browser window:$/ブラウザウインドウのサイズを調整するため、`resize`メソッドを使用できます。/
s/^The `maximize` method may be used to maximize the browser window:$/ブラウザウィンドウを最大化するには、`maximize`メソッドを使います。/
s/^### Authentication$/### 認証/
s/^Often, you will be testing pages that require authentication\. You can use Dusk's `loginAs` method in order to avoid interacting with the login screen during every test\. The `loginAs` method accepts a user ID or user model instance:$/認証が必要なページのテストはよくあります。毎回テストのたびにログインスクリーンを操作しなくても済むように、Duskの`loginAs`メソッドを使ってください。`loginAs`メソッドはユーザーIDかユーザーモデルインスタンスを引数に取ります。/
s/^> {note} After using the `loginAs` method, the user session will be maintained for all tests within the file\.$/> {note} `loginAs`メソッドを使用後、そのファイルに含まれるすべてのテストに対し、ユーザーセッションは保持されます。/
s/^### Database Migrations$/### データベースマイグレーション/
s/^When your test requires migrations, like the authentication example above, you should never use the `RefreshDatabase` trait\. The `RefreshDatabase` trait leverages database transactions which will not be applicable across HTTP requests\. Instead, use the `DatabaseMigrations` trait:$/上記の認証サンプルのように、マイグレーションをテストする必要がある場合は、`RefreshDatabase`トレイトを使用してはいけません。`RefreshDatabase`トレイトはHTTPリクエストに対し適用されない、データベーストランザクションに活用します。代わりに、`DatabaseMigrations`トレイトを使用してください。/
s/^## Interacting With Elements$/## 要素の操作/
s/^### Dusk Selectors$/### Duskセレクタ/
s/^Choosing good CSS selectors for interacting with elements is one of the hardest parts of writing Dusk tests\. Over time, frontend changes can cause CSS selectors like the following to break your tests:$/要素を操作するために、最適なCSSセレクタを選択するのは、Duskテストで一番難しい部分です。フロントエンドは繰り返し変更され、失敗するようになったテストを修正するため、CSSセレクタを何度も調整しました。/
s/^    \/\/ HTML\.\.\.$/    \/\/ HTML/
s/^    \/\/ Test\.\.\.$/    \/\/ テスト/
s/^    $browser->click('\.login-page \.container div > button');$/    $browser->click('.login-page .container div > button');/
s/^Dusk selectors allow you to focus on writing effective tests rather than remembering CSS selectors\. To define a selector, add a `dusk` attribute to your HTML element\. Then, prefix the selector with `@` to manipulate the attached element within a Dusk test:$/Duskセレクタにより、CSSセレクタを記憶するのではなく、効率的にテストを書くことに集中できるようになります。セレクタを定義するには、HTML要素に`dusk`属性を追加します。それから、Duskテスト中の要素を操作するために、セレクタの先頭に`@`を付けてください。/
s/^    \/\/ HTML\.\.\.$/    \/\/ HTML/
s/^    \/\/ Test\.\.\.$/    \/\/ テスト/
s/^### Clicking Links$/### リンクのクリック/
s/^To click a link, you may use the `clickLink` method on the browser instance\. The `clickLink` method will click the link that has the given display text:$/リンクをクリックするには、ブラウザインスタンスの`clickLink`メソッドを使います。`clickLink`メソッドは指定した表示テキストのリンクをクリックします。/
s/^> {note} This method interacts with jQuery\. If jQuery is not available on the page, Dusk will automatically inject it into the page so it is available for the test's duration\.$/> {note} このメソッドはjQueryを操作します。jQueryがそのページで使用不可能な場合、Duskは自動的にそのページへ挿入し、テストの中に使用します。/
s/^### Text, Values, & Attributes$/### テキスト、値、属性/
s/^#### Retrieving & Setting Values$/#### 値の取得／設定/
s/^Dusk provides several methods for interacting with the current display text, value, and attributes of elements on the page\. For example, to get the "value" of an element that matches a given selector, use the `value` method:$/Duskは現在表示されているテキスト、値、ページ要素の属性を操作する、数多くのメソッドを提供します。たとえば、指定したセレクタに一致する要素の「値(value)」を取得するには、`value`メソッドを使用します。/
s/^    \/\/ Retrieve the value\.\.\.$/    \/\/ 値の取得/
s/^    \/\/ Set the value\.\.\.$/    \/\/ 値の設定/
s/^#### Retrieving Text$/#### テキストの取得/
s/^The `text` method may be used to retrieve the display text of an element that matches the given selector:$/`text`メソッドは、指定したセレクタに一致する要素の表示テキストを取得します。/
s/^#### Retrieving Attributes$/#### 属性の取得/
s/^Finally, the `attribute` method may be used to retrieve an attribute of an element matching the given selector:$/最後の`attribute`メソッドは、セレクタに一致する要素の属性を取得します。/
s/^### Using Forms$/### フォームの使用/
s/^#### Typing Values$/#### 値のタイプ/
s/^Dusk provides a variety of methods for interacting with forms and input elements\. First, let's take a look at an example of typing text into an input field:$/Duskはフォームと入力要素を操作する、様々なメソッドを提供しています。最初に、入力フィールドへテキストをタイプする例を見てみましょう。/
s/^    $browser->type('email', 'taylor@laravel\.com');$/    $browser->type('email', 'taylor@laravel.com');/
s/^Note that, although the method accepts one if necessary, we are not required to pass a CSS selector into the `type` method\. If a CSS selector is not provided, Dusk will search for an input field with the given `name` attribute\. Finally, Dusk will attempt to find a `textarea` with the given `name` attribute\.$/必要であれば受け付けますが、`type`メソッドにはCSSセレクタを渡す必要がないことに注意してください。CSSセレクタが指定されない場合、Duskは`name`属性に指定された入力フィールドを探します。最終的に、Duskは指定された`name`属性を持つ`textarea`を見つけようとします。/
s/^To append text to a field without clearing its content, you may use the `append` method:$/コンテンツをクリアせずに、フィールドへテキストを追加するには、`append`メソッドを使用します。/
s/^You may clear the value of an input using the `clear` method:$/入力値をクリアするには、`clear`メソッドを使用します。/
s/^#### Dropdowns$/#### ドロップダウン/
s/^To select a value in a dropdown selection box, you may use the `select` method\. Like the `type` method, the `select` method does not require a full CSS selector\. When passing a value to the `select` method, you should pass the underlying option value instead of the display text:$/ドロップダウンの選択ボックスから値を選ぶには、`select`メソッドを使います。`type`メソッドと同様に、`select`メソッドも完全なCSSセレクタは必要ありません。`select`メソッドに引数を指定するとき、表示テキストの代わりに、オプション値を渡します。/
s/^You may select a random option by omitting the second parameter:$/第２引数を省略した場合、ランダムにオプションを選択します。/
s/^#### Checkboxes$/#### チェックボックス/
s/^To "check" a checkbox field, you may use the `check` method\. Like many other input related methods, a full CSS selector is not required\. If an exact selector match can't be found, Dusk will search for a checkbox with a matching `name` attribute:$/チェックボックスを「チェック(check)」するには、`check`メソッドを使います。他の関連する多くのメソッドと同様に、完全なCSSセレクタは必要ありません。完全に一致するセレクタが見つからないと、Duskは`name`属性に一致するチェックボックスを探します。/
s/^#### Radio Buttons$/#### ラジオボタン/
s/^To "select" a radio button option, you may use the `radio` method\. Like many other input related methods, a full CSS selector is not required\. If an exact selector match can't be found, Dusk will search for a radio with matching `name` and `value` attributes:$/ラジオボタンのオプションを「選択」するには、`radio`メソッドを使用します。他の関連する多くのメソッドと同様に、完全なセレクタは必要ありません。完全に一致するセレクタが見つからない場合、Duskは`name`と`value`属性に一致するラジオボタンを探します。/
s/^### Attaching Files$/### 添付ファイル/
s/^The `attach` method may be used to attach a file to a `file` input element\. Like many other input related methods, a full CSS selector is not required\. If an exact selector match can't be found, Dusk will search for a file input with matching `name` attribute:$/`attach`メソッドは`file`入力要素で、ファイルを指定するために使用します。他の関連する入力メソッドと同様に、完全なCSSセレクタは必要ありません。完全なセレクタが見つからなければ、Duskは`name`属性と一致するファイル入力を探します。/
s/^    $browser->attach('photo', __DIR__\.'\/photos\/me\.png');$/    $browser->attach('photo', __DIR__.'\/photos\/me.png');/
s/^> {note} The attach function requires the `Zip` PHP extension to be installed and enabled on your server\.$/> {note} The attach function requires the `Zip` PHP extension to be installed and enabled on your server./
s/^### Using The Keyboard$/### キーワードの使用/
s/^The `keys` method allows you to provide more complex input sequences to a given element than normally allowed by the `type` method\. For example, you may hold modifier keys entering values\. In this example, the `shift` key will be held while `taylor` is entered into the element matching the given selector\. After `taylor` is typed, `otwell` will be typed without any modifier keys:$/`keys`メソッドは、`type`メソッドによる、指定した要素に対する通常の入力よりも、複雑な入力を提供します。たとえば、モデファイヤキーを押しながら、値を入力するなどです。以下の例では、指定したセレクタに一致する要素へ、`taylor`を「シフト(`shift`)」キーを押しながら入力します。`Taylor`をタイプし終えると、`otwell`がモデファイヤキーを押さずにタイプされます。/
s/^    $browser->keys('selector', \['{shift}', 'taylor'\], 'otwell');$/    $browser->keys('selector', ['{shift}', 'taylor'], 'otwell');/
s/^You may even send a "hot key" to the primary CSS selector that contains your application:$/アプリケーションを構成する主要なCSSセレクタへ「ホットキー」を送ることもできます。/
s/^    $browser->keys('\.app', \['{command}', 'j'\]);$/    $browser->keys('.app', ['{command}', 'j']);/
s/^> {tip} All modifier keys are wrapped in `{}` characters, and match the constants defined in the `Facebook\\WebDriver\\WebDriverKeys` class, which can be \[found on GitHub\](https:\/\/github\.com\/facebook\/php-webdriver\/blob\/community\/lib\/WebDriverKeys\.php)\.$/> {tip} モデファイヤキーは`{}`文字で囲み、`Facebook\\WebDriver\\WebDriverKeys`クラスで定義されている定数を指定します。[GitHubで確認](https:\/\/github.com\/facebook\/php-webdriver\/blob\/community\/lib\/WebDriverKeys.php)できます。/
s/^### Using The Mouse$/### マウスの使用/
s/^#### Clicking On Elements$/#### 要素のクリック/
s/^The `click` method may be used to "click" on an element matching the given selector:$/指定したセレクタに一致する要素を「クリック」するには、`click`メソッドを使います。/
s/^    $browser->click('\.selector');$/    $browser->click('.selector');/
s/^#### Mouseover$/#### マウスオーバー/
s/^The `mouseover` method may be used when you need to move the mouse over an element matching the given selector:$/指定したセレクタに一致する要素を「マウスオーバー」したい場合は、`mouseover`メソッドを使います。/
s/^    $browser->mouseover('\.selector');$/    $browser->mouseover('.selector');/
s/^#### Drag & Drop$/#### ドラッグ＆ドロップ/
s/^The `drag` method may be used to drag an element matching the given selector to another element:$/`drag`メソッドは指定したセレクタに一致する要素をドラッグし、もう一つの要素へドロップします。/
s/^    $browser->drag('\.from-selector', '\.to-selector');$/    $browser->drag('.from-selector', '.to-selector');/
s/^Or, you may drag an element in a single direction:$/もしくは、特定の方向へ要素をドラッグすることもできます。/
s/^    $browser->dragLeft('\.selector', 10);$/    $browser->dragLeft('.selector', 10);/
s/^    $browser->dragRight('\.selector', 10);$/    $browser->dragRight('.selector', 10);/
s/^    $browser->dragUp('\.selector', 10);$/    $browser->dragUp('.selector', 10);/
s/^    $browser->dragDown('\.selector', 10);$/    $browser->dragDown('.selector', 10);/
s/^### Scoping Selectors$/### セレクタの範囲指定/
s/^Sometimes you may wish to perform several operations while scoping all of the operations within a given selector\. For example, you may wish to assert that some text exists only within a table and then click a button within that table\. You may use the `with` method to accomplish this\. All operations performed within the callback given to the `with` method will be scoped to the original selector:$/特定のセレクタの中の全操作を範囲指定しつつ、多くの操作を行いたいこともあります。たとえば、いくつかのテーブル中にあるテキストが存在していることをアサートし、それからテーブル中のボタンをクリックしたい場合です。`with`メソッドで行なえます。`with`メソッドのコールバック中で行われた操作は全部、オリジナルのセレクタに対し限定されます。/
s/^    $browser->with('\.table', function ($table) {$/    $browser->with('.table', function ($table) {/
s/^### Waiting For Elements$/### 要素の待機/
s/^When testing applications that use JavaScript extensively, it often becomes necessary to "wait" for certain elements or data to be available before proceeding with a test\. Dusk makes this a cinch\. Using a variety of methods, you may wait for elements to be visible on the page or even wait until a given JavaScript expression evaluates to `true`\.$/広範囲に渡りJavaScriptを使用しているアプリケーションのテストでは、テストを進める前に特定の要素やデータが利用可能になるまで、「待つ(wait)」必要がしばしば起きます。Duskではこれも簡単に行えます。数多くのメソッドを使い、ページで要素が見えるようになるまで、もしくはJavaScriptの評価が`true`になるまで待機できます。/
s/^#### Waiting$/#### 待機/
s/^If you need to pause the test for a given number of milliseconds, use the `pause` method:$/指定したミリ秒の間、テストをポーズしたい場合は、`pause`メソッドを使用します。/
s/^#### Waiting For Selectors$/#### セレクタの待機/
s/^The `waitFor` method may be used to pause the execution of the test until the element matching the given CSS selector is displayed on the page\. By default, this will pause the test for a maximum of five seconds before throwing an exception\. If necessary, you may pass a custom timeout threshold as the second argument to the method:$/`waitFor`メソッドはテストの実行を指定したCSSセレクタがページに表示されるまで中断します。例外が投げられるまで、デフォルトで最大５秒間テストを中断します。必要であれば、カスタムタイムアウトを秒でメソッドの第２引数として指定できます。/
s/^    \/\/ Wait a maximum of five seconds for the selector\.\.\.$/    \/\/ セレクタを最大５秒間待つ/
s/^    $browser->waitFor('\.selector');$/    $browser->waitFor('.selector');/
s/^    \/\/ Wait a maximum of one second for the selector\.\.\.$/    \/\/ セレクタを最大１秒待つ/
s/^    $browser->waitFor('\.selector', 1);$/    $browser->waitFor('.selector', 1);/
s/^You may also wait until the given selector is missing from the page:$/指定したセレクタがページから消えるまで待つこともできます。/
s/^    $browser->waitUntilMissing('\.selector');$/    $browser->waitUntilMissing('.selector');/
s/^    $browser->waitUntilMissing('\.selector', 1);$/    $browser->waitUntilMissing('.selector', 1);/
s/^#### Scoping Selectors When Available$/#### 利用可能時限定のセレクタ/
s/^Occasionally, you may wish to wait for a given selector and then interact with the element matching the selector\. For example, you may wish to wait until a modal window is available and then press the "OK" button within the modal\. The `whenAvailable` method may be used in this case\. All element operations performed within the given callback will be scoped to the original selector:$/指定したセレクタを待ち、それからそのセレクタに一致する要素を操作したい場合もよくあります。たとえば、モーダルウィンドウが現れるまで待ち、それからそのモーダルウィンドウ上の"OK"ボタンを押したい場合です。このケースでは`whenAvailable`メソッドを使用します。指定したコールバック内で行われた要素操作は全て、オリジナルのセレクタに対して限定されます。/
s/^    $browser->whenAvailable('\.modal', function ($modal) {$/    $browser->whenAvailable('.modal', function ($modal) {/
s/^#### Waiting For Text$/#### テキストの待機/
s/^The `waitForText` method may be used to wait until the given text is displayed on the page:$/指定したテキストがページに表示されるまで待ちたい場合は、`waitForText`メソッドを使います。/
s/^    \/\/ Wait a maximum of five seconds for the text\.\.\.$/    \/\/ テキストを最大５秒間待つ/
s/^    \/\/ Wait a maximum of one second for the text\.\.\.$/    \/\/ テキストを最大１秒待つ/
s/^#### Waiting For Links$/#### リンクの待機/
s/^The `waitForLink` method may be used to wait until the given link text is displayed on the page:$/ページに指定したリンクテキストが表示されるまで待つ場合は、`waitForLink`メソッドを使います。/
s/^    \/\/ Wait a maximum of five seconds for the link\.\.\.$/    \/\/ リンクを最大５秒間待つ/
s/^    \/\/ Wait a maximum of one second for the link\.\.\.$/    \/\/ リンクを最大１秒間待つ/
s/^#### Waiting On The Page Location$/#### ページロケーションの待機/
s/^When making a path assertion such as `$browser->assertPathIs('\/home')`, the assertion can fail if `window\.location\.pathname` is being updated asynchronously\. You may use the `waitForLocation` method to wait for the location to be a given value:$/`$browser->assertPathIs('\/home')`のようなパスをアサートするときに、`window.location.pathname`が非同期更新中の場合、アサートは失敗するでしょう。指定値のロケーションを待機するために、`waitForLocation`メソッドを使ってください。/
s/^You may also wait for a named route's location:$/名前付きルートのロケーションを待機することも可能です。/
s/^#### Waiting for Page Reloads$/#### ページリロードの待機/
s/^If you need to make assertions after a page has been reloaded, use the `waitForReload` method:$/ページのリロード後にアサートする必要がある場合は、`waitForReload`メソッドを使ってください。/
s/^    $browser->click('\.some-action')$/    $browser->click('.some-action')/
s/^#### Waiting On JavaScript Expressions$/#### JavaScriptの評価の待機/
s/^Sometimes you may wish to pause the execution of a test until a given JavaScript expression evaluates to `true`\. You may easily accomplish this using the `waitUntil` method\. When passing an expression to this method, you do not need to include the `return` keyword or an ending semi-colon:$/指定したJavaScript式の評価が`true`になるまで、テストの実行を中断したい場合も時々あります。`waitUntil`メソッドで簡単に行えます。このメソッドに式を渡す時に、`return`キーワードや最後のセミコロンを含める必要はありません。/
s/^    \/\/ Wait a maximum of five seconds for the expression to be true\.\.\.$/    \/\/ 式がtrueになるまで最大５秒間待つ/
s/^    $browser->waitUntil('App\.dataLoaded');$/    $browser->waitUntil('App.dataLoaded');/
s/^    $browser->waitUntil('App\.data\.servers\.length > 0');$/    $browser->waitUntil('App.data.servers.length > 0');/
s/^    \/\/ Wait a maximum of one second for the expression to be true\.\.\.$/    \/\/ 式がtrueになるまで最大１秒間待つ/
s/^    $browser->waitUntil('App\.data\.servers\.length > 0', 1);$/    $browser->waitUntil('App.data.servers.length > 0', 1);/
s/^#### Waiting With A Callback$/#### コールバックによる待機/
s/^Many of the "wait" methods in Dusk rely on the underlying `waitUsing` method\. You may use this method directly to wait for a given callback to return `true`\. The `waitUsing` method accepts the maximum number of seconds to wait, the interval at which the Closure should be evaluated, the Closure, and an optional failure message:$/Duskにある数多くの「待機」メソッドは、`waitUsing`メソッドを使用しています。このメソッドを直接利用し、コールバックが`true`を返すまで待機することができます。`waitUsing`メソッドは最長待ち秒数とクロージャを評価する間隔秒数、クロージャを引数に取ります。オプションとして、失敗時のメッセージを引数に取ります。/
s/^    }, "Something wasn't ready in time\.");$/    }, "Something wasn't ready in time.");/
s/^### Making Vue Assertions$/### Vueアサーションの作成/
s/^Dusk even allows you to make assertions on the state of \[Vue\](https:\/\/vuejs\.org) component data\. For example, imagine your application contains the following Vue component:$/Duskでは、[Vue](https:\/\/vuejs.org)コンポーネントデータの状態をアサートすることもできます。たとえば、アプリケーションに以下のVueコンポーネントが含まれていると想像してください。/
s/^    \/\/ HTML\.\.\.$/    \/\/ HTML/
s/^    \/\/ Component Definition\.\.\.$/    \/\/ コンポーネント定義/
s/^    Vue\.component('profile', {$/    Vue.component('profile', {/
s/^        template: '<div>{{ user\.name }}<\/div>',$/        template: '<div>{{ user.name }}<\/div>',/
s/^You may assert on the state of the Vue component like so:$/Vueコンポーネントの状態を以下のようにアサートできます。/
s/^    \/\*\*$/    \/**/
s/^     \* A basic Vue test example\.$/     * 基本的なVueのテスト/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^                    ->assertVue('user\.name', 'Taylor', '@profile-component');$/                    ->assertVue('user.name', 'Taylor', '@profile-component');/
s/^## Available Assertions$/## 使用可能なアサート/
s/^Dusk provides a variety of assertions that you may make against your application\. All of the available assertions are documented in the list below:$/Duskはアプリケーションに対する数多くのアサートを提供しています。使用できるアサートを以下のリストにまとめます。/
s/^    \.collection-method-list > p {$/    .collection-method-list > p {/
s/^    \.collection-method-list a {$/    .collection-method-list a {/
s/^\[assertTitle\](#assert-title)$/[assertTitle](#assert-title)/
s/^\[assertTitleContains\](#assert-title-contains)$/[assertTitleContains](#assert-title-contains)/
s/^\[assertUrlIs\](#assert-url-is)$/[assertUrlIs](#assert-url-is)/
s/^\[assertPathBeginsWith\](#assert-path-begins-with)$/[assertPathBeginsWith](#assert-path-begins-with)/
s/^\[assertPathIs\](#assert-path-is)$/[assertPathIs](#assert-path-is)/
s/^\[assertPathIsNot\](#assert-path-is-not)$/[assertPathIsNot](#assert-path-is-not)/
s/^\[assertRouteIs\](#assert-route-is)$/[assertRouteIs](#assert-route-is)/
s/^\[assertQueryStringHas\](#assert-query-string-has)$/[assertQueryStringHas](#assert-query-string-has)/
s/^\[assertQueryStringMissing\](#assert-query-string-missing)$/[assertQueryStringMissing](#assert-query-string-missing)/
s/^\[assertFragmentIs\](#assert-fragment-is)$/[assertFragmentIs](#assert-fragment-is)/
s/^\[assertFragmentBeginsWith\](#assert-fragment-begins-with)$/[assertFragmentBeginsWith](#assert-fragment-begins-with)/
s/^\[assertFragmentIsNot\](#assert-fragment-is-not)$/[assertFragmentIsNot](#assert-fragment-is-not)/
s/^\[assertHasCookie\](#assert-has-cookie)$/[assertHasCookie](#assert-has-cookie)/
s/^\[assertCookieMissing\](#assert-cookie-missing)$/[assertCookieMissing](#assert-cookie-missing)/
s/^\[assertCookieValue\](#assert-cookie-value)$/[assertCookieValue](#assert-cookie-value)/
s/^\[assertPlainCookieValue\](#assert-plain-cookie-value)$/[assertPlainCookieValue](#assert-plain-cookie-value)/
s/^\[assertSee\](#assert-see)$/[assertSee](#assert-see)/
s/^\[assertDontSee\](#assert-dont-see)$/[assertDontSee](#assert-dont-see)/
s/^\[assertSeeIn\](#assert-see-in)$/[assertSeeIn](#assert-see-in)/
s/^\[assertDontSeeIn\](#assert-dont-see-in)$/[assertDontSeeIn](#assert-dont-see-in)/
s/^\[assertSourceHas\](#assert-source-has)$/[assertSourceHas](#assert-source-has)/
s/^\[assertSourceMissing\](#assert-source-missing)$/[assertSourceMissing](#assert-source-missing)/
s/^\[assertSeeLink\](#assert-see-link)$/[assertSeeLink](#assert-see-link)/
s/^\[assertDontSeeLink\](#assert-dont-see-link)$/[assertDontSeeLink](#assert-dont-see-link)/
s/^\[assertInputValue\](#assert-input-value)$/[assertInputValue](#assert-input-value)/
s/^\[assertInputValueIsNot\](#assert-input-value-is-not)$/[assertInputValueIsNot](#assert-input-value-is-not)/
s/^\[assertChecked\](#assert-checked)$/[assertChecked](#assert-checked)/
s/^\[assertNotChecked\](#assert-not-checked)$/[assertNotChecked](#assert-not-checked)/
s/^\[assertRadioSelected\](#assert-radio-selected)$/[assertRadioSelected](#assert-radio-selected)/
s/^\[assertRadioNotSelected\](#assert-radio-not-selected)$/[assertRadioNotSelected](#assert-radio-not-selected)/
s/^\[assertSelected\](#assert-selected)$/[assertSelected](#assert-selected)/
s/^\[assertNotSelected\](#assert-not-selected)$/[assertNotSelected](#assert-not-selected)/
s/^\[assertSelectHasOptions\](#assert-select-has-options)$/[assertSelectHasOptions](#assert-select-has-options)/
s/^\[assertSelectMissingOptions\](#assert-select-missing-options)$/[assertSelectMissingOptions](#assert-select-missing-options)/
s/^\[assertSelectHasOption\](#assert-select-has-option)$/[assertSelectHasOption](#assert-select-has-option)/
s/^\[assertValue\](#assert-value)$/[assertValue](#assert-value)/
s/^\[assertVisible\](#assert-visible)$/[assertVisible](#assert-visible)/
s/^\[assertPresent\](#assert-present)$/[assertPresent](#assert-present)/
s/^\[assertMissing\](#assert-missing)$/[assertMissing](#assert-missing)/
s/^\[assertDialogOpened\](#assert-dialog-opened)$/[assertDialogOpened](#assert-dialog-opened)/
s/^\[assertEnabled\](#assert-enabled)$/[assertEnabled](#assert-enabled)/
s/^\[assertDisabled\](#assert-disabled)$/[assertDisabled](#assert-disabled)/
s/^\[assertFocused\](#assert-focused)$/[assertFocused](#assert-focused)/
s/^\[assertNotFocused\](#assert-not-focused)$/[assertNotFocused](#assert-not-focused)/
s/^\[assertVue\](#assert-vue)$/[assertVue](#assert-vue)/
s/^\[assertVueIsNot\](#assert-vue-is-not)$/[assertVueIsNot](#assert-vue-is-not)/
s/^\[assertVueContains\](#assert-vue-contains)$/[assertVueContains](#assert-vue-contains)/
s/^\[assertVueDoesNotContain\](#assert-vue-does-not-contain)$/[assertVueDoesNotContain](#assert-vue-does-not-contain)/
s/^Assert the page title matches the given text:$/ページタイトルが指定した文字列と一致することを宣言します。/
s/^Assert the page title contains the given text:$/ページタイトルに、指定したテキストが含まれていることを宣言します。/
s/^Assert that the current URL (without the query string) matches the given string:$/クエリ文字列を除いた、現在のURLが指定した文字列と一致するのを宣言します。/
s/^Assert that the current URL path begins with given path:$/現在のURLパスが指定したパスで始まることを宣言します。/
s/^Assert the current path matches the given path:$/現在のパスが指定したパスであることを宣言します。/
s/^Assert the current path does not match the given path:$/現在のパスが指定したパスではないことを宣言します。/
s/^Assert the current URL matches the given named route's URL:$/現在のURLが指定した名前付きルートのURLと一致することを宣言します。/
s/^Assert the given query string parameter is present:$/指定したクエリ文字列パラメータが存在していることを宣言します。/
s/^Assert the given query string parameter is present and has a given value:$/指定したクエリ文字列パラメータが存在し、指定値を持っていることを宣言します。/
s/^Assert the given query string parameter is missing:$/指定した文字列パラメータが存在しないことを宣言します。/
s/^    $//
s/^Assert the current fragment matches the given fragment:$/現在のフラグメントが、指定したフラグメントと一致することを宣言します。/
s/^    $//
s/^Assert that the current fragment begins with given fragment:$/現在のフラグメントが、指定したフラグメントで始まることを宣言します。/
s/^    $//
s/^Assert the current fragment does not match the given fragment:$/現在のフラグメントが、指定したフラグメントと一致しないことを宣言します。/
s/^Assert the given cookie is present:$/指定したクッキーが存在していることを宣言します。/
s/^Assert that the given cookie is not present:$/指定したクッキーが存在していないことを宣言します。/
s/^Assert a cookie has a given value:$/クッキーが指定値を持っていることを宣言します。/
s/^Assert an unencrypted cookie has a given value:$/暗号化されていないクッキーが、指定値を持っていることを宣言します。/
s/^Assert the given text is present on the page:$/指定したテキストが、ページ上に存在することを宣言します。/
s/^Assert the given text is not present on the page:$/指定したテキストが、ページ上に存在しないことを宣言します。/
s/^Assert the given text is present within the selector:$/指定したテキストが、セレクタに含まれていることを宣言します。/
s/^Assert the given text is not present within the selector:$/指定したテキストが、セレクタに含まれていないことを宣言します。/
s/^Assert that the given source code is present on the page:$/指定したソースコードが、ページ上に存在していることを宣言します。/
s/^Assert that the given source code is not present on the page:$/指定したソースコードが、ページ上に存在していないことを宣言します。/
s/^Assert the given link is present on the page:$/指定したリンクが、ページ上に存在していることを宣言します。/
s/^Assert the given link is not present on the page:$/指定したリンクが、ページ上に存在していないことを宣言します。/
s/^Assert the given input field has the given value:$/指定した入力フィールドが、指定値を持っていることを宣言します。/
s/^Assert the given input field does not have the given value:$/指定した入力フィールドが、指定値を持っていないことを宣言します。/
s/^Assert the given checkbox is checked:$/指定したチェックボックスが、チェック済みであることを宣言します。/
s/^Assert the given checkbox is not checked:$/指定したチェックボックスが、チェックされていないことを宣言します。/
s/^Assert the given radio field is selected:$/指定したラジオフィールドが選択されていることを宣言します。/
s/^Assert the given radio field is not selected:$/指定したラジオフィールドが選択されていないことを宣言します。/
s/^Assert the given dropdown has the given value selected:$/指定したドロップダウンで指定値が選択されていることを宣言します。/
s/^Assert the given dropdown does not have the given value selected:$/指定したドロップダウンで指定値が選択されていないことを宣言します。/
s/^Assert that the given array of values are available to be selected:$/指定した配列値が選択可能であることを宣言します。/
s/^Assert that the given array of values are not available to be selected:$/指定した配列値が選択不可であることを宣言します。/
s/^Assert that the given value is available to be selected on the given field:$/指定したフィールドで、指定した値が選択可能であることを宣言します。/
s/^Assert the element matching the given selector has the given value:$/指定したセレクタに一致する要素が、指定値であることを宣言します。/
s/^Assert the element matching the given selector is visible:$/指定したセレクタに一致する要素が、ビジブルであることを宣言します。/
s/^Assert the element matching the given selector is present:$/指定したセレクタに一致する要素が、存在することを宣言します。/
s/^Assert the element matching the given selector is not visible:$/指定したセレクタに一致する要素が、ビジブルでないことを宣言します。/
s/^Assert that a JavaScript dialog with given message has been opened:$/指定したメッセージを持つ、JavaScriptダイアログが開かれていることを宣言します。/
s/^Assert that the given field is enabled:$/指定したフィールドが、enabledであることを宣言します。/
s/^Assert that the given field is disabled:$/指定したフィールドが、disabledであることを宣言します。/
s/^Assert that the given field is focused:$/指定したフィールドに、フォーカスがあることを宣言します。/
s/^Assert that the given field is not focused:$/指定したフィールドから、フォーカスが外れていることを宣言します。/
s/^Assert that a given Vue component data property matches the given value:$/指定したVueコンポーネントのデータプロパティが、指定値と一致することを宣言します。/
s/^Assert that a given Vue component data property does not match the given value:$/指定したVueコンポーネントのデータプロパティが、指定値と一致しないことを宣言します。/
s/^Assert that a given Vue component data property is an array and contains the given value:$/指定したVueコンポーネントのデータプロパティが配列で、指定値を含むことを宣言します。/
s/^Assert that a given Vue component data property is an array and does not contain the given value:$/指定したVueコンポーネントのデータプロパティが配列で、指定値を含まないことを宣言します。/
s/^## Pages$/## ページ/
s/^Sometimes, tests require several complicated actions to be performed in sequence\. This can make your tests harder to read and understand\. Pages allow you to define expressive actions that may then be performed on a given page using a single method\. Pages also allow you to define short-cuts to common selectors for your application or a single page\.$/時にテストで、連続して実行する複雑なアクションをたくさん要求されることがあります。これにより、テストは読みづらく、また理解しづらくなります。ページに対し一つのメソッドを使うだけで、指定ページで実行されるアクションを記述的に定義できます。ページはまた、アプリケーションやシングルページで一般的なセレクタの、短縮記法を定義する方法も提供しています。/
s/^### Generating Pages$/### ページの生成/
s/^To generate a page object, use the `dusk:page` Artisan command\. All page objects will be placed in the `tests\/Browser\/Pages` directory:$/ページオプジェクトを生成するには、`dusk:page` Artisanコマンドを使います。全てのページオブジェクトは、`tests\/Browser\/Pages`ディレクトリへ設置します。/
s/^### Configuring Pages$/### ページの設定/
s/^By default, pages have three methods: `url`, `assert`, and `elements`\. We will discuss the `url` and `assert` methods now\. The `elements` method will be \[discussed in more detail below\](#shorthand-selectors)\.$/デフォルトでページには、`url`、`assert`、`elements`の３メソッドが用意されています。`url`と`assert`メソッドは、この後説明します。`elements`メソッドについては、[のちほど詳細を紹介](#shorthand-selectors)します。/
s/^#### The `url` Method$/#### `url`メソッド/
s/^The `url` method should return the path of the URL that represents the page\. Dusk will use this URL when navigating to the page in the browser:$/`url`メソッドでは、そのページを表すURLのパスを返します。Duskはブラウザでこのページへ移動するとき、このURLを使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the URL for the page\.$/     * このページのURL取得/
s/^     \*$/     */
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^#### The `assert` Method$/#### `assert`メソッド/
s/^The `assert` method may make any assertions necessary to verify that the browser is actually on the given page\. Completing this method is not necessary; however, you are free to make these assertions if you wish\. These assertions will be run automatically when navigating to the page:$/`assert`メソッドでは、ブラウザが実際に指定ページを表示した時に、確認が必要なアサーションを定義します。このメソッドで完全に行う必要はありません。ですが、もしお望みであれば自由にアサートを記述してください。記述されたアサートは、このページへ移行時に自動的に実行されます。/
s/^    \/\*\*$/    \/**/
s/^     \* Assert that the browser is on the page\.$/     * ブラウザがこのページにやって来たときのアサート/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^### Navigating To Pages$/### ページへのナビゲーション/
s/^Once a page has been configured, you may navigate to it using the `visit` method:$/ページの設定を終えたら、`visit`メソッドを使い、ページへ移行できます。/
s/^Sometimes you may already be on a given page and need to "load" the page's selectors and methods into the current test context\. This is common when pressing a button and being redirected to a given page without explicitly navigating to it\. In this situation, you may use the `on` method to load the page:$/既に特定のページに移動済みで、現在のテストコンテキストへそのページのセレクタとメソッドを「ロード」する必要が起きることがあります。この状況は、明示的に移動していなくても、あるボタンを押すことで指定ページへリダイレクトしてしまう場合に発生します。そうした場合は、`on`メソッドで、そのページをロードできます。/
s/^### Shorthand Selectors$/### セレクタの簡略記述/
s/^The `elements` method of pages allows you to define quick, easy-to-remember shortcuts for any CSS selector on your page\. For example, let's define a shortcut for the "email" input field of the application's login page:$/ページの`elements`メソッドにより、覚えやすいCSSセレクタの短縮形を素早く定義できます。例として、アプリケーションのログインページの"email"入力フィールドの短縮形を定義してみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the element shortcuts for the page\.$/     * ページ要素の短縮形を取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^            '@email' => 'input\[name=email\]',$/            '@email' => 'input[name=email]',/
s/^        \];$/        ];/
s/^Now, you may use this shorthand selector anywhere you would use a full CSS selector:$/これで、完全なCSSセレクタを指定する箇所ならどこでも、この短縮セレクタを使用できます。/
s/^    $browser->type('@email', 'taylor@laravel\.com');$/    $browser->type('@email', 'taylor@laravel.com');/
s/^#### Global Shorthand Selectors$/#### グローバルなセレクタ簡略記述/
s/^After installing Dusk, a base `Page` class will be placed in your `tests\/Browser\/Pages` directory\. This class contains a `siteElements` method which may be used to define global shorthand selectors that should be available on every page throughout your application:$/Duskをインストールすると、ベース`Page`クラスが`tests\/Browser\/Pages`ディレクトリへ設置されます。このクラスは、アプリケーション全部のどのページからでも利用可能な、グローバル短縮セレクタを定義する`siteElements`メソッドを含んでいます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the global element shortcuts for the site\.$/     * サイトのグローバル要素短縮形の取得/
s/^     \*$/     */
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^### Page Methods$/### ページメソッド/
s/^In addition to the default methods defined on pages, you may define additional methods which may be used throughout your tests\. For example, let's imagine we are building a music management application\. A common action for one page of the application might be to create a playlist\. Instead of re-writing the logic to create a playlist in each test, you may define a `createPlaylist` method on a page class:$/ページに対し定義済みのデフォルトメソッドに加え、テスト全体で使用できる追加メソッドも定義できます。たとえば、音楽管理アプリケーションを構築中だと想像してみましょう。アプリケーションのあるページでプレイリストを作成するのは、よくあるアクションです。各テストごとにプレイリスト作成のロジックを書き直す代わりに、ページクラスに`createPlaylist`メソッドを定義することができます。/
s/^        \/\/ Other page methods\.\.\.$/        \/\/ 他のページメソッドの定義…/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new playlist\.$/         * 新しいプレイリストの作成/
s/^         \*$/         */
s/^         \* @param  \\Laravel\\Dusk\\Browser  $browser$/         * @param  \\Laravel\\Dusk\\Browser  $browser/
s/^         \* @param  string  $name$/         * @param  string  $name/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Once the method has been defined, you may use it within any test that utilizes the page\. The browser instance will automatically be passed to the page method:$/メソッドを定義すれば、このページを使用するすべてのテストの中で使用できます。ブラウザインスタンスは自動的にページメソッドへ渡されます。/
s/^## Components$/## コンポーネント/
s/^Components are similar to Dusk’s “page objects”, but are intended for pieces of UI and functionality that are re-used throughout your application, such as a navigation bar or notification window\. As such, components are not bound to specific URLs\.$/コンポーネントはDuskの「ページオブジェクト」と似ていますが、ナビゲーションバーや通知ウィンドウのような、UI群と機能をアプリケーション全体で再利用するためのものです。コンポーネントは特定のURLと結びついていません。/
s/^### Generating Components$/### コンポーネント生成/
s/^To generate a component, use the `dusk:component` Artisan command\. New components are placed in the `test\/Browser\/Components` directory:$/コンポーネントを生成するには、`dusk:component` Artisanコマンドを使用します。新しいコンポーネントは、`test\/Browser\/Components`ディレクトリに設置されます。/
s/^As shown above, a "date picker" is an example of a component that might exist throughout your application on a variety of pages\. It can become cumbersome to manually write the browser automation logic to select a date in dozens of tests throughout your test suite\. Instead, we can define a Dusk component to represent the date picker, allowing us to encapsulate that logic within the component:$/上記の「デートピッカー」は、アプリケーション全体の様々なページで利用されるコンポーネントの一例です。テストスーツ全体の何ダースものテスト中で、日付を選択するブラウザ自動化ロジックを一々書くのは大変な手間です。その代わりに、デートピッカーを表すDuskコンポーネントを定義し、そうしたロジックをコンポーネントへカプセル化することができます。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the root selector for the component\.$/         * コンポーネントのルートセレクタ取得/
s/^         \*$/         */
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^            return '\.date-picker';$/            return '.date-picker';/
s/^        \/\*\*$/        \/**/
s/^         \* Assert that the browser page contains the component\.$/         * ブラウザページにそのコンポーネントが含まれていることをアサート/
s/^         \*$/         */
s/^         \* @param  Browser  $browser$/         * @param  Browser  $browser/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get the element shortcuts for the component\.$/         * コンポーネントの要素のショートカットを取得/
s/^         \*$/         */
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^                '@date-field' => 'input\.datepicker-input',$/                '@date-field' => 'input.datepicker-input',/
s/^                '@month-list' => 'div > div\.datepicker-months',$/                '@month-list' => 'div > div.datepicker-months',/
s/^                '@day-list' => 'div > div\.datepicker-days',$/                '@day-list' => 'div > div.datepicker-days',/
s/^            \];$/            ];/
s/^        \/\*\*$/        \/**/
s/^         \* Select the given date\.$/         * 指定日付のセレクト/
s/^         \*$/         */
s/^         \* @param  \\Laravel\\Dusk\\Browser  $browser$/         * @param  \\Laravel\\Dusk\\Browser  $browser/
s/^         \* @param  int  $month$/         * @param  int  $month/
s/^         \* @param  int  $year$/         * @param  int  $year/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Using Components$/### コンポーネントの使用/
s/^Once the component has been defined, we can easily select a date within the date picker from any test\. And, if the logic necessary to select a date changes, we only need to update the component:$/コンポーネントを定義したら、全テスト中からデートピッカーの中の指定日付を簡単にセレクトできます。日付選択に必要なロジックに変更が起きたら、このコンポーネントを更新するだけです。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic component test example\.$/         * 基本的なコンポーネントテスト例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^## Continuous Integration$/## 継続的インテグレーション/
s/^#### CircleCI 1\.0$/#### CircleCI 1.0/
s/^If you are using CircleCI 1\.0 to run your Dusk tests, you may use this configuration file as a starting point\. Like TravisCI, we will use the `php artisan serve` command to launch PHP's built-in web server:$/CircleCI1.0を使用し、Duskテストを実行する場合、以下の設定ファイルを手始めに利用できます。TravisCIと同様に、`php artisan serve`コマンドを使用し、PHP組み込みWebサーバを起動できます。/
s/^          - curl -L -o google-chrome\.deb https:\/\/dl\.google\.com\/linux\/direct\/google-chrome-stable_current_amd64\.deb$/          - curl -L -o google-chrome.deb https:\/\/dl.google.com\/linux\/direct\/google-chrome-stable_current_amd64.deb/
s/^          - sudo dpkg -i google-chrome\.deb$/          - sudo dpkg -i google-chrome.deb/
s/^          - rm google-chrome\.deb$/          - rm google-chrome.deb/
s/^            - "\.\/vendor\/laravel\/dusk\/bin\/chromedriver-linux":$/            - ".\/vendor\/laravel\/dusk\/bin\/chromedriver-linux":/
s/^            - cp \.env\.testing \.env$/            - cp .env.testing .env/
s/^#### CircleCI 2\.0$/#### CircleCI 2.0/
s/^ If you are using CircleCI 2\.0 to run your Dusk tests, you may add these steps to your build:$/DuskテストにCircleCI2.0を使用する場合、ビルドに以下のステップを追加してください。/
s/^                - run: cp \.env\.testing \.env$/                - run: cp .env.testing .env/
s/^                   command: \.\/vendor\/laravel\/dusk\/bin\/chromedriver-linux$/                   command: .\/vendor\/laravel\/dusk\/bin\/chromedriver-linux/
s/^To run Dusk tests on \[Codeship\](https:\/\/codeship\.com), add the following commands to your Codeship project\. Of course, these commands are a starting point and you are free to add additional commands as needed:$/Duskのテストを[Codeship](https:\/\/codeship.com)で実行するには、以下のコマンドをCodeshipプロジェクトへ追加してください。もちろん、以下のコマンドは参考例ですので、必要に応じ自由にコマンドを追加してください。/
s/^    phpenv local 7\.1$/    phpenv local 7.1/
s/^    cp \.env\.testing \.env$/    cp .env.testing .env/
s/^    nohup bash -c "\.\/vendor\/laravel\/dusk\/bin\/chromedriver-linux 2>&1 &"$/    nohup bash -c ".\/vendor\/laravel\/dusk\/bin\/chromedriver-linux 2>\&1 \&"/
s/^    nohup bash -c "php artisan serve 2>&1 &" && sleep 5$/    nohup bash -c "php artisan serve 2>\&1 \&" \&\& sleep 5/
s/^To run Dusk tests on \[Heroku CI\](https:\/\/www\.heroku\.com\/continuous-integration), add the following Google Chrome buildpack and scripts to your Heroku `app\.json` file:$/Duskテストを[Heroku CI](https:\/\/www.heroku.com\/continuous-integration)上で実行するには、Herokuの`app.json`ファイルへ、以下のGoogle Chromeビルドパックとスクリプトを追加してください。/
s/^          "buildpacks": \[$/          "buildpacks": [/
s/^            { "url": "https:\/\/github\.com\/heroku\/heroku-buildpack-google-chrome" }$/            { "url": "https:\/\/github.com\/heroku\/heroku-buildpack-google-chrome" }/
s/^          \],$/          ],/
s/^            "test-setup": "cp \.env\.testing \.env",$/            "test-setup": "cp .env.testing .env",/
s/^            "test": "nohup bash -c '\.\/vendor\/laravel\/dusk\/bin\/chromedriver-linux > \/dev\/null 2>&1 &' && nohup bash -c 'php artisan serve > \/dev\/null 2>&1 &' && php artisan dusk"$/            "test": "nohup bash -c '.\/vendor\/laravel\/dusk\/bin\/chromedriver-linux > \/dev\/null 2>\&1 \&' \&\& nohup bash -c 'php artisan serve > \/dev\/null 2>\&1 \&' \&\& php artisan dusk"/
s/^To run your Dusk tests on Travis CI, we will need to use the "sudo-enabled" Ubuntu 14\.04 (Trusty) environment\. Since Travis CI is not a graphical environment, we will need to take some extra steps in order to launch a Chrome browser\. In addition, we will use `php artisan serve` to launch PHP's built-in web server:$/Travis CI上でDuskテストを実行するためには、Ubuntu 14.04 (Trusty)環境を"sudo-enabled"で使用する必要があります。Travis CIはグラフィカルな環境ではないため、Chromeブラウザを実行するには追加の手順を行う必要があります。さらに、PHPの組み込みWebサーバを起動するために、`php artisan serve`を使用する必要もあるでしょう。/
s/^       - cp \.env\.testing \.env$/       - cp .env.testing .env/
s/^       - google-chrome-stable --headless --disable-gpu --remote-debugging-port=9222 http:\/\/localhost &$/       - google-chrome-stable --headless --disable-gpu --remote-debugging-port=9222 http:\/\/localhost \&/
s/^       - php artisan serve &$/       - php artisan serve \&/
