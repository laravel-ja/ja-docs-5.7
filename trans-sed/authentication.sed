s/^# Authentication$/# 認証/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Database Considerations\](#introduction-database-considerations)$/    - [データベースの検討事項](#introduction-database-considerations)/
s/^- \[Authentication Quickstart\](#authentication-quickstart)$/- [認証クイックスタート](#authentication-quickstart)/
s/^    - \[Routing\](#included-routing)$/    - [ルーティング](#included-routing)/
s/^    - \[Views\](#included-views)$/    - [ビュー](#included-views)/
s/^    - \[Authenticating\](#included-authenticating)$/    - [認証](#included-authenticating)/
s/^    - \[Retrieving The Authenticated User\](#retrieving-the-authenticated-user)$/    - [認証済みユーザーの取得](#retrieving-the-authenticated-user)/
s/^    - \[Protecting Routes\](#protecting-routes)$/    - [ルートの保護](#protecting-routes)/
s/^    - \[Login Throttling\](#login-throttling)$/    - [認証回数制限](#login-throttling)/
s/^- \[Manually Authenticating Users\](#authenticating-users)$/- [手動のユーザー認証](#authenticating-users)/
s/^    - \[Remembering Users\](#remembering-users)$/    - [継続ログイン](#remembering-users)/
s/^    - \[Other Authentication Methods\](#other-authentication-methods)$/    - [その他の認証方法](#other-authentication-methods)/
s/^- \[HTTP Basic Authentication\](#http-basic-authentication)$/- [HTTP基本認証](#http-basic-authentication)/
s/^    - \[Stateless HTTP Basic Authentication\](#stateless-http-basic-authentication)$/    - [ステートレスHTTP基本認証](#stateless-http-basic-authentication)/
s/^- \[Logging Out\](#logging-out)$/- [ログアウト](#logging-out)/
s/^    - \[Invalidating Sessions On Other Devices\](#invalidating-sessions-on-other-devices)$/    - [他のデバイス上のセッションを無効化](#invalidating-sessions-on-other-devices)/
s/^- \[Social Authentication\](https:\/\/github\.com\/laravel\/socialite)$/- [ソーシャル認証](https:\/\/github.com\/laravel\/socialite)/
s/^- \[Adding Custom Guards\](#adding-custom-guards)$/- [カスタムガードの追加](#adding-custom-guards)/
s/^    - \[Closure Request Guards\](#closure-request-guards)$/    - [クロージャリクエストガード](#closure-request-guards)/
s/^- \[Adding Custom User Providers\](#adding-custom-user-providers)$/- [カスタムユーザープロバイダの追加](#adding-custom-user-providers)/
s/^    - \[The User Provider Contract\](#the-user-provider-contract)$/    - [ユーザープロバイダ契約](#the-user-provider-contract)/
s/^    - \[The Authenticatable Contract\](#the-authenticatable-contract)$/    - [Authenticatable契約](#the-authenticatable-contract)/
s/^- \[Events\](#events)$/- [イベント](#events)/
s/^## Introduction$/## イントロダクション/
s/^> {tip} \*\*Want to get started fast?\*\* Just run `php artisan make:auth` and `php artisan migrate` in a fresh Laravel application\. Then, navigate your browser to `http:\/\/your-app\.test\/register` or any other URL that is assigned to your application\. These two commands will take care of scaffolding your entire authentication system!$/> {tip} **さくっと始めたいですか？** インストールしたてのLaravelアプリケーションにて、`php artisan make:auth`と`php artisan migrate`を実行するだけです。それから、ブラウザで`http:\/\/your-app.test\/register`、もしくはアプリケーションに割りつけたその他のURLへアクセスしてください。この２つのコマンドが、認証システム全体のスカフォールドを面倒みます。/
s/^Laravel makes implementing authentication very simple\. In fact, almost everything is configured for you out of the box\. The authentication configuration file is located at `config\/auth\.php`, which contains several well documented options for tweaking the behavior of the authentication services\.$/Laravelでは簡単に認証が実装できます。実際ほとんど全て最初から設定済みです。認証の設定ファイルは`config\/auth.php`に用意してあり、認証サービスの振る舞いを調整できるように、読みやすいコメント付きでたくさんのオプションが用意されています。/
s/^At its core, Laravel's authentication facilities are made up of "guards" and "providers"\. Guards define how users are authenticated for each request\. For example, Laravel ships with a `session` guard which maintains state using session storage and cookies\.$/Laravelの認証機能は「ガード」と「プロバイダ」を中心概念として構成されています。ガードは各リクエストごとに、どのようにユーザーを認証するかを定義します。たとえば、Laravelにはセッションストレージとクッキーを使いながら状態を維持する`session`ガードが用意されています。/
s/^Providers define how users are retrieved from your persistent storage\. Laravel ships with support for retrieving users using Eloquent and the database query builder\. However, you are free to define additional providers as needed for your application\.$/プロバイダは永続ストレージから、どのようにユーザーを取得するかを定義します。LaravelはEloquentとデータベースクリエビルダを使用しユーザーを取得する機能を用意しています。しかし、アプリケーションの必要性に応じて、自由にプロバイダを追加できます。/
s/^Don't worry if this all sounds confusing now! Many applications will never need to modify the default authentication configuration\.$/混乱しても心配ありません。通常のアプリケーションでは、デフォルトの認証設定を変更する必要はありません。/
s/^### Database Considerations$/### データベースの検討事項/
s/^By default, Laravel includes an `App\\User` \[Eloquent model\](\/docs\/{{version}}\/eloquent) in your `app` directory\. This model may be used with the default Eloquent authentication driver\. If your application is not using Eloquent, you may use the `database` authentication driver which uses the Laravel query builder\.$/デフォルトとしてLaravelは、`App\\User` [Eloquentモデル](\/docs\/{{version}}\/eloquent)を`app`ディレクトリに用意しています。このモデルはデフォルトEloquent認証ドライバで使用しています。もしアプリケーションでEloquentを使用しなければ、Laravelクエリビルダを使用する`database`認証ドライバを使用する必要があります。/
s/^When building the database schema for the `App\\User` model, make sure the password column is at least 60 characters in length\. Maintaining the default string column length of 255 characters would be a good choice\.$/`App\\User`モデルのデータベーススキマー構築時に、確実にパスワードカラムを最低６０文字確保してください。デフォルトの２５５文字にするのが、良い方法でしょう。/
s/^Also, you should verify that your `users` (or equivalent) table contains a nullable, string `remember_token` column of 100 characters\. This column will be used to store a token for users that select the "remember me" option when logging into your application\.$/さらに`users`、もしくは同等の働きをするテーブルには、１００文字の`remember_token`文字列カラムも含めてください。このカラムはログイン時に、アプリケーションで"remember me"を選んだユーザーのトークンを保存しておくカラムとして使用されます。/
s/^## Authentication Quickstart$/## 認証クイックスタート/
s/^Laravel ships with several pre-built authentication controllers, which are located in the `App\\Http\\Controllers\\Auth` namespace\. The `RegisterController` handles new user registration, the `LoginController` handles authentication, the `ForgotPasswordController` handles e-mailing links for resetting passwords, and the `ResetPasswordController` contains the logic to reset passwords\. Each of these controllers uses a trait to include their necessary methods\. For many applications, you will not need to modify these controllers at all\.$/`App\\Http\\Controllers\\Auth`名前空間下に多くの組み込み済み認証コントローラがLaravelにより用意されています。`RegisterController`は新ユーザーの登録、`LoginController`は認証処理、`ForgotPasswordController`はパスワードリセットのためのメールリンク処理、`ResetPasswordController`はパスワードリセット処理を行います。各コントローラは必要なメソッドを含むトレイトを使用しています。多くのアプリケーションでは、これらのコントローラを変更する必要は全くありません。/
s/^### Routing$/### ルート定義/
s/^Laravel provides a quick way to scaffold all of the routes and views you need for authentication using one simple command:$/簡単なコマンド一つで、認証に必要となるルート定義とビューをすべてスカフォールディングできる、簡単な手段をLaravelは提供しています。/
s/^This command should be used on fresh applications and will install a layout view, registration and login views, as well as routes for all authentication end-points\. A `HomeController` will also be generated to handle post-login requests to your application's dashboard\.$/このコマンドは新しくインストールしたアプリケーションでのみ実行すべきで、レイアウトビュー、登録ログインビューをインストールし、同時にすべての認証エンドポイントのルートも定義します。`HomeController`も、ログイン後に必要となる、アプリケーションのダッシュボードのために生成されます。/
s/^### Views$/### ビュー/
s/^As mentioned in the previous section, the `php artisan make:auth` command will create all of the views you need for authentication and place them in the `resources\/views\/auth` directory\.$/前のセクションで説明したとおり、`php artisan make:auth`コマンドは`resources\/views\/auth`ディレクトリへ、認証に必要なすべてのビューを生成します。/
s/^The `make:auth` command will also create a `resources\/views\/layouts` directory containing a base layout for your application\. All of these views use the Bootstrap CSS framework, but you are free to customize them however you wish\.$/`make:auth`コマンドは`resources\/views\/layouts`ディレクトリにアプリケーションのベースレイアウトビューも生成します。これらのビューはすべてBootstrap CSSフレームワークを使用していますが、自由にカスタマイズしてください。/
s/^### Authenticating$/### 認証/
s/^Now that you have routes and views setup for the included authentication controllers, you are ready to register and authenticate new users for your application! You may access your application in a browser since the authentication controllers already contain the logic (via their traits) to authenticate existing users and store new users in the database\.$/これで、認証コントローラを含め、必要なルートとビューの準備が整いました。アプリケーションに新しいユーザーを登録し、認証できるようになりました。ブラウザでアプリケーションへアクセスしてください。認証コントローラは（内部で使用しているトレイトにより）、既存ユーザーの認証と、新しいユーザーをデータベースへ保存するロジックをすでに備えています。/
s/^#### Path Customization$/#### パスのカスタマイズ/
s/^When a user is successfully authenticated, they will be redirected to the `\/home` URI\. You can customize the post-authentication redirect location by defining a `redirectTo` property on the `LoginController`, `RegisterController`, and `ResetPasswordController`:$/ユーザーが認証に成功すると、`\/home`のURIへリダイレクトします。これをカスタマイズするには、`LoginController`、`RegisterController`、`ResetPasswordController`の`redirectTo`プロパティで、認証後のリダイレクト先の場所を定義してください。/
s/^Next, you should modify the `RedirectIfAuthenticated` middleware's `handle` method to use your new URI when redirecting the user\.$/次に、ユーザーをリダイレクトさせるときの新しいURIを使用するために、`RedirectIfAuthenticated`ミドルウェアの`handle`メソッドを更新する必要があります。/
s/^If the redirect path needs custom generation logic you may define a `redirectTo` method instead of a `redirectTo` property:$/リダイレクトパスをカスタマイズするロジックが必要な場合は、`redirectTo`プロパティの代わりに`redirectTo`メソッドを定義してください。/
s/^> {tip} The `redirectTo` method will take precedence over the `redirectTo` attribute\.$/> {tip} `redirectTo`メソッドは、`redirectTo`プロパティよりも優先されます。/
s/^#### Username Customization$/#### ユーザー名のカスタマイズ/
s/^By default, Laravel uses the `email` field for authentication\. If you would like to customize this, you may define a `username` method on your `LoginController`:$/デフォルトでLaravelは`email`フィールドを認証に利用します。これをカスタマイズしたい場合は、`LoginController`で`username`メソッドを定義してください。/
s/^#### Guard Customization$/#### ガードのカスタマイズ/
s/^You may also customize the "guard" that is used to authenticate and register users\. To get started, define a `guard` method on your `LoginController`, `RegisterController`, and `ResetPasswordController`\. The method should return a guard instance:$/更に、登録済みユーザーを認証するために使用する「ガード」をカスタマイズすることも可能です。`LoginController`、 `RegisterController`、`ResetPasswordController`で`guard`メソッドを定義してください。メソッドからガードインスタンスを返してください。/
s/^#### Validation \/ Storage Customization$/#### バリデーション／保管域のカスタマイズ/
s/^To modify the form fields that are required when a new user registers with your application, or to customize how new users are stored into your database, you may modify the `RegisterController` class\. This class is responsible for validating and creating new users of your application\.$/アプリケーションに新しいユーザーを登録する場合に入力してもらうフォームのフィールドを変更するか、データベースに新しいユーザーレコードを登録する方法をカスタマイズしたい場合は、`RegisterController`クラスを変更してください。このクラスはアプリケーションで新しいユーザーのバリデーションと作成に責任を持っています。/
s/^The `validator` method of the `RegisterController` contains the validation rules for new users of the application\. You are free to modify this method as you wish\.$/`RegisterController`の`validator`メソッドはアプリケーションの新しいユーザーに対するバリデーションルールで構成されています。このメソッドはお気に召すまま自由に変更してください。/
s/^The `create` method of the `RegisterController` is responsible for creating new `App\\User` records in your database using the \[Eloquent ORM\](\/docs\/{{version}}\/eloquent)\. You are free to modify this method according to the needs of your database\.$/`RegisterController`の`create`メソッドは新しい`App\\User`レコードを[Eloquent ORM](\/docs\/{{version}}\/eloquent)を使用し、データベースに作成することに責任を持っています。データベースの必要に合わせて自由にこのメソッドを変更してください。/
s/^### Retrieving The Authenticated User$/### 認証済みユーザーの取得/
s/^You may access the authenticated user via the `Auth` facade:$/`Auth`ファサードを使えば認証済みユーザーへ簡単にアクセスできます。/
s/^    \/\/ Get the currently authenticated user\.\.\.$/    \/\/ 現在認証されているユーザーの取得/
s/^    \/\/ Get the currently authenticated user's ID\.\.\.$/    \/\/ 現在認証されているユーザーのID取得/
s/^Alternatively, once a user is authenticated, you may access the authenticated user via an `Illuminate\\Http\\Request` instance\. Remember, type-hinted classes will automatically be injected into your controller methods:$/もしくは、ユーザーが認証済みであれば、`Illuminate\\Http\\Request`インスタンス経由で、ユーザーへアクセスすることもできます。コントローラメソッドでタイプヒントしたクラスは、自動的にインスタンスが依存注入されることを思い出してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the user's profile\.$/         * ユーザープロフィールの更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ $request->user() returns an instance of the authenticated user\.\.\.$/            \/\/ $request->user()は認証済みユーザーのインスタンスを返す/
s/^#### Determining If The Current User Is Authenticated$/#### 現在のユーザーが認証されているか調べる/
s/^To determine if the user is already logged into your application, you may use the `check` method on the `Auth` facade, which will return `true` if the user is authenticated:$/ユーザーが既にアプリケーションにログインしているかを調べるには、`Auth`ファサードの`check`メソッドが使えます。認証時に`true`を返します。/
s/^        \/\/ The user is logged in\.\.\.$/        \/\/ ユーザーはログインしている/
s/^> {tip} Even though it is possible to determine if a user is authenticated using the `check` method, you will typically use a middleware to verify that the user is authenticated before allowing the user access to certain routes \/ controllers\. To learn more about this, check out the documentation on \[protecting routes\](\/docs\/{{version}}\/authentication#protecting-routes)\.$/> {tip} `check`メソッドを使っても、あるユーザーが認証済みであるかを判定可能です。特定のルートやコントローラへユーザーをアクセスさせる前に、認証済みであるかをミドルウェアにより確認する場合、典型的に使用します。より詳細については[ルートの保護](\/docs\/{{version}}\/authentication#protecting-routes)のドキュメントを参照してください。/
s/^### Protecting Routes$/### ルートの保護/
s/^\[Route middleware\](\/docs\/{{version}}\/middleware) can be used to only allow authenticated users to access a given route\. Laravel ships with an `auth` middleware, which is defined at `Illuminate\\Auth\\Middleware\\Authenticate`\. Since this middleware is already registered in your HTTP kernel, all you need to do is attach the middleware to a route definition:$/[ルートミドルウェア](\/docs\/{{version}}\/middleware)は特定のルートに対し、認証済みユーザーのみアクセスを許すために使われます。Laravelには`Illuminate\\Auth\\Middleware\\Authenticate`の中で定義されている`auth`ミドルウェアが最初から用意されています。このミドルウェアは、HTTPカーネルで登録済みのため、必要なのはルート定義でこのミドルウェアを指定するだけです。/
s/^    Route::get('profile', function () {$/    Route::get('profile', function() {/
s/^        \/\/ Only authenticated users may enter\.\.\.$/        \/\/ 認証済みのユーザーのみが入れる/
s/^Of course, if you are using \[controllers\](\/docs\/{{version}}\/controllers), you may call the `middleware` method from the controller's constructor instead of attaching it in the route definition directly:$/もちろん[コントローラ](\/docs\/{{version}}\/controllers)を使っていれば、ルート定義に付加する代わりに、コントローラのコンストラクターで`middleware`メソッドを呼び出すことができます。/
s/^#### Redirecting Unauthenticated Users$/#### 未認証ユーザーのリダイレクト/
s/^When the `auth` middleware detects an unauthorized user, it will either return a JSON `401` response, or, if the request was not an AJAX request, redirect the user to the `login` \[named route\](\/docs\/{{version}}\/routing#named-routes)\.$/ミドルウェアが未認証ユーザーを突き止めると、`401` JSONレスポンスか、もしくはリクエストがAJAXでなければ、ユーザーを`login`[名前付きルート](\/docs\/{{version}}\/routing#named-routes)へリダイレクトします。/
s/^You may modify this behavior by defining an `unauthenticated` function in your `app\/Exceptions\/Handler\.php` file:$/この振る舞いを変更するには、`app\/Exceptions\/Handler.php`ファイルで`unauthenticated`関数を定義します。/
s/^                    ? response()->json(\['message' => $exception->getMessage()\], 401)$/                    ? response()->json(['message' => $exception->getMessage()], 401)/
s/^#### Specifying A Guard$/#### ガードの指定/
s/^When attaching the `auth` middleware to a route, you may also specify which guard should be used to authenticate the user\. The guard specified should correspond to one of the keys in the `guards` array of your `auth\.php` configuration file:$/`auth`ミドルウェアをルートに対し指定するときに、そのユーザーに対し認証を実行するガードを指定することもできます。指定されたガードは、`auth.php`設定ファイルの`guards`配列のキーを指定します。/
s/^### Login Throttling$/### 認証回数制限/
s/^If you are using Laravel's built-in `LoginController` class, the `Illuminate\\Foundation\\Auth\\ThrottlesLogins` trait will already be included in your controller\. By default, the user will not be able to login for one minute if they fail to provide the correct credentials after several attempts\. The throttling is unique to the user's username \/ e-mail address and their IP address\.$/Laravelの組み込み`LoginController`クラスを使用している場合、`Illuminate\\Foundation\\Auth\\ThrottlesLogins`トレイトが最初からコントローラで取り込まれています。デフォルトでは何度も正しくログインできなかった後、一分間ログインできなくなります。制限はユーザーの名前／メールアドレスとIPアドレスで限定されます。/
s/^## Manually Authenticating Users$/## 自前のユーザー認証/
s/^Of course, you are not required to use the authentication controllers included with Laravel\. If you choose to remove these controllers, you will need to manage user authentication using the Laravel authentication classes directly\. Don't worry, it's a cinch!$/もちろん、Laravelに含まれる認証コントローラを使うことを強要しているわけでありません。これらのコントローラを削除する選択肢を選ぶのなら、Laravel認証クラスを直接使用しユーザーの認証を管理する必要があります。心配ありません。それでも簡単です！/
s/^We will access Laravel's authentication services via the `Auth` \[facade\](\/docs\/{{version}}\/facades), so we'll need to make sure to import the `Auth` facade at the top of the class\. Next, let's check out the `attempt` method:$/Laravelの認証サービスには`Auth`[ファサード](\/docs\/{{version}}\/facades)でアクセスできます。クラスの最初で`Auth`ファサードを確実にインポートしておきましょう。次に`attempt`メソッドを見てみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle an authentication attempt\.$/         * 認証を処理する/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request $request$/         * @param  \\Illuminate\\Http\\Request $request/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^                \/\/ Authentication passed\.\.\.$/                \/\/ 認証に成功した/
s/^The `attempt` method accepts an array of key \/ value pairs as its first argument\. The values in the array will be used to find the user in your database table\. So, in the example above, the user will be retrieved by the value of the `email` column\. If the user is found, the hashed password stored in the database will be compared with the `password` value passed to the method via the array\. You should not hash the password specified as the `password` value, since the framework will automatically hash the value before comparing it to the hashed password in the database\. If the two hashed passwords match an authenticated session will be started for the user\.$/`attempt`メソッドは最初の引数として、キー／値ペアの配列を受け取ります。配列中の他の値は、データベーステーブルの中からそのユーザーを見つけるために使用されます。そのため、上の例では`email`カラム値によりユーザーが取得されます。データベース中のハッシュ済みパスワードと比較する前に、フレームワークは自動的に値をハッシュ化するため、`password`へ指定する値はハッシュ化しないでください。２つのハッシュ済みパスワードが一致したら、そのユーザーの新しい認証セッションが開始されます。/
s/^The `attempt` method will return `true` if authentication was successful\. Otherwise, `false` will be returned\.$/`attempt`メソッドは、認証が成功すれば`true`を返します。失敗時は`false`を返します。/
s/^The `intended` method on the redirector will redirect the user to the URL they were attempting to access before being intercepted by the authentication middleware\. A fallback URI may be given to this method in case the intended destination is not available\.$/リダイレクタ―の`intended`メソッドは、認証フィルターにかかる前にアクセスしようとしていたURLへ、ユーザーをリダイレクトしてくれます。そのリダイレクトが不可能な場合の移動先として、フォールバックURIをこのメソッドに指定してください。/
s/^#### Specifying Additional Conditions$/#### 追加条件の指定/
s/^If you wish, you may also add extra conditions to the authentication query in addition to the user's e-mail and password\. For example, we may verify that user is marked as "active":$/お望みであれば、ユーザーのメールアドレスとパスワードに付け加え、認証時のクエリに追加の条件を指定することも可能です。例として、ユーザーが「アクティブ」である条件を追加してみましょう。/
s/^    if (Auth::attempt(\['email' => $email, 'password' => $password, 'active' => 1\])) {$/    if (Auth::attempt(['email' => $email, 'password' => $password, 'active' => 1])) {/
s/^        \/\/ The user is active, not suspended, and exists\.$/        \/\/ ユーザーは存在しており、かつアクティブで、資格停止されていない/
s/^> {note} In these examples, `email` is not a required option, it is merely used as an example\. You should use whatever column name corresponds to a "username" in your database\.$/> {note} この例のように、`email`を必ず認証に使用しなくてならない訳ではありません。データーベース中にあるユーザー名(username)に該当する、一意にユーザーを特定できるカラムであれば何でも使用できます。/
s/^#### Accessing Specific Guard Instances$/#### 特定のGuardインスタンスへのアクセス/
s/^You may specify which guard instance you would like to utilize using the `guard` method on the `Auth` facade\. This allows you to manage authentication for separate parts of your application using entirely separate authenticatable models or user tables\.$/`Auth`ファサードの`guard`メソッドにより、使用したいガードインスタンスを指定できます。これにより全く異なった認証用のモデルやユーザーテーブルを使い、アプリケーションの別々の部分に対する認証を管理することができます。/
s/^The guard name passed to the `guard` method should correspond to one of the guards configured in your `auth\.php` configuration file:$/`guard`メソッドへ渡すガード名は、`auth.php`認証ファイルのguards設定の一つと対応している必要があります。/
s/^#### Logging Out$/#### ログアウト/
s/^To log users out of your application, you may use the `logout` method on the `Auth` facade\. This will clear the authentication information in the user's session:$/アプリケーションからユーザーをログアウトさせるには、`Auth`ファサードの`logout`メソッドを使用してください。これはユーザーセッションの認証情報をクリアします。/
s/^### Remembering Users$/### 継続ログイン/
s/^If you would like to provide "remember me" functionality in your application, you may pass a boolean value as the second argument to the `attempt` method, which will keep the user authenticated indefinitely, or until they manually logout\. Of course, your `users` table must include the string `remember_token` column, which will be used to store the "remember me" token\.$/アプリケーションでログイン維持(Remember me)機能を持たせたい場合は、`attempt`メソッドの第２引数に論理値を指定します。ユーザーが自分でログアウトしない限り、認証が無期限に持続するようになります。もちろん、"remember me"トークンを保存するために使用する文字列の`remember_token`カラムを`users`テーブルに持たせる必要があります。/
s/^    if (Auth::attempt(\['email' => $email, 'password' => $password\], $remember)) {$/    if (Auth::attempt(['email' => $email, 'password' => $password], $remember)) {/
s/^        \/\/ The user is being remembered\.\.\.$/        \/\/ このメンバーは継続ログインされる/
s/^> {tip} If you are using the built-in `LoginController` that is shipped with Laravel, the proper logic to "remember" users is already implemented by the traits used by the controller\.$/> {tip} Laravelに用意されている、組み込み`LoginController`を使用する場合、このコントローラが使用しているトレイトにより、"remember"ユーザーを確実に処理するロジックが実装済みです。/
s/^If you are "remembering" users, you may use the `viaRemember` method to determine if the user was authenticated using the "remember me" cookie:$/この機能を使用している時に、ユーザーが"remember me"クッキーを使用して認証されているかを判定するには、`viaRemember`メソッドを使用します。/
s/^### Other Authentication Methods$/### 他の認証方法/
s/^#### Authenticate A User Instance$/#### Userインスタンスによる認証/
s/^If you need to log an existing user instance into your application, you may call the `login` method with the user instance\. The given object must be an implementation of the `Illuminate\\Contracts\\Auth\\Authenticatable` \[contract\](\/docs\/{{version}}\/contracts)\. Of course, the `App\\User` model included with Laravel already implements this interface:$/既に存在しているユーザーインスタンスでアプリケーションにログインさせる必要があれば、`login`メソッドにそのユーザーインスタンスを指定し呼び出してください。指定されたオブジェクトは`Illuminate\\Contracts\\Auth\\Authenticatable`[契約](\/docs\/{{version}}\/contracts)を実装している必要があります。もちろん、Laravelが用意している`App\\User`モデルはこのインターフェイスを実装しています。/
s/^    \/\/ Login and "remember" the given user\.\.\.$/    \/\/ 指定したユーザーでログインし、"remember"にする/
s/^Of course, you may specify the guard instance you would like to use:$/もちろん、使用したいガードインスタンスを指定することもできます。/
s/^#### Authenticate A User By ID$/#### IDによるユーザー認証/
s/^To log a user into the application by their ID, you may use the `loginUsingId` method\. This method accepts the primary key of the user you wish to authenticate:$/ユーザーをアプリケーションへIDによりログインさせる場合は、`loginUsingId`メソッドを使います。このメソッドは認証させたいユーザーの主キーを引数に受け取ります。/
s/^    \/\/ Login and "remember" the given user\.\.\.$/    \/\/ 指定したユーザーでログインし、"remember"にする/
s/^#### Authenticate A User Once$/#### ユーザーを一度だけ認証する/
s/^You may use the `once` method to log a user into the application for a single request\. No sessions or cookies will be utilized, which means this method may be helpful when building a stateless API:$/`once`メソッドを使用すると、アプリケーションにユーザーをそのリクエストの間だけログインさせることができます。セッションもクッキーも使用しないため、ステートレスなAPIを構築する場合に便利です。/
s/^## HTTP Basic Authentication$/## HTTP基本認証/
s/^\[HTTP Basic Authentication\](https:\/\/en\.wikipedia\.org\/wiki\/Basic_access_authentication) provides a quick way to authenticate users of your application without setting up a dedicated "login" page\. To get started, attach the `auth\.basic` \[middleware\](\/docs\/{{version}}\/middleware) to your route\. The `auth\.basic` middleware is included with the Laravel framework, so you do not need to define it:$/[HTTP基本認証](https:\/\/en.wikipedia.org\/wiki\/Basic_access_authentication)により、専用の「ログイン」ページを用意しなくても手っ取り早くアプリケーションにユーザーをログインさせられます。これを使用するには、ルートに`auth.basic`[ミドルウェア](\/docs\/{{version}}\/middleware)を付けてください。`auth.basic`ミドルウェアはLaravelフレームワークに含まれているので、定義する必要はありません。/
s/^    Route::get('profile', function () {$/    Route::get('profile', function() {/
s/^        \/\/ Only authenticated users may enter\.\.\.$/        \/\/ 認証済みのユーザーのみが入れる/
s/^    })->middleware('auth\.basic');$/    })->middleware('auth.basic');/
s/^Once the middleware has been attached to the route, you will automatically be prompted for credentials when accessing the route in your browser\. By default, the `auth\.basic` middleware will use the `email` column on the user record as the "username"\.$/ミドルウェアをルートに指定すれば、ブラウザーからこのルートへアクセスされると自動的に認証が求められます。デフォルトでは、`auth.basic`ミドルウェアはユーザーを決める"username"としてユーザーの`email`カラムを使用します。/
s/^#### A Note On FastCGI$/#### FastCGIの注意/
s/^If you are using PHP FastCGI, HTTP Basic authentication may not work correctly out of the box\. The following lines should be added to your `\.htaccess` file:$/PHP FastCGIを使用している場合、初期状態のままでHTTP基本認証は正しく動作しないでしょう。以下の行を`.htaccess`ファイルへ追加してください。/
s/^    RewriteCond %{HTTP:Authorization} ^(\.\+)$$/    RewriteCond %{HTTP:Authorization} ^(.+)$/
s/^    RewriteRule \.\* - \[E=HTTP_AUTHORIZATION:%{HTTP:Authorization}\]$/    RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]/
s/^### Stateless HTTP Basic Authentication$/### ステートレスなHTTP基本認証/
s/^You may also use HTTP Basic Authentication without setting a user identifier cookie in the session, which is particularly useful for API authentication\. To do so, \[define a middleware\](\/docs\/{{version}}\/middleware) that calls the `onceBasic` method\. If no response is returned by the `onceBasic` method, the request may be passed further into the application:$/セッションの識別クッキーを用いずにHTTP基本認証を使用することもできます。これは特にAPI認証に便利です。実装するには、`onceBasic`メソッドを呼び出す[ミドルウェアを定義](\/docs\/{{version}}\/middleware)してください。`onceBasic`メソッドが何もレスポンスを返さなかった場合、リクエストをアプリケーションの先の処理へ通します。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle an incoming request\.$/         * 送信されたリクエストの処理/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request  $request$/         * @param  \\Illuminate\\Http\\Request  $request/
s/^         \* @param  \\Closure  $next$/         * @param  \\Closure  $next/
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^Next, \[register the route middleware\](\/docs\/{{version}}\/middleware#registering-middleware) and attach it to a route:$/次に[ルートミドルウェアを登録](\/docs\/{{version}}\/middleware#registering-middleware)し、ルートに付加します。/
s/^    Route::get('api\/user', function () {$/    Route::get('api\/user', function() {/
s/^        \/\/ Only authenticated users may enter\.\.\.$/        \/\/ 認証済みのユーザーのみが入れる/
s/^    })->middleware('auth\.basic\.once');$/    })->middleware('auth.basic.once');/
s/^## Logging Out$/## ログアウト/
s/^To manually log users out of your application, you may use the `logout` method on the `Auth` facade\. This will clear the authentication information in the user's session:$/アプリケーションからユーザーをログアウトさせる場合、`Auth`ファサードの`logout`メソッドを使用してください。これにより、ユーザーセッションの認証情報はクリアされます。/
s/^### Invalidating Sessions On Other Devices$/### 他のデバイス上のセッションを無効化/
s/^Laravel also provides a mechanism for invalidating and "logging out" a user's sessions that are active on other devices without invalidating the session on their current device\. Before getting started, you should make sure that the `Illuminate\\Session\\Middleware\\AuthenticateSession` middleware is present and un-commented in your `app\/Http\/Kernel\.php` class' `web` middleware group:$/さらにLaravelは、現在のユーザーの現在のデバイス上のセッションを切らずに、他のデバイス上のセッションを無効化し、「ログアウト」させるメカニズムを提供しています。これを使用するには、`app\/Http\/Kernel.php`クラスの`web`ミドルウェアグループ中に、`Illuminate\\Session\\Middleware\\AuthenticateSession`ミドルウェアが存在し、コメントを外すのを確実に行ってください。/
s/^    'web' => \[$/    'web' => [/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^    \],$/    ],/
s/^Then, you may use the `logoutOtherDevices` method on the `Auth` facade\. This method requires the user to provide their current password, which your application should accept through an input form:$/それから、`Auth`ファサードの`logoutOtherDevices`メソッドを使用してください。このメソッドは、入力フォームからアプリケーションが受け取る、現在のパスワードを引数に渡す必要があります。/
s/^> {note} When the `logoutOtherDevices` method is invoked, the user's other sessions will be invalidated entirely, meaning they will be "logged out" of all guards they were previously authenticated by\.$/> {note} `logoutOtherDevices`メソッドが起動すると、ユーザーの他のセッションは全て無効になります。つまり、以前に認証済みの全てのガードが、「ログアウト」されます。/
s/^## Adding Custom Guards$/## カスタムガードの追加/
s/^You may define your own authentication guards using the `extend` method on the `Auth` facade\. You should place this call to `extend` within a \[service provider\](\/docs\/{{version}}\/providers)\. Since Laravel already ships with an `AuthServiceProvider`, we can place the code in that provider:$/独自の認証ガードは`Auth`ファサードの`extend`メソッドを使用し、定義します。[サービスプロバイダ](\/docs\/{{version}}\/providers)の中で呼び出します。`AuthServiceProvider`をLaravelはあらかじめ用意しているので、この中にコードを設置できます。/
s/^        \/\*\*$/        \/**/
s/^         \* Register any application authentication \/ authorization services\.$/         * サービスの初期起動後の登録実行/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            Auth::extend('jwt', function ($app, $name, array $config) {$/            Auth::extend('jwt', function($app, $name, array $config) {/
s/^                \/\/ Return an instance of Illuminate\\Contracts\\Auth\\Guard\.\.\.$/                \/\/ Illuminate\\Contracts\\Auth\\Guardのインスタンスを返す/
s/^                return new JwtGuard(Auth::createUserProvider($config\['provider'\]));$/                return new JwtGuard(Auth::createUserProvider($config['provider']));/
s/^As you can see in the example above, the callback passed to the `extend` method should return an implementation of `Illuminate\\Contracts\\Auth\\Guard`\. This interface contains a few methods you will need to implement to define a custom guard\. Once your custom guard has been defined, you may use this guard in the `guards` configuration of your `auth\.php` configuration file:$/上記の例のように、コールバックを`extend`メソッドに渡し、`Illuminate\\Contracts\\Auth\\Guard`の実装を返します。このインスタンスは、カスタムガードで定義が必要ないくつかのメソッドを持っています。カスタムガードを定義したら、`auth.php`設定ファイルの、`guards`設定で使用できます。/
s/^    'guards' => \[$/    'guards' => [/
s/^        'api' => \[$/        'api' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^### Closure Request Guards$/### クロージャリクエストガード/
s/^The simplest way to implement a custom, HTTP request based authentication system is by using the `Auth::viaRequest` method\. This method allows you to quickly define your authentication process using a single Closure\.$/HTTPリクエストをベースとした、カスタム認証システムを実装する一番簡単な方法は、`Auth::viaRequest`メソッドを使用する方法です。このメソッドは一つのクロージャの中で、認証プロセスを素早く定義できるように用意しています。/
s/^To get started, call the `Auth::viaRequest` method within the `boot` method of your `AuthServiceProvider`\. The `viaRequest` method accepts a guard name as its first argument\. This name can be any string that describes your custom guard\. The second argument passed to the method should be a Closure that receives the incoming HTTP request and returns a user instance or, if authentication fails, `null`:$/利用するには`AuthServiceProvider`の`boot`メソッドの中から、`Auth::viaRequest`メソッドを呼び出してください。`viaRequest`メソッドの最初の引数は、ガード名です。名前にはカスタムガードを表す文字列を何でも使用できます。メソッド２つ目の引数は、受信したHTTPリクエストを受け取り、ユーザーインスタンスか認証失敗時の`null`を返すクロージャを指定します。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any application authentication \/ authorization services\.$/     * 全認証／認可サービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Once your custom guard has been defined, you may use this guard in the `guards` configuration of your `auth\.php` configuration file:$/カスタムガードを定義したら、`auth.php`設定ファイルの`guards`設定で、そのガードを利用します。/
s/^    'guards' => \[$/    'guards' => [/
s/^        'api' => \[$/        'api' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^## Adding Custom User Providers$/## カスタムユーザープロバイダの追加/
s/^If you are not using a traditional relational database to store your users, you will need to extend Laravel with your own authentication user provider\. We will use the `provider` method on the `Auth` facade to define a custom user provider:$/ユーザー情報を保管するために伝統的なリレーショナルデータベースを使用したくなければ、Laravelに独自の認証ユーザープロバイダを拡張する必要があります。`Auth`ファサードの`provider`メソッドを使い、カスタムユーザープロバイダを定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* Register any application authentication \/ authorization services\.$/         * サービスの初期起動後の登録実行/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            Auth::provider('riak', function ($app, array $config) {$/            Auth::provider('riak', function($app, array $config) {/
s/^                \/\/ Return an instance of Illuminate\\Contracts\\Auth\\UserProvider\.\.\.$/                \/\/ Illuminate\\Contracts\\Auth\\UserProviderのインスタンスを返す/
s/^                return new RiakUserProvider($app->make('riak\.connection'));$/                return new RiakUserProvider($app->make('riak.connection'));/
s/^After you have registered the provider using the `provider` method, you may switch to the new user provider in your `auth\.php` configuration file\. First, define a `provider` that uses your new driver:$/`provider`メソッドでプロバイダを登録したら、`auth.php`設定ファイルで新しいユーザープロバイダへ切り替えます。最初に、新しいドライバを使用する`provider`を定義します。/
s/^    'providers' => \[$/    'providers' => [/
s/^        'users' => \[$/        'users' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^Finally, you may use this provider in your `guards` configuration:$/次に、このプロバイダを`guards`設定項目で利用します。/
s/^    'guards' => \[$/    'guards' => [/
s/^        'web' => \[$/        'web' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^### The User Provider Contract$/### ユーザープロバイダ契約/
s/^The `Illuminate\\Contracts\\Auth\\UserProvider` implementations are only responsible for fetching a `Illuminate\\Contracts\\Auth\\Authenticatable` implementation out of a persistent storage system, such as MySQL, Riak, etc\. These two interfaces allow the Laravel authentication mechanisms to continue functioning regardless of how the user data is stored or what type of class is used to represent it\.$/`Illuminate\\Contracts\\Auth\\UserProvider`は、MySQLやRiakなどのような持続性のストレージシステムに対する`Illuminate\\Contracts\\Auth\\Authenticatable`の実装を取得することだけに責任を持っています。これらの２つのインターフェイスはユーザーデータがどのように保存されているか、それを表すのがどんなタイプのクラスなのかに関わらず、認証メカニズムを機能し続けるために役立っています。/
s/^Let's take a look at the `Illuminate\\Contracts\\Auth\\UserProvider` contract:$/`Illuminate\\Contracts\\Auth\\UserProvider`契約を見てみましょう。/
s/^The `retrieveById` function typically receives a key representing the user, such as an auto-incrementing ID from a MySQL database\. The `Authenticatable` implementation matching the ID should be retrieved and returned by the method\.$/`retrieveById`関数は通常MySQLデータベースの自動増分IDのようなユーザーを表すキーを受け付けます。IDにマッチする`Authenticatable`実装が取得され、返されます。/
s/^The `retrieveByToken` function retrieves a user by their unique `$identifier` and "remember me" `$token`, stored in a field `remember_token`\. As with the previous method, the `Authenticatable` implementation should be returned\.$/`retrieveByToken`関数は一意の`$identifier`と`remember_token`フィールドに保存されている"remember me" `$token`からユーザーを取得します。前のメソッドと同じく、`Authenticatable`実装が返されます。/
s/^The `updateRememberToken` method updates the `$user` field `remember_token` with the new `$token`\. A fresh token is assigned on a successful "remember me" login attempt or when the user is logging out\.$/`updateRememberToken`メソッドは`$user`の`remember_token`フィールドを新しい`$token`で更新します。真新しいトークンは、"remember me"ログインの試みに成功するか、そのユーザーがログアウトしたときに、アサインされます。/
s/^The `retrieveByCredentials` method receives the array of credentials passed to the `Auth::attempt` method when attempting to sign into an application\. The method should then "query" the underlying persistent storage for the user matching those credentials\. Typically, this method will run a query with a "where" condition on `$credentials\['username'\]`\. The method should then return an implementation of `Authenticatable`\. \*\*This method should not attempt to do any password validation or authentication\.\*\*$/`retrieveByCredentials`メソッドはアプリケーションへログイン時に`Auth::attempt`メソッドに指定するのと同じく、ユーザー認証情報の配列を引数に取ります。メソッドは認証情報に一致するユーザーを裏の持続ストレージから「クエリ」する必要があります。典型的な使用方法の場合、このメソッドは`$credentials['username']`の"where"条件でクエリを実行するでしょう。メソッドは`Authenticatable`の実装を返します。**このメソッドはパスワードバリデーションや認証を行ってはいけません**/
s/^The `validateCredentials` method should compare the given `$user` with the `$credentials` to authenticate the user\. For example, this method should probably use `Hash::check` to compare the value of `$user->getAuthPassword()` to the value of `$credentials\['password'\]`\. This method should return `true` or `false` indicating on whether the password is valid\.$/`validateCredentials`メソッドは指定された`$user`とユーザーを認証するための`$credentials`とを比較します。たとえばこのメソッドは`$user->getAuthPassword()`の値と`$credentials['password']`を`Hash::make`で値を比較します。このメソッドはパスワードが有効であるかを示す、`true`か`false`だけを返します。/
s/^### The Authenticatable Contract$/### Authenticatable契約/
s/^Now that we have explored each of the methods on the `UserProvider`, let's take a look at the `Authenticatable` contract\. Remember, the provider should return implementations of this interface from the `retrieveById`, `retrieveByToken`, and `retrieveByCredentials` methods:$/これで`UserProvider`の各メソッドが明らかになりました。続いて`Authenticatable`契約を見てみましょう。プロバイダは`retrieveById`と`retrieveByToken`、`retrieveByCredentials`メソッドでこのインターフェイスの実装を返していたことを思い出してください。/
s/^This interface is simple\. The `getAuthIdentifierName` method should return the name of the "primary key" field of the user and the `getAuthIdentifier` method should return the "primary key" of the user\. In a MySQL back-end, again, this would be the auto-incrementing primary key\. The `getAuthPassword` should return the user's hashed password\. This interface allows the authentication system to work with any User class, regardless of what ORM or storage abstraction layer you are using\. By default, Laravel includes a `User` class in the `app` directory which implements this interface, so you may consult this class for an implementation example\.$/このインターフェイスはシンプルです。`getAuthIdentifierName`メソッドは、ユーザーの「主キー」フィールドの名前を返します。`getAuthIdentifier`メソッドはユーザーの主キーを返します。MySQLを裏で使用している場合、これは自動増分される主キーでしょう。`getAuthPassword`はユーザーのハッシュ済みのパスワードを返します。このインターフェイスはどのORMや抽象ストレージ層を使用しているかに関わらず、どんなUserクラスに対しても認証システムが動作するようにしてくれています。デフォルトでLaravelは`app`ディレクトリ中に、このインターフェイスを実装してる`User`クラスを持っています。ですから実装例として、このクラスを調べてみてください。/
s/^## Events$/## イベント/
s/^Laravel raises a variety of \[events\](\/docs\/{{version}}\/events) during the authentication process\. You may attach listeners to these events in your `EventServiceProvider`:$/Laravelは認証処理の過程で、様々な[イベント](\/docs\/{{version}}\/events)を発行します。`EventServiceProvider`の中で、こうしたイベントに対するリスナを設定できます。:/
s/^    \/\*\*$/    \/**/
s/^     \* The event listener mappings for the application\.$/     * アプリケーションに指定されたイベントリスナ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $listen = \[$/    protected $listen = [/
s/^        'Illuminate\\Auth\\Events\\Registered' => \[$/        'Illuminate\\Auth\\Events\\Registered' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Attempting' => \[$/        'Illuminate\\Auth\\Events\\Attempting' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Authenticated' => \[$/        'Illuminate\\Auth\\Events\\Registered' => [/
s/^            'App\\Listeners\\LogAuthenticated',$/            'App\\Listeners\\LogRegisteredUser',/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Login' => \[$/        'Illuminate\\Auth\\Events\\Login' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Failed' => \[$/        'Illuminate\\Auth\\Events\\Failed' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Logout' => \[$/        'Illuminate\\Auth\\Events\\Logout' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\Lockout' => \[$/        'Illuminate\\Auth\\Events\\Lockout' => [/
s/^        \],$/        ],/
s/^        'Illuminate\\Auth\\Events\\PasswordReset' => \[$/        'Illuminate\\Auth\\Events\\PasswordReset' => [/
s/^        \],$/        ],/
s/^    \];$/    ];/
