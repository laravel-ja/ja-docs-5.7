# アップグレードガイド

- [5.6から5.6.0へのアップグレード](#upgrade-5.7.0)

<a name="upgrade-5.7.0"></a>
## 5.6から5.6.0へのアップグレード

#### アップグレード時間の見積もり：１０分から１５分

> {note} 私達は、互換性を失う可能性がある変更を全部ドキュメントにしようとしています。しかし、変更点のいくつかは、フレームワークの明確ではない部分で行われているため、一部の変更が実際にアプリケーションに影響を与えてしまう可能性があります。

### 依存パッケージのアップデート

`composer.json`ファイル中の、`laravel/framework`依存指定を`5.7.*`へアップデートしてください。

Laravel Passportを使用している場合は、`composer.json`ファイルの`laravel/passport`依存指定を`^7.0`へアップデートしてください。

もちろん、皆さんのアプリケーションで使用しているサードパーティのパッケージを確認し、Laravel5.7をサポートするバージョンを使用していることをチェックするのをお忘れなく。

### アプリケーション

#### `register`メソッド

**影響の可能性： とても低い**

`Illuminate\Foundation\Application`クラスの未使用な`options`引数が削除されました。このメソッドをオーバーライドしている場合、メソッドの引数を更新してください。

    /**
     * アプリケーションのサービスプロバイダの登録
     *
     * @param  \Illuminate\Support\ServiceProvider|string  $provider
     * @param  bool   $force
     * @return \Illuminate\Support\ServiceProvider
     */
    public function register($provider, $force = false);

### Artisan

#### スケジュール済みのジョブの接続とキュー

**影響の可能性： 低い**

`$schedule->job`メソッドは、`job`メソッドで接続／ジョブが明確に渡されていない場合、ジョブクラスの`queue`と`connection`プロパティの値が利用されるようになりました。

通常、これはバグフィックスと考えられています。しかしながら、不注意によるブレイキングチェンジとしてリストアップされています。[この変更により、問題に遭遇した場合は、お知らせください。](https://github.com/laravel/framework/pull/25216)

### Assets

#### Assetディレクトリの非階層化

**影響の可能性: なし**

新しいLaravel5.7アプリケーションでは、スクリプトとスタイルを含んでいたassetsディレクトリは削除され、スクリプトとスタイルは`resources`ディレクトリへ移動しました。これは既存のアプリケーションに影響**しません**し、既存のアプリケーションを更新する必要はありません。

しかし、この変更を適用したければ、`resources/assets/*`下の全てのファイル／ディレクトリを一つ上の階層へ移動してください。

- `resources/assets/js/*`を`resources/js/*`へ移動
- `resources/assets/sass/*`を`resources/sass/*`へ移動

それから、`webpack.mix.js`ファイル中の、古いディレクトリの参照を更新します。

    mix.js('resources/js/app.js', 'public/js')
       .sass('resources/sass/app.scss', 'public/css');

### 認証

#### `Authenticate`ミドルウェア

**影響の可能性： 低い**

`Illuminate\Auth\Middleware\Authenticate`ミドルウェアの`authenticate`メソッドは、最初の引数として送信されてきた`$request`を受け取るようになりました。皆さんの`Authenticate`ミドルウェアの中で、このメソッドをオーバーライドしてる場合は、ミドルウェアの引数を更新してください。

    /**
     * Determine if the user is logged in to any of the given guards.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  array  $guards
     * @return void
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    protected function authenticate($request, array $guards)

#### `ResetsPasswords`トレイト

**影響の可能性： 低い**

`ResetsPasswords`トレイトのprotected `sendResetResponse`メソッドは、最初の引数として送信されてきた`Illuminate\Http\Request`を受け取るようになりました。このメソッドをオーバーライドしている場合、皆さんのメソッドの引数を更新してください。

    /**
     * Get the response for a successful password reset.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  string  $response
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    protected function sendResetResponse(Request $request, $response)

#### `SendsPasswordResetEmails`トレイト

**影響の可能性： 低い**

`SendsPasswordResetEmails`トレイトの`sendResetLinkResponse` protectedメソッドは、最初の引数として送信されてきた`Illuminate\Http\Request`を受け取るようになりました。このメソッドをオーバーライドしている場合、皆さんのメソッドの引数を更新してください。

    /**
     * Get the response for a successful password reset link.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  string  $response
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    protected function sendResetLinkResponse(Request $request, $response)

### 認可

#### `Gate`

**影響の可能性： とても低い**

`raw`メソッドは可視性を`protected`から`public`に変更しました。それに付け加え、[`Illuminate\Contracts\Auth\Access\Gate`契約に追加されました](https://github.com/laravel/framework/pull/25143)。

    /**
     * Get the raw result from the authorization callback.
     *
     * @param  string  $ability
     * @param  array|mixed  $arguments
     * @return mixed
     */
    public function raw($ability, $arguments = []);

このインターフェイスを実装してる場合は、メソッドを皆さんの実装へ追加してください。

### Blade

#### `or`操作子

**影響の可能性： 高い**

同じ目的・機能の`??` PHP組み込み「null合体」演算子の優位性により、Bladeの"or"演算子を削除しました。

    // Laravel 5.6
    {{ $foo or 'default' }}

    // Laravel 5.7
    {{ $foo ?? 'default' }}

### Cacキャッシュhe

**影響の可能性： とても高い**

新しく`data`ディレクトリが`storage/framework/cache`へ追加されました。このディレクトリをアプリケーションに作成してください。

ディレクトリを作成したら、[storage/framework/cache/.gitignore](https://github.com/laravel/laravel/blob/76369205c8715a4a8d0d73061aa042a74fd402dc/storage/framework/cache/.gitignore)ファイルを更新してください。

最後に、新しく作成した`data`ディレクトリへ、[.gitignore](https://github.com/laravel/laravel/blob/76369205c8715a4a8d0d73061aa042a74fd402dc/storage/framework/cache/data/.gitignore)ファイルを追加してください。

### Carbon

**影響の可能性： とても低い**

Carbonの「マクロ」は、Laravelのライブラリの拡張に代わり、直接Carbonライブラリにより処理されるようになりました。[この変更に関連する問題に気づいたら、お知らせください。](https://github.com/laravel/framework/pull/23938)

### コレクション

#### `split`メソッド

**影響の可能性： 低い**

`split`メソッドは、オリジナルコレクション中の総アイテム数が、リクエストされたコレクション数より少なくない限り、[「グループ」のリクエストした数を常に返すように更新されました](https://github.com/laravel/framework/pull/24088)一般的にはこれはバグフィックスとして考えられています。しかし、不注意によるブレイキングチェンジとしてリストアップされています。

### クッキー

#### `Factory`契約のメソッド使用法

**影響の可能性： とても低い**

`Illuminate\Contracts\Cookie\Factory`インターフェイスの `make`と`forever`メソッドの使い方が、[変更されました](https://github.com/laravel/framework/pull/23200)。このインターフェイスを実装している場合は、これらのメソッドを更新してください。

### データベース

#### `softDeletesTz`マイグレーションメソッド

**影響の可能性： 低い**

スキーマテーブルビルダの`softDeletesTz`メソッドは、第１引数にカラム名を受け取るようになりました。それにより、`$precision`は第２引数となりました。

    /**
     * Add a "deleted at" timestampTz for the table.
     *
     * @param  string  $column
     * @param  int  $precision
     * @return \Illuminate\Support\Fluent
     */
    public function softDeletesTz($column = 'deleted_at', $precision = 0)

#### `ConnectionInterface`契約

**影響の可能性： とても低い**

新しく`$useReadPdo`引数を追加したため、`Illuminate\Contracts\Database\ConnectionInterface`契約は、`select` and `selectOne`の引数が更新されました。

    /**
     * Run a select statement and return a single result.
     *
     * @param  string  $query
     * @param  array   $bindings
     * @param  bool  $useReadPdo
     * @return mixed
     */
    public function selectOne($query, $bindings = [], $useReadPdo = true);

    /**
     * Run a select statement against the database.
     *
     * @param  string  $query
     * @param  array   $bindings
     * @param  bool  $useReadPdo
     * @return array
     */
    public function select($query, $bindings = [], $useReadPdo = true);

それに付け加え、この契約に`cursor`メソッドが追加されました。

    /**
     * Run a select statement against the database and returns a generator.
     *
     * @param  string  $query
     * @param  array  $bindings
     * @param  bool  $useReadPdo
     * @return \Generator
     */
    public function cursor($query, $bindings = [], $useReadPdo = true);

このインターフェイスを実装している場合、このメソッドを追加してください。

#### SQL Serverドライバプライオリティ

**影響の可能性： 低い**

Laravel5.7より前は、デフォルトSQL Server PDOドライバとして、`PDO_DBLIB`ドライバが使用されていました。このドライバは、Microsoftにより非推奨とされています。Laravel5.7では、利用可能であれば`PDO_SQLSRV`をデフォルトドライバとして利用します。別の選択として、`PDO_ODBC`ドライバの使用も選べます。

    'sqlsrv' => [
        // ...
        'odbc' => true,
        'odbc_datasource_name' => 'your-odbc-dsn',
    ],

どちらのドライバも利用可能でない場合、Laravelは`PDO_DBLIB`ドライバを使用します。

#### SQLite外部キー

**影響の可能性： 中程度**

SQLiteは外部キーのドロップをサポートしていません。そのため、テーブルに対する`dropForeign`メソッドを使用すると例外が投げられるようになりました。一般的にはこれはバグフィックスとして考えられています。しかし、不注意によるブレイキングチェンジとしてリストアップされています。

複数のタイプのデータベースでマイグレーションを実行する場合、SQLiteの外部キー非サポートを避けるために、マイグレーションでの`DB::getDriverName()`使用を考慮してください。

### デバッグ

#### ダンパクラス

**影響の可能性： とても低い**

Symfonyのネイティブな変数ダンパである、`Symfony\Component\VarDumper\VarDumper`と`Symfony\Component\VarDumper\Dumper\HtmlDumper`を使用する利点により、`Illuminate\Support\Debug\Dumper`と`Illuminate\Support\Debug\HtmlDumper`クラスは削除されました。

### Eloquent

#### `latest`／`oldest`メソッド

**影響の可能性： 低い**

Eloquentクエリビルダの`latest`と`oldest`メソッドは、Eloquentモデルに指定されたカスタム"created at"タイムスタンプカラムを尊重するようにアップデートされました。一般的にはこれはバグフィックスとして考えられています。しかし、不注意によるブレイキングチェンジとしてリストアップされています。

#### `wasChanged`メソッド

**影響の可能性： とても低い**

Eloquentモデルの変更は、`updated`モデルイベントが発行される**前に**、`wasChanged`メソッドが利用可能になったことです。一般的にはこれはバグフィックスとして考えられています。しかし、不注意によるブレイキングチェンジとしてリストアップされています。[この変更による問題に遭遇した場合は、お知らせください](https://github.com/laravel/framework/pull/25026)。

#### PostgreSQL特殊実数値

**影響の可能性： 低い**

PostgreSQLでは、実数値として`Infinity`、`-Infinity`、`NaN`をサポートしています。Laravel5.7より前のバージョンでは、Eloquentのキャストタイプが`float`、`double`、`real`の場合、`0`へキャストされていました。

Laravel5.7では、これらの値は対応するPHP定数、`INF`、`-INF`、`NAN`へキャストされます。

### メール確認

**影響の可能性： 状況による**

Laravelの新しい[メール確認サービス](/docs/{{version}}/verification)を使用する選択をした場合、アプリケーションへスカフォールドを追加する必要があります。最初に、アプリケーションへ`VerificationController`を追加します。[App\Http\Controllers\Auth\VerificationController](https://github.com/laravel/laravel/blob/master/app/Http/Controllers/Auth/VerificationController.php)。

さらに、`App\User`モデルに`MustVerifyEmail`契約を実装する必要があります。

    <?php

    namespace App;

    use Illuminate\Notifications\Notifiable;
    use Illuminate\Contracts\Auth\MustVerifyEmail;
    use Illuminate\Foundation\Auth\User as Authenticatable;

    class User extends Authenticatable implements MustVerifyEmail
    {
        use Notifiable;

        // ...
    }

検査済みのユーザーだけに特定のルートへのアクセスを許すために`verified`ミドルウェアを使うためには、`app/Http/Kernel.php`ファイルの`$routeMiddleware`プロパティへ、新しいミドルウェアを含めるために更新する必要があります。

    // App\Http\Kernelクラスの中

    protected $routeMiddleware = [
        'auth' => \Illuminate\Auth\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
        'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,
    ];

さらに、確認ビュースタブが必要です。このビューは、`resources/views/auth/verify.blade.php`として設置します。ビューの中身は、[GitHub](https://github.com/laravel/framework/blob/5.7/src/Illuminate/Auth/Console/stubs/make/views/auth/verify.stub)で取得できます。

次に、メールアドレスが確認された日時を保存するための、`email_verified_at`カラムをユーザーテーブルへ追加します。

    $table->timestamp('email_verified_at')->nullable();

ユーザー登録時にメールを送信するには、[App\Providers\EventServiceProvider](https://github.com/laravel/laravel/blob/master/app/Providers/EventServiceProvider.php)クラスへ、以下のイベントとリスナを登録する必要があります。

    use Illuminate\Auth\Events\Registered;
    use Illuminate\Auth\Listeners\SendEmailVerificationNotification;

    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

最後に、`Auth::routes`メソッドを呼び出す時に、`verify`オプションを渡してください。

    Auth::routes(['verify' => true]);

### ファイルシステム

#### `Filesystem`契約メソッド

**影響の可能性： 低い**

`readStream`と`writeStream`メソッドが、[`Illuminate\Contracts\Filesystem\Filesystem`契約へ追加されました](https://github.com/laravel/framework/pull/23755)。このインターフェイスを実装している場合、皆さんの実装へこれらのメソッドを追加してください。

### ハッシュ

#### `Hash:check`メソッド

**影響の可能性： なし**

`check`メソッドは、設定されたアルゴリズムとハッシュのアルゴリズムがマッチするかを**オプションとして**チェックするようになりました。

### メール

#### Mailable動的変数のケース

**影響の可能性： 中程度**

動的なビュー変数とMailable動的変数の振る舞いを統一するため、Mailableビューへ動的に渡される変数は、[自動的に「キャメルケース」](https://github.com/laravel/framework/pull/24232)になるようになりました。動的Mailable変数はLaravelの機能としてドキュメントに乗せていないため、アプリケーションに影響する可能性は低いでしょう。

#### テンプレートテーマ

**影響の可能性： 中程度**

Markdownのmailableテンプレートのためのデフォルトテーマスタイルをカスタマイズしている場合、再公開(publish)し、カスタマイズし直す必要があります。'blue'、'green'、'red'のボタン色クラスが、'primary'、'success'、'error'へリネームされました。

### キュー

#### `QUEUE_DRIVER`環境変数

**影響の可能性： とても低い**

`QUEUE_DRIVER`環境変数は、`QUEUE_CONNECTION`へリネームされました。意図的に皆さんの`config/queue.php`設定ファイルをLaravel5.7の内容へ合わせようとしない限り、アップグレードしている既存のアプリケーションには影響ありません。

### ルート

#### `Route::redirect`メソッド

**影響の可能性： 高い**

`Route::redirect`目ドッドは、`302`HTTPステータスコードを返すようになりました。`301`リダイレクションを行う、`permanentRedirect`メソッドが追加されました。

    // Return a 302 redirect...
    Route::redirect('/foo', '/bar');

    // Return a 301 redirect...
    Route::redirect('/foo', '/bar', 301);

    // Return a 301 redirect...
    Route::permanentRedirect('/foo', '/bar');

#### `addRoute`メソッド

**影響の可能性： 低い**

`Illuminate\Routing\Router`クラスの`addRoute`メソッドが、`protected`から`public`へ変更になりました。

### バリデーション

#### ネストしたバリデーションデータ

**影響の可能性： 中程度**

以前のバージョンのLaravelでは、`validate`はネストしたバリデーションルールに対して、正しいデータを返しませんでした。Laravel5.7では、修正されています。

    $data = Validator::make([
        'person' => [
            'name' => 'Taylor',
            'job' => 'Developer'
        ]
    ], ['person.name' => 'required'])->validate();

    dump($data);

    // 以前の振る舞い
    ['person' => ['name' => 'Taylor', 'job' => 'Developer']]

    // 新しい振る舞い
    ['person' => ['name' => 'Taylor']]

#### `Validator`契約

**影響の可能性： とても低い**

`validate`メソッドが、[`Illuminate\Contracts\Validation\Validator`契約に追加されました](https://github.com/laravel/framework/pull/25128)。

    /**
     * Run the validator's rules against its data.
     *
     * @return array
     */
    public function validate();

このインターフェイスを実装している場合は、皆さんの実装にこのメソッドを追加してください。

### その他

私達はまた、`laravel/laravel` [GitHubリポジトリ](https://github.com/laravel/laravel)の変更を確認することを推奨しています。そうした変更の多くは必要ありませんが、皆さんのアプリケーションでは最新状態へ同期しておきたいでしょう。変更のいくつかは、このアップグレードガイドで取り扱っていますが、設定ファイルやコメントの変更のような部分は扱っていません。[GitHub比較ツール](https://github.com/laravel/laravel/compare/5.6...master)で変更を確認し、皆さんにとって重要な変更を選び出すことが簡単にできます。
