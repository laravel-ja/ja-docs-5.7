s/^# Upgrade Guide$/# アップグレードガイド/
s/^- \[Upgrading To 5\.6\.30 From 5\.6\](#upgrade-5\.6\.30)$/- [5.6から5.6.30へのアップグレード](#upgrade-5.6.30)/
s/^- \[Upgrading To 5\.6\.0 From 5\.5\](#upgrade-5\.6\.0)$/- [5.5から5.6.0へのアップグレード](#upgrade-5.6.0)/
s/^<a name="upgrade-5\.6\.30"><\/a>$/<a name="upgrade-5.6.30"><\/a>/
s/^## Upgrading To 5\.6\.30 From 5\.6 (Security Release)$/## 5.6から5.6.30へのアップグレード（セキュリティーリリース）/
s/^Laravel 5\.6\.30 is a security release of Laravel and is recommended as an immediate upgrade for all users\. Laravel 5\.6\.30 also contains a breaking change to cookie encryption and serialization logic, so please read the following notes carefully when upgrading your application\.$/Laravel5.6.30はセキュリティーリリースのため、すべてのユーザーに対して即時にアップグレードすることを推奨します。また、Laravel5.6.30はクッキーの暗号化とシリアライズに関するロジックに、互換性がない変更を含んでいるため、アプリケーションのアップグレード時に以降の注釈を注意深く読んでください。/
s/^\*\*This vulnerability may only be exploited if your application encryption key (`APP_KEY` environment variable) has been accessed by a malicious user\.\*\* Typically, it is not possible for users of your application to gain access to this value\. However, ex-employees that had access to the encryption key may be able to use the key to attack your applications\. If you have any reason to believe your encryption key is in the hands of a malicious party, you should \*\*always\*\* rotate the key to a new value\.$/**この脆弱性はアプリケーションの暗号化キー（`APP_KEY`環境変数）が悪意のあるユーザーからアクセスされる場合にのみ悪用されます。** 通常、アプリケーションのユーザーが、この値にアクセスできる可能性はありません。しかしながら、以前雇用していた人が暗号化キーにアクセスできていた場合、アプリケーションへ攻撃するためにこのキーを利用することができます。悪意のある人々の手に、暗号化キーが渡ったと信じるいかなる理由がある場合は**いつでも**、キーの値を変更すべきです。/
s/^### Cookie Serialization$/### クッキーのシリアライズ化/
s/^Laravel 5\.6\.30 disables all serialization \/ unserialization of cookie values\. Since all Laravel cookies are encrypted and signed, cookie values are typically considered safe from client tampering\. \*\*However, if your application's encryption key is in the hands of a malicious party, that party could craft cookie values using the encryption key and exploit vulnerabilities inherent to PHP object serialization \/ unserialization, such as calling arbitrary class methods within your application\.\*\*$/**Laravel5.6.30では、クッキー値のシリアライズ化／非シリアライズ化を無効にしました。その理由は、Laravelのすべてのクッキーは、暗号化し、署名してあり、クライアントによる改ざんに対し、通常安全であると考えられます。**しかしながら、アプリケーションの暗号化キーが悪意のある人々の手に入れば、彼らは暗号化キーを使用しクッキー値を生成できます。アプリケーションの中の任意のクラスメソッドを呼び出すことなど、PHPオブジェクトのシリアライズ化／非シリアライズ化に本来の脆弱性を悪用できてしまいます。**/
s/^Disabling serialization on all cookie values will invalidate all of your application's sessions and users will need to log into the application again\. In addition, any other encrypted cookies your application is setting will have invalid values\. For this reason, you may wish to add additional logic to your application to validate that your custom cookie values match an expected list of values; otherwise, you should discard them\.$/すべてのクッキー値に対するシリアライズ化を無効にすることで、アプリケーションのセッションはすべて無効になり、ユーザーはアプリケーションに再ログインする必要が起きます。更に、アプリケーションで使用している他の暗号化クッキーの設定値が、無効になります。このため、カスタムクッキー値がリストと一致する事を確認するロジックをアプリケーションに追加する必要があるかも知れません。そうしない場合、全てを破棄することになります。/
s/^#### Configuring Cookie Serialization$/#### クッキーのシリアライズ化の設定/
s/^Since this vulnerability is not able to be exploited without access to your application's encryption key, we have chosen to provide a way to re-enable encrypted cookie serialization while you make your application compatible with these changes\. To enable \/ disable cookie serialization, you may change the static `serialize` property of the `App\\Http\\Middleware\\EncryptCookies` \[middleware\](https:\/\/github\.com\/laravel\/laravel\/blob\/master\/app\/Http\/Middleware\/EncryptCookies\.php):$/アプリケーションの暗号化キーにアクセスできない場合、この脆弱性は悪用できないため、今回の変更に対してもアプリケーションの互換性を維持できるように、暗号化クッキーのシリアライズ化を最有効にする手段を提供します。クッキーのシリアライズ化を有効／無効にするには、`App\\Http\\Middleware\\EncryptCookies` [ミドルウェア](https:\/\/github.com\/laravel\/laravel\/blob\/master\/app\/Http\/Middleware\/EncryptCookies.php)の`serialize`スタティックプロパティを変更してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Indicates if cookies should be serialized\.$/     * クッキーをシリアライズするかの指定/
s/^     \*$/     */
s/^     \* @var bool$/     * @var bool/
s/^     \*\/$/     *\//
s/^> \*\*Note:\*\* When encrypted cookie serialization is enabled, your application will be vulnerable to attack if its encryption key is accessed by a malicious party\. If you believe your key may be in the hands of a malicious party, you should rotate the key to a new value before enabling encrypted cookie serialization\.$/> **注意** 暗号化されたクッキーのシリアライズ化を有効にし、暗号化キーが悪意のある他者からアクセスできる場合、攻撃される可能性のある脆弱性がアプリケーションに起きます。キーが悪意のある人々の手に入ったと確信できる場合は、暗号化されたクッキーのシリアライズを有効にする前に、キーを新しい値に変更すべきです。/
s/^### Dusk 4\.0\.0$/### Dusk4.0.0/
s/^Dusk 4\.0\.0 has been released and does not serialize cookies\. If you choose to enable cookie serialization, you should continue to use Dusk 3\.0\.0\. Otherwise, you should upgrade to Dusk 4\.0\.0\.$/Dusk4.0.0がリリースされ、クッキーをシリアライズしなくなりました。クッキーのシリアライズを有効にする場合は、Dusk3.0.0を使用し続けてください。そうでなければ、Dusk4.0.0へアップグレードしてください。/
s/^### Passport 6\.0\.7$/### Passport6.0.7/
s/^Passport 6\.0\.7 has been released with a new `Laravel\\Passport\\Passport::withoutCookieSerialization()` method\. Once you have disabled cookie serialization, you should call this method within your application's `AppServiceProvider`\.$/Passport6.0.7が、新しい`Laravel\\Passport\\Passport::withoutCookieSerialization()`メソッドと共にリリースされました。クッキーのシリアライズを無効にした場合は、アプリケーションの`AppServiceProvider`の中で、このメソッドを呼び出す必要があります。/
s/^<a name="upgrade-5\.6\.0"><\/a>$/<a name="upgrade-5.6.0"><\/a>/
s/^## Upgrading To 5\.6\.0 From 5\.5$/## 5.5から5.6.0へのアップグレード/
s/^#### Estimated Upgrade Time: 10 - 30 Minutes$/#### 見積もり時間：１０〜３０分/
s/^> {note} We attempt to document every possible breaking change\. Since some of these breaking changes are in obscure parts of the framework only a portion of these changes may actually affect your application\.$/> {note} 私達は、互換性を失う可能性がある変更を全部ドキュメントにしようとしています。しかし、変更点のいくつかは、フレームワークの明確ではない部分で行われているため、一部の変更が実際にアプリケーションに影響を与えてしまう可能性があります。/
s/^Laravel 5\.6 requires PHP 7\.1\.3 or higher\.$/Laravel5.6の動作には、PHPバージョン7.1.3以上が必要です。/
s/^### Updating Dependencies$/### 依存パッケージのアップデート/
s/^Update your `laravel\/framework` dependency to `5\.6\.\*` and your `fideloper\/proxy` dependency to `^4\.0` in your `composer\.json` file\.$/`composer.json`ファイルの`laravel\/framework`依存指定を`5.6.*`に、`fideloper\/proxy`依存指定を`^4.0`へアップデートしてください。/
s/^In addition, if you are using the following first-party Laravel packages, you should upgrade them to their latest release:$/さらに、以下のファーストパーティLaravelパッケージを使用している場合は、最新のリリースへアップグレードしてください。/
s/^- Dusk (Upgrade To `^3\.0`)$/- Dusk (`^3.0`へアップグレード)/
s/^- Passport (Upgrade To `^6\.0`)$/- Passport (`^6.0`へアップグレード)/
s/^- Scout (Upgrade To `^4\.0`)$/- Scout (`^4.0`へアップグレード)/
s/^Of course, don't forget to examine any 3rd party packages consumed by your application and verify you are using the proper version for Laravel 5\.6 support\.$/もちろん、アプリケーションで使用しているサードパーティパッケージについても調査し、Laravel5.6をサポートしているバージョンを使用していることを確認してください。/
s/^#### Symfony 4$/#### Symfony4/
s/^All of the underlying Symfony components used by Laravel have been upgraded to the Symfony `^4\.0` release series\. If you are directly interacting with Symfony components within your application, you should review the \[Symfony change log\](https:\/\/github\.com\/symfony\/symfony\/blob\/master\/UPGRADE-4\.0\.md)\.$/Laravelを動作させるために使用している、すべてのSymfonyコンポーネントは、Symfony `^4.0`シリーズへアップグレードされました。アプリケーションで直接Symfonyコンポーネントを取り扱っている場合は、[Symfonyの変更ログ](https:\/\/github.com\/symfony\/symfony\/blob\/master\/UPGRADE-4.0.md)をレビューすべきでしょう。/
s/^You should update the `phpunit\/phpunit` dependency of your application to `^7\.0`\.$/アプリケーションの`phpunit\/phpunit`依存指定は、`^7.0`にアップグレードしてください。/
s/^### Arrays$/### 配列/
s/^#### The `Arr::wrap` Method$/#### `Arr::wrap`メソッド/
s/^Passing `null` to the `Arr::wrap` method will now return an empty array\.$/`Arr::wrap`メソッドへ`null`を渡すと、空の配列が返ってくるようになりました。/
s/^#### The `optimize` Command$/#### `optimize`コマンド/
s/^The previously deprecated `optimize` Artisan command has been removed\. With recent improvements to PHP itself including the OPcache, the `optimize` command no longer provides any relevant performance benefit\. Therefore, you may remove `php artisan optimize` from the `scripts` within your `composer\.json` file\.$/以前から非推奨になっていた、`optimize` Artisanコマンドは削除されました。PHP自身がOPcacheを含んだ、最近の向上により、`optimize`コマンドは妥当なパフォーマンスの向上を提供できなくなりました。そのため、`composer.json`ファイルの`scripts`項目から、`php artisan optimize`を取り除いてください。/
s/^#### HTML Entity Encoding$/#### HTMLエンティティエンコーディング/
s/^In previous versions of Laravel, Blade (and the `e` helper) would not double encode HTML entities\. This was not the default behavior of the underlying `htmlspecialchars` function and could lead to unexpected behavior when rendering content or passing in-line JSON content to JavaScript frameworks\.$/以前のバージョンのLaravelでは、Blade（および`e`ヘルパ）は、HTMLエンティティをダブルエンコードしませんでした。これは、裏で使用している`htmlspecialchars`関数のデフォルト動作とは異なり、コンテンツのレンダリングやインラインJSONコンテンツをJavaScriptフレームワークへ渡す際に、予想外の動作を引き起こしました。/
s/^In Laravel 5\.6, Blade and the `e` helper will double encode special characters by default\. This brings these features into alignment with the default behavior of the underlying `htmlspecialchars` PHP function\. If you would like to maintain the previous behavior of preventing double encoding, you may use the `Blade::withoutDoubleEncoding` method:$/Laravel5.6では、Bladeと`e`ヘルパはデフォルトとして、特別な文字をダブルエンコードします。これにより、裏で動作しているPHPの`htmlspecialchars`関数のデフォルトと、この機能は動作が統一されました。ダブルエンコーディングを行わない、以前の振る舞いを継続したい場合は、`Blade::withoutDoubleEncoding`メソッドを使用します。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションの全サービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Cache$/### キャッシュ/
s/^#### The Rate Limiter `tooManyAttempts` Method$/#### レートリミッターの`tooManyAttempts`メソッド/
s/^The unused `$decayMinutes` parameter was removed from this method's signature\. If you were overriding this method with your own implementation, you should also remove the argument from your method's signature\.$/このメソッドの引数から、使用されていなかった`$decayMinutes`引数が削除されました。このメソッドを自分の実装でオーバーライドしている場合、メソッドからこの引数を削除してください。/
s/^### Database$/### データベース/
s/^#### Index Order Of Morph Columns$/#### morphsカラムのインデックス順/
s/^The indexing of the columns built by the `morphs` migration method has been reversed for better performance\. If you are using the `morphs` method in one of your migrations, you may receive an error when attempting to run the migration's `down` method\. If the application is still in development, you may use the `migrate:fresh` command to rebuild the database from scratch\. If the application is in production, you should pass an explicit index name to the `morphs` method\.$/`morphs`マイグレーションメソッドにより作られるカラムのインデックスが、効率を改善するために改善されました。マイグレーションで`morphs`メソッドを使用している場合は、マイグレーションの`down`メッソッドを実行しようと試みると、エラーが発生します。アプリケーションが開発段階の場合は、`migrate:fresh`コマンドを使い、初めからデータベースを構築し直してください。アプリケーションが実働している場合は、明確に`morphs`メソッドにインデックス名を渡す必要があります。/
s/^#### `MigrationRepositoryInterface` Method Addition$/#### `MigrationRepositoryInterface`メソッド追加/
s/^A new `getMigrationsBatches` method has been added to the `MigrationRepositoryInterface`\. In the very unlikely event that you were defining your own implementation of this class, you should add this method to your implementation\. You may view the default implementation in the framework as an example\.$/`MigrationRepositoryInterface`へ、新しく`getMigrationsBatches`メソッドが追加されました。このクラスを自分で実装するというのは、まずあり得ませんが、実装している場合は実装にこのメソッドを追加してください。フレームワークのデフォルト実装を例として参照してください。/
s/^#### The `getDateFormat` Method$/#### `getDateFormat`メソッド/
s/^This `getDateFormat` method is now `public` instead of `protected`\.$/`getDateFormat`メソッドが、`protected`の代わりに`public`になりました。/
s/^### Hashing$/### ハッシュ/
s/^#### New Configuration File$/#### 新しい設定ファイル/
s/^All hashing configuration is now housed in its own `config\/hashing\.php` configuration file\. You should place a copy of the \[default configuration file\](https:\/\/github\.com\/laravel\/laravel\/blob\/master\/config\/hashing\.php) in your own application\. Most likely, you should maintain the `bcrypt` driver as your default driver\. However, `argon` is also supported\.$/ハッシュの全設定は、`config\/hashing.php`設定ファイルへ保存されるようになりました。[デフォルトの設定ファイル](https:\/\/github.com\/laravel\/laravel\/blob\/master\/config\/hashing.php)をアプリケーションへコピーしてください。ほとんどの場合、デフォルトドライバーとして`bcrypt`を継続する必要があります。しかしながら、`argon`もサポートされました。/
s/^### Helpers$/### ヘルパ/
s/^#### The `e` Helper$/#### `e`ヘルパ/
s/^In previous versions of Laravel, Blade (and the `e` helper) would not double encode HTML entities\. This was not the default behavior of the underlying `htmlspecialchars` function and could lead to unexpected behavior when rendering content or passing in-line JSON content to JavaScript frameworks\.$/以前のバージョンのLaravelでは、Blade（および`e`ヘルパ）は、HTMLエンティティをダブルエンコードしませんでした。これは、裏で使用している`htmlspecialchars`関数のデフォルト動作とは異なり、コンテンツのレンダリングやインラインJSONコンテンツをJavaScriptフレームワークへ渡す際に、予想外の動作を引き起こしました。/
s/^In Laravel 5\.6, Blade and the `e` helper will double encode special characters by default\. This brings these features into alignment with the default behavior of the underlying `htmlspecialchars` PHP function\. If you would like to maintain the previous behavior of preventing double encoding, you may pass `false` as the second argument to the `e` helper:$/Laravel5.6では、Bladeと`e`ヘルパはデフォルトとして、特別な文字をダブルエンコードします。これにより、裏で動作しているPHPの`htmlspecialchars`関数のデフォルトと、この機能は動作が統一されました。ダブルエンコーディングを行わない、以前の振る舞いを継続したい場合は、`e`ヘルパの第２引数に、`false`を渡してください。/
s/^### Logging$/### ログ/
s/^#### New Configuration File$/#### 新しい設定ファイル/
s/^All logging configuration is now housed in its own `config\/logging\.php` configuration file\. You should place a copy of the \[default configuration file\](https:\/\/github\.com\/laravel\/laravel\/blob\/master\/config\/logging\.php) in your own application and tweak the settings based on your application's needs\.$/新しいログ設定は、`config\/logging.php`設定ファイルで全て保存されるようになりました。[デフォルト設定ファイル](https:\/\/github.com\/laravel\/laravel\/blob\/master\/config\/logging.php)をアプリケーションへコピーし、必要に応じて設定を調整してください。/
s/^The `log` and `log_level` configuration options may be removed from the `config\/app\.php` configuration file\.$/`config\/app.php`設定ファイルから、`log`と`log_level`設定オプションは削除されました。/
s/^#### The `configureMonologUsing` Method$/#### `configureMonologUsing`メソッド/
s/^If you were using the `configureMonologUsing` method to customize the Monolog instance for your application, you should now create a `custom` Log channel\. For more information on how to create custom channels, check out the \[full logging documentation\](\/docs\/5\.6\/logging#creating-custom-channels)\.$/アプリケーションのために、`configureMonologUsing`メソッドを使用し、Monologインスタンスをカスタマイズしている場合は、`custom`ログチャンネルを作成する必要があります。カスタムチャンネル作成の詳細は、[ログのドキュメント](\/docs\/5.6\/logging#creating-custom-channels)で確認してください。/
s/^#### The Log `Writer` Class$/#### ログ`Writer`クラス/
s/^The `Illuminate\\Log\\Writer` class has been renamed to `Illuminate\\Log\\Logger`\. If you were explicitly type-hinting this class as a dependency of one of your application's classes, you should update the class reference to the new name\. Or, alternatively, you should strongly consider type-hinting the standardized `Psr\\Log\\LoggerInterface` interface instead\.$/`Illuminate\\Log\\Writer`クラスは、`Illuminate\\Log\\Logger`に名前が変更されました。アプリケーションのクラスで、このクラスをタイプヒントで明確に指定している場合は、新しい名前を参照するように変更してください。もしくは代わりに、標準化された`Psr\\Log\\LoggerInterface`インターフェイスをタイプヒントで使うように、よく考慮してください。/
s/^#### The `Illuminate\\Contracts\\Logging\\Log` Interface$/#### `Illuminate\\Contracts\\Logging\\Log`インターフェイス/
s/^This interface has been removed since this interface was a total duplication of the `Psr\\Log\\LoggerInterface` interface\. You should type-hint the `Psr\\Log\\LoggerInterface` interface instead\.$/`Psr\\Log\\LoggerInterface`インターフェイスと完全にダブってしまうため、このインターフェイスは削除されました。代わりに、`Psr\\Log\\LoggerInterface`をタイプヒントに使用してください。/
s/^### Mail$/### メール/
s/^#### `withSwiftMessage` Callbacks$/#### `withSwiftMessage`コールバック/
s/^In previous releases of Laravel, Swift Messages customization callbacks registered using `withSwiftMessage` were called _after_ the content was already encoded and added to the message\. These callbacks are now called _before_ the content is added, which allows you to customize the encoding or other message options as needed\.$/Laravelの以前のリリースでは、`withSwiftMessage`を使用し登録した、Swiftメッセージのカスタマイズコールバックは、コンテンツが既にエンコードされ、メッセージに追加された**後**に呼び出されていました。これらのコールバックが、コンテンツが追加される**前**に呼び出されるようになり、必要に応じてエンコードや他のメッセージオプションをカスタマイズできるようになりました。/
s/^### Pagination$/### ペジネーション/
s/^#### Bootstrap 4$/#### Bootstrap4/
s/^The pagination links generated by the paginator now default to Bootstrap 4\. To instruct the paginator to generate Bootstrap 3 links, call the `Paginator::useBootstrapThree` method from the `boot` method of your `AppServiceProvider`:$/ペジネータにより生成されるペジネーションリンクが、デフォルトでBootstrap4向けになりました。Bootstrap3向けに生成するように、ペジネータへ指示するには、`AppServiceProvider`の`boot`メソッドから、`Paginator::useBootstrapThree`メソッドを呼び出してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションの全サービスの起動処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Resources$/### リソース/
s/^#### The `original` Property$/#### `original`プロパティ/
s/^The `original` property of \[resource responses\](\/docs\/5\.6\/eloquent-resources) is now set to the original model instead of a JSON string \/ array\. This allows for easier inspection of the response's model during testing\.$/[リソースレスポンス](\/docs\/5.6\/eloquent-resources)の`original`プロパティへ、JSON文字列／配列の代わりにオリジナルのモデルがセットされるようになりました。これにより、テスト時にレスポンスのモデルの検査が簡単になりました。/
s/^### Routing$/### ルート/
s/^#### Returning Newly Created Models$/#### 新しく生成されたモデルの返却/
s/^When returning a newly created Eloquent model directly from a route, the response status will now automatically be set to `201` instead of `200`\. If any of your application's tests were explicitly expecting a `200` response, those tests should be updated to expect `201`\.$/ルートから直接、新たに生成されたEloquentモデルをリターンする場合、レスポンス状態は`200`の代わりに、`201`が自動的にセットされます。アプリケーションのテストで明確に、`200`レスポンスを期待している場合は、`201`を期待するように変更する必要があります。/
s/^### Trusted Proxies$/### 信頼するプロキシ/
s/^Due to underlying changes in the trusted proxy functionality of Symfony HttpFoundation, slight changes must be made to your application's `App\\Http\\Middleware\\TrustProxies` middleware\.$/Laravelが使用しているSymfony HttpFoundationの、信頼するプロキシの機能変更により、アプリケーションの`App\\Http\\Middleware\\TrustProxies`ミドルウェアに、僅かな変更がおきました。/
s/^The `$headers` property, which was previously an array, is now a bit property that accepts several different values\. For example, to trust all forwarded headers, you may update your `$headers` property to the following value:$/`$headers`プロパティは以前配列でしたが、様々な異なった値を受け付けるようになりました。たとえば、フォワーディングヘッダを全て信頼するには、`$headers`プロパティを次のように変更してください。/
s/^    \/\*\*$/    \/**/
s/^     \* The headers that should be used to detect proxies\.$/     * プロキシを検出するために使用するヘッダ/
s/^     \*$/     */
s/^     \* @var int$/     * @var int/
s/^     \*\/$/     *\//
s/^For more information on the available `$headers` values, check out the full documentation on \[trusting proxies\](\/docs\/5\.6\/requests#configuring-trusted-proxies)\.$/`$headers`に指定可能な値についての詳細は、[trusting proxies](\/docs\/5.6\/requests#configuring-trusted-proxies)のドキュメントで確認してください。/
s/^### Validation$/### バリデーション/
s/^#### The `ValidatesWhenResolved` Interface$/#### `ValidatesWhenResolved`インターフェイス/
s/^The `validate` method of the `ValidatesWhenResolved` interface \/ trait has been renamed to `validateResolved` in order to avoid conflicts with the `$request->validate()` method\.$/`ValidatesWhenResolved`インターフェイス／トレイトの`validate`メソッドは、`$request->validate()`によるコンフリクトを避けるために、`validateResolved`に変更されました。/
s/^### Miscellaneous$/### その他/
s/^We also encourage you to view the changes in the `laravel\/laravel` \[GitHub repository\](https:\/\/github\.com\/laravel\/laravel)\. While many of these changes are not required, you may wish to keep these files in sync with your application\. Some of these changes will be covered in this upgrade guide, but others, such as changes to configuration files or comments, will not be\. You can easily view the changes with the \[GitHub comparison tool\](https:\/\/github\.com\/laravel\/laravel\/compare\/5\.5\.\.\.master) and choose which updates are important to you\.$/`laravel\/laravel` [GitHubリポジトリ](https:\/\/github.com\/laravel\/laravel)で、変更を確認することも推奨します。変更の多くが必要なくても、それらのファイルを皆さんのアプリケーションで、最新版に合わせておきたいでしょう。変更のいくつかは、このアップグレードガイドで取り扱われていますが、設定ファイルやコメントの変更は取り扱っていません。変更は、[GitHub比較ツール](https:\/\/github.com\/laravel\/laravel\/compare\/5.5...master)で簡単に確認できるので、どの変更が自分にとって重要か選んでください。/
