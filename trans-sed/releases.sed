s/^# Release Notes$/# リリースノート/
s/^- \[Versioning Scheme\](#versioning-scheme)$/- [バージョニング規約](#versioning-scheme)/
s/^- \[Support Policy\](#support-policy)$/- [サポートポリシー](#support-policy)/
s/^- \[Laravel 5\.6\](#laravel-5\.6)$/- [Laravel 5.6](#laravel-5.6)/
s/^## Versioning Scheme$/## バージョニング規約/
s/^Laravel's versioning scheme maintains the following convention: `paradigm\.major\.minor`\. Major framework releases are released every six months (February and August), while minor releases may be released as often as every week\. Minor releases should \*\*never\*\* contain breaking changes\.$/Laravelのバージョニングは、「パラダイム.メジャー・マイナー」の規約を維持しています。メジャーフレームワークリリースは、１月と６月の半年ごとにリリースします。一方、マイナーリリースは毎週のように、頻繁にリリースされます。マイナーリリースは、ブレーキングチェンジを**絶対に**含めません。/
s/^When referencing the Laravel framework or its components from your application or package, you should always use a version constraint such as `5\.5\.\*`, since major releases of Laravel do include breaking changes\. However, we strive to always ensure you may update to a new major release in one day or less\.$/アプリケーションやパッケージで、Laravelフレームワークやコンポーネントを利用する場合、常に`5.5.*`のようにバージョンを指定してください。理由は上記の通り、Laravelのメジャーリリースは、ブレーキングチェンジを含んでいるからです。新しいメジャーリリースへの更新は、一日かからない程度になるように努力しています。/
s/^Paradigm shifting releases are separated by many years and represent fundamental shifts in the framework's architecture and conventions\. Currently, there is no paradigm shifting release under development\.$/パラダイムシフトリリースは数年空けています。これはフレームワークの構造と規約に重要な変更が起きたことを表します。現在、パラダイムシフトリリースは開発されていません。/
s/^## Support Policy$/## サポートポリシー/
s/^For LTS releases, such as Laravel 5\.5, bug fixes are provided for 2 years and security fixes are provided for 3 years\. These releases provide the longest window of support and maintenance\. For general releases, bug fixes are provided for 6 months and security fixes are provided for 1 year\.$/Laravel5.5のようなLTSリリースでは、バグフィックスは２年間、セキュリティフィックスは３年間提供します。これらのリリースは長期間に渡るサポートとメンテナンスを提供します。 一般的なリリースでは、バグフィックスは６ヶ月、セキュリティフィックスは１年です。/
s/^| Version | Release | Bug Fixes Until | Security Fixes Until |$/| バージョン | リリース | バグフィックス期限 | セキュリティフィックス期限 |/
s/^| 5\.0 | February 4th, 2015 | August 4th, 2015 | February 4th, 2016 |$/| 5.0 | ２０１５年２月４日 | ２０１５年８月４日 | ２０１６年２月４日 |/
s/^| 5\.1 (LTS) | June 9th, 2015 | June 9th, 2017 | June 9th, 2018 |$/| 5.1 (LTS) | ２０１５年５月９日 | ２０１７年６月９日 | ２０１８年６月９日 |/
s/^| 5\.2 | December 21st, 2015 | June 21st, 2016 | December 21st, 2016 |$/| 5.2 | ２０１５年１２月２１日 | ２０１６年６月２１日 | ２０１６年１２月２１日 |/
s/^| 5\.3 | August 23rd, 2016 | February 23rd, 2017 | August 23rd, 2017 |$/| 5.3 | ２０１６年８月２３日 | ２０１７年２月２３日 | ２０１７年８月２３日 |/
s/^| 5\.4 | January 24th, 2017 | July 24th, 2017 | January 24th, 2018 |$/| 5.4 | ２０１７年１月２４日 | ２０１７年７月２４日 | ２０１８年１月２４日 |/
s/^| 5\.5 (LTS) | August 30th, 2017 | August 30th, 2019 | August 30th, 2020 |$/| 5.5 (LTS) | ２０１７年８月３０日 | ２０１９年８月３０日 | ２０２０年８月３０日 |/
s/^| 5\.6 | February 7th, 2018 | August 7th, 2018 | February 7th, 2019 |$/| 5.6 | ２０１８年２月７日 | ２０１８年８月７日 | ２０１９年２月７日 |/
s/^<a name="laravel-5\.6"><\/a>$/<a name="laravel-5.6"><\/a>/
s/^## Laravel 5\.6$/## Laravel 5.6/
s/^Laravel 5\.6 continues the improvements made in Laravel 5\.5 by adding an improved logging system, single-server task scheduling, improvements to model serialization, dynamic rate limiting, broadcast channel classes, API resource controller generation, Eloquent date formatting improvements, Blade component aliases, Argon2 password hashing support, inclusion of the Collision package, and more\. In addition, all front-end scaffolding has been upgraded to Bootstrap 4\.$/Laravel5.6はLaravel5.5からの持続的な向上に付け加え、向上したログシステム、単一サーバタスクスケジュール、向上したモデルのシリアライズ、動的レート制限、ブロードキャストチャンネルクラス、APIリソースコントローラ生成、Eloquent日付フォーマットの向上、Bladeコンポーネント別名、Argon2パスワードハッシュサポート、Collisionパッケージの同梱などを追加しました。更に、フロントエンドのスカフォールドは、Bootstrap4向けにアップグレードされました。/
s/^All underlying Symfony components used by Laravel have been upgraded to the Symfony `~4\.0` release series\.$/Laravelが背後で使用しているSymfonyコンポーネントは、Symfonyの`~4.0`リリースシリーズへアップグレードされました。/
s/^The release of Laravel 5\.6 coincides with the release of \[Spark 6\.0\](https:\/\/spark\.laravel\.com), the first major upgrade to Laravel Spark since its release\. Spark 6\.0 introduces per-seat pricing for Stripe and Braintree, localization, Bootstrap 4, an enhanced UI, and Stripe Elements support\.$/Laravel5.6のリリースは[Spark6.0](https:\/\/spark.laravel.com)と同時にリリースされました。Laravel Sparkがリリースされてから、初めてのメジャーアップグレードです。Spark6.0では、StripeとBraintreeに対するユーザー数に応じた価格や、ローカリゼーション、Bootstrap4、UIの向上、Stripe Elementsのサポートを導入しました。/
s/^> {tip} This documentation summarizes the most notable improvements to the framework; however, more thorough change logs are always available \[on GitHub\](https:\/\/github\.com\/laravel\/framework\/blob\/5\.6\/CHANGELOG-5\.6\.md)\.$/> {tip} このドキュメントはフレームワークで注目してもらいたい機能向上についてまとめたものです。より全体的な変更ログは、いつでも[GitHub](https:\/\/github.com\/laravel\/framework\/blob\/5.6\/CHANGELOG-5.6.md)で確認できます。/
s/^### Logging Improvements$/### ログの向上/
s/^Laravel 5\.6 brings vast improvements to Laravel's logging system\. All logging configuration is housed in the new `config\/logging\.php` configuration file\. You may now easily build logging "stacks" that send log messages to multiple handlers\. For example, you may send all `debug` level messages to the system log while sending `error` level messages to Slack so that your team can quickly react to errors:$/Laravel5.6ではログシステムが大いに向上しています。ログの設定はすべて、新しい`config\/logging.php`設定ファイルにあります。ログメッセージを複数のハンドラへ送る、ログ「スタック」が簡単に構築できるようになりました。たとえば、`debug`レベルのメッセージは全てシステムログへ送り、`error`レベルのメッセージでは、すぐに対応できるようにSlackへ送ることができます。/
s/^    'channels' => \[$/    'channels' => [/
s/^        'stack' => \[$/        'stack' => [/
s/^            'channels' => \['syslog', 'slack'\],$/            'channels' => ['syslog', 'slack'],/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^In addition, it is now easier to customize existing log channels using the logging system's new "tap" functionality\. For more information, check out the \[full documentation on logging\](\/docs\/{{version}}\/logging)\.$/さらに、新しいログシステムの"tap"機能を使えば、既存のログチャンネルを簡単にカスタマイズできるようになりました。詳細は、[ログのドキュメント全文](\/docs\/{{version}}\/logging)をご覧ください。/
s/^### Single Server Task Scheduling$/### 単一サーバタスクスケジュール/
s/^> {note} To utilize this feature, your application must be using the `memcached` or `redis` cache driver as your application's default cache driver\. In addition, all servers must be communicating with the same central cache server\.$/> {note} この機能を使用するには、アプリケーションのデフォルトキャッシュドライバとして、`memcached`か`redis`キャッシュドライバを使用する必要があります。更に、全サーバが同じ単一のキャッシュサーバと通信している必要があります。/
s/^If your application is running on multiple servers, you may now limit a scheduled job to only execute on a single server\. For instance, assume you have a scheduled task that generates a new report every Friday night\. If the task scheduler is running on three worker servers, the scheduled task will run on all three servers and generate the report three times\. Not good!$/アプリケーションが複数のサーバで実行される場合、スケジュール済みのジョブを単一サーバ上のみで実行するよう制限できるようになりました。たとえば、毎週の金曜の夜に、新しいレポートを生成するタスクをスケジュールしていると仮定しましょう。タスクスケジューラが３つのワーカーサーバ上で実行されているなら、スケジュールされているタスクは３つ全部のサーバで実行され、３回レポートが生成されます。これではいけません。/
s/^To indicate that the task should run on only one server, you may use the `onOneServer` method when defining the scheduled task\. The first server to obtain the task will secure an atomic lock on the job to prevent other servers from running the same task on the same Cron cycle:$/タスクをサーバひとつだけで実行するように指示するには、スケジュールタスクを定義するときに`onOneServer`メソッドを使用します。このタスクを最初に取得したサーバが、同じタスクを同じCronサイクルで他のサーバで実行しないように、ジョブにアトミックなロックを確保します。/
s/^### Dynamic Rate Limiting$/### 動的レート制限/
s/^When specifying a \[rate limit\](\/docs\/{{version}}\/routing#rate-limiting) on a group of routes in previous releases of Laravel, you were forced to provide a hard-coded number of maximum requests:$/以前のLaravelのリリースでは、ルートのグループへ[レート制限](\/docs\/{{version}}\/routing#rate-limiting)を指定する場合、リクエストの最大回数をハードコードする必要がありました。/
s/^In Laravel 5\.6, you may specify a dynamic request maximum based on an attribute of the authenticated `User` model\. For example, if your `User` model contains a `rate_limit` attribute, you may pass the name of the attribute to the `throttle` middleware so that it is used to calculate the maximum request count:$/Laravel5.6では、認証された`User`モデルの属性にもとづいて、リクエストの最大回数が動的に指定されます。たとえば、`User`モデルが`rate_limit`属性を含んでいれば、属性の名前を`throttle`ミドルウェアに指定することで、最大リクエストカウントを計算するために使用されます。/
s/^### Broadcast Channel Classes$/### ブロードキャストチャンネルクラス/
s/^If your application is consuming many different channels, your `routes\/channels\.php` file could become bulky\. So, instead of using Closures to authorize channels, you may now use channel classes\. To generate a channel class, use the `make:channel` Artisan command\. This command will place a new channel class in the `App\/Broadcasting` directory\.$/アプリケーションで多くのチャンネルを利用していると、`routes\/channels.php`ファイルは膨大になってしまいます。認証チャンネルのクロージャを使用する代わりに、チャンネルクラスを使用するのが良いでしょう。チャンネルクラスを生成するには、`make:channel` Aritisanコマンドが使用できます。このコマンドは、新しいチャンネルクラスを`App\/Broadcasting`ディレクトリへ生成します。/
s/^Next, register your channel in your `routes\/channels\.php` file:$/次に、チャンネルを`routes\/channels.php`ファイルで登録します。/
s/^    Broadcast::channel('order\.{order}', OrderChannel::class);$/    Broadcast::channel('order.{order}', OrderChannel::class);/
s/^Finally, you may place the authorization logic for your channel in the channel class' `join` method\. This `join` method will house the same logic you would have typically placed in your channel authorization Closure\. Of course, you may also take advantage of channel model binding:$/最後に、チャンネルの認証ロジックをチャンネルクラスの`join`へ記述します。典型的な場合ではチャンネル認証クロージャに設置するのと同じロジックをこの`join`メソッドに設置します。もちろん、チャンネルモデル結合の利点も利用できます。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new channel instance\.$/         * 新しいチャンネルインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Authenticate the user's access to the channel\.$/         * ユーザーのチャンネルへアクセスを認証/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @param  \\App\\Order  $order$/         * @param  \\App\\Order  $order/
s/^         \* @return array|bool$/         * @return array|bool/
s/^         \*\/$/         *\//
s/^### API Controller Generation$/### APIコントローラの生成/
s/^When declaring resource routes that will be consumed by APIs, you will commonly want to exclude routes that present HTML templates such as `create` and `edit`\. To generate a resource controller that does not include these methods, you may now use the `--api` switch when executing the `make:controller` command:$/APIにより使用されるリソースルートを定義する場合、`create`や`edit`のようにHTMLテンプレートに存在するルートを通常除外します。これらのメソッドを含まないリソースコントローラを生成するには、`make:controller`実行時に`--api`スイッチを使用できるようになりました。/
s/^### Model Serialization Improvements$/### モデルのシリアライズの向上/
s/^In previous releases of Laravel, queued models would not be restored with their loaded relationships intact\. In Laravel 5\.6, relationships that were loaded on the model when it was queued are automatically re-loaded when the job is processed by the queue\.$/以前のLaravelリリースでは、キューされたモデルがロードしていたリレーションは、そのままリストアされませんでした。Laravel5.6では、キューされたモデルがロードしていたリレーションは、キューによりジョブが処理される際に自動的にリロードされます。/
s/^### Eloquent Date Casting$/### Eloquent日付キャスト/
s/^You may now individually customize the format of Eloquent date cast columns\. To get started, specify the desired date format within the cast declaration\. Once specified, this format will be used when serializing the model to an array \/ JSON:$/Eloquent日付キャストカラムのフォーマットを個別にカスタマイズできるようになりました。最初に、キャスト宣言の中で、希望する日付形式を指定します。一度指定すると、このフォーマットはモデルを配列やJSON西リアライズするとき、そのフォーマットが使用されます。/
s/^    protected $casts = \[$/    protected $casts = [/
s/^    \];$/    ];/
s/^### Blade Component Aliases$/### Bladeコンポーネント別名/
s/^If your Blade components are stored in a sub-directory, you may now alias them for easier access\. For example, imagine a Blade component that is stored at `resources\/views\/components\/alert\.blade\.php`\. You may use the `component` method to alias the component from `components\.alert` to `alert`:$/Bladeコンポーネントがサブディレクトリへ保存している場合、アクセスを簡単にするために別名が付けられるようになりました。たとえば、Bladeコンポーネントを`resources\/views\/components\/alert.blade.php`として保存しているとイメージしてください。`components.alert`を`alert`として、このコンポーネントとして別名を付けるには、`component`メソッドを使用します。/
s/^    Blade::component('components\.alert', 'alert');$/    Blade::component('components.alert', 'alert');/
s/^Once the component has been aliased, you may render it using a directive:$/コンポーネントに別名を付けると、ディレクティブを使いレンダできます。/
s/^    @alert('alert', \['type' => 'danger'\])$/    @alert('alert', ['type' => 'danger'])/
s/^You may omit the component parameters if it has no additional slots:$/追加のスロットがなければ、コンポーネントパラメータを省略できます。/
s/^### Argon2 Password Hashing$/### Argon2パスワードハッシュ/
s/^If you are building an application on PHP 7\.2\.0 or greater, Laravel now supports password hashing via the Argon2 algorithm\. The default hash driver for your application is controlled by a new `config\/hashing\.php` configuration file\.$/アプリケーションをバージョン7.2.0以降のPHP上で構築している場合、LaravelはArgon2アルゴリズムによるパスワードハッシュをサポートするようになりました。アプリケーションのデフォルトハッシュドライバーは、新しい`config\/hashing.php`設定ファイルでコントロールします。/
s/^### UUID Methods$/### UUIDメソッド/
s/^Laravel 5\.6 introduces two new methods for generating UUIDs: `Str::uuid` and `Str::orderedUuid`\. The `orderedUuid` method will generate a timestamp first UUID that is more easily and efficiently indexed by databases such as MySQL\. Each of these methods returns a `Ramsey\\Uuid\\Uuid` object:$/Laravel5.6で新しいUUID生成メソッドが導入されました。`Str::uuid`と`Str::orderedUuid`です。`orderedUuid`メソッドは、MySQLのようなデータベースにより、より簡単に、より効率的にインディックスされるタイムスタンプ先行のUUIDを生成します。これらのメソッドは、`Ramsey\\Uuid\\Uuid`オブジェクトを返します。/
s/^The default `laravel\/laravel` application now contains a `dev` Composer dependency for the \[Collision\](https:\/\/github\.com\/nunomaduro\/collision) package maintained by Nuno Maduro\. This packages provides beautiful error reporting when interacting with your Laravel application on the command line:$/デフォルトの`laravel\/laravel`アプリケーションは、`dev` Composer依存パッケージとして、Nuno Maduro氏によりメンテナンスされている[Collision](https:\/\/github.com\/nunomaduro\/collision)パッケージを含むようになりました。このパッケージは、コマンドラインのLaravelアプリケーションを操作する際、美しいエラーレポートを提供してくれます。/
s/^<img src="https:\/\/raw\.githubusercontent\.com\/nunomaduro\/collision\/stable\/docs\/example\.png" width="600" height="388">$/<img src="https:\/\/raw.githubusercontent.com\/nunomaduro\/collision\/stable\/docs\/example.png" width="600" height="388">/
s/^All front-end scaffolding such as the authentication boilerplate and example Vue component have been upgraded to \[Bootstrap 4\](https:\/\/blog\.getbootstrap\.com\/2018\/01\/18\/bootstrap-4\/)\. By default, pagination link generation also now defaults to Bootstrap 4\.$/認証の定形コードやVueコンポーネント例のような、フロントエンドの全スカフォールドが、[Bootstrap4](https:\/\/blog.getbootstrap.com\/2018\/01\/18\/bootstrap-4\/)へアップグレードされました。デフォルトとして生成するペジネーションリンクも、Bootstrap4になりました。/
