# Laravel Telescope

- [イントロダクション](#introduction)
- [インストレーション](#installation)
    - [設定](#configuration)
    - [データの刈り込み](#data-pruning)
- [ダッシュボードの認可](#dashboard-authorization)

<a name="introduction"></a>
## イントロダクション

Laravel TelescopeはLaravelフレームワークのエレガントなデバッグアシスタントです。Telescopeはアプリケーションへ送信されたリクエスト、例外、ログエンティティ、データクエリ、キュージョブ、メール、通知、キャッシュ操作、スケジュールされたタスク、様々なダンプなどを提示します。TelescopeはLaravelローカル開発環境における、素晴らしいコンパニオンです。

<div align="center">
<img src="/img/TelescopeTest.png" width="100%">
</div>

<a name="installation"></a>
## インストレーション

> {note} Telescopeを動作させるには、Laravel5.7.7以上が必要です。

LaravelプロジェクトへTelescopeをインストールするには、Composerを使用します。

    composer require laravel/telescope

Telescopeを新ストールしたら、`telescope:install` Artisanコマンドを使用し、アセットを公開してください。Telescopeのインストールが終わったら、`migrate`コマンドも実行する必要があります。

    php artisan telescope:install

    php artisan migrate

#### Telescopeのアップデート

Telescopeを更新したら、Telescopeのアセットを再公開してください。

    php artisan telescope:publish

### 特定の環境でのみのインストレーション

Telescopeをローカル環境でのみ使用する場合は、`--dev`フラグを付けてインストールします。

    composer require laravel/telescope --dev

`telescope:install`実行後、`app`設定ファイルから`TelescopeServiceProvider`サービスプロバイダの登録を削除する必要があります。`app`設定ファイルで登録する代わりに、このサービスプロバイダを`AppServiceProvider`の`register`メソッドで登録してください。

    /**
     * 全アプリケーションサービスの登録
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->isLocal()) {
            $this->app->register(TelescopeServiceProvider::class);
        }
    }

<a name="configuration"></a>
### 設定

Telescopeのアセットを公開すると、主となる設定ファイルが`config/telescope.php`へ設置されます。この設定ファイルでワッチャーのオプションや、説明をコメントで記述している各種の設定オプションを調整できます。そのため、このファイルを全部読んでください。

望むのであれば、`enabled`設定オプションを使用し、Telescopeのデータ収集全体を無効にできます。

    'enabled' => env('TELESCOPE_ENABLED', true),

<a name="data-pruning"></a>
### データの刈り込み

データを刈り込まないと、`telescope_entries`テーブルはとても早くレコードが集積してしまいます。これを軽減するために、`telescope:prune` Artisanコマンドを毎日実行するように、スケジュールすべきでしょう。

    $schedule->command('telescope:prune')->daily();

<a name="dashboard-authorization"></a>
## ダッシュボードの認可

Telescopeはデフォルトで、ダッシュボードを`/telescope`で表示します。デフォルトでは、`local`環境でのみこのダッシュボードへアクセスできます。`app/Providers/TelescopeServiceProvider.php`ファイルの中に、`gate`メソッドが存在しています。この認可ゲートで、Telescopeの**local以外**でのアクセスをコントロールできます。Telescopeに対するアクセスを宣言する必要に応じ、このゲートを自由に変更してください。

    /**
     * Telescopeゲートの登録
     *
     * このゲートはlocal以外の環境で、誰がTelescopeへアクセスできるかを決定している。
     *
     * @return void
     */
    protected function gate()
    {
        Gate::define('viewTelescope', function ($user) {
            return in_array($user->email, [
                'taylor@laravel.com',
            ]);
        });
    }
