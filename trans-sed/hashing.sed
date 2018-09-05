s/^# Hashing$/# ハッシュ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [Configuration](#configuration)/
s/^- \[Basic Usage\](#basic-usage)$/- [基本的な使用法](#basic-usage)/
s/^## Introduction$/## イントロダクション/
s/^The Laravel `Hash` \[facade\](\/docs\/{{version}}\/facades) provides secure Bcrypt and Argon2 hashing for storing user passwords\. If you are using the built-in `LoginController` and `RegisterController` classes that are included with your Laravel application, they will use Bcrypt for registration and authentication by default\.$/LaravelのHash[ファサード](\/docs\/{{version}}\/facades)は保存するユーザーパスワードに対し、安全なBcryptとArgon2ハッシュを提供します。Laravelアプリケーションに組み込まれている、`LoginController`と`RegisterController`を使用していれば、登録と認証で自動的にBcrypt使用します。/
s/^> {tip} Bcrypt is a great choice for hashing passwords because its "work factor" is adjustable, which means that the time it takes to generate a hash can be increased as hardware power increases\.$/> {tip} Bcryptは「ストレッチ回数」が調整できるのでパスワードのハッシュには良い選択肢です。つまりハードウェアのパワーを上げればハッシュの生成時間を早くすることができます。/
s/^## Configuration$/## 設定/
s/^The default hashing driver for your application is configured in the `config\/hashing\.php` configuration file\. There are currently two supported drivers: \[Bcrypt\](https:\/\/en\.wikipedia\.org\/wiki\/Bcrypt) and \[Argon2\](https:\/\/en\.wikipedia\.org\/wiki\/Argon2)\.$/アプリケーションのデフォルトハッシュドライバーは、`config\/hashing.php`設定ファイルで指定します。現在、[Bcrypt](https:\/\/en.wikipedia.org\/wiki\/Bcrypt)と[Argon2](https:\/\/en.wikipedia.org\/wiki\/Argon2)、２つのドライバーをサポートしています。/
s/^> {note} The Argon2 driver requires PHP 7\.2\.0 or greater\.$/> {note} The Argon2 driver requires PHP 7.2.0 or greater./
s/^## Basic Usage$/## 基本的な使用法/
s/^You may hash a password by calling the `make` method on the `Hash` facade:$/`Hash`ファサードの`make`メソッドを呼び出し、パスワードをハッシュできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the password for the user\.$/         * ユーザーパスワードを更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Validate the new password length\.\.\.$/            \/\/ 新しいパスワードの長さのバリデーション…/
s/^            $request->user()->fill(\[$/            $request->user()->fill([/
s/^            \])->save();$/            ])->save();/
s/^#### Adjusting The Bcrypt Work Factor$/#### BcryptのWork Factorの調整/
s/^If you are using the Bcrypt algorithm, the `make` method allows you to manage the work factor of the algorithm using the `rounds` option; however, the default is acceptable for most applications:$/Bcryptアルゴリズムを使用する場合、`make`メソッドで`rounds`オプションを使用することにより、アルゴリズムのwork factorを管理できます。しかし、ほとんどのアプリケーションではデフォルト値で十分でしょう。/
s/^    $hashed = Hash::make('password', \[$/    $hashed = Hash::make('password', [/
s/^    \]);$/    ]);/
s/^#### Adjusting The Argon2 Work Factor$/#### Argon2のWork Factorの調整/
s/^If you are using the Argon2 algorithm, the `make` method allows you to manage the work factor of the algorithm using the `memory`, `time`, and `threads` options; however, the defaults are acceptable for most applications:$/Argon2アルゴリズムを使用する場合、`memory`と`time`、`threads`オプションを指定することにより、アルゴリズムのwork factorを管理できます。しかし、ほとんどのアプリケーションではデフォルト値で十分でしょう。/
s/^    $hashed = Hash::make('password', \[$/    $hashed = Hash::make('password', [/
s/^    \]);$/    ]);/
s/^> {tip} For more information on these options, check out the \[official PHP documentation\](http:\/\/php\.net\/manual\/en\/function\.password-hash\.php)\.$/> {tip} これらのオプションの詳細情報は、[PHP公式ドキュメント](http:\/\/php.net\/manual\/ja\/function.password-hash.php)をご覧ください。/
s/^#### Verifying A Password Against A Hash$/#### パスワードとハッシュ値の比較/
s/^The `check` method allows you to verify that a given plain-text string corresponds to a given hash\. However, if you are using the `LoginController` \[included with Laravel\](\/docs\/{{version}}\/authentication), you will probably not need to use this directly, as this controller automatically calls this method:$/`check`メソッドにより指定した平文文字列と指定されたハッシュ値を比較確認できます。しかし[Laravelに含まれている](\/docs\/{{version}}\/authentication)`LoginController`を使っている場合は、これを直接使用することはないでしょう。このコントローラがこのメソッドを自動的に呼び出します。/
s/^        \/\/ The passwords match\.\.\.$/        \/\/ パスワード一致/
s/^#### Checking If A Password Needs To Be Rehashed$/#### パスワードの再ハッシュが必要か確認/
s/^The `needsRehash` function allows you to determine if the work factor used by the hasher has changed since the password was hashed:$/パスワードがハシュされてからハッシャーのストレッチ回数が変更されているかを調べるには、`needsRehash`メソッドを使います。/
