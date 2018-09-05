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

Laravel 5.7 continues the improvements made in Laravel 5.6 by introducing [Laravel Nova](https://nova.laravel.com), optional email verification to the authentication scaffolding, support for guest users in authorization gates and policies, console testing improvements, Symfony `dump-server` integration, localizable notifications, and a variety of other bug fixes and usability improvements.

### Laravel Nova

[Laravel Nova](https://nova.laravel.com) is a beautiful, best-in-class administration dashboard for Laravel applications. Of course, the primary feature of Nova is the ability to administer your underlying database records using Eloquent. Additionally, Nova offers support for filters, lenses, actions, queued actions, metrics, authorization, custom tools, custom cards, custom fields, and more.

To learn more about Laravel Nova, check out the [Nova website](https://nova.laravel.com).

### Email Verification

Laravel 5.7 introduces optional email verification to the authentication scaffolding included with the framework. To accommodate this feature, an `email_verified_at` timestamp column has been added to the default `users` table migration that is included with the framework.

To prompt newly registered users to verify their email, the `User` model should be marked with the `MustVerifyEmail` interface:

    <?php

    namespace App;

    use Illuminate\Notifications\Notifiable;
    use Illuminate\Contracts\Auth\MustVerifyEmail;
    use Illuminate\Foundation\Auth\User as Authenticatable;

    class User extends Authenticatable implements MustVerifyEmail
    {
        // ...
    }

Once the `User` model is marked with the `MustVerifyEmail` interface, newly registered users will receive an email containing a signed verification link. Once this link has been clicked, Laravel will automatically record the verification time in the database and redirect users to a location of your choosing.

A `verified` middleware has been added to the default application's HTTP kernel. This middleware may be attached to routes that should only allow verified users:

    'verified' => \Illuminate\Auth\Middleware\EnsureEmailIsVerified::class,

> {tip} To learn more about email verification, check out the [complete documentation](/docs/{{version}}/verification).

### Guest User Gates / Policies

In previous versions of Laravel, authorization gates and policies automatically returned `false` for unauthenticated visitors to your application. However, you may now allow guests to pass through authorization checks by declaring an "optional" type-hint or supplying a `null` default value for the user argument definition:

    Gate::define('update-post', function (?User $user, Post $post) {
        // ...
    });

### Symfony Dump Server

Laravel 5.7 offers integration with Symfony's `dump-server` command via [a package by Marcel Pociot](https://github.com/beyondcode/laravel-dump-server). To get started, run the `dump-server` Artisan command:

    php artisan dump-server

Once the server has started, all calls to `dump` will be displayed in the `dump-server` console window instead of in your browser, allowing you to inspect the values without mangling your HTTP response output.

### Notification Localization

Laravel now allows you to send notifications in a locale other than the current language, and will even remember this locale if the notification is queued.

To accomplish this, the `Illuminate\Notifications\Notification` class now offers a `locale` method to set the desired language. The application will change into this locale when the notification is being formatted and then revert back to the previous locale when formatting is complete:

    $user->notify((new InvoicePaid($invoice))->locale('es'));

Localization of multiple notifiable entries may also be achieved via the `Notification` facade:

    Notification::locale('es')->send($users, new InvoicePaid($invoice));

### Console Testing

Laravel 5.7 allows you to easily "mock" user input for your console commands using the `expectsQuestion` method. In addition, you may specify the exit code and text that you expect to be output by the console command using the `assertExitCode` and `expectsOutput` methods. For example, consider the following console command:

    Artisan::command('question', function () {
        $name = $this->ask('What is your name?');

        $language = $this->choice('Which language do you program in?', [
            'PHP',
            'Ruby',
            'Python',
        ]);

        $this->line('Your name is '.$name.' and you program in '.$language.'.');
    });

You may test this command with the following test which utilizes the `expectsQuestion`, `expectsOutput`, and `assertExitCode` methods:

    /**
     * Test a console command.
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

### URL Generator & Callable Syntax

Instead of only accepting strings, Laravel's URL generator now accepts "callable" syntax when generating URLs to controller actions:

    action([UserController::class, 'index']);

### Paginator Links

Laravel 5.7 allows you to control how many additional links are displayed on each side of the paginator's URL "window". By default, three links are displayed on each side of the primary paginator links. However, you may control this number using the `onEachSide` method:

    {{ $paginator->onEachSide(5)->links() }}

### Filesystem Read / Write Streams

Laravel's Flysystem integration now offers `readStream` and `writeStream` methods:

    Storage::disk('s3')->writeStream(
        'remote-file.zip',
        Storage::disk('local')->readStream('local-file.zip')
    );
