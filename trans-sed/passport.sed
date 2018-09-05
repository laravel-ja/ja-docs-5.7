s/^# API Authentication (Passport)$/# API認証(Passport)/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Frontend Quickstart\](#frontend-quickstart)$/    - [フロントエンド・クイックスタート](#frontend-quickstart)/
s/^    - \[Deploying Passport\](#deploying-passport)$/    - [Passportのデプロイ](#deploying-passport)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[Token Lifetimes\](#token-lifetimes)$/    - [トークン持続時間](#token-lifetimes)/
s/^- \[Issuing Access Tokens\](#issuing-access-tokens)$/- [アクセストークンの発行](#issuing-access-tokens)/
s/^    - \[Managing Clients\](#managing-clients)$/    - [クライアント管理](#managing-clients)/
s/^    - \[Requesting Tokens\](#requesting-tokens)$/    - [トークンのリクエスト](#requesting-tokens)/
s/^    - \[Refreshing Tokens\](#refreshing-tokens)$/    - [トークンのリフレッシュ](#refreshing-tokens)/
s/^- \[Password Grant Tokens\](#password-grant-tokens)$/- [パスワードグラントのトークン](#password-grant-tokens)/
s/^    - \[Creating A Password Grant Client\](#creating-a-password-grant-client)$/    - [パスワードグラントクライアントの作成](#creating-a-password-grant-client)/
s/^    - \[Requesting Tokens\](#requesting-password-grant-tokens)$/    - [トークンのリクエスト](#requesting-password-grant-tokens)/
s/^    - \[Requesting All Scopes\](#requesting-all-scopes)$/    - [全スコープの要求](#requesting-all-scopes)/
s/^- \[Implicit Grant Tokens\](#implicit-grant-tokens)$/- [暗黙のグラントトークン](#implicit-grant-tokens)/
s/^- \[Client Credentials Grant Tokens\](#client-credentials-grant-tokens)$/- [クライアント認証情報グラントトークン](#client-credentials-grant-tokens)/
s/^- \[Personal Access Tokens\](#personal-access-tokens)$/- [パーソナルアクセストークン](#personal-access-tokens)/
s/^    - \[Creating A Personal Access Client\](#creating-a-personal-access-client)$/    - [パーソナルアクセスクライアントの作成](#creating-a-personal-access-client)/
s/^    - \[Managing Personal Access Tokens\](#managing-personal-access-tokens)$/    - [パーソナルアクセストークンの管理](#managing-personal-access-tokens)/
s/^- \[Protecting Routes\](#protecting-routes)$/- [ルート保護](#protecting-routes)/
s/^    - \[Via Middleware\](#via-middleware)$/    - [ミドルウェアによる保護](#via-middleware)/
s/^    - \[Passing The Access Token\](#passing-the-access-token)$/    - [アクセストークンの受け渡し](#passing-the-access-token)/
s/^- \[Token Scopes\](#token-scopes)$/- [トークンのスコープ](#token-scopes)/
s/^    - \[Defining Scopes\](#defining-scopes)$/    - [スコープの定義](#defining-scopes)/
s/^    - \[Assigning Scopes To Tokens\](#assigning-scopes-to-tokens)$/    - [トークンへのスコープ割り付け](#assigning-scopes-to-tokens)/
s/^    - \[Checking Scopes\](#checking-scopes)$/    - [スコープのチェック](#checking-scopes)/
s/^- \[Consuming Your API With JavaScript\](#consuming-your-api-with-javascript)$/- [APIをJavaScriptで利用](#consuming-your-api-with-javascript)/
s/^- \[Events\](#events)$/- [イベント](#events)/
s/^- \[Testing\](#testing)$/- [テスト](#testing)/
s/^## Introduction$/## イントロダクション/
s/^Laravel already makes it easy to perform authentication via traditional login forms, but what about APIs? APIs typically use tokens to authenticate users and do not maintain session state between requests\. Laravel makes API authentication a breeze using Laravel Passport, which provides a full OAuth2 server implementation for your Laravel application in a matter of minutes\. Passport is built on top of the \[League OAuth2 server\](https:\/\/github\.com\/thephpleague\/oauth2-server) that is maintained by Andy Millington and Simon Hamp\.$/Laravelでは古典的なログインフォームによる認証は、簡単に実行できるようになっています。では、APIに関してはどうでしょうか？　通常APIでは、ユーザーの認証にトークンを使用し、リクエスト間のセッション状態は保持されません。Laravelアプリケーションのために、完全なOAuth2サーバの実装を提供するLaravel Passportを使えば、短時間で簡単にAPI認証ができます。Passportは、Andy MillingtonとSimon Hampによりメンテナンスされている、[League OAuth2サーバ](https:\/\/github.com\/thephpleague\/oauth2-server)上に構築しています。/
s/^> {note} This documentation assumes you are already familiar with OAuth2\. If you do not know anything about OAuth2, consider familiarizing yourself with the general terminology and features of OAuth2 before continuing\.$/> {note} このドキュメントは皆さんが、OAuth2に慣れていることを前提にしています。OAuth2について知らなければ、この先を続けて読む前に、一般的な用語とOAuth2の機能について予習してください。/
s/^## Installation$/## インストール/
s/^To get started, install Passport via the Composer package manager:$/Composerパッケージマネージャにより、Passportをインストールすることからはじめましょう。/
s/^The Passport service provider registers its own database migration directory with the framework, so you should migrate your database after registering the provider\. The Passport migrations will create the tables your application needs to store clients and access tokens:$/Passportサービスプロバイダはフレームワークに対し、自身のマイグレーションディレクトリを登録します。そのためにプロバイダを登録後、データベースのマイグレーションを実行する必要があります。Passportのマイグレーションは、アプリケーションで必要となる、クライアントとアクセストークンを保存しておくテーブルを作成します。/
s/^> {note} If you are not going to use Passport's default migrations, you should call the `Passport::ignoreMigrations` method in the `register` method of your `AppServiceProvider`\. You may export the default migrations using `php artisan vendor:publish --tag=passport-migrations`\.$/> {note} Passportのデフォルトマイグレーションを使用しない場合は、`AppServiceProvider`の`register`メソッドの中で、`Passport::ignoreMigrations`を呼び出してください。デフォルトのマイグレーションは、`php artisan vendor:publish --tag=passport-migrations`を使えばエクスポートできます。/
s/^Next, you should run the `passport:install` command\. This command will create the encryption keys needed to generate secure access tokens\. In addition, the command will create "personal access" and "password grant" clients which will be used to generate access tokens:$/次に、`passport:install`コマンドを実行します。このコマンドは安全なアクセストークンを生成するのに必要な暗号キーを作成します。さらにアクセストークンを生成するために使用する、「パーソナルアクセス」クライアントと「パスワードグラント」クライアントも作成します。/
s/^After running this command, add the `Laravel\\Passport\\HasApiTokens` trait to your `App\\User` model\. This trait will provide a few helper methods to your model which allow you to inspect the authenticated user's token and scopes:$/このコマンドを実行後、`App\\User`モデルへ`Laravel\\Passport\\HasApiTokens`トレイトを追加してください。このトレイトは認証済みユーザーのトークンとスコープを確認するためのヘルパメソッドをモデルに提供します。/
s/^Next, you should call the `Passport::routes` method within the `boot` method of your `AuthServiceProvider`\. This method will register the routes necessary to issue access tokens and revoke access tokens, clients, and personal access tokens:$/次に、`AuthServiceProvider`の`boot`メソッドから、`Passport::routes`メソッドを呼び出す必要があります。このメソッドはアクセストークンの発行、アクセストークンの失効、クライアントとパーソナルアクセストークンの管理のルートを登録します。/
s/^        \/\*\*$/        \/**/
s/^         \* The policy mappings for the application\.$/         * アプリケーションのポリシーのマップ/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $policies = \[$/        protected $policies = [/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* Register any authentication \/ authorization services\.$/         * 全認証／認可サービスの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^Finally, in your `config\/auth\.php` configuration file, you should set the `driver` option of the `api` authentication guard to `passport`\. This will instruct your application to use Passport's `TokenGuard` when authenticating incoming API requests:$/最後に、`config\/auth.php`設定ファイル中で、ガードの`api`認証の`driver`オプションを`passport`へ変更します。これにより、認証のAPIリクエストが送信された時に、パスポートの`TokenGuard`を使用するように、アプリケーションへ指示します。/
s/^    'guards' => \[$/    'guards' => [/
s/^        'web' => \[$/        'web' => [/
s/^        \],$/        ],/
s/^        'api' => \[$/        'api' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^### Frontend Quickstart$/### フロントエンド・クイックスタート/
s/^> {note} In order to use the Passport Vue components, you must be using the \[Vue\](https:\/\/vuejs\.org) JavaScript framework\. These components also use the Bootstrap CSS framework\. However, even if you are not using these tools, the components serve as a valuable reference for your own frontend implementation\.$/> {note} パスポートVueコンポーネントを使用するには、[Vue](https:\/\/vuejs.org) JavaScriptフレームワークを使用する必要があります。コンポーネントはBootstrap CSSフレームワークを使用しています。皆さんがこれらのツールを使用しない場合でも、フロントエンド実装の参考として、これらのコンポーネントは役立つでしょう。/
s/^Passport ships with a JSON API that you may use to allow your users to create clients and personal access tokens\. However, it can be time consuming to code a frontend to interact with these APIs\. So, Passport also includes pre-built \[Vue\](https:\/\/vuejs\.org) components you may use as an example implementation or starting point for your own implementation\.$/パスポートは皆さんのユーザーへ、クライアントとパーソナルアクセストークンを作成するために使用するJSON APIを初めから提供しています。しかし、こうしたAPIに関連するフロントエンドをコーディングするには時間を要します。そこで、Passportは実装例、もしくは実装の開始地点として役立ててもらうため、[Vue](https:\/\/vuejs.org)コンポーネントも用意しています。/
s/^To publish the Passport Vue components, use the `vendor:publish` Artisan command:$/Passport Vueコンポーネントを公開（Laravel用語で開発者が変更可能なリソースを用意すること）するには、`vendor:publish` Artisanコマンドを使用します。/
s/^The published components will be placed in your `resources\/assets\/js\/components` directory\. Once the components have been published, you should register them in your `resources\/assets\/js\/app\.js` file:$/公開されたコンポーネントは、`resources\/assets\/js\/components`ディレクトリへ設置されます。公開したコンポーネントは、`resources\/assets\/js\/app.js`ファイルで登録してください。/
s/^    Vue\.component($/    Vue.component(/
s/^        require('\.\/components\/passport\/Clients\.vue')$/        require('.\/components\/passport\/Clients.vue')/
s/^    Vue\.component($/    Vue.component(/
s/^        require('\.\/components\/passport\/AuthorizedClients\.vue')$/        require('.\/components\/passport\/AuthorizedClients.vue')/
s/^    Vue\.component($/    Vue.component(/
s/^        require('\.\/components\/passport\/PersonalAccessTokens\.vue')$/        require('.\/components\/passport\/PersonalAccessTokens.vue')/
s/^After registering the components, make sure to run `npm run dev` to recompile your assets\. Once you have recompiled your assets, you may drop the components into one of your application's templates to get started creating clients and personal access tokens:$/コンポーネントを登録したら、アセットを再コンパイルするため`npm run dev`を確実に実行してください。アセットの再コンパイルが済んだら、クライアントとパーソナルアクセストークンを作成し始めるために、アプリケーションのテンプレートへコンポーネントを指定しましょう。/
s/^### Deploying Passport$/### Passportのデプロイ/
s/^When deploying Passport to your production servers for the first time, you will likely need to run the `passport:keys` command\. This command generates the encryption keys Passport needs in order to generate access token\. The generated keys are not typically kept in source control:$/Passportを実働サーバへ最初にデプロイするとき、`passport:keys`コマンドを実行する必要があるでしょう。このコマンドは、Passportがアクセストークンを生成するために必要な、暗号化キーを生成するコマンドです。生成されたキーは、通常ソースコントロールには含めません。/
s/^## Configuration$/## 設定/
s/^### Token Lifetimes$/### トークン持続時間/
s/^By default, Passport issues long-lived access tokens that expire after one year\. If you would like to configure a longer \/ shorter token lifetime, you may use the `tokensExpireIn` and `refreshTokensExpireIn` methods\. These methods should be called from the `boot` method of your `AuthServiceProvider`:$/Passportはデフォルトで、一年間有効な、長期間持続するアクセストークンを発行します。トークンの持続時間をもっと短くしたい場合は、`tokensExpireIn`と`refreshTokensExpireIn`メソッドを使ってください。これらのメソッドは、`AuthServiceProvider`の`boot`メソッドから呼び出してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any authentication \/ authorization services\.$/     * 全認証／認可サービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^## Issuing Access Tokens$/## アクセストークンの発行/
s/^Using OAuth2 with authorization codes is how most developers are familiar with OAuth2\. When using authorization codes, a client application will redirect a user to your server where they will either approve or deny the request to issue an access token to the client\.$/OAuth2で認可コードを使いこなせるかは、どの程度開発者がOAuth2に慣れているかによります。認可コードを使用する時、クライアントアプリケーションはそのクライアントに対するアクセストークン発行のリクエストが許可されようと、拒絶されようと、あなたのサーバにそのユーザーをリダイレクトします。/
s/^### Managing Clients$/### クライアント管理/
s/^First, developers building applications that need to interact with your application's API will need to register their application with yours by creating a "client"\. Typically, this consists of providing the name of their application and a URL that your application can redirect to after users approve their request for authorization\.$/あなたのアプリケーションのAPIと連携する必要のある、アプリケーションを構築しようとしている開発者たちは、最初に「クライアント」を作成することにより、彼らのアプリケーションを登録しなくてはなりません。通常、アプリケーションの名前と、許可のリクエストをユーザーが承認した後に、アプリケーションがリダイレクトされるURLにより、登録情報は構成されます。/
s/^#### The `passport:client` Command$/#### `passport:client`コマンド/
s/^The simplest way to create a client is using the `passport:client` Artisan command\. This command may be used to create your own clients for testing your OAuth2 functionality\. When you run the `client` command, Passport will prompt you for more information about your client and will provide you with a client ID and secret:$/クライアントを作成する一番簡単な方法は、`passport:client` Artisanコマンドを使うことです。このコマンドは、OAuth2の機能をテストするため、皆さん自身のクライアントを作成する場合に使用できます。`client`コマンドを実行すると、Passportはクライアントに関する情報の入力を促し、クライアントIDとシークレットを表示します。/
s/^Since your users will not be able to utilize the `client` command, Passport provides a JSON API that you may use to create clients\. This saves you the trouble of having to manually code controllers for creating, updating, and deleting clients\.$/皆さんのアプリのユーザーは`client`コマンドを使用できないわけですから、Passportはクライアント作成のJSON APIを提供しています。これにより、クライアントを作成、更新、削除するコントローラをわざわざコードする手間を省略できます。/
s/^However, you will need to pair Passport's JSON API with your own frontend to provide a dashboard for your users to manage their clients\. Below, we'll review all of the API endpoints for managing clients\. For convenience, we'll use \[Axios\](https:\/\/github\.com\/mzabriskie\/axios) to demonstrate making HTTP requests to the endpoints\.$/しかし、ユーザーにクライアントを管理してもらうダッシュボードを提供するために、PassportのJSON APIと皆さんのフロントエンドを結合する必要があります。以降から、クライアントを管理するためのAPIエンドポイントをすべて説明します。利便性を考慮し、エンドポイントへのHTTPリクエスト作成をデモンストレートするために、[Axios](https:\/\/github.com\/mzabriskie\/axios)を使用していきましょう。/
s/^> {tip} If you don't want to implement the entire client management frontend yourself, you can use the \[frontend quickstart\](#frontend-quickstart) to have a fully functional frontend in a matter of minutes\.$/> {tip} クライアント管理のフロントエンドを自分で実装したくなければ、[フロントエンド・クイックスタート](#frontend-quickstart)を使い、短時間で完全に機能するフロントエンドを用意できます。/
s/^This route returns all of the clients for the authenticated user\. This is primarily useful for listing all of the user's clients so that they may edit or delete them:$/このルートは認証されたユーザーの全クライアントを返します。ユーザーのクライアントの全リストは、主にクライアントを編集、削除する場合に役立ちます。/
s/^    axios\.get('\/oauth\/clients')$/    axios.get('\/oauth\/clients')/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^This route is used to create new clients\. It requires two pieces of data: the client's `name` and a `redirect` URL\. The `redirect` URL is where the user will be redirected after approving or denying a request for authorization\.$/このルートは新クライアントを作成するために使用します。これには２つのデータが必要です。クライアントの名前（`name`）と、リダイレクト（`redirect`）のURLです。`redirect`のURLは許可のリクエストが承認されるか、拒否された後のユーザーのリダイレクト先です。/
s/^When a client is created, it will be issued a client ID and client secret\. These values will be used when requesting access tokens from your application\. The client creation route will return the new client instance:$/クライアントを作成すると、クライアントIDとクライアントシークレットが発行されます。これらの値はあなたのアプリケーションへリクエストし、アクセストークンを取得する時に使用されます。クライアント作成ルートは、新しいクライアントインスタンスを返します。/
s/^        redirect: 'http:\/\/example\.com\/callback'$/        redirect: 'http:\/\/example.com\/callback'/
s/^    axios\.post('\/oauth\/clients', data)$/    axios.post('\/oauth\/clients', data)/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^        \.catch (response => {$/        .catch (response => {/
s/^            \/\/ List errors on response\.\.\.$/            \/\/ レスポンス上のエラーのリスト/
s/^This route is used to update clients\. It requires two pieces of data: the client's `name` and a `redirect` URL\. The `redirect` URL is where the user will be redirected after approving or denying a request for authorization\. The route will return the updated client instance:$/このルートはクライアントを更新するために使用します。それには２つのデータが必要です。クライアントの`name`と`redirect`のURLです。`redirect`のURLは許可のリクエストが承認されるか、拒否されたあとのユーザーのリダイレクト先です。このルートは更新されたクライアントインスタンスを返します。/
s/^        redirect: 'http:\/\/example\.com\/callback'$/        redirect: 'http:\/\/example.com\/callback'/
s/^    axios\.put('\/oauth\/clients\/' \+ clientId, data)$/    axios.put('\/oauth\/clients\/' + clientId, data)/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^        \.catch (response => {$/        .catch (response => {/
s/^            \/\/ List errors on response\.\.\.$/            \/\/ レスポンス上のエラーのリスト/
s/^This route is used to delete clients:$/このルートはクライアントを削除するために使用します。/
s/^    axios\.delete('\/oauth\/clients\/' \+ clientId)$/    axios.delete('\/oauth\/clients\/' + clientId)/
s/^        \.then(response => {$/        .then(response => {/
s/^### Requesting Tokens$/### トークンのリクエスト/
s/^#### Redirecting For Authorization$/#### 許可のリダイレクト/
s/^Once a client has been created, developers may use their client ID and secret to request an authorization code and access token from your application\. First, the consuming application should make a redirect request to your application's `\/oauth\/authorize` route like so:$/クライアントが作成されると、開発者はクライアントIDとシークレットを使用し、あなたのアプリケーションへ許可コードとアクセストークンをリクエストするでしょう。まず、API利用側アプリケーションは以下のように、あなたのアプリケーションの`\/oauth\/authorize`ルートへのリダイレクトリクエストを作成する必要があります。/
s/^        $query = http_build_query(\[$/        $query = http_build_query([/
s/^            'redirect_uri' => 'http:\/\/example\.com\/callback',$/            'redirect_uri' => 'http:\/\/example.com\/callback',/
s/^        \]);$/        ]);/
s/^        return redirect('http:\/\/your-app\.com\/oauth\/authorize?'\.$query);$/        return redirect('http:\/\/your-app.com\/oauth\/authorize?'.$query);/
s/^> {tip} Remember, the `\/oauth\/authorize` route is already defined by the `Passport::routes` method\. You do not need to manually define this route\.$/> {tip} `\/oauth\/authorize`ルートは、既に`Passport::routes`メソッドが定義づけていることを覚えておいてください。このルートを自分で定義する必要はありません。/
s/^#### Approving The Request$/#### リクエストの承認/
s/^When receiving authorization requests, Passport will automatically display a template to the user allowing them to approve or deny the authorization request\. If they approve the request, they will be redirected back to the `redirect_uri` that was specified by the consuming application\. The `redirect_uri` must match the `redirect` URL that was specified when the client was created\.$/許可のリクエストを受け取ると、Passportはユーザーがその許可のリクエストを承認するか、拒絶するかのテンプレートを自動的に表示します。ユーザーが許可した場合、API利用側アプリケーションが指定した`redirect_uri`へリダイレクトします。`redirect_uri`は、クライアントを作成した時に指定した`redirect`のURLと一致する必要があります。/
s/^If you would like to customize the authorization approval screen, you may publish Passport's views using the `vendor:publish` Artisan command\. The published views will be placed in `resources\/views\/vendor\/passport`:$/許可の承認ページをカスタマイズしたい場合は、`vendor:publish` Artisanコマンドを使い、Passportのビューを公開（Laravel用語でリソースを用意すること）する必要があります。公開されたビューは、`resources\/views\/vendor\/passport`へ設置されます。/
s/^#### Converting Authorization Codes To Access Tokens$/#### 許可コードからアクセストークンへの変換/
s/^If the user approves the authorization request, they will be redirected back to the consuming application\. The consumer should then issue a `POST` request to your application to request an access token\. The request should include the authorization code that was issued by your application when the user approved the authorization request\. In this example, we'll use the Guzzle HTTP library to make the `POST` request:$/ユーザーが許可リクエストを承認したら、API使用側アプリケーションへリダイレクトされます。使用側はあなたのアプリケーションへ、アクセストークンをリクエストするため、`POST`リクエストを送信する必要があります。そのリクエストには、ユーザーが許可リクエストを承認した時にあなたのアプリケーションが発行した、許可コードを含める必要があります。この例として、Guzzle HTTPライブラリで`POST`リクエストを作成してみましょう。/
s/^        $response = $http->post('http:\/\/your-app\.com\/oauth\/token', \[$/        $response = $http->post('http:\/\/your-app.com\/oauth\/token', [/
s/^            'form_params' => \[$/            'form_params' => [/
s/^                'redirect_uri' => 'http:\/\/example\.com\/callback',$/                'redirect_uri' => 'http:\/\/example.com\/callback',/
s/^            \],$/            ],/
s/^        \]);$/        ]);/
s/^This `\/oauth\/token` route will return a JSON response containing `access_token`, `refresh_token`, and `expires_in` attributes\. The `expires_in` attribute contains the number of seconds until the access token expires\.$/この`\/oauth\/token`ルートは、`access_token`、`refresh_token`、`expires_in`属性を含むJSONレスポンスを返します。`expires_in`属性は、アクセストークンが無効になるまでの秒数を含んでいます。/
s/^> {tip} Like the `\/oauth\/authorize` route, the `\/oauth\/token` route is defined for you by the `Passport::routes` method\. There is no need to manually define this route\.$/> {tip} `\/oauth\/authorize`ルートと同様に、`\/oauth\/token`ルートは`Passport::routes`メソッドが定義しています。このルートを自分で定義する必要はありません。/
s/^### Refreshing Tokens$/### トークンのリフレッシュ/
s/^If your application issues short-lived access tokens, users will need to refresh their access tokens via the refresh token that was provided to them when the access token was issued\. In this example, we'll use the Guzzle HTTP library to refresh the token:$/アプリケーションが短い有効期限のアクセストークンを発行している場合に、ユーザーはアクセストークンを発行する時に提供しているリフレッシュトークンを使用し、アクセストークンをリフレッシュする必要が起きます。以下はGuzzle HTTPライブラリを使用し、トークンをリフレッシュする例です。/
s/^    $response = $http->post('http:\/\/your-app\.com\/oauth\/token', \[$/    $response = $http->post('http:\/\/your-app.com\/oauth\/token', [/
s/^        'form_params' => \[$/        'form_params' => [/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^This `\/oauth\/token` route will return a JSON response containing `access_token`, `refresh_token`, and `expires_in` attributes\. The `expires_in` attribute contains the number of seconds until the access token expires\.$/この`\/oauth\/token`ルートは、`access_token`、`refresh_token`、`expires_in`属性を含むJSONレスポンスを返します。`expires_in`属性は、アクセストークンが無効になるまでの秒数を含んでいます。/
s/^## Password Grant Tokens$/## パスワードグラントのトークン/
s/^The OAuth2 password grant allows your other first-party clients, such as a mobile application, to obtain an access token using an e-mail address \/ username and password\. This allows you to issue access tokens securely to your first-party clients without requiring your users to go through the entire OAuth2 authorization code redirect flow\.$/OAuth2のパスワードグラントはモバイルアプリケーションのような、その他のファーストパーティクライアントへ、メールアドレス／ユーザー名とパスワードを使ったアクセストークンの取得を提供します。これによりOAuth2のAuthorization Codeリダイレクトフローに完全に従うことをユーザーへ要求せずとも、アクセストークンを安全に発行できます。/
s/^### Creating A Password Grant Client$/### パスワードグラントクライアントの作成/
s/^Before your application can issue tokens via the password grant, you will need to create a password grant client\. You may do this using the `passport:client` command with the `--password` option\. If you have already run the `passport:install` command, you do not need to run this command:$/パスワードグラントによりあなたのアプリケーションがトークンを発行できるようにする前に、パスワードグラントクライアントを作成する必要があります。それには、`passport:client`コマンドで`--password`を使用してください。すでに`passport:install`コマンドを実行済みの場合、このコマンドを実行する必要はありません。/
s/^### Requesting Tokens$/### トークンのリクエスト/
s/^Once you have created a password grant client, you may request an access token by issuing a `POST` request to the `\/oauth\/token` route with the user's email address and password\. Remember, this route is already registered by the `Passport::routes` method so there is no need to define it manually\. If the request is successful, you will receive an `access_token` and `refresh_token` in the JSON response from the server:$/パスワードグラントクライアントを作成したら、ユーザーのメールアドレスとパスワードを指定し、`\/oauth\/token`ルートへ`POST`リクエストを発行することで、アクセストークンをリクエストできます。このルートは、`Passport::routes`メソッドが登録しているため、自分で定義する必要がないことを覚えておきましょう。リクエストに成功すると、サーバから`access_token`と`refresh_token`のJSONレスポンスを受け取ります。/
s/^    $response = $http->post('http:\/\/your-app\.com\/oauth\/token', \[$/    $response = $http->post('http:\/\/your-app.com\/oauth\/token', [/
s/^        'form_params' => \[$/        'form_params' => [/
s/^            'username' => 'taylor@laravel\.com',$/            'username' => 'taylor@laravel.com',/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^> {tip} Remember, access tokens are long-lived by default\. However, you are free to \[configure your maximum access token lifetime\](#configuration) if needed\.$/> {tip} アクセストークンはデフォルトで、長期間有効であることを記憶しておきましょう。ただし、必要であれば自由に、[アクセストークンの最長持続時間を設定](#configuration)できます。/
s/^### Requesting All Scopes$/### 全スコープの要求/
s/^When using the password grant, you may wish to authorize the token for all of the scopes supported by your application\. You can do this by requesting the `\*` scope\. If you request the `\*` scope, the `can` method on the token instance will always return `true`\. This scope may only be assigned to a token that is issued using the `password` grant:$/パスワードグラントを使用時は、あなたのアプリケーションでサポートする、全スコープを許可するトークンを発行したいと考えるかと思います。`*`スコープをリクエストすれば可能です。`*`スコープをリクエストすると、そのトークンインスタンスの`can`メソッドは、いつも`true`を返します。このスコープは「パスワード」グラントを使って発行されたトークのみに割り付けるのが良いでしょう。/
s/^    $response = $http->post('http:\/\/your-app\.com\/oauth\/token', \[$/    $response = $http->post('http:\/\/your-app.com\/oauth\/token', [/
s/^        'form_params' => \[$/        'form_params' => [/
s/^            'username' => 'taylor@laravel\.com',$/            'username' => 'taylor@laravel.com',/
s/^            'scope' => '\*',$/            'scope' => '*',/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^## Implicit Grant Tokens$/## 暗黙のグラントトークン/
s/^The implicit grant is similar to the authorization code grant; however, the token is returned to the client without exchanging an authorization code\. This grant is most commonly used for JavaScript or mobile applications where the client credentials can't be securely stored\. To enable the grant, call the `enableImplicitGrant` method in your `AuthServiceProvider`:$/暗黙のグラントは認可コードのグラントと似ています。違いは認可コードの交換をせずにクライアントへトークンが返されることです。一般的にこのグラントは、JavaScriptやモバイルアプリケーションでクライアントの認証情報を安全に保存できない場合に使用します。このグラントを有効にするには、`AuthServiceProvider`で`enableImplicitGrant`メソッドを呼び出します。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any authentication \/ authorization services\.$/     * 全認証／認可サービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Once a grant has been enabled, developers may use their client ID to request an access token from your application\. The consuming application should make a redirect request to your application's `\/oauth\/authorize` route like so:$/グラントを有効にしたら、開発者はあなたのアプリケーションからのアクセストークンをリクエストするために、クライアントIDを使うことになるでしょう。使用側アプリケーションは、あなたのアプリケーションの`\/oauth\/authorize`ルートへのリダイレクトリクエストを生成する必要があります。例を確認してください。/
s/^        $query = http_build_query(\[$/        $query = http_build_query([/
s/^            'redirect_uri' => 'http:\/\/example\.com\/callback',$/            'redirect_uri' => 'http:\/\/example.com\/callback',/
s/^        \]);$/        ]);/
s/^        return redirect('http:\/\/your-app\.com\/oauth\/authorize?'\.$query);$/        return redirect('http:\/\/your-app.com\/oauth\/authorize?'.$query);/
s/^> {tip} Remember, the `\/oauth\/authorize` route is already defined by the `Passport::routes` method\. You do not need to manually define this route\.$/> {tip} `\/oauth\/authorize`ルートは、既に`Passport::routes`メソッドが定義づけていることを覚えておいてください。このルートを自分で定義する必要はありません。/
s/^## Client Credentials Grant Tokens$/## クライアント認証情報グラントトークン/
s/^The client credentials grant is suitable for machine-to-machine authentication\. For example, you might use this grant in a scheduled job which is performing maintenance tasks over an API\. To use this method you first need to add new middleware to your `$routeMiddleware` in `app\/Http\/Kernel\.php`:$/クライアント認証情報グラントはマシンとマシン間の認証に最適です。たとえば、APIによりメンテナンスタスクを実行する、定期実行ジョブに使用できます。このメソッドを使用するには、最初に`app\/Http\/Kernel.php`へ`$routeMiddleware`を新たに追加する必要があります。/
s/^    protected $routeMiddleware = \[$/    protected $routeMiddleware = [/
s/^    \];$/    ];/
s/^Then attach this middleware to a route:$/次に、このミドルウェアをルートへ指定します。/
s/^        \.\.\.$/        .../
s/^To retrieve a token, make a request to the `oauth\/token` endpoint:$/トークンを取得するには、`oauth\/token`エンドポイントへリクエストを作成します。/
s/^    $response = $guzzle->post('http:\/\/your-app\.com\/oauth\/token', \[$/    $response = $guzzle->post('http:\/\/your-app.com\/oauth\/token', [/
s/^        'form_params' => \[$/        'form_params' => [/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^    return json_decode((string) $response->getBody(), true)\['access_token'\];$/    return json_decode((string) $response->getBody(), true)['access_token'];/
s/^## Personal Access Tokens$/## パーソナルアクセストークン/
s/^Sometimes, your users may want to issue access tokens to themselves without going through the typical authorization code redirect flow\. Allowing users to issue tokens to themselves via your application's UI can be useful for allowing users to experiment with your API or may serve as a simpler approach to issuing access tokens in general\.$/ときどき、あなたのユーザーが典型的なコードリダイレクションフローに従うのではなく、自分たち自身でアクセストークンを発行したがることもあるでしょう。あなたのアプリケーションのUIを通じて、ユーザー自身のトークンを発行を許可することにより、あなたのAPIをユーザーに経験してもらう事ができますし、全般的なアクセストークン発行するシンプルなアプローチとしても役立つでしょう。/
s/^> {note} Personal access tokens are always long-lived\. Their lifetime is not modified when using the `tokensExpireIn` or `refreshTokensExpireIn` methods\.$/> {note} パーソナルアクセストークンは常に長期間有効です。`tokensExpireIn`や`refreshTokensExpireIn`メソッドを使用しても、有効期間を変更できません。/
s/^### Creating A Personal Access Client$/### パーソナルアクセスクライアントの作成/
s/^Before your application can issue personal access tokens, you will need to create a personal access client\. You may do this using the `passport:client` command with the `--personal` option\. If you have already run the `passport:install` command, you do not need to run this command:$/あなたのアプリケーションでパーソナルアクセストークンを発行できるようにする前に、パーソナルアクセスクライアントを作成する必要があります。`--personal`オプションを付け、`passport:client`コマンドを実行すれば、作成できます。`passport:install`コマンドを実行済みの場合、このコマンドを実行する必要はありません。/
s/^### Managing Personal Access Tokens$/### パーソナルアクセストークンの管理/
s/^Once you have created a personal access client, you may issue tokens for a given user using the `createToken` method on the `User` model instance\. The `createToken` method accepts the name of the token as its first argument and an optional array of \[scopes\](#token-scopes) as its second argument:$/パーソナルアクセスクライアントを作成したら、`User`モデルインスタンスの`createToken`メソッドを使用し、指定ユーザーに対しトークンを発行することができるようになります。`createToken`メソッドは最初の引数として、トークンの名前を受け付けます。任意の第２引数として、[スコープ](#token-scopes)の配列を指定できます。/
s/^    \/\/ Creating a token without scopes\.\.\.$/    \/\/ スコープ無しのトークンを作成する/
s/^    \/\/ Creating a token with scopes\.\.\.$/    \/\/ スコープ付きのトークンを作成する/
s/^    $token = $user->createToken('My Token', \['place-orders'\])->accessToken;$/    $token = $user->createToken('My Token', ['place-orders'])->accessToken;/
s/^Passport also includes a JSON API for managing personal access tokens\. You may pair this with your own frontend to offer your users a dashboard for managing personal access tokens\. Below, we'll review all of the API endpoints for managing personal access tokens\. For convenience, we'll use \[Axios\](https:\/\/github\.com\/mzabriskie\/axios) to demonstrate making HTTP requests to the endpoints\.$/Passportにはパーソナルアクセストークンを管理するためのJSON APIも含まれています。ユーザーにパーソナルアクセストークンを管理してもらうダッシュボードを提供するため、APIと皆さんのフロントエンドを結びつける必要があるでしょう。以降から、パーソナルアクセストークンを管理するためのAPIエンドポイントをすべて説明します。利便性を考慮し、エンドポイントへのHTTPリクエスト作成をデモンストレートするために、[Axios](https:\/\/github.com\/mzabriskie\/axios)を使用していきましょう。/
s/^> {tip} If you don't want to implement the personal access token frontend yourself, you can use the \[frontend quickstart\](#frontend-quickstart) to have a fully functional frontend in a matter of minutes\.$/> {tip} パーソナルアクセストークンのフロントエンドを自分自身で実装したくない場合は、[フロントエンドクイックスタート](#frontend-quickstart)を使用して、短時間に完全な機能を持つフロントエンドを用意できます。/
s/^This route returns all of the \[scopes\](#token-scopes) defined for your application\. You may use this route to list the scopes a user may assign to a personal access token:$/このルートはあなたのアプリケーションで定義した、全[スコープ](#token-scopes)を返します。このルートを使い、ユーザーがパーソナルアクセストークンに割り付けたスコープをリストできます。/
s/^    axios\.get('\/oauth\/scopes')$/    axios.get('\/oauth\/scopes')/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^This route returns all of the personal access tokens that the authenticated user has created\. This is primarily useful for listing all of the user's tokens so that they may edit or delete them:$/このルートは認証中のユーザーが作成したパーソナルアクセストークンを全て返します。ユーザーがトークンの編集や削除を行うため、全トークンをリストするために主に使われます。/
s/^    axios\.get('\/oauth\/personal-access-tokens')$/    axios.get('\/oauth\/personal-access-tokens')/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^This route creates new personal access tokens\. It requires two pieces of data: the token's `name` and the `scopes` that should be assigned to the token:$/このルートは新しいパーソナルアクセストークンを作成します。トークンの名前(`name`)と、トークンに割り付けるスコープ(`scope`)の、２つのデータが必要です。/
s/^        scopes: \[\]$/        scopes: []/
s/^    axios\.post('\/oauth\/personal-access-tokens', data)$/    axios.post('\/oauth\/personal-access-tokens', data)/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data\.accessToken);$/            console.log(response.data.accessToken);/
s/^        \.catch (response => {$/        .catch (response => {/
s/^            \/\/ List errors on response\.\.\.$/            \/\/ レスポンス上のエラーのリスト/
s/^This route may be used to delete personal access tokens:$/このルートはパーソナルアクセストークンを削除するために使用します。/
s/^    axios\.delete('\/oauth\/personal-access-tokens\/' \+ tokenId);$/    axios.delete('\/oauth\/personal-access-tokens\/' + tokenId);/
s/^## Protecting Routes$/## ルート保護/
s/^### Via Middleware$/### ミドルウェアによる保護/
s/^Passport includes an \[authentication guard\](\/docs\/{{version}}\/authentication#adding-custom-guards) that will validate access tokens on incoming requests\. Once you have configured the `api` guard to use the `passport` driver, you only need to specify the `auth:api` middleware on any routes that require a valid access token:$/Passportは送信されてきたリクエスト上のアクセストークンをバリデートする、[認証ガード](\/docs\/{{version}}\/authentication#adding-custom-guards)を用意しています。`passport`ドライバを`api`ガードで使うように設定すれば、あとはアクセストークンをバリデートしたいルートに、`auth:api`ミドルウェアを指定するだけです。/
s/^### Passing The Access Token$/### アクセストークンの受け渡し/
s/^When calling routes that are protected by Passport, your application's API consumers should specify their access token as a `Bearer` token in the `Authorization` header of their request\. For example, when using the Guzzle HTTP library:$/Passportにより保護されているルートを呼び出す場合、あなたのアプリケーションのAPI利用者は、リクエストの`Authorization`ヘッダとして、アクセストークンを`Bearer`トークンとして指定する必要があります。Guzzle HTTPライブラリを使う場合を例として示します。/
s/^    $response = $client->request('GET', '\/api\/user', \[$/    $response = $client->request('GET', '\/api\/user', [/
s/^        'headers' => \[$/        'headers' => [/
s/^            'Authorization' => 'Bearer '\.$accessToken,$/            'Authorization' => 'Bearer '.$accessToken,/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^## Token Scopes$/## トークンのスコープ/
s/^### Defining Scopes$/### スコープの定義/
s/^Scopes allow your API clients to request a specific set of permissions when requesting authorization to access an account\. For example, if you are building an e-commerce application, not all API consumers will need the ability to place orders\. Instead, you may allow the consumers to only request authorization to access order shipment statuses\. In other words, scopes allow your application's users to limit the actions a third-party application can perform on their behalf\.$/スコープは、あるアカウントにアクセスする許可がリクエストされたとき、あなたのAPIクライアントに限定された一連の許可をリクエストできるようにします。たとえば、eコマースアプリケーションを構築している場合、全API利用者へ発注する許可を与える必要はないでしょう。代わりに、利用者へ注文の発送状況にアクセスできる許可を与えれば十分です。言い換えれば、スコープはアプリケーションユーザーに対し、彼らの代理としてのサードパーティアプリケーションが実行できるアクションを制限できるようにします。/
s/^You may define your API's scopes using the `Passport::tokensCan` method in the `boot` method of your `AuthServiceProvider`\. The `tokensCan` method accepts an array of scope names and scope descriptions\. The scope description may be anything you wish and will be displayed to users on the authorization approval screen:$/`AuthServiceProvider`の`boot`メソッドの中で、`Passport::tokensCan`メソッドを用い、皆さんのAPIのスコープを定義できます。`tokenCan`メソッドはスコープ名とスコープの説明の配列を引数に取ります。スコープの説明はお望み通りに記述でき、許可の承認ページでユーザーに表示されます。/
s/^    Passport::tokensCan(\[$/    Passport::tokensCan([/
s/^    \]);$/    ]);/
s/^### Assigning Scopes To Tokens$/### トークンへのスコープ割り付け/
s/^#### When Requesting Authorization Codes$/#### 許可コードのリクエスト時/
s/^When requesting an access token using the authorization code grant, consumers should specify their desired scopes as the `scope` query string parameter\. The `scope` parameter should be a space-delimited list of scopes:$/許可コードグラントを用い、アクセストークンをリクエストする際、利用者は`scope`クエリ文字列パラメータとして、希望するスコープを指定する必要があります。`scope`パラメータはスコープを空白で区切ったリストです。/
s/^        $query = http_build_query(\[$/        $query = http_build_query([/
s/^            'redirect_uri' => 'http:\/\/example\.com\/callback',$/            'redirect_uri' => 'http:\/\/example.com\/callback',/
s/^        \]);$/        ]);/
s/^        return redirect('http:\/\/your-app\.com\/oauth\/authorize?'\.$query);$/        return redirect('http:\/\/your-app.com\/oauth\/authorize?'.$query);/
s/^#### When Issuing Personal Access Tokens$/#### パーソナルアクセストークン発行時/
s/^If you are issuing personal access tokens using the `User` model's `createToken` method, you may pass the array of desired scopes as the second argument to the method:$/`User`モデルの`createToken`メソッドを使用し、パーソナルアクセストークンを発行する場合、メソッドの第２引数として希望するスコープを配列で渡します。/
s/^    $token = $user->createToken('My Token', \['place-orders'\])->accessToken;$/    $token = $user->createToken('My Token', ['place-orders'])->accessToken;/
s/^### Checking Scopes$/### スコープのチェック/
s/^Passport includes two middleware that may be used to verify that an incoming request is authenticated with a token that has been granted a given scope\. To get started, add the following middleware to the `$routeMiddleware` property of your `app\/Http\/Kernel\.php` file:$/Passportには、指定されたスコープが許可されているトークンにより、送信されたリクエストが認証されているかを確認するために使用できる、2つのミドルウエアが用意されています。これを使用するには、`app\/Http\/Kernel.php`ファイルの`$routeMiddleware`プロパティへ、以下のミドルウェアを追加してください。/
s/^#### Check For All Scopes$/#### 全スコープの確認/
s/^The `scopes` middleware may be assigned to a route to verify that the incoming request's access token has \*all\* of the listed scopes:$/`scopes`ミドルウェアは、リストしたスコープが**全て**、送信されてきたリクエストのアクセストークンに含まれていることを確認するため、ルートへ指定します。/
s/^        \/\/ Access token has both "check-status" and "place-orders" scopes\.\.\.$/        \/\/ アクセストークンは"check-status"と"place-orders"、両スコープを持っている/
s/^#### Check For Any Scopes$/#### 一部のスコープの確認/
s/^The `scope` middleware may be assigned to a route to verify that the incoming request's access token has \*at least one\* of the listed scopes:$/`scope`ミドルウエアは、リストしたスコープのうち、**最低1つ**が送信されてきたリクエストのアクセストークンに含まれていることを確認するため、ルートへ指定します。/
s/^        \/\/ Access token has either "check-status" or "place-orders" scope\.\.\.$/        \/\/ アクセストークンは、"check-status"か"place-orders"、どちらかのスコープを持っている/
s/^#### Checking Scopes On A Token Instance$/#### トークンインスタンスでのスコープチェック/
s/^Once an access token authenticated request has entered your application, you may still check if the token has a given scope using the `tokenCan` method on the authenticated `User` instance:$/アクセストークンが確認されたリクエストがアプリケーションにやってきた後でも、認証済みの`User`インスタンスへ`tokenCan`メソッドを使用し、トークンが指定したスコープを持っているかを確認できます。/
s/^## Consuming Your API With JavaScript$/## APIをJavaScriptで利用/
s/^When building an API, it can be extremely useful to be able to consume your own API from your JavaScript application\. This approach to API development allows your own application to consume the same API that you are sharing with the world\. The same API may be consumed by your web application, mobile applications, third-party applications, and any SDKs that you may publish on various package managers\.$/API構築時にJavaScriptアプリケーションから、自分のAPIを利用できたらとても便利です。このAPI開発のアプローチにより、世界中で共有されるのと同一のAPIを自身のアプリケーションで使用できるようになります。自分のWebアプリケーションやモバイルアプリケーション、サードパーティアプリケーション、そして様々なパッケージマネージャ上で公開するSDKにより、同じAPIが使用されます。/
s/^Typically, if you want to consume your API from your JavaScript application, you would need to manually send an access token to the application and pass it with each request to your application\. However, Passport includes a middleware that can handle this for you\. All you need to do is add the `CreateFreshApiToken` middleware to your `web` middleware group in your `app\/Http\/Kernel\.php` file:$/通常、皆さんのAPIをJavaScriptアプリケーションから使用しようとするなら、アプリケーションに対しアクセストークンを自分で送り、それを毎回リクエストするたび、一緒にアプリケーションへ渡す必要があります。しかし、Passportにはこれを皆さんに変わって処理するミドルウェアが用意してあります。必要なのは`app\/Http\/Kernel.php`ファイル中の、`web`ミドルウェアグループに対し、`CreateFreshApiToken`ミドルウェアを追加することだけです。/
s/^    'web' => \[$/    'web' => [/
s/^        \/\/ Other middleware\.\.\.$/        \/\/ 他のミドルウェア…/
s/^    \],$/    ],/
s/^This Passport middleware will attach a `laravel_token` cookie to your outgoing responses\. This cookie contains an encrypted JWT that Passport will use to authenticate API requests from your JavaScript application\. Now, you may make requests to your application's API without explicitly passing an access token:$/このPassportミドルウェアは`laravel_token`クッキーを送信するレスポンスへ付加します。このクッキーはPassportが、皆さんのJavaScriptアプリケーションからのAPIリクエストを認可するために使用する、暗号化されたJWTを含んでいます。これで、アクセストークンを明示的に渡さなくても、あなたのアプリケーションのAPIへリクエストを作成できるようになります。/
s/^    axios\.get('\/api\/user')$/    axios.get('\/api\/user')/
s/^        \.then(response => {$/        .then(response => {/
s/^            console\.log(response\.data);$/            console.log(response.data);/
s/^When using this method of authentication, the default Laravel JavaScript scaffolding instructs Axios to always send the `X-CSRF-TOKEN` and `X-Requested-With` headers\. However, you should be sure to include your CSRF token in a \[HTML meta tag\](\/docs\/{{version}}\/csrf#csrf-x-csrf-token):$/この認証方法を使用する場合、デフォルトのLaravel JavaScriptスカフォールドはAxiosに対し、常に`X-CSRF-TOKEN`と`X-Requested-With`ヘッダを送るように指示します。しかし、確実にCSRFトークンを[HTMLメタタグ](\/docs\/{{version}}\/csrf#csrf-x-csrf-token)へ含めてください。/
s/^    window\.axios\.defaults\.headers\.common = {$/    window.axios.defaults.headers.common = {/
s/^> {note} If you are using a different JavaScript framework, you should make sure it is configured to send the `X-CSRF-TOKEN` and `X-Requested-With` headers with every outgoing request\.$/> {note} 他のJavaScriptフレームワークを使用している場合、送信する各リクエストに`X-CSRF-TOKEN`と`X-Requested-With`ヘッダを送るよう、確実に設定してください。/
s/^## Events$/## イベント/
s/^Passport raises events when issuing access tokens and refresh tokens\. You may use these events to prune or revoke other access tokens in your database\. You may attach listeners to these events in your application's `EventServiceProvider`:$/Passportはアクセストークン発行時とトークンリフレッシュ時にイベントを発行します。これらのイベントをデータベース状の他のアクセストークンを破棄したり、無効にしたりするために使用できます。アプリケーションの`EventServiceProvider`で、これらのイベントをリッスンできます。/
s/^\/\*\*$/\/**/
s/^ \* The event listener mappings for the application\.$/ * アプリケーションにマップされたイベントリスナ/
s/^ \*$/ */
s/^ \* @var array$/ * @var array/
s/^ \*\/$/ *\//
s/^protected $listen = \[$/protected $listen = [/
s/^    'Laravel\\Passport\\Events\\AccessTokenCreated' => \[$/    'Laravel\\Passport\\Events\\AccessTokenCreated' => [/
s/^    \],$/    ],/
s/^    'Laravel\\Passport\\Events\\RefreshTokenCreated' => \[$/    'Laravel\\Passport\\Events\\RefreshTokenCreated' => [/
s/^    \],$/    ],/
s/^\];$/];/
s/^## Testing$/## テスト/
s/^Passport's `actingAs` method may be used to specify the currently authenticated user as well as its scopes\. The first argument given to the `actingAs` method is the user instance and the second is an array of scopes that should be granted to the user's token:$/Passportの`actingAs`メソッドは、現在認証中のユーザーを指定知ると同時にスコープも指定します。`actingAs`メソッドの最初の引数はユーザーのインスタンスで、第２引数はユーザートークンに許可するスコープ配列を指定します。/
s/^            \['create-servers'\]$/            ['create-servers']/
