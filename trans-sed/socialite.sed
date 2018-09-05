s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^- \[Routing\](#routing)$/- [ルート](#routing)/
s/^- \[Optional Parameters\](#optional-parameters)$/- [オプションのパラメータ](#optional-parameters)/
s/^- \[Access Scopes\](#access-scopes)$/- [アクセススコープ](#access-scopes)/
s/^- \[Stateless Authentication\](#stateless-authentication)$/- [ステートレスな認証](#stateless-authentication)/
s/^- \[Retrieving User Details\](#retrieving-user-details)$/- [ユーザー詳細情報の取得](#retrieving-user-details)/
s/^## Introduction$/## イントロダクション/
s/^In addition to typical, form based authentication, Laravel also provides a simple, convenient way to authenticate with OAuth providers using \[Laravel Socialite\](https:\/\/github\.com\/laravel\/socialite)\. Socialite currently supports authentication with Facebook, Twitter, LinkedIn, Google, GitHub and Bitbucket\.$/典型的なフォームベースの認証に付け加え、Laravelは[Laravel Socialite](https:\/\/github.com\/laravel\/socialite)(=名士)による、OAuthプロバイダによるシンプルで便利な認証方法も提供しています。Socialiteは現在、Facebook、Twitter、LinkedIn、Google、GitHub、Bitbucketによる認証をサポートしています。/
s/^> {tip} Adapters for other platforms are listed at the community driven \[Socialite Providers\](https:\/\/socialiteproviders\.github\.io\/) website\.$/> {tip} 他のプラットフォームのアダプタは、コミュニティにより管理されている[Socialiteプロバイダ](https:\/\/socialiteproviders.github.io\/)Webサイトで一覧できます。/
s/^## Installation$/## インストール/
s/^To get started with Socialite, use Composer to add the package to your project's dependencies:$/Socialiteを使用開始するには、Composerを使い、プロジェクトの依存パッケージに追加してください。/
s/^## Configuration$/## 設定/
s/^Before using Socialite, you will also need to add credentials for the OAuth services your application utilizes\. These credentials should be placed in your `config\/services\.php` configuration file, and should use the key `facebook`, `twitter`, `linkedin`, `google`, `github` or `bitbucket`, depending on the providers your application requires\. For example:$/Socialiteを使用する前に、アプリケーションで使用するOAuthサービスの認証情報も追加する必要があります。認証情報は`config\/services.php`設定ファイルで指定し、アプリケーションの必要に合わせ、`facebook`、`twitter`、`linkedin`、`google`、`github`、`bitbucket`キーを使用してください。一例をご覧ください。/
s/^    'github' => \[$/    'github' => [/
s/^        'client_id' => env('GITHUB_CLIENT_ID'),         \/\/ Your GitHub Client ID$/        'client_id' => env('GITHUB_CLIENT_ID'),         \/\/ GitHubのClient ID/
s/^        'client_secret' => env('GITHUB_CLIENT_SECRET'), \/\/ Your GitHub Client Secret$/        'client_secret' => env('GITHUB_CLIENT_SECRET'), \/\/ GitHubのClient Secret/
s/^    \],$/    ],/
s/^> {tip} If the `redirect` option contains a relative path, it will automatically be resolved to a fully qualified URL\.$/> {tip} `redirect`オプションが相対パスである場合、自動的に完全なURLへ解決されます。/
s/^## Routing$/## ルート/
s/^Next, you are ready to authenticate users! You will need two routes: one for redirecting the user to the OAuth provider, and another for receiving the callback from the provider after authentication\. We will access Socialite using the `Socialite` facade:$/これで、ユーザーを認証する準備ができました。２つのルートが必要になります。ひとつはOAuthプロバイダへユーザーをリダイレクトするルート、もう一つは認証後にプロバイダーからのコールバックを受けるルートです。`Socialite`ファサードを使用し、Socialiteにアクセスしましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Redirect the user to the GitHub authentication page\.$/         * GitHubの認証ページヘユーザーをリダイレクト/
s/^         \*$/         */
s/^         \* @return \\Illuminate\\Http\\Response$/         * @return \\Illuminate\\Http\\Response/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Obtain the user information from GitHub\.$/         * GitHubからユーザー情報を取得/
s/^         \*$/         */
s/^         \* @return \\Illuminate\\Http\\Response$/         * @return \\Illuminate\\Http\\Response/
s/^         \*\/$/         *\//
s/^The `redirect` method takes care of sending the user to the OAuth provider, while the `user` method will read the incoming request and retrieve the user's information from the provider\.$/`redirect`メソッドはユーザーをOAuthプロバイダへ送るのを担当します。一方の`user`メソッドは送られて来たリクエストを読み、プロバイダからユーザーの情報を取得します。/
s/^Of course, you will need to define routes to your controller methods:$/もちろん、コントローラメソッドへのルートを定義する必要があります。/
s/^## Optional Parameters$/## オプションのパラメータ/
s/^A number of OAuth providers support optional parameters in the redirect request\. To include any optional parameters in the request, call the `with` method with an associative array:$/多くのOAuthプロバイダがリダイレクトリクエスト中のオプションパラメータをサポートしています。リクエストにオプションパラメータを含めるには、`with`メソッドを呼び出し、連想配列を渡します。/
s/^        ->with(\['hd' => 'example\.com'\])$/        ->with(['hd' => 'example.com'])/
s/^> {note} When using the `with` method, be careful not to pass any reserved keywords such as `state` or `response_type`\.$/> {note} `with`メソッドを使用時は、`state`や`response_type`などの予約キーワードを渡さないように注意してください。/
s/^## Access Scopes$/## アクセススコープ/
s/^Before redirecting the user, you may also add additional "scopes" on the request using the `scopes` method\. This method will merge all existing scopes with the ones you supply:$/ユーザーをリダイレクトする前に、`scopes`メソッドを使用し、リクエストへ「スコープ」を追加することもできます。このメソッドは、存在する全スコープを皆さんが指定したものへマージします。/
s/^        ->scopes(\['read:user', 'public_repo'\])$/        ->scopes(['read:user', 'public_repo'])/
s/^You can overwrite all existing scopes using the `setScopes` method:$/`setScopes`メソッドを使用し、存在するスコープを全てオーバーライトできます。/
s/^        ->setScopes(\['read:user', 'public_repo'\])$/        ->setScopes(['read:user', 'public_repo'])/
s/^## Stateless Authentication$/## ステートレスな認証/
s/^The `stateless` method may be used to disable session state verification\. This is useful when adding social authentication to an API:$/`stateless`メソッドはセッション状態の確認を無効にするために使用します。これはAPIへソーシャル認証を追加する場合に便利です。/
s/^## Retrieving User Details$/## ユーザー詳細情報の取得/
s/^Once you have a user instance, you can grab a few more details about the user:$/ユーザーインスタンスを取得したら、詳細情報をもっと取得できます。/
s/^    \/\/ OAuth Two Providers$/    \/\/ OAuth Twoプロバイダ/
s/^    \/\/ OAuth One Providers$/    \/\/ OAuth Oneプロバイダ/
s/^    \/\/ All Providers$/    \/\/ 全プロバイダ/
s/^#### Retrieving User Details From A Token (OAuth2)$/#### トークンからのユーザー詳細情報の取得(OAuth2)/
s/^If you already have a valid access token for a user, you can retrieve their details using the `userFromToken` method:$/ユーザーへの有効なアクセストークンを事前に取得している場合は、`userFromToken`メソッドを用い、詳細を取得できます。/
s/^    $//
s/^#### Retrieving User Details From A Token And Secret (OAuth1)$/#### トークンとSecretからのユーザー詳細情報の取得(OAuth1)/
s/^If you already have a valid pair of token \/ secret for a user, you can retrieve their details using the `userFromTokenAndSecret` method:$/すでにユーザーに対する有効なトークン／secretペアを取得している場合は、`userFromTokenAndSecret`メソッドを用い、詳細を取得できます。/
