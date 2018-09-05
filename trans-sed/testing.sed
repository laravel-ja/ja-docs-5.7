s/^# Testing: Getting Started$/# テスト: テストの準備/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Environment\](#environment)$/- [環境](#environment)/
s/^- \[Creating & Running Tests\](#creating-and-running-tests)$/- [テストの生成と実行](#creating-and-running-tests)/
s/^## Introduction$/## イントロダクション/
s/^Laravel is built with testing in mind\. In fact, support for testing with PHPUnit is included out of the box and a `phpunit\.xml` file is already set up for your application\. The framework also ships with convenient helper methods that allow you to expressively test your applications\.$/Laravelはユニットテストも考慮して構築されています。実際、PHPUnitをサポートしており、最初から含まれています。アプリケーションのために`phpunit.xml`ファイルも最初から準備されています。さらにフレームワークはアプリケーションを記述的にテストするために便利なヘルパメソッドも持っています。/
s/^By default, your application's `tests` directory contains two directories: `Feature` and `Unit`\. Unit tests are tests that focus on a very small, isolated portion of your code\. In fact, most unit tests probably focus on a single method\. Feature tests may test a larger portion of your code, including how several objects interact with each other or even a full HTTP request to a JSON endpoint\.$/デフォルトでアプリケーションの`tests`ディレクトリには、２つのディレクトリが存在しています。`Feature` と`Unit`です。ユニットテストは極小さい、コードの独立した一部をテストします。実際、殆どのユニット(Unit)テストは一つのメソッドに焦点をあてます。機能(Feature)テストは、多くのオブジェクトがそれぞれどのように関しているかとか、JSONエンドポイントへ完全なHTTPリクエストを送ることさえ含む、コードの幅広い範囲をテストします。/
s/^An `ExampleTest\.php` file is provided in both the `Feature` and `Unit` test directories\. After installing a new Laravel application, run `phpunit` on the command line to run your tests\.$/`Feature`と`Unit`、両テストディレクトリには、`ExampleTest.php`が用意されています。真新しいLaravelアプリケーションをインストールしたらテストを実行するため、コマンドラインから`phpunit`を実行してください。/
s/^## Environment$/## 環境/
s/^When running tests via `phpunit`, Laravel will automatically set the configuration environment to `testing` because of the environment variables defined in the `phpunit\.xml` file\. Laravel also automatically configures the session and cache to the `array` driver while testing, meaning no session or cache data will be persisted while testing\.$/`phpunit.xml`ファイル中で環境変数が設定されているため、`phpunit`を実行するとLaravelは自動的に設定環境を`testing`にセットします。Laravelはまた、セッションとキャッシュの設定を`array`ドライバーに設定し、テスト中のセッションやキャッシュデータが残らないようにします。/
s/^You are free to define other testing environment configuration values as necessary\. The `testing` environment variables may be configured in the `phpunit\.xml` file, but make sure to clear your configuration cache using the `config:clear` Artisan command before running your tests!$/必要であれば他のテスト設定環境を自由に作成することもできます。`testing`動作環境変数は`phpunit.xml`の中で設定されています。テスト実行前には、`config:clear` Artisanコマンドを実行し、設定キャッシュをクリアするのを忘れないでください。/
s/^In addition, you may create a `\.env\.testing` file in the root of your project\. This file will override the `\.env` file when running PHPUnit tests or executing Artisan commands with the `--env=testing` option\.$/さらに、プロジェクトのルートディレクトリで、`.env.testing`ファイルを生成することも可能です。PHPUnitテストやArtisanコマンドを`--env=testing`オプション付きで実行する場合、`.env`ファイルをこのファイルの内容でオーバーライドします。/
s/^## Creating & Running Tests$/## テストの生成と実行/
s/^To create a new test case, use the `make:test` Artisan command:$/新しいテストケースを作成するには、`make:test` Artisanコマンドを使います。/
s/^    \/\/ Create a test in the Feature directory\.\.\.$/    \/\/ Featureディレクトリにテストを生成する/
s/^    \/\/ Create a test in the Unit directory\.\.\.$/    \/\/ Unitディレクトリにテストを生成する/
s/^Once the test has been generated, you may define test methods as you normally would using PHPUnit\. To run your tests, execute the `phpunit` command from your terminal:$/テストを生成したら、PHPUnitを使用するときと同じように、テストメソッドを定義してください。テストを実行するには、ターミナルで`phpunit`コマンドを実行します。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic test example\.$/         * 基本的なテスト例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^> {note} If you define your own `setUp` method within a test class, be sure to call `parent::setUp()`\.$/> {note} テストクラスに独自の`setUp`メソッドを定義する場合は、`parent::setUp()`を確実に呼び出してください。/
