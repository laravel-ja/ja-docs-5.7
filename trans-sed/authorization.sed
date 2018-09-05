s/^# Authorization$/# 認可/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Gates\](#gates)$/- [ゲート](#gates)/
s/^    - \[Writing Gates\](#writing-gates)$/    - [ゲートの記述](#writing-gates)/
s/^    - \[Authorizing Actions\](#authorizing-actions-via-gates)$/    - [アクションの認可](#authorizing-actions-via-gates)/
s/^    - \[Intercepting Gate Checks\](#intercepting-gate-checks)$/    - [ゲートチェックのインターセプト](#intercepting-gate-checks)/
s/^- \[Creating Policies\](#creating-policies)$/- [ポリシーの作成](#creating-policies)/
s/^    - \[Generating Policies\](#generating-policies)$/    - [ポリシーの生成](#generating-policies)/
s/^    - \[Registering Policies\](#registering-policies)$/    - [ポリシーの登録](#registering-policies)/
s/^- \[Writing Policies\](#writing-policies)$/- [ポリシーの記述](#writing-policies)/
s/^    - \[Policy Methods\](#policy-methods)$/    - [ポリシーのメソッド](#policy-methods)/
s/^    - \[Methods Without Models\](#methods-without-models)$/    - [モデルを持たないメソッド](#methods-without-models)/
s/^    - \[Policy Filters\](#policy-filters)$/    - [ポリシーフィルタ](#policy-filters)/
s/^- \[Authorizing Actions Using Policies\](#authorizing-actions-using-policies)$/- [ポリシーを使ったアクションの認可](#authorizing-actions-using-policies)/
s/^    - \[Via The User Model\](#via-the-user-model)$/    - [Userモデルによる認可](#via-the-user-model)/
s/^    - \[Via Middleware\](#via-middleware)$/    - [ミドルウェアによる認可](#via-middleware)/
s/^    - \[Via Controller Helpers\](#via-controller-helpers)$/    - [コントローラヘルパによる認可](#via-controller-helpers)/
s/^    - \[Via Blade Templates\](#via-blade-templates)$/    - [Bladeテンプレートによる認可](#via-blade-templates)/
s/^## Introduction$/## イントロダクション/
s/^In addition to providing \[authentication\](\/docs\/{{version}}\/authentication) services out of the box, Laravel also provides a simple way to authorize user actions against a given resource\. Like authentication, Laravel's approach to authorization is simple, and there are two primary ways of authorizing actions: gates and policies\.$/Laravelは組み込み済みの[認証](\/docs\/{{version}}\/authentication)サービスに加え、特定のリソースに対するユーザーアクションを認可する簡単な手法も提供しています。認証と同様に、Laravelの認可のアプローチはシンプルで、主に２つの認可アクションの方法があります。ゲートとポリシーです。/
s/^Think of gates and policies like routes and controllers\. Gates provide a simple, Closure based approach to authorization while policies, like controllers, group their logic around a particular model or resource\. We'll explore gates first and then examine policies\.$/ゲートとポリシーは、ルートとコントローラのようなものであると考えてください。ゲートはシンプルな、クロージャベースのアプローチを認可に対してとっています。一方のコントローラに似ているポリシーとは、特定のモデルやリソースに対するロジックをまとめたものです。最初にゲートを説明し、次にポリシーを確認しましょう。/
s/^You do not need to choose between exclusively using gates or exclusively using policies when building an application\. Most applications will most likely contain a mixture of gates and policies, and that is perfectly fine! Gates are most applicable to actions which are not related to any model or resource, such as viewing an administrator dashboard\. In contrast, policies should be used when you wish to authorize an action for a particular model or resource\.$/アプリケーション構築時にゲートだけを使用するか、それともポリシーだけを使用するかを決める必要はありません。ほとんどのアプリケーションでゲートとポリシーは混在して使われますが、それで正しいのです。管理者のダッシュボードのように、モデルやリソースとは関連しないアクションに対し、ゲートは主に適用されます。それに対し、ポリシーは特定のモデルやリソースに対するアクションを認可したい場合に、使用する必要があります。/
s/^## Gates$/## ゲート/
s/^### Writing Gates$/### ゲートの記述/
s/^Gates are Closures that determine if a user is authorized to perform a given action and are typically defined in the `App\\Providers\\AuthServiceProvider` class using the `Gate` facade\. Gates always receive a user instance as their first argument, and may optionally receive additional arguments such as a relevant Eloquent model:$/ゲートは、特定のアクションを実行できる許可が、あるユーザーにあるかを決めるクロージャのことです。通常は、`App\\Providers\\AuthServiceProvider`の中で、`Gate`ファサードを使用し、定義します。ゲートは常に最初の引数にユーザーインスタンスを受け取ります。関連するEloquentモデルのような、追加の引数をオプションとして受け取ることもできます。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any authentication \/ authorization services\.$/     * 全認証／認可サービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Gates may also be defined using a `Class@method` style callback string, like controllers:$/コントローラのように、ゲートは`Class@method`形式のコールバック文字列を使い定義することも可能です。/
s/^    \/\*\*$/    \/**/
s/^     \* Register any authentication \/ authorization services\.$/     * 全認証／認可サービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^#### Resource Gates$/#### リソースゲート/
s/^You may also define multiple Gate abilities at once using the `resource` method:$/`resource`メソッドを使用すれば、一度に複数のゲートを定義できます。/
s/^This is identical to manually defining the following Gate definitions:$/これは次のゲート定義とまったく同じです。/
s/^    Gate::define('posts\.view', 'App\\Policies\\PostPolicy@view');$/    Gate::define('posts.view', 'App\\Policies\\PostPolicy@view');/
s/^    Gate::define('posts\.create', 'App\\Policies\\PostPolicy@create');$/    Gate::define('posts.create', 'App\\Policies\\PostPolicy@create');/
s/^    Gate::define('posts\.update', 'App\\Policies\\PostPolicy@update');$/    Gate::define('posts.update', 'App\\Policies\\PostPolicy@update');/
s/^    Gate::define('posts\.delete', 'App\\Policies\\PostPolicy@delete');$/    Gate::define('posts.delete', 'App\\Policies\\PostPolicy@delete');/
s/^By default, the `view`, `create`, `update`, and `delete` abilities will be defined\. You may override the default abilities by passing an array as a third argument to the `resource` method\. The keys of the array define the names of the abilities while the values define the method names\. For example, the following code will only create two new Gate definitions - `posts\.image` and `posts\.photo`:$/`view`、`create`、`update`、`delete`アビリティが、デフォルトで定義されます。`resource`メソッドに第３引数として配列を渡し、デフォルトのアビリティのオーバーライドが可能です。配列のキーでアビリティの名前、値でメソッド名を定義します。例として、新しく`posts.image`と`posts.photo`のゲート定義を２つだけ作成してみましょう。/
s/^    Gate::resource('posts', 'PostPolicy', \[$/    Gate::resource('posts', 'PostPolicy', [/
s/^    \]);$/    ]);/
s/^### Authorizing Actions$/### アクションの認可/
s/^To authorize an action using gates, you should use the `allows` or `denies` methods\. Note that you are not required to pass the currently authenticated user to these methods\. Laravel will automatically take care of passing the user into the gate Closure:$/ゲートを使用しアクションを認可するには、`allows`と`denies`メソッドを使ってください。両メソッドに現在認証中のユーザーを渡す必要はないことに注目しましょう。Laravelが自動的にゲートクロージャにユーザーを渡します。/
s/^        \/\/ The current user can update the post\.\.\.$/        \/\/ 現在のユーザーはこのポストを更新できる/
s/^        \/\/ The current user can't update the post\.\.\.$/        \/\/ 現在のユーザーはこのポストを更新できない/
s/^If you would like to determine if a particular user is authorized to perform an action, you may use the `forUser` method on the `Gate` facade:$/特定のユーザーがあるアクションを実行できる認可を持っているかを確認するには、`Gate`ファサードの`forUser`メソッドを使用します。/
s/^        \/\/ The user can update the post\.\.\.$/        \/\/ 渡されたユーザーはこのポストを更新できる/
s/^        \/\/ The user can't update the post\.\.\.$/        \/\/ ユーザーはこのポストを更新できない/
s/^#### Intercepting Gate Checks$/#### ゲートチェックのインターセプト/
s/^Sometimes, you may wish to grant all abilities to a specific user\. You may use the `before` method to define a callback that is run before all other authorization checks:$/特定のユーザーに全アビリティーへ許可を与えたい場合もあります。`before`メソッドは、他の全ての認可チェック前に実行される、コールバックを定義します。/
s/^If the `before` callback returns a non-null result that result will be considered the result of the check\.$/`before`コールバックでNULL以外の結果を返すと、チェックの結果とみなされます。/
s/^You may use the `after` method to define a callback to be executed after every authorization check\. However, you may not modify the result of the authorization check from an `after` callback:$/`after`メソッドで、すべての認可チャックの後で実行されるコールバックを定義することも可能です。しかしながら、`after`のコールバックから、認可チェックの結果を変更できません。/
s/^## Creating Policies$/## ポリシー作成/
s/^### Generating Policies$/### ポリシーの生成/
s/^Policies are classes that organize authorization logic around a particular model or resource\. For example, if your application is a blog, you may have a `Post` model and a corresponding `PostPolicy` to authorize user actions such as creating or updating posts\.$/ポリシーは特定のモデルやリソースに関する認可ロジックを系統立てるクラスです。たとえば、ブログアプリケーションの場合、`Post`モデルとそれに対応する、ポストを作成／更新するなどのユーザーアクションを認可する`PostPolicy`を持つことになるでしょう。/
s/^You may generate a policy using the `make:policy` \[artisan command\](\/docs\/{{version}}\/artisan)\. The generated policy will be placed in the `app\/Policies` directory\. If this directory does not exist in your application, Laravel will create it for you:$/`make:policy` [Artisanコマンド](\/docs\/{{version}}\/artisan)を使用し、ポリシーを生成できます。生成したポリシーは`app\/Policies`ディレクトリに設置されます。このディレクトリがアプリケーションに存在していなくても、Laravelにより作成されます。/
s/^The `make:policy` command will generate an empty policy class\. If you would like to generate a class with the basic "CRUD" policy methods already included in the class, you may specify a `--model` when executing the command:$/`make:policy`コマンドは空のポリシークラスを生成します。基本的な「CRUD」ポリシーメソッドを生成するクラスへ含めたい場合は、`make:policy`コマンド実行時に`--model`を指定してください。/
s/^> {tip} All policies are resolved via the Laravel \[service container\](\/docs\/{{version}}\/container), allowing you to type-hint any needed dependencies in the policy's constructor to have them automatically injected\.$/> {tip} 全ポリシーはLaravelの [サービスコンテナ](\/docs\/{{version}}\/container)により依存解決されるため、ポリシーのコンストラクタに必要な依存をタイプヒントすれば、自動的に注入されます。/
s/^### Registering Policies$/### ポリシーの登録/
s/^Once the policy exists, it needs to be registered\. The `AuthServiceProvider` included with fresh Laravel applications contains a `policies` property which maps your Eloquent models to their corresponding policies\. Registering a policy will instruct Laravel which policy to utilize when authorizing actions against a given model:$/ポリシーができたら、登録する必要があります。インストールしたLaravelアプリケーションに含まれている、`AuthServiceProvider`にはEloquentモデルと対応するポリシーをマップするための`policies`プロパティを含んでいます。ポリシーの登録とは、指定したモデルに対するアクションの認可時に、どのポリシーを利用するかをLaravelへ指定することです。/
s/^        \/\*\*$/        \/**/
s/^         \* The policy mappings for the application\.$/         * アプリケーションにマップ付されたポリシー/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $policies = \[$/        protected $policies = [/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* Register any application authentication \/ authorization services\.$/         * アプリケーションの全認証／認可サービスの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^## Writing Policies$/## ポリシーの記述/
s/^### Policy Methods$/### ポリシーのメソッド/
s/^Once the policy has been registered, you may add methods for each action it authorizes\. For example, let's define an `update` method on our `PostPolicy` which determines if a given `User` can update a given `Post` instance\.$/ポリシーが登録できたら、認可するアクションごとにメソッドを追加します。たとえば、指定した`User`が指定`Post`インスタンスの更新をできるか決める、`updata`メソッドを`PostPolicy`に定義してみましょう。/
s/^The `update` method will receive a `User` and a `Post` instance as its arguments, and should return `true` or `false` indicating whether the user is authorized to update the given `Post`\. So, for this example, let's verify that the user's `id` matches the `user_id` on the post:$/`update`メソッドは`User`と`Post`インスタンスを引数で受け取り、ユーザーが指定`Post`の更新を行う認可を持っているかを示す、`true`か`false`を返します。ですから、この例の場合、ユーザーの`id`とポストの`user_id`が一致するかを確認しましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Determine if the given post can be updated by the user\.$/         * ユーザーにより指定されたポストが更新可能か決める/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @param  \\App\\Post  $post$/         * @param  \\App\\Post  $post/
s/^         \* @return bool$/         * @return bool/
s/^         \*\/$/         *\//
s/^You may continue to define additional methods on the policy as needed for the various actions it authorizes\. For example, you might define `view` or `delete` methods to authorize various `Post` actions, but remember you are free to give your policy methods any name you like\.$/必要に応じ、様々なアクションを認可するために、追加のメソッドをポリシーに定義してください。たとえば、色々な`Post`アクションを認可するために、`view`や`delete`メソッドを追加できます。ただし、ポリシーのメソッドには好きな名前を自由につけられることを覚えておいてください。/
s/^> {tip} If you used the `--model` option when generating your policy via the Artisan console, it will already contain methods for the `view`, `create`, `update`, and `delete` actions\.$/> {tip} ポリシーを`--model`オプションを付け、Artisanコマンドにより生成した場合、`view`、`create`、`update`、`delete`アクションが含まれています。/
s/^### Methods Without Models$/### モデルを持たないメソッド/
s/^Some policy methods only receive the currently authenticated user and not an instance of the model they authorize\. This situation is most common when authorizing `create` actions\. For example, if you are creating a blog, you may wish to check if a user is authorized to create any posts at all\.$/ポリシーメソッドの中には、現在の認証ユーザーのみを受け取り、認可するためのモデルを必要としないものもあります。この状況は、`create`アクションを認可する場合に、よく現れます。たとえば、ブログを作成する場合、どんなポストかにはかかわらず、そのユーザーが作成可能かを認可したいでしょう。/
s/^When defining policy methods that will not receive a model instance, such as a `create` method, it will not receive a model instance\. Instead, you should define the method as only expecting the authenticated user:$/`create`のように、モデルインスタンスを受け取らないポリシーメソッドを定義する場合は、モデルインスタンスを受け取る必要はありません。代わりに、その認証済みユーザーが期待している人物かをメソッドで定義してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if the given user can create posts\.$/     * 指定されたユーザーがポストを作成できるかを決める/
s/^     \*$/     */
s/^     \* @param  \\App\\User  $user$/     * @param  \\App\\User  $user/
s/^     \* @return bool$/     * @return bool/
s/^     \*\/$/     *\//
s/^### Policy Filters$/### ポリシーフィルター/
s/^For certain users, you may wish to authorize all actions within a given policy\. To accomplish this, define a `before` method on the policy\. The `before` method will be executed before any other methods on the policy, giving you an opportunity to authorize the action before the intended policy method is actually called\. This feature is most commonly used for authorizing application administrators to perform any action:$/特定のユーザーには指定したポリシーの全アクションを許可したい場合があります。そのためには、`before`メソッドをポリシーへ定義してください。`before`メソッドはポリシーの他のメソッドの前に実行されるため、意図するポリシーメソッドが実際に呼び出される前に、アクションを許可する機会を提供します。この機能は主に、アプリケーションの管理者に全てのアクションを実行する権限を与えるために使用されます。/
s/^If you would like to deny all authorizations for a user you should return `false` from the `before` method\. If `null` is returned, the authorization will fall through to the policy method\.$/ユーザーに対して全認可を禁止したい場合は、`before`メソッドから`false`を返します。`null`を返した場合、その認可の可否はポリシーメソッドにより決まります。/
s/^> {note} The `before` method of a policy class will not be called if the class doesn't contain a method with a name matching the name of the ability being checked\.$/> {note} クラスがチェックするアビリティと一致する名前のメソッドを含んでいない場合、ポリシークラスの`before`メソッドは呼び出されません。/
s/^## Authorizing Actions Using Policies$/## ポリシーを使ったアクションの認可/
s/^### Via The User Model$/### Userモデルによる確認/
s/^The `User` model that is included with your Laravel application includes two helpful methods for authorizing actions: `can` and `cant`\. The `can` method receives the action you wish to authorize and the relevant model\. For example, let's determine if a user is authorized to update a given `Post` model:$/Laravelアプリケーションに含まれる`User`モデルは、アクションを認可するための便利な２つのメソッドを持っています。`can`と`cant`です。`can`メソッドは認可したいアクションと関連するモデルを引数に取ります。例として、ユーザーが指定した`Post`を更新を認可するかを決めてみましょう。/
s/^If a \[policy is registered\](#registering-policies) for the given model, the `can` method will automatically call the appropriate policy and return the boolean result\. If no policy is registered for the model, the `can` method will attempt to call the Closure based Gate matching the given action name\.$/指定するモデルの[ポリシーが登録済みであれば](#registering-policies)適切なポリシーの`can`メソッドが自動的に呼びだされ、論理型の結果が返されます。そのモデルに対するポリシーが登録されていない場合、`can`メソッドは指定したアクション名に合致する、ゲートベースのクロージャを呼びだそうとします。/
s/^#### Actions That Don't Require Models$/#### モデルを必要としないアクション/
s/^Remember, some actions like `create` may not require a model instance\. In these situations, you may pass a class name to the `can` method\. The class name will be used to determine which policy to use when authorizing the action:$/`create`のようなアクションは、モデルインスタンスを必要としないことを思い出してください。そうした場合は、`can`メソッドにはクラス名を渡してください。クラス名はアクションを認可するときにどのポリシーを使用すべきかを決めるために使われます。/
s/^        \/\/ Executes the "create" method on the relevant policy\.\.\.$/        \/\/ 関連するポリシーの"create"メソッドが実行される/
s/^### Via Middleware$/### ミドルウェアによる認可/
s/^Laravel includes a middleware that can authorize actions before the incoming request even reaches your routes or controllers\. By default, the `Illuminate\\Auth\\Middleware\\Authorize` middleware is assigned the `can` key in your `App\\Http\\Kernel` class\. Let's explore an example of using the `can` middleware to authorize that a user can update a blog post:$/送信されたリクエストがルートやコントローラへ到達する前に、アクションを認可できるミドルウェアをLaravelは持っています。デフォルトで`App\\Http\\Kernel`クラスの中で`can`キーに`Illuminate\\Auth\\Middleware\\Authorize`ミドルウェアが割り付けられています。あるユーザーがブログポストを認可するために、`can`ミドルウェアを使う例をご覧ください。/
s/^        \/\/ The current user may update the post\.\.\.$/        \/\/ 現在のユーザーはこのポストを更新できる/
s/^In this example, we're passing the `can` middleware two arguments\. The first is the name of the action we wish to authorize and the second is the route parameter we wish to pass to the policy method\. In this case, since we are using \[implicit model binding\](\/docs\/{{version}}\/routing#implicit-binding), a `Post` model will be passed to the policy method\. If the user is not authorized to perform the given action, a HTTP response with a `403` status code will be generated by the middleware\.$/この例では、`can`ミドルウェアへ２つの引数を渡しています。最初の引数は認可したいアクションの名前です。２つ目はポリシーメソッドに渡したいルートパラメータです。この場合、[暗黙のモデル結合](\/docs\/{{version}}\/routing#implicit-binding)を使用しているため、`Post`モデルがポリシーメソッドへ渡されます。ユーザーに指定したアクションを実行する認可がない場合、ミドルウェアは`403`ステータスコードのHTTPレスポンスを生成します。/
s/^#### Actions That Don't Require Models$/#### モデルを必要としないアクション/
s/^Again, some actions like `create` may not require a model instance\. In these situations, you may pass a class name to the middleware\. The class name will be used to determine which policy to use when authorizing the action:$/この場合も、`create`のようなアクションではモデルインスタンスを必要としません。このようなケースでは、ミドルウェアへクラス名を渡してください。クラス名はアクションを認可するときに、どのポリシーを使用するかの判断に使われます。/
s/^        \/\/ The current user may create posts\.\.\.$/        \/\/ 現在のユーザーはポストを更新できる/
s/^### Via Controller Helpers$/### コントローラヘルパによる認可/
s/^In addition to helpful methods provided to the `User` model, Laravel provides a helpful `authorize` method to any of your controllers which extend the `App\\Http\\Controllers\\Controller` base class\. Like the `can` method, this method accepts the name of the action you wish to authorize and the relevant model\. If the action is not authorized, the `authorize` method will throw an `Illuminate\\Auth\\Access\\AuthorizationException`, which the default Laravel exception handler will convert to an HTTP response with a `403` status code:$/`User`モデルが提供している便利なメソッドに付け加え、`App\\Http\\Controllers\\Controller`ベースクラスを拡張しているコントローラに対し、Laravelは`authorize`メソッドを提供しています。`can`メソッドと同様に、このメソッドは認可対象のアクション名と関連するモデルを引数に取ります。アクションが認可されない場合、`authorize`メソッドは`Illuminate\\Auth\\Access\\AuthorizationException`例外を投げ、これはデフォルトでLaravelの例外ハンドラにより、`403`ステータスコードのHTTPレスポンスへ変換されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the given blog post\.$/         * 指定したポストの更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  Post  $post$/         * @param  Post  $post/
s/^         \* @return Response$/         * @return Response/
s/^         \* @throws \\Illuminate\\Auth\\Access\\AuthorizationException$/         * @throws \\Illuminate\\Auth\\Access\\AuthorizationException/
s/^         \*\/$/         *\//
s/^            \/\/ The current user can update the blog post\.\.\.$/            \/\/ 現在のユーザーはブログポストの更新が可能/
s/^#### Actions That Don't Require Models$/#### モデルを必要としないアクション/
s/^As previously discussed, some actions like `create` may not require a model instance\. In these situations, you may pass a class name to the `authorize` method\. The class name will be used to determine which policy to use when authorizing the action:$/既に説明してきたように、`create`のように、モデルインスタンスを必要としないアクションがあります。この場合、クラス名を`authorize`メソッドへ渡してください。クラス名はアクションの認可時に、どのポリシーを使用するのかを決めるために使われます。/
s/^    \/\*\*$/    \/**/
s/^     \* Create a new blog post\.$/     * 新しいブログポストの生成/
s/^     \*$/     */
s/^     \* @param  Request  $request$/     * @param  Request  $request/
s/^     \* @return Response$/     * @return Response/
s/^     \* @throws \\Illuminate\\Auth\\Access\\AuthorizationException$/     * @throws \\Illuminate\\Auth\\Access\\AuthorizationException/
s/^     \*\/$/     *\//
s/^        \/\/ The current user can create blog posts\.\.\.$/        \/\/ 現在のユーザーはブログポストを生成できる/
s/^### Via Blade Templates$/### Bladeテンプレートによる認可/
s/^When writing Blade templates, you may wish to display a portion of the page only if the user is authorized to perform a given action\. For example, you may wish to show an update form for a blog post only if the user can actually update the post\. In this situation, you may use the `@can` and `@cannot` family of directives:$/Bladeテンプレートを書くとき、指定したアクションを実行できる認可があるユーザーの場合のみ、ページの一部分を表示したい場合があります。たとえば、実際にポストを更新できるユーザーの場合のみ、ブログポストの更新フォームを表示したい場合です。この場合、`@can`と`@cannot`系ディレクティブを使います。/
s/^        <!-- The Current User Can Update The Post -->$/        <!-- 現在のユーザーはポストを更新できる -->/
s/^        <!-- The Current User Can Create New Post -->$/        <!-- 現在のユーザーはポストを作成できる -->/
s/^        <!-- The Current User Can't Update The Post -->$/        <!-- 現在のユーザーはポストを更新できない -->/
s/^        <!-- The Current User Can't Create New Post -->$/        <!-- 現在のユーザーはポストを作成できない -->/
s/^These directives are convenient shortcuts for writing `@if` and `@unless` statements\. The `@can` and `@cannot` statements above respectively translate to the following statements:$/これらのディレクティブは`@if`や`@unless`文を使う記述に対する、便利な短縮形です。上記の`@can`と`@cannot`文に対応するコードは以下のようになります。/
s/^        <!-- The Current User Can Update The Post -->$/        <!-- 現在のユーザーはポストを更新できる -->/
s/^        <!-- The Current User Can't Update The Post -->$/        <!-- 現在のユーザーはポストを更新できない -->/
s/^#### Actions That Don't Require Models$/#### モデルを必要としないアクション/
s/^Like most of the other authorization methods, you may pass a class name to the `@can` and `@cannot` directives if the action does not require a model instance:$/他の認可メソッドと同様に、アクションがモデルインスタンスを必要としない場合、`@can`と`@cannot`ディレクティブへ、クラス名を渡すことができます。/
s/^        <!-- The Current User Can Create Posts -->$/        <!-- 現在のユーザーはポストを更新できる -->/
s/^        <!-- The Current User Can't Create Posts -->$/        <!-- 現在のユーザーはポストを更新できない -->/
