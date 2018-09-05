s/^# Service Container$/# サービスコンテナ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Binding\](#binding)$/- [結合](#binding)/
s/^    - \[Binding Basics\](#binding-basics)$/    - [結合の基礎](#binding-basics)/
s/^    - \[Binding Interfaces To Implementations\](#binding-interfaces-to-implementations)$/    - [インターフェイスと実装の結合](#binding-interfaces-to-implementations)/
s/^    - \[Contextual Binding\](#contextual-binding)$/    - [コンテキストによる結合](#contextual-binding)/
s/^    - \[Tagging\](#tagging)$/    - [タグ付け](#tagging)/
s/^    - \[Extending Bindings\](#extending-bindings)$/    - [結合の拡張](#extending-bindings)/
s/^- \[Resolving\](#resolving)$/- [依存解決](#resolving)/
s/^    - \[The Make Method\](#the-make-method)$/    - [makeメソッド](#the-make-method)/
s/^    - \[Automatic Injection\](#automatic-injection)$/    - [自動注入](#automatic-injection)/
s/^- \[Container Events\](#container-events)$/- [コンテナイベント](#container-events)/
s/^- \[PSR-11\](#psr-11)$/- [PSR-11](#psr-11)/
s/^## Introduction$/## イントロダクション/
s/^The Laravel service container is a powerful tool for managing class dependencies and performing dependency injection\. Dependency injection is a fancy phrase that essentially means this: class dependencies are "injected" into the class via the constructor or, in some cases, "setter" methods\.$/Laravelのサービスコンテナは、クラス間の依存を管理する強力な管理ツールです。依存注入というおかしな言葉は主に「コンストラクターか、ある場合には**セッター**メソッドを利用し、あるクラスをそれらに依存しているクラスへ外部から**注入**する」という意味で使われます。/
s/^Let's look at a simple example:$/シンプルな例を見てみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The user repository implementation\.$/         * ユーザーリポジトリの実装/
s/^         \*$/         */
s/^         \* @var UserRepository$/         * @var UserRepository/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new controller instance\.$/         * 新しいコントローラインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  UserRepository  $users$/         * @param  UserRepository  $users/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定ユーザーのプロフィール表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            return view('user\.profile', \['user' => $user\]);$/            return view('user.profile', ['user' => $user]);/
s/^In this example, the `UserController` needs to retrieve users from a data source\. So, we will \*\*inject\*\* a service that is able to retrieve users\. In this context, our `UserRepository` most likely uses \[Eloquent\](\/docs\/{{version}}\/eloquent) to retrieve user information from the database\. However, since the repository is injected, we are able to easily swap it out with another implementation\. We are also able to easily "mock", or create a dummy implementation of the `UserRepository` when testing our application\.$/この例中で、`UserController`はデータソースからユーザーを取得する必要があります。そのため、ユーザーを取得できるサービスを**注入**しています。このようなコンテキストでは、データベースからユーザー情報を取得するために、ほとんどの場合で[Eloquent](\/docs\/{{version}}\/eloquent)が使われるでしょう。しかしながら、リポジトリは外部から注入されているため、他の実装へ簡単に交換できます。さらに、「モック」することも簡単ですし、アプリケーションのテストで`UserRepository`のダミー実装を作成することもできます。/
s/^A deep understanding of the Laravel service container is essential to building a powerful, large application, as well as for contributing to the Laravel core itself\.$/Laravelのサービスコンテナを深く理解することは、パワフルで大きなアプリケーションを構築するのと同時に、Laravelコア自身に貢献するために重要なことです。/
s/^## Binding$/## 結合/
s/^### Binding Basics$/### 結合の基礎/
s/^Almost all of your service container bindings will be registered within \[service providers\](\/docs\/{{version}}\/providers), so most of these examples will demonstrate using the container in that context\.$/ほとんどのサービスコンテナの結合は、[サービスプロバイダ](\/docs\/{{version}}\/providers)の中で行われています。そのため、ほとんどの例はコンテナ中で使用される状況をデモンストレートしています。/
s/^> {tip} There is no need to bind classes into the container if they do not depend on any interfaces\. The container does not need to be instructed on how to build these objects, since it can automatically resolve these objects using reflection\.$/> {tip} インターフェイスに依存していないのであれば、コンテナでクラスを結合する必要はありません。コンテナにオブジェクトを結合する方法を指示する必要はなく、リフレクションを使用してそのオブジェクトを自動的に依存解決します。/
s/^#### Simple Bindings$/#### シンプルな結合/
s/^Within a service provider, you always have access to the container via the `$this->app` property\. We can register a binding using the `bind` method, passing the class or interface name that we wish to register along with a `Closure` that returns an instance of the class:$/サービスプロバイダの中からは、いつでも`$this->app`プロパティにより、コンテナへアクセスできます。`bind`メソッドへ登録したいクラス名かインターフェイス名と、クラスのインスタンスを返す「クロージャ」を引数として渡せば、結合を登録できます。/
s/^Note that we receive the container itself as an argument to the resolver\. We can then use the container to resolve sub-dependencies of the object we are building\.$/コンテナ自身がリゾルバ―の引数として渡されることに注目してください。これで構築中の依存を解決するためにも、コンテナを利用できます。/
s/^#### Binding A Singleton$/#### シングルトン結合/
s/^The `singleton` method binds a class or interface into the container that should only be resolved one time\. Once a singleton binding is resolved, the same object instance will be returned on subsequent calls into the container:$/`singleton`メソッドは、クラスやインターフェイスが一度だけ依存解決されるようにコンテナに登録します。一度シングルトン結合が解決されるとそれ以降、この結合が参照されるたび、コンテナは同じオブジェクトインスタンスを返します。/
s/^#### Binding Instances$/#### インスタンス結合/
s/^You may also bind an existing object instance into the container using the `instance` method\. The given instance will always be returned on subsequent calls into the container:$/既に存在するオブジェクトのインスタンスを`instance`メソッドを用いて、コンテナに結合することもできます。指定されたインスタンスが、以降のコンテナで呼び出されるたびに返されます。/
s/^#### Binding Primitives$/#### プリミティブ結合/
s/^Sometimes you may have a class that receives some injected classes, but also needs an injected primitive value such as an integer\. You may easily use contextual binding to inject any value your class may need:$/クラスでは依存注入により、インスタンスだけでなく、整数のようなプリミティブな値を受け取る必要もあります。それが必要なクラスへ、どんな値でも、コンテキストによる結合を使用すれば簡単に実現できます。/
s/^### Binding Interfaces To Implementations$/### インターフェイスと実装の結合/
s/^A very powerful feature of the service container is its ability to bind an interface to a given implementation\. For example, let's assume we have an `EventPusher` interface and a `RedisEventPusher` implementation\. Once we have coded our `RedisEventPusher` implementation of this interface, we can register it with the service container like so:$/サービスコンテナーのとても強力な機能は、インターフェイスを指定された実装に結合できることです。たとえば`EventPusher`インターフェイスと`RedisEventPusher`実装があるとしましょう。このインターフェイスの`RedisEventPusher`を実装し終えたら、以下のようにサービスコンテナに登録できます。/
s/^This statement tells the container that it should inject the `RedisEventPusher` when a class needs an implementation of `EventPusher`\. Now we can type-hint the `EventPusher` interface in a constructor, or any other location where dependencies are injected by the service container:$/上記の例は、`EventPusher`の実装クラスが必要な時に、コンテナが`RedisEventPusher`を注入するという意味です。ではコンストラクタか、もしくはサービスコンテナが依存を注入できる場所で、`EventPusher`インターフェイスをタイプヒントで指定してみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Create a new class instance\.$/     * 新しいインスタンスの生成/
s/^     \*$/     */
s/^     \* @param  EventPusher  $pusher$/     * @param  EventPusher  $pusher/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^### Contextual Binding$/### コンテキストによる結合/
s/^Sometimes you may have two classes that utilize the same interface, but you wish to inject different implementations into each class\. For example, two controllers may depend on different implementations of the `Illuminate\\Contracts\\Filesystem\\Filesystem` \[contract\](\/docs\/{{version}}\/contracts)\. Laravel provides a simple, fluent interface for defining this behavior:$/時には、同じインターフェイスを使用した２つのクラスがあり、クラスごとに異なった実装を注入しなくてはならない場合もあるでしょう。たとえば、２つのコントローラが異なった`Illuminate\\Contracts\\Filesystem\\Filesystem`[契約](\/docs\/{{version}}\/contracts)の実装に依存している場合です。Laravelでは、このような振る舞いの定義をシンプルで、読み書きしやすくしています。/
s/^### Tagging$/### タグ付け/
s/^Occasionally, you may need to resolve all of a certain "category" of binding\. For example, perhaps you are building a report aggregator that receives an array of many different `Report` interface implementations\. After registering the `Report` implementations, you can assign them a tag using the `tag` method:$/一連の「カテゴリー」の結合を全部解決する必要がある場合も存在するでしょう。例えば、異なった多くの`Report`インターフェイスの実装配列を受け取る、レポート収集プログラム(aggregator)を構築しているとしましょう。`Report`の実装を登録後、それらを`tag`メソッドでタグ付けすることができます。/
s/^    $this->app->tag(\['SpeedReport', 'MemoryReport'\], 'reports');$/    $this->app->tag(['SpeedReport', 'MemoryReport'], 'reports');/
s/^Once the services have been tagged, you may easily resolve them all via the `tagged` method:$/サービスにタグを付けてしまえば、`tagged`メソッドで簡単に全部解決できます。/
s/^### Extending Bindings$/### 結合の拡張/
s/^The `extend` method allows the modification of resolved services\. For example, when a service is resolved, you may run additional code to decorate or configure the service\. The `extend` method accepts a Closure, which should return the modified service, as its only argument:$/`extend`メソッドでサービスの解決結果を修正できます。たとえば、あるサービスが解決されたときに、そのサービスをデコレート、もしくは設定するために追加のコードを実行できます。`extend`メソッドは唯一引数としてクロージャを受け取り、修正したサービスを返します。/
s/^## Resolving$/## 依存解決/
s/^#### The `make` Method$/#### `make`メソッド/
s/^You may use the `make` method to resolve a class instance out of the container\. The `make` method accepts the name of the class or interface you wish to resolve:$/コンテナによりクラスインスタンスを依存解決する場合は、`make`メソッドを使います。`make`メソッドには、依存解決したいクラスかインターフェイスの名前を引数として渡します。/
s/^If you are in a location of your code that does not have access to the `$app` variable, you may use the global `resolve` helper:$/もし、`$app`変数へアクセスできない場所で依存解決したい場合は、グローバルな`resolve`ヘルパが使えます。/
s/^If some of your class' dependencies are not resolvable via the container, you may inject them by passing them as an associative array into the `makeWith` method:$/依存しているクラスが、コンテナにより解決できない場合は、`makeWith`メソッドへ連想配列を渡すことにより注入できます。/
s/^    $api = $this->app->makeWith('HelpSpot\\API', \['id' => 1\]);$/    $api = $this->app->makeWith('HelpSpot\\API', ['id' => 1]);/
s/^#### Automatic Injection$/#### 自動注入/
s/^Alternatively, and importantly, you may "type-hint" the dependency in the constructor of a class that is resolved by the container, including \[controllers\](\/docs\/{{version}}\/controllers), \[event listeners\](\/docs\/{{version}}\/events), \[queue jobs\](\/docs\/{{version}}\/queues), \[middleware\](\/docs\/{{version}}\/middleware), and more\. In practice, this is how most of your objects should be resolved by the container\.$/一番重要な依存解決方法は、コンテナによる依存解決が行われるクラスのコンストラクタで、シンプルに依存を「タイプヒント」で記述するやりかたです。これは[コントローラ](\/docs\/{{version}}\/controllers)、[イベントリスナ](\/docs\/{{version}}\/events)、[キュージョブ](\/docs\/{{version}}\/queues)、[ミドルウェア](\/docs\/{{version}}\/middleware)などで利用できます。実践でコンテナによりオブジェクトの解決が行われるのは、これが一番多くなります。/
s/^For example, you may type-hint a repository defined by your application in a controller's constructor\. The repository will automatically be resolved and injected into the class:$/たとえば、コントローラのコンストラクタで、アプリケーションにより定義されたリポジトリをタイプヒントしてみましょう。このリポジトリは、自動的に依存解決され、クラスへ注入されます。/
s/^        \/\*\*$/        \/**/
s/^         \* The user repository instance\.$/         * Userリポジトリインスタンス/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new controller instance\.$/         * 新しいコントローラインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  UserRepository  $users$/         * @param  UserRepository  $users/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Show the user with the given ID\.$/         * 指定されたIDのユーザー表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^## Container Events$/## コンテナイベント/
s/^The service container fires an event each time it resolves an object\. You may listen to this event using the `resolving` method:$/コンテナはオブジェクトの依存解決時に毎回イベントを発行します。このイベントは、`resolving`を使用して購読できます。/
s/^        \/\/ Called when container resolves object of any type\.\.\.$/        \/\/ どんなタイプのオブジェクトをコンテナが解決した場合でも呼び出される/
s/^        \/\/ Called when container resolves objects of type "HelpSpot\\API"\.\.\.$/        \/\/ "HelpSpot\\API"クラスのオブジェクトをコンテナが解決した場合に呼び出される/
s/^As you can see, the object being resolved will be passed to the callback, allowing you to set any additional properties on the object before it is given to its consumer\.$/ご覧の通り、依存解決対象のオブジェクトがコールバックに渡され、最終的に取得元へ渡される前に追加でオブジェクトのプロパティをセットすることができます。/
s/^Laravel's service container implements the \[PSR-11\](https:\/\/github\.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-11-container\.md) interface\. Therefore, you may type-hint the PSR-11 container interface to obtain an instance of the Laravel container:$/Laravelのサービスコンテナは、[PSR-11](https:\/\/github.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-11-container.md)インターフェイスを持っています。これにより、Laravelコンテナのインスタンスを取得するために、PSR-11コンテナインターフェイスをタイプヒントで指定できます。/
s/^> {note} Calling the `get` method will throw an exception if the identifier has not been explicitly bound into the container\.$/> {note} 識別子をコンテナへ明確に結合していない場合、`get`メソッドの呼び出しで例外が投げられます。/
