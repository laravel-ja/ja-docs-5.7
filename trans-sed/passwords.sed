s/^# Resetting Passwords$/# パスワードリセット/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Database Considerations\](#resetting-database)$/- [データベースの検討事項](#resetting-database)/
s/^- \[Routing\](#resetting-routing)$/- [ルート定義](#resetting-routing)/
s/^- \[Views\](#resetting-views)$/- [ビュー](#resetting-views)/
s/^- \[After Resetting Passwords\](#after-resetting-passwords)$/- [パスワードリセット後の処理](#after-resetting-passwords)/
s/^- \[Customization\](#password-customization)$/- [カスタマイズ](#password-customization)/
s/^## Introduction$/## イントロダクション/
s/^> {tip} \*\*Want to get started fast?\*\* Just run `php artisan make:auth` in a fresh Laravel application and navigate your browser to `http:\/\/your-app\.test\/register` or any other URL that is assigned to your application\. This single command will take care of scaffolding your entire authentication system, including resetting passwords!$/> {tip} **さっそく取り掛かりたいですか？** 真新しいLaravelアプリケーションで`php artisan make:auth`を実行し、ブラウザで`http:\/\/your-app.test\/register`か、アプリケーションで割りつけた別のURLへアクセスするだけです。この一つのコマンドで、パスワードリセットを含めた、認証システム全体のスカフォールディングの面倒をみます。/
s/^Most web applications provide a way for users to reset their forgotten passwords\. Rather than forcing you to re-implement this on each application, Laravel provides convenient methods for sending password reminders and performing password resets\.$/大抵のWebアプリケーションはパスワードをリセットする手段を提供しています。それぞれのアプリケーションで何度も実装する代わりに、Laravelはパスワードリマインダを送り、パスワードリセットを実行する便利な方法を提供しています。/
s/^> {note} Before using the password reset features of Laravel, your user must use the `Illuminate\\Notifications\\Notifiable` trait\.$/> {note} Laravelのパスワードリセット機能を使用開始する前に、ユーザーが`Illuminate\\Notifications\\Notifiable`トレイトを使用していることを確認してください。/
s/^## Database Considerations$/## データベースの検討事項/
s/^To get started, verify that your `App\\User` model implements the `Illuminate\\Contracts\\Auth\\CanResetPassword` contract\. Of course, the `App\\User` model included with the framework already implements this interface, and uses the `Illuminate\\Auth\\Passwords\\CanResetPassword` trait to include the methods needed to implement the interface\.$/利用開始するには、`App\\User`モデルが`Illuminate\\Contracts\\Auth\\CanResetPassword`契約を実装しているか確認してください。もちろん、フレームワークに用意されている`App\\User`モデルでは、既にこのインターフェイスが実装されています。`Illuminate\\Auth\\Passwords\\CanResetPassword`トレイトで、このインターフェイスで実装する必要のあるメソッドが定義されています。/
s/^#### Generating The Reset Token Table Migration$/#### リセットトークンテーブルマイグレーションの生成/
s/^Next, a table must be created to store the password reset tokens\. The migration for this table is included with Laravel out of the box, and resides in the `database\/migrations` directory\. So, all you need to do is run your database migrations:$/次にパスワードリセットトークンを保存しておくためのテーブルを作成します。このテーブルのマイグレーションは、最初からLaravelの`database\/migrations`ディレクトリに含まれています。ですから、データベースマイグレートするために必要なのは次のコマンド実行だけです。/
s/^## Routing$/## ルート定義/
s/^Laravel includes `Auth\\ForgotPasswordController` and `Auth\\ResetPasswordController` classes that contains the logic necessary to e-mail password reset links and reset user passwords\. All of the routes needed to perform password resets may be generated using the `make:auth` Artisan command:$/Laravelはパスワードリセットリンクのメールを送信し、ユーザーのパスワードをリセットするために必要なロジックを全部含んでいる、`Auth\\ForgotPasswordController`と`Auth\\PasswordController`を用意しています。パスワードリセットに必要な全ルートは、`make:auth` Artisanコマンドで生成します。/
s/^## Views$/## ビュー/
s/^Again, Laravel will generate all of the necessary views for password reset when the `make:auth` command is executed\. These views are placed in `resources\/views\/auth\/passwords`\. You are free to customize them as needed for your application\.$/ビューについても、`make:auth`コマンドを実行すれば、パスワードリセットに必要な全てが生成されます。ビューは`resources\/views\/auth\/passwords`に生成されます。アプリケーションに合わせ、自由にカスタマイズしてください。/
s/^## After Resetting Passwords$/## パスワードリセット後の処理/
s/^Once you have defined the routes and views to reset your user's passwords, you may access the route in your browser at `\/password\/reset`\. The `ForgotPasswordController` included with the framework already includes the logic to send the password reset link e-mails, while the `ResetPasswordController` includes the logic to reset user passwords\.$/ユーザーのパスワードをリセットするルートとビューを定義できたら、ブラウザーで`\/password\/reset`のルートへアクセスできます。フレームワークに含まれている `ForgotPasswordController`は、パスワードリセットリンクを含むメールを送信するロジックを含んでいます。一方の`ResetPasswordController`はユーザーパスワードのリセットロジックを含んでいます。/
s/^After a password is reset, the user will automatically be logged into the application and redirected to `\/home`\. You can customize the post password reset redirect location by defining a `redirectTo` property on the `ResetPasswordController`:$/パスワードがリセットされたら、そのユーザーは自動的にアプリケーションにログインされ、`\/home`へリダイレクトされます。パスワードリセット後のリダイレクト先をカスタマイズするには、`ResetPasswordController`の`redirectTo`プロパティを定義してください。/
s/^> {note} By default, password reset tokens expire after one hour\. You may change this via the password reset `expire` option in your `config\/auth\.php` file\.$/> {note} デフォルトでパスワードリセットトークンは、一時間有効です。これは、`config\/auth.php`ファイルの`expire`オプションにより変更できます。/
s/^## Customization$/## カスタマイズ/
s/^#### Authentication Guard Customization$/#### 認証ガードのカスタマイズ/
s/^In your `auth\.php` configuration file, you may configure multiple "guards", which may be used to define authentication behavior for multiple user tables\. You can customize the included `ResetPasswordController` to use the guard of your choice by overriding the `guard` method on the controller\. This method should return a guard instance:$/`auth.php`設定ファイルにより、複数のユーザーテーブルごとに認証の振る舞いを定義するために使用する、「ガード」をそれぞれ設定できます。用意されている`ResetPasswordController`コントローラの`guard`メソッドをオーバーライドすることにより、選択したガードを使用するようにカスタマイズできます。このメソッドは、ガードインスタンスを返す必要があります。/
s/^#### Password Broker Customization$/#### パスワードブローカーのカスタマイズ/
s/^In your `auth\.php` configuration file, you may configure multiple password "brokers", which may be used to reset passwords on multiple user tables\. You can customize the included `ForgotPasswordController` and `ResetPasswordController` to use the broker of your choice by overriding the `broker` method:$/複数のユーザーテーブルに対するパスワードをリセットするために使用する、別々のパスワード「ブローカー」を`auth.php`ファイルで設定できます。用意されている`ForgotPasswordController`と`ResetPasswordController`の`broker`メソッドをオーバーライドし、選んだブローカーを使用するようにカスタマイズができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the broker to be used during password reset\.$/     *パスワードリセットに使われるブローカの取得/
s/^     \*$/     */
s/^     \* @return PasswordBroker$/     * @return PasswordBroker/
s/^     \*\/$/     *\//
s/^#### Reset Email Customization$/#### リセットメールのカスタマイズ/
s/^You may easily modify the notification class used to send the password reset link to the user\. To get started, override the `sendPasswordResetNotification` method on your `User` model\. Within this method, you may send the notification using any notification class you choose\. The password reset `$token` is the first argument received by the method:$/パスワードリセットリンクをユーザーへ送るために使用する、通知クラスは簡単に変更できます。手始めに、`User`モデルの`sendPasswordResetNotification`メソッドをオーバーライドしましょう。このメソッドの中で、皆さんが選んだ通知クラスを使用し、通知を送信できます。パスワードリセット`$token`は、メソッドの第1引数として受け取ります。/
s/^    \/\*\*$/    \/**/
s/^     \* Send the password reset notification\.$/     * パスワードリセット通知の送信/
s/^     \*$/     */
s/^     \* @param  string  $token$/     * @param  string  $token/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
