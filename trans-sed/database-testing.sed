s/^# Database Testing$/# データベースのテスト/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Generating Factories\](#generating-factories)$/- [ファクトリの生成](#generating-factories)/
s/^- \[Resetting The Database After Each Test\](#resetting-the-database-after-each-test)$/- [各テスト後のデータベースリセット](#resetting-the-database-after-each-test)/
s/^- \[Writing Factories\](#writing-factories)$/- [ファクトリの記述](#writing-factories)/
s/^    - \[Factory States\](#factory-states)$/    - [ファクトリステート](#factory-states)/
s/^    - \[Factory Callbacks\](#factory-callbacks)$/    - [ファクトリコールバック](#factory-callbacks)/
s/^- \[Using Factories\](#using-factories)$/- [ファクトリの使用](#using-factories)/
s/^    - \[Creating Models\](#creating-models)$/    - [モデルの生成](#creating-models)/
s/^    - \[Persisting Models\](#persisting-models)$/    - [モデルの保存](#persisting-models)/
s/^    - \[Relationships\](#relationships)$/    - [リレーション](#relationships)/
s/^- \[Available Assertions\](#available-assertions)$/- [使用可能なアサーション](#available-assertions)/
s/^## Introduction$/## イントロダクション/
s/^Laravel provides a variety of helpful tools to make it easier to test your database driven applications\. First, you may use the `assertDatabaseHas` helper to assert that data exists in the database matching a given set of criteria\. For example, if you would like to verify that there is a record in the `users` table with the `email` value of `sally@example\.com`, you can do the following:$/Laravelでは、データベースを駆動するアプリケーションのテストを簡単にできる、便利で様々なツールを用意しています。その一つは、指定した抽出条件に一致するデータがデータベース中に存在するかをアサートする、`assertDatabaseHas`ヘルパです。たとえば、`users`テーブルの中に`email`フィールドが`sally@example.com`の値のレコードが存在するかを確認したいとしましょう。次のようにテストできます。/
s/^        \/\/ Make call to application\.\.\.$/        \/\/ アプリケーションを呼び出す…/
s/^        $this->assertDatabaseHas('users', \[$/        $this->assertDatabaseHas('users', [/
s/^            'email' => 'sally@example\.com'$/            'email' => 'sally@example.com'/
s/^        \]);$/        ]);/
s/^You can also use the `assertDatabaseMissing` helper to assert that data does not exist in the database\.$/データベースにデータが存在しないことをアサートする、`assertDatabaseMissing`ヘルパを使うこともできます。/
s/^Of course, the `assertDatabaseHas` method and other helpers like it are for convenience\. You are free to use any of PHPUnit's built-in assertion methods to supplement your tests\.$/もちろん、`assertDatabaseHas`メソッドやその他のヘルパは、皆さんへ便利に使ってもらうため用意しています。PHPUnitの組み込みアサートメソッドは、テストで自由に使用できます。/
s/^## Generating Factories$/## ファクトリの生成/
s/^To create a factory, use the `make:factory` \[Artisan command\](\/docs\/{{version}}\/artisan):$/ファクトリを生成するには、`make:factory` [Artisanコマンド](\/docs\/{{version}}\/artisan)を使用します。/
s/^The new factory will be placed in your `database\/factories` directory\.$/新しいファクトリは、`database\/factories`ディレクトリに設置されます。/
s/^The `--model` option may be used to indicate the name of the model created by the factory\. This option will pre-fill the generated factory file with the given model:$/`--model`オプションにより、ファクトリが生成するモデルの名前を指定できます。このオプションは、生成するファクトリファイルへ指定モデル名を事前に設定します。/
s/^## Resetting The Database After Each Test$/## 各テスト後のデータベースリセット/
s/^It is often useful to reset your database after each test so that data from a previous test does not interfere with subsequent tests\. The `RefreshDatabase` trait takes the most optimal approach to migrating your test database depending on if you are using an in-memory database or a traditional database\. Use the trait on your test class and everything will be handled for you:$/前のテストがその後のテストデータに影響しないように、各テストの後にデータベースをリセットできると便利です。インメモリデータベースを使っていても、トラディショナルなデータベースを使用していても、`RefreshDatabase`トレイトにより、マイグレーションに最適なアプローチが取れます。テストクラスにてこのトレイトを使えば、全てが処理されます。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic functional test example\.$/         * 基本的な機能テストの例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ \.\.\.$/            \/\/ .../
s/^## Writing Factories$/## ファクトリの記述/
s/^When testing, you may need to insert a few records into your database before executing your test\. Instead of manually specifying the value of each column when you create this test data, Laravel allows you to define a default set of attributes for each of your \[Eloquent models\](\/docs\/{{version}}\/eloquent) using model factories\. To get started, take a look at the `database\/factories\/UserFactory\.php` file in your application\. Out of the box, this file contains one factory definition:$/テスト実行前に、何件かのレコードをデータベースに挿入する必要があります。こうしたテストデータを作る時に、手動でそれぞれのカラムへ値を指定する代わりに、Laravelではモデルファクトリを使用し、[Eloquentモデル](\/docs\/{{version}}\/eloquent)の各属性にデフォルト値を設定できます。手始めに、アプリケーションの`database\/factories\/UserFactory.php`ファイルを見てください。このファイルには初めからファクトリの定義が一つ含まれています。/
s/^        return \[$/        return [/
s/^            'password' => '$2y$10$TKh8H1\.PfQx37YgCzwiKb\.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', \/\/ secret$/            'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', \/\/ secret/
s/^        \];$/        ];/
s/^Within the Closure, which serves as the factory definition, you may return the default test values of all attributes on the model\. The Closure will receive an instance of the \[Faker\](https:\/\/github\.com\/fzaninotto\/Faker) PHP library, which allows you to conveniently generate various kinds of random data for testing\.$/ファクトリで定義しているクロージャの中から、モデルの全属性に対するデフォルトのテスト値を返しています。このクロージャは[Faker](https:\/\/github.com\/fzaninotto\/Faker) PHPライブラリーのインスタンスを受け取っており、これはテストのための多用なランダムデータを生成するのに便利です。/
s/^You may also create additional factory files for each model for better organization\. For example, you could create `UserFactory\.php` and `CommentFactory\.php` files within your `database\/factories` directory\. All of the files within the `factories` directory will automatically be loaded by Laravel\.$/より組織立てるために、各モデルごとに追加のファクトリファイルを作成することもできます。たとえば、`database\/factories`ディレクトリに`UserFactory.php`と`CommentFactory.php`ファイルを作成できます。`factories`ディレクトリ下の全ファイルは、Laravelにより自動的にロードされます。/
s/^> {tip} You can set the Faker locale by adding a `faker_locale` option to your `config\/app\.php` configuration file\.$/> {tip} Fakerのローケルは、`config\/app.php`設定ファイルの`faker_locale`オプションで指定できます。/
s/^### Factory States$/### ファクトリステート/
s/^States allow you to define discrete modifications that can be applied to your model factories in any combination\. For example, your `User` model might have a `delinquent` state that modifies one of its default attribute values\. You may define your state transformations using the `state` method\. For simple states, you may pass an array of attribute modifications:$/ステートにより、モデルファクトリのどんな組み合わせに対しても適用できる、個別の調整を定義できます。たとえば、`User`モデルは、デフォルト属性値の一つを変更する、`delinquent`ステートを持つとしましょう。`state`メソッドを使い、状態変換を定義します。単純なステートでは、属性の変換の配列を渡します。/
s/^    $factory->state(App\\User::class, 'delinquent', \[$/    $factory->state(App\\User::class, 'delinquent', [/
s/^    \]);$/    ]);/
s/^If your state requires calculation or a `$faker` instance, you may use a Closure to calculate the state's attribute modifications:$/ステートで計算や`$faker`インスタンスが必要な場合は、ステートの属性変換を計算するために、クロージャを使います。/
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^### Factory Callbacks$/### ファクトリコールバック/
s/^Factory callbacks are registered using the `afterMaking` and `afterCreating` methods, and allow you to perform additional tasks after making or creating a model\. For example, you may use callbacks to relate additional models to the created model:$/ファクトリコールバックは`afterMaking`と`afterCreating`メソッドを使用し登録し、モデルを作成、もしくは生成した後の追加タスクを実行できるようにします。例として、生成したモデルに追加のモデルを関係づけるコールバックを利用してみましょう。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^You may also define callbacks for \[factory states\](#factory-states):$/[ファクトリステート](#factory-states)のために、コールバックを定義することも可能です。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^## Using Factories$/## ファクトリの使用/
s/^### Creating Models$/### モデルの生成/
s/^Once you have defined your factories, you may use the global `factory` function in your tests or seed files to generate model instances\. So, let's take a look at a few examples of creating models\. First, we'll use the `make` method to create models but not save them to the database:$/ファクトリを定義し終えたら、テストかデータベースのシーディング（初期値設定）ファイルの中で、グローバルな`factory`関数を使用してモデルインスタンスを生成できます。では、モデル生成の例をいくつか見てみましょう。最初は`make`メソッドでモデルを生成し、データベースには保存しない方法です。/
s/^        \/\/ Use model in tests\.\.\.$/        \/\/ モデルをテストで使用…/
s/^You may also create a Collection of many models or create models of a given type:$/さらにモデルのコレクションや指定したタイプのモデルも生成できます。/
s/^    \/\/ Create three App\\User instances\.\.\.$/    \/\/ App\\Userインスタンスを３つ生成/
s/^    $users = factory(App\\User::class, 3)->make();$/    $users = factory(App\\User::class, 'admin', 3)->make();/
s/^#### Applying States$/#### ステートの適用/
s/^You may also apply any of your \[states\](#factory-states) to the models\. If you would like to apply multiple state transformations to the models, you should specify the name of each state you would like to apply:$/こうしたモデルに対して[ステート](#factory-states)を適用することもできます。複数の状態遷移を適用したい場合は、それぞれの適用対象のステート名を指定します。/
s/^#### Overriding Attributes$/#### 属性のオーバーライド/
s/^If you would like to override some of the default values of your models, you may pass an array of values to the `make` method\. Only the specified values will be replaced while the rest of the values remain set to their default values as specified by the factory:$/モデルのデフォルト値をオーバーライドしたい場合は、`make`メソッドに配列で値を渡してください。指定した値のみ置き換わり、残りの値はファクトリで指定したデフォルト値のまま残ります。/
s/^    $user = factory(App\\User::class)->make(\[$/    $user = factory(App\\User::class)->make([/
s/^    \]);$/    ]);/
s/^### Persisting Models$/### モデルの保存/
s/^The `create` method not only creates the model instances but also saves them to the database using Eloquent's `save` method:$/`create`メソッドはモデルインスタンスを生成するだけでなく、Eloquentの`save`メソッドを使用しデータベースへ保存します。/
s/^        \/\/ Create a single App\\User instance\.\.\.$/        \/\/ 一つのApp\\Userインスタンスを作成/
s/^        \/\/ Create three App\\User instances\.\.\.$/        \/\/ App\\Userインスタンスを３つ生成/
s/^        \/\/ Use model in tests\.\.\.$/        \/\/ モデルをテストで使用…/
s/^You may override attributes on the model by passing an array to the `create` method:$/`create`メソッドに配列で値を渡すことで、モデルの属性をオーバーライドできます。/
s/^    $user = factory(App\\User::class)->create(\[$/    $user = factory(App\\User::class)->create([/
s/^    \]);$/    ]);/
s/^### Relationships$/### リレーション/
s/^In this example, we'll attach a relation to some created models\. When using the `create` method to create multiple models, an Eloquent \[collection instance\](\/docs\/{{version}}\/eloquent-collections) is returned, allowing you to use any of the convenient functions provided by the collection, such as `each`:$/以下の例では、生成したモデルにリレーションを付けています。複数モデルの生成に`create`メソッドを使用する場合、[インスタンスのコレクション](\/docs\/{{version}}\/eloquent-collections)が返されます。そのため、コレクションで使用できる`each`などの便利な関数が利用できます。/
s/^#### Relations & Attribute Closures$/#### リレーションと属性クロージャ/
s/^You may also attach relationships to models using Closure attributes in your factory definitions\. For example, if you would like to create a new `User` instance when creating a `Post`, you may do the following:$/クロージャ属性をファクトリ定義の中で使い、モデルとのリレーションを追加することもできます。たとえば、`Post`を作成する時に、新しい`User`インスタンスも作成したい場合は、以下のようになります。/
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^These Closures also receive the evaluated attribute array of the factory that defines them:$/さらに、クロージャは評価済みのファクトリの属性配列を受け取ることもできます。/
s/^        return \[$/        return [/
s/^                return App\\User::find($post\['user_id'\])->type;$/                return App\\User::find($post['user_id'])->type;/
s/^        \];$/        ];/
s/^## Available Assertions$/## 使用可能なアサーション/
s/^Laravel provides several database assertions for your \[PHPUnit\](https:\/\/phpunit\.de\/) tests:$/Laravelは、多くのデータベースアサーションを[PHPUnit](https:\/\/phpunit.de\/)テスト向けに提供しています。/
s/^Method  | Description$/メソッド  | 説明/
s/^------------- | -------------$/------------- | ---------------------------------------------------------------------------/
s/^`$this->assertDatabaseHas($table, array $data);`  |  Assert that a table in the database contains the given data\.$/`$this->assertDatabaseHas($table, array $data);`  |  指定したデータが、テーブルに存在することをアサート/
s/^`$this->assertDatabaseMissing($table, array $data);`  |  Assert that a table in the database does not contain the given data\.$/`$this->assertDatabaseMissing($table, array $data);`  |  指定したデータが、テーブルに含まれないことをアサート/
s/^`$this->assertSoftDeleted($table, array $data);`  |  Assert that the given record has been soft deleted\.$/`$this->assertSoftDeleted($table, array $data);`  |  指定したレコードがソフトデリートされていることをアサート/
