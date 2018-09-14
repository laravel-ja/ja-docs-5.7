# リリースノート

- [バージョニング規約](#versioning-scheme)
- [サポートポリシー](#support-policy)
- [Laravel5.7](#laravel-5.7)

<a name="versioning-scheme"></a>
## バージョニング規約

Laravelのバージョニングは、「パラダイム.メジャー・マイナー」の規約を維持しています。メジャーフレームワークリリースは、１月と６月の半年ごとにリリースします。一方、マイナーリリースは毎週のように、頻繁にリリースされます。マイナーリリースは、ブレーキングチェンジを**絶対に**含めません。

アプリケーションやパッケージで、Laravelフレームワークやコンポーネントを利用する場合、常に`5.7.*`のようにバージョンを指定してください。理由は上記の通り、Laravelのメジャーリリースは、ブレーキングチェンジを含んでいるからです。新しいメジャーリリースへの更新は、一日かからない程度になるように努力しています。

パラダイムシフトリリースは数年空けています。これはフレームワークの構造と規約に重要な変更が起きたことを表します。現在、パラダイムシフトリリースは開発されていません。

<a name="support-policy"></a>
## サポートポリシー

Laravel5.5のようなLTSリリースでは、バグフィックスは２年間、セキュリティフィックスは３年間提供します。これらのリリースは長期間に渡るサポートとメンテナンスを提供します。 一般的なリリースでは、バグフィックスは６ヶ月、セキュリティフィックスは１年です。

| バージョン | リリース | バグフィックス期限 | セキュリティフィックス期限 |
| --- | --- | --- | --- |
| 5.0 | ２０１５年２月４日 | ２０１５年８月４日 | ２０１６年２月４日 |
| 5.1 (LTS) | ２０１５年５月９日 | ２０１７年６月９日 | ２０１８年６月９日 |
| 5.2 | ２０１５年１２月２１日 | ２０１６年６月２１日 | ２０１６年１２月２１日 |
| 5.3 | ２０１６年８月２３日 | ２０１７年２月２３日 | ２０１７年８月２３日 |
| 5.4 | ２０１７年１月２４日 | ２０１７年７月２４日 | ２０１８年１月２４日 |
| 5.5 (LTS) | ２０１７年８月３０日 | ２０１９年８月３０日 | ２０２０年８月３０日 |
| 5.6 | ２０１８年２月７日 | ２０１８年８月７日 | ２０１９年２月７日 |
| 5.7 | ２０１８年８月 | ２０１９年２月 | ２０１９年８月 |

<a name="laravel-5.7"></a>
## Laravel5.7

Laravel5.7はLaravel5.6からの持続的な向上に付け加え、[Laravel Nova](https://nova.laravel.com)、認証のスカフォールドへのオプショナルなメール確認の導入、認可のゲートとポリシーでのゲストユーザーのサポート、コンソールのテスト向上、Symfonyの`dump-server`の統合、通知のローカライズ化、それと様々なバグ修正に、使い勝手の向上が行われました。

### Laravel Nova

[Laravel Nova](https://nova.laravel.com)はLaravelアプリケーションの美しく、クラス最高な管理ダッシュボードです。もちろん、Novaのメインな機能は、裏で働いているEloquentを使用したデータベースレコードを管理する能力です。さらに、Novaはフィルター、レンズ、アクション、キューされたアクション、メトリクス、認証、カスタムツール、カスタムカード、カスタムフィールドなども提供しています。

Laravel Novaについてより詳しく学ぶには、[NovaのWebサイト](https://nova.laravel.com)で確認してください。

### メール確認

フレームワークに含まれている認証スカフォールドへ、オプショナルなメール確認をLaravel5.7から導入しました。この機能を取り入れるために、フレームワークに含まれている`users`テーブルデフォルトマイグレーションへ、`email_verified_at`タイムスタンプを追加しました。

新しい登録ユーザーへメールで登録を確認してもらうのを促すには、`User`モデルに`MustVerifyEmail`インターフェイスを実装します。

    <?php

    namespace App;

    use Illuminate\Notifications\Notifiable;
    use Illuminate\Contracts\Auth\MustVerifyEmail;
    use Illuminate\Foundation\Auth\User as Authenticatable;

    class User extends Authenticatable implements MustVerifyEmail
    {
        // ...
    }

`User`モデルに`MustVerifyEmail`インターフェイスを実装すると、新しい登録ユーザーは、サイン付きの確認リンクを含んだメールを受信します。このリンクがクリックされると、Laravelは自動的に確認時間をデータベースに登録し、あなたの選んだページへユーザーをリダイレクトします。

`verified`ミドルウェアをデフォルトのアプリケーションのHTTPカーネルへ追加しました。このミドルウェアは、追加したルートへ確認済みのユーザーだけを許可します。

    'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,

> {tip} メール確認についてもっと知るには、[完全なドキュメント](/docs/{{version}}/verification)をチェックしてください。

### ゲストユーザーゲート／ポリシー

以前のバージョンのLaravelでは、認可ゲートとポリシーは、アプリケーションの未認証な訪問者に対し、自動的に`false`を返していました。しかし今バージョンからはユーザーの引数定義で、「オプショナル」なタイプヒントを宣言するか、`null`デフォルト値を指定することにより、ゲストを認可チェックにパスさせることができます。

    Gate::define('update-post', function (?User $user, Post $post) {
        // ...
    });

### Symfonyダンプサーバ

Laravel5.7では、[Marcel Pociotによるパッケージ](https://github.com/beyondcode/laravel-dump-server)により、Symfonyの`dump-server`コマンドを統合しました。利用開始するには、`dump-server` Artisanコマンドを起動します。

    php artisan dump-server

サーバを起動すると、すべての`dump`呼び出しはブラウザの代わりに、`dump-server`コンソールウィンドウに表示されます。それにより、HTTPレスポンス出力をごちゃごちゃにしなくても、値を確認できます。

### 通知のローカライズ化

Laravelは現在の言語ではなく、ローケルにより通知を送れるようになりました。このローケルは通知がキューされていても保持されます。

これを実現するため、希望する言語を指定する`locale`メソッドを`Illuminate\Notifications\Notification`クラスに提供しました。アプリケーションは通知を整形する時に、指定のローケルへ変更します。その後に整形が完了したら、以前のローケルへ戻ります。

    $user->notify((new InvoicePaid($invoice))->locale('es'));

複数のNotifiableエントリーのローカリゼーションも、`Notification`ファサードにより達成できます。

    Notification::locale('es')->send($users, new InvoicePaid($invoice));

### コンソールテスト

Laravel5.7で`expectsQuestion`メソッドを使用すれば、コンソールコマンドのユーザー入力を簡単に「モック」できます。更に、終了コードを`assertExitCode`メソッドで、コンソールコマンドに期待する出力を`expectsOutput`メソッドで指定することもできます。

    Artisan::command('question', function () {
        $name = $this->ask('What is your name?');

        $language = $this->choice('Which language do you program in?', [
            'PHP',
            'Ruby',
            'Python',
        ]);

        $this->line('Your name is '.$name.' and you program in '.$language.'.');
    });

このコマンドを以下のように、`expectsQuestion`、`expectsOutput`、`assertExitCode`メソッドを活用してテストできます。

    /**
     * コンソールコマンドのテスト
     *
     * @return void
     */
    public function test_console_command()
    {
        $this->artisan('laracon')
             ->expectsQuestion('What is your name?', 'Taylor Otwell')
             ->expectsQuestion('Which language do you program in?', 'PHP')
             ->expectsOutput('Your name is Taylor Otwell and you program in PHP.')
             ->assertExitCode(0);
    }

### URLジェネレータとコールバック記法

コントローラアクションに対するURLを生成する場合、LaravelのURLジェネレータは文字列を受け取るだけでなく、"callable"記法も受け付けるようになりました。

    action([UserController::class, 'index']);

### ペジネーションリンク

Laravel5.7では、ペギネータのURL「ウィンドウ」の両サイドに、いくつの追加のリンクを表示するかを調整できます。デフォルトでは、メインのペジネータリンクの両サイドに３つのリンクが表示されます。この数を調整するには、`onEachSide`メソッドを使用します。

    {{ $paginator->onEachSide(5)->links() }}

### ファイルシステム読み込み／書き込みストリーム

Laravelのファイルシステムに、`readStream`と`writeStream`メソッドが用意されました。

    Storage::disk('s3')->writeStream(
        'remote-file.zip',
        Storage::disk('local')->readStream('local-file.zip')
    );
