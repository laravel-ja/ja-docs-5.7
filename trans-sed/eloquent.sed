s/^# Eloquent: Getting Started$/# Eloquent：利用の開始/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Defining Models\](#defining-models)$/- [モデル定義](#defining-models)/
s/^    - \[Eloquent Model Conventions\](#eloquent-model-conventions)$/    - [Eloquentモデル規約](#eloquent-model-conventions)/
s/^- \[Retrieving Models\](#retrieving-models)$/- [モデルの取得](#retrieving-models)/
s/^    - \[Collections\](#collections)$/    - [コレクション](#collections)/
s/^    - \[Chunking Results\](#chunking-results)$/    - [結果の分割](#chunking-results)/
s/^- \[Retrieving Single Models \/ Aggregates\](#retrieving-single-models)$/- [１モデル／集計の取得](#retrieving-single-models)/
s/^    - \[Retrieving Aggregates\](#retrieving-aggregates)$/    - [集計の取得](#retrieving-aggregates)/
s/^- \[Inserting & Updating Models\](#inserting-and-updating-models)$/- [モデルの追加と更新](#inserting-and-updating-models)/
s/^    - \[Inserts\](#inserts)$/    - [Inserts](#inserts)/
s/^    - \[Updates\](#updates)$/    - [Updates](#updates)/
s/^    - \[Mass Assignment\](#mass-assignment)$/    - [複数代入](#mass-assignment)/
s/^    - \[Other Creation Methods\](#other-creation-methods)$/    - [他の生成メソッド](#other-creation-methods)/
s/^- \[Deleting Models\](#deleting-models)$/- [モデル削除](#deleting-models)/
s/^    - \[Soft Deleting\](#soft-deleting)$/    - [ソフトデリート](#soft-deleting)/
s/^    - \[Querying Soft Deleted Models\](#querying-soft-deleted-models)$/    - [ソフトデリート済みモデルのクエリ](#querying-soft-deleted-models)/
s/^- \[Query Scopes\](#query-scopes)$/- [クエリスコープ](#query-scopes)/
s/^    - \[Global Scopes\](#global-scopes)$/    - [グローバルスコープ](#global-scopes)/
s/^    - \[Local Scopes\](#local-scopes)$/    - [ローカルスコープ](#local-scopes)/
s/^- \[Comparing Models\](#comparing-models)$/- [モデルの比較](#comparing-models)/
s/^- \[Events\](#events)$/- [イベント](#events)/
s/^    - \[Observers\](#observers)$/    - [オブザーバ](#observers)/
s/^## Introduction$/## イントロダクション/
s/^The Eloquent ORM included with Laravel provides a beautiful, simple ActiveRecord implementation for working with your database\. Each database table has a corresponding "Model" which is used to interact with that table\. Models allow you to query for data in your tables, as well as insert new records into the table\.$/Eloquent ORMはLaravelに含まれている、美しくシンプルなアクティブレコードによるデーター操作の実装です。それぞれのデータベーステーブルは関連する「モデル」と結びついています。モデルによりテーブル中のデータをクエリできますし、さらに新しいレコードを追加することもできます。/
s/^Before getting started, be sure to configure a database connection in `config\/database\.php`\. For more information on configuring your database, check out \[the documentation\](\/docs\/{{version}}\/database#configuration)\.$/使用開始前に`config\/database.php`を確実に設定してください。データベースの詳細は[ドキュメント](\/docs\/{{version}}\/database#configuration)で確認してください。/
s/^## Defining Models$/## モデル定義/
s/^To get started, let's create an Eloquent model\. Models typically live in the `app` directory, but you are free to place them anywhere that can be auto-loaded according to your `composer\.json` file\. All Eloquent models extend `Illuminate\\Database\\Eloquent\\Model` class\.$/利用を開始するには、まずEloquentモデルを作成しましょう。通常モデルは`app`ディレクトリ下に置きますが、`composer.json`ファイルでオートロードするように指定した場所であれば、どこでも自由に設置できます。全てのEloquentモデルは、`Illuminate\\Database\\Eloquent\\Model`を拡張する必要があります。/
s/^The easiest way to create a model instance is using the `make:model` \[Artisan command\](\/docs\/{{version}}\/artisan):$/モデルを作成する一番簡単な方法は`make:model` [Artisanコマンド](\/docs\/{{version}}\/artisan)を使用することです。/
s/^If you would like to generate a \[database migration\](\/docs\/{{version}}\/migrations) when you generate the model, you may use the `--migration` or `-m` option:$/モデル作成時に[データベースマイグレーション](\/docs\/{{version}}\/migrations)も生成したければ、`--migration`か`-m`オプションを使ってください。/
s/^### Eloquent Model Conventions$/### Eloquentモデル規約/
s/^Now, let's look at an example `Flight` model, which we will use to retrieve and store information from our `flights` database table:$/では`flights`データベーステーブルに情報を保存し、取得するために使用する`Flight`モデルクラスを例として見てください。/
s/^#### Table Names$/#### テーブル名/
s/^Note that we did not tell Eloquent which table to use for our `Flight` model\. By convention, the "snake case", plural name of the class will be used as the table name unless another name is explicitly specified\. So, in this case, Eloquent will assume the `Flight` model stores records in the `flights` table\. You may specify a custom table by defining a `table` property on your model:$/`Flight`モデルにどのテーブルを使用するか、Eloquentに指定していない点に注目してください。他の名前を明示的に指定しない限り、クラス名を複数形の「スネークケース」にしたものが、テーブル名として使用されます。今回の例で、Eloquentは`Flight`モデルを`flights`テーブルに保存します。モデルの`table`プロパティを定義し、カスタムテーブル名を指定することもできます。/
s/^        \/\*\*$/        \/**/
s/^         \* The table associated with the model\.$/         * モデルと関連しているテーブル/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^#### Primary Keys$/#### 主キー/
s/^Eloquent will also assume that each table has a primary key column named `id`\. You may define a protected `$primaryKey` property to override this convention\.$/Eloquentは更にテーブルの主キーが`id`というカラム名であると想定しています。この規約をオーバーライドする場合は、protectedの`primaryKey`プロパティを定義してください。/
s/^In addition, Eloquent assumes that the primary key is an incrementing integer value, which means that by default the primary key will be cast to an `int` automatically\. If you wish to use a non-incrementing or a non-numeric primary key you must set the public `$incrementing` property on your model to `false`\. If your primary key is not an integer, you should set the protected `$keyType` property on your model to `string`\.$/さらに、Eloquentは主キーを自動増分される整数値であるとも想定しています。つまり、デフォルト状態で主キーは自動的に`int`へキャストされます。自動増分ではない、もしくは整数値ではない主キーを使う場合、モデルにpublicの`$incrementing`プロパティを用意し、`false`をセットしてください。主キーが整数でない場合は、モデルのprotectedの`$keyType`プロパティへ`string`値を設定してください。/
s/^#### Timestamps$/#### タイムスタンプ/
s/^By default, Eloquent expects `created_at` and `updated_at` columns to exist on your tables\.  If you do not wish to have these columns automatically managed by Eloquent, set the `$timestamps` property on your model to `false`:$/デフォルトでEloquentはデータベース上に存在する`created_at`(作成時間)と`updated_at`(更新時間)カラムを自動的に更新します。これらのカラムの自動更新をEloquentにしてほしくない場合は、モデルの`$timestamps`プロパティを`false`に設定してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Indicates if the model should be timestamped\.$/         * モデルのタイムスタンプを更新するかの指示/
s/^         \*$/         */
s/^         \* @var bool$/         * @var bool/
s/^         \*\/$/         *\//
s/^If you need to customize the format of your timestamps, set the `$dateFormat` property on your model\. This property determines how date attributes are stored in the database, as well as their format when the model is serialized to an array or JSON:$/タイムスタンプのフォーマットをカスタマイズする必要があるなら、モデルの`$dateFormat`プロパティを設定してください。このプロパティはデータベースに保存される日付属性のフォーマットを決めるために使用されると同時に、配列やJSONへシリアライズする時にも使われます。/
s/^        \/\*\*$/        \/**/
s/^         \* The storage format of the model's date columns\.$/         * モデルの日付カラムの保存フォーマット/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^If you need to customize the names of the columns used to store the timestamps, you may set the `CREATED_AT` and `UPDATED_AT` constants in your model:$/タイムスタンプを保存するカラム名をカスタマイズする必要がある場合、モデルに`CREATED_AT`と`UPDATED_AT`定数を設定してください。/
s/^#### Database Connection$/#### データベース接続/
s/^By default, all Eloquent models will use the default database connection configured for your application\. If you would like to specify a different connection for the model, use the `$connection` property:$/Eloquentモデルはデフォルトとして、アプリケーションに設定されているデフォルトのデータベース接続を使用します。モデルで異なった接続を指定したい場合は、`$connection`プロパティを使用します。/
s/^        \/\*\*$/        \/**/
s/^         \* The connection name for the model\.$/         * モデルで使用するコネクション名/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^## Retrieving Models$/## モデルの取得/
s/^Once you have created a model and \[its associated database table\](\/docs\/{{version}}\/migrations#writing-migrations), you are ready to start retrieving data from your database\. Think of each Eloquent model as a powerful \[query builder\](\/docs\/{{version}}\/queries) allowing you to fluently query the database table associated with the model\. For example:$/モデルと[対応するデータベーステーブル](\/docs\/{{version}}\/migrations#writing-migrations)を作成したら、データベースからデータを取得できるようになりました。各Eloquentモデルは、対応するデータベーステーブルへすらすらとクエリできるようにしてくれる[クエリビルダ](\/docs\/{{version}}\/queries)だと考えてください。例を見てください。/
s/^#### Adding Additional Constraints$/#### 制約の追加/
s/^The Eloquent `all` method will return all of the results in the model's table\. Since each Eloquent model serves as a \[query builder\](\/docs\/{{version}}\/queries), you may also add constraints to queries, and then use the `get` method to retrieve the results:$/Eloquentの`all`メソッドはモデルテーブルの全レコードを結果として返します。Eloquentモデルは[クエリビルダ](\/docs\/{{version}}\/queries)としても動作しますのでクエリに制約を付け加えることもでき、結果を取得するには`get`メソッドを使用します。/
s/^> {tip} Since Eloquent models are query builders, you should review all of the methods available on the \[query builder\](\/docs\/{{version}}\/queries)\. You may use any of these methods in your Eloquent queries\.$/> {tip} Eloquentモデルはクエリビルダですから、[クエリビルダ](\/docs\/{{version}}\/queries)で使用できる全メソッドを確認しておくべきでしょう。Eloquentクエリでどんなメソッドも使用できます。/
s/^### Collections$/### コレクション/
s/^For Eloquent methods like `all` and `get` which retrieve multiple results, an instance of `Illuminate\\Database\\Eloquent\\Collection` will be returned\. The `Collection` class provides \[a variety of helpful methods\](\/docs\/{{version}}\/eloquent-collections#available-methods) for working with your Eloquent results:$/複数の結果を取得する`all`や`get`のようなEloquentメソッドは、`Illuminate\\Database\\Eloquent\\Collection`インスタンスを返します。`Collection`クラスはEloquent結果を操作する[多くの便利なクラス](\/docs\/{{version}}\/eloquent-collections#available-methods)を提供しています。/
s/^Of course, you may also loop over the collection like an array:$/もちろんこのコレクションは配列のようにループさせることもできます。/
s/^### Chunking Results$/### 結果の分割/
s/^If you need to process thousands of Eloquent records, use the `chunk` command\. The `chunk` method will retrieve a "chunk" of Eloquent models, feeding them to a given `Closure` for processing\. Using the `chunk` method will conserve memory when working with large result sets:$/数千のEloquentレコードを処理する必要がある場合は`chunk`コマンドを利用してください。`chunk`メソッドはEloquentモデルの「塊(chunk)」を取得し、引数の「クロージャ」に渡します。`chunk`メソッドを使えば大きな結果を操作するときのメモリを節約できます。/
s/^The first argument passed to the method is the number of records you wish to receive per "chunk"\. The Closure passed as the second argument will be called for each chunk that is retrieved from the database\. A database query will be executed to retrieve each chunk of records passed to the Closure\.$/最初の引数には「チャンク（塊）」ごとにいくつのレコードを処理するかを渡します。２番めの引数にはクロージャを渡し、そのデータベースからの結果をチャンクごとに処理するコードを記述します。クロージャへ渡されるチャンクを取得するたびに、データベースクエリは実行されます。/
s/^#### Using Cursors$/#### カーソルの使用/
s/^The `cursor` method allows you to iterate through your database records using a cursor, which will only execute a single query\. When processing large amounts of data, the `cursor` method may be used to greatly reduce your memory usage:$/`cursor`メソッドにより、ひとつだけクエリを実行するカーソルを使用し、データベース全体を繰り返し処理できます。大量のデータを処理する場合、`cursor`メソッドを使用すると、大幅にメモリ使用量を減らせるでしょう。/
s/^## Retrieving Single Models \/ Aggregates$/## １モデル／集計の取得/
s/^Of course, in addition to retrieving all of the records for a given table, you may also retrieve single records using `find` or `first`\. Instead of returning a collection of models, these methods return a single model instance:$/もちろん指定したテーブルの全レコードを取得することに加え、`find`と`first`を使い１レコードだけを取得できます。モデルのコレクションの代わりに、これらのメソッドは１モデルインスタンスを返します。/
s/^    \/\/ Retrieve a model by its primary key\.\.\.$/    \/\/ 主キーで指定したモデル取得/
s/^    \/\/ Retrieve the first model matching the query constraints\.\.\.$/    \/\/ クエリ条件にマッチした最初のレコード取得/
s/^You may also call the `find` method with an array of primary keys, which will return a collection of the matching records:$/また、主キーの配列を`find`メソッドに渡し、呼び出すこともできます。一致したレコードのコレクションが返されます。/
s/^    $flights = App\\Flight::find(\[1, 2, 3\]);$/    $flights = App\\Flight::find([1, 2, 3]);/
s/^#### Not Found Exceptions$/#### Not Found例外/
s/^Sometimes you may wish to throw an exception if a model is not found\. This is particularly useful in routes or controllers\. The `findOrFail` and `firstOrFail` methods will retrieve the first result of the query; however, if no result is found, a `Illuminate\\Database\\Eloquent\\ModelNotFoundException` will be thrown:$/モデルが見つからない時に、例外を投げたい場合もあります。これは特にルートやコントローラの中で便利です。`findOrFail`メソッドとクエリの最初の結果を取得する`firstOrFail`メソッドは、該当するレコードが見つからない場合に`Illuminate\\Database\\Eloquent\\ModelNotFoundException`例外を投げます。/
s/^If the exception is not caught, a `404` HTTP response is automatically sent back to the user\. It is not necessary to write explicit checks to return `404` responses when using these methods:$/この例外がキャッチされないと自動的に`404`HTTPレスポンスがユーザーに送り返されます。これらのメソッドを使用すればわざわざ明確に`404`レスポンスを返すコードを書く必要はありません。/
s/^### Retrieving Aggregates$/### 集計の取得/
s/^You may also use the `count`, `sum`, `max`, and other \[aggregate methods\](\/docs\/{{version}}\/queries#aggregates) provided by the \[query builder\](\/docs\/{{version}}\/queries)\. These methods return the appropriate scalar value instead of a full model instance:$/もちろん[クエリビルダ](\/docs\/{{version}}\/queries)が提供している`count`、`sum`、`max`や、その他の[集計関数](\/docs\/{{version}}\/queries#aggregates)を使用することもできます。これらのメソッドは完全なモデルインスタンスではなく、最適なスカラー値を返します。/
s/^## Inserting & Updating Models$/## モデルの追加と更新/
s/^To create a new record in the database, create a new model instance, set attributes on the model, then call the `save` method:$/モデルから新しいレコードを作成するには新しいインスタンスを作成し、`save`メソッドを呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a new flight instance\.$/         * 新しいflightインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Validate the request\.\.\.$/            \/\/ リクエストのバリデート処理…/
s/^In this example, we assign the `name` parameter from the incoming HTTP request to the `name` attribute of the `App\\Flight` model instance\. When we call the `save` method, a record will be inserted into the database\. The `created_at` and `updated_at` timestamps will automatically be set when the `save` method is called, so there is no need to set them manually\.$/この例では、受信したHTTPリクエストの`name`パラメーターを`App\\Flight`モデルインスタンスの`name`属性に代入しています。`save`メソッドが呼ばれると新しいレコードがデータベースに挿入されます。`save`が呼び出された時に`created_at`と`updated_at`タイムスタンプは自動的に設定されますので、わざわざ設定する必要はありません。/
s/^The `save` method may also be used to update models that already exist in the database\. To update a model, you should retrieve it, set any attributes you wish to update, and then call the `save` method\. Again, the `updated_at` timestamp will automatically be updated, so there is no need to manually set its value:$/`save`メソッドはデータベースで既に存在するモデルを更新するためにも使用されます。モデルを更新するにはまず取得する必要があり、更新したい属性をセットしてそれから`save`メソッドを呼び出します。この場合も`updated_at`タイムスタンプは自動的に更新されますので、値を指定する手間はかかりません。/
s/^#### Mass Updates$/#### 複数モデル更新/
s/^Updates can also be performed against any number of models that match a given query\. In this example, all flights that are `active` and have a `destination` of `San Diego` will be marked as delayed:$/指定したクエリに一致する複数のモデルに対し更新することもできます。以下の例では`active`で到着地(`destination`)が`San Diego`の全フライトに遅延(`delayed`)のマークを付けています。/
s/^              ->update(\['delayed' => 1\]);$/              ->update(['delayed' => 1]);/
s/^The `update` method expects an array of column and value pairs representing the columns that should be updated\.$/`update`メソッドは更新したいカラムと値の配列を受け取ります。/
s/^> {note} When issuing a mass update via Eloquent, the `saved` and `updated` model events will not be fired for the updated models\. This is because the models are never actually retrieved when issuing a mass update\.$/> {note} Eloquentの複数モデル更新を行う場合、更新モデルに対する`saved`と`updated`モデルイベントは発行されません。その理由は複数モデル更新を行う時、実際にモデルが取得されるわけではないからです。/
s/^### Mass Assignment$/### 複数代入/
s/^You may also use the `create` method to save a new model in a single line\. The inserted model instance will be returned to you from the method\. However, before doing so, you will need to specify either a `fillable` or `guarded` attribute on the model, as all Eloquent models protect against mass-assignment by default\.$/一行だけで新しいモデルを保存するには、`create`メソッドが利用できます。挿入されたモデルインスタンスが、メソッドから返されます。しかし、これを利用する前に、Eloquentモデルはデフォルトで複数代入から保護されているため、モデルへ`fillable`か`guarded`属性のどちらかを設定する必要があります。/
s/^A mass-assignment vulnerability occurs when a user passes an unexpected HTTP parameter through a request, and that parameter changes a column in your database you did not expect\. For example, a malicious user might send an `is_admin` parameter through an HTTP request, which is then passed into your model's `create` method, allowing the user to escalate themselves to an administrator\.$/複数代入の脆弱性はリクエストを通じて予期しないHTTPパラメーターが送られた時に起き、そのパラメーターはデータベースのカラムを予期しないように変更してしまうでしょう。たとえば悪意のあるユーザーがHTTPパラメーターで`is_admin`パラメーターを送り、それがモデルの`create`メソッドに対して渡されると、そのユーザーは自分自身を管理者(administrator)に昇格できるのです。/
s/^So, to get started, you should define which model attributes you want to make mass assignable\. You may do this using the `$fillable` property on the model\. For example, let's make the `name` attribute of our `Flight` model mass assignable:$/ですから最初に複数代入したいモデルの属性を指定してください。モデルの`$fillable`プロパティで指定できます。たとえば、`Flight`モデルの複数代入で`name`属性のみ使いたい場合です。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that are mass assignable\.$/         * 複数代入する属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $fillable = \['name'\];$/        protected $fillable = ['name'];/
s/^Once we have made the attributes mass assignable, we can use the `create` method to insert a new record in the database\. The `create` method returns the saved model instance:$/複数代入する属性を指定したら、新しいレコードをデータベースに挿入するために`create`が利用できます。`create`メソッドは保存したモデルインスタンスを返します。/
s/^    $flight = App\\Flight::create(\['name' => 'Flight 10'\]);$/    $flight = App\\Flight::create(['name' => 'Flight 10']);/
s/^If you already have a model instance, you may use the `fill` method to populate it with an array of attributes:$/既に存在するモデルインスタンスへ属性を指定したい場合は、`fill`メソッドを使い、配列で指定してください。/
s/^    $flight->fill(\['name' => 'Flight 22'\]);$/    $flight->fill(['name' => 'Flight 22']);/
s/^#### Guarding Attributes$/#### 属性の保護/
s/^While `$fillable` serves as a "white list" of attributes that should be mass assignable, you may also choose to use `$guarded`\. The `$guarded` property should contain an array of attributes that you do not want to be mass assignable\. All other attributes not in the array will be mass assignable\. So, `$guarded` functions like a "black list"\. Of course, you should use either `$fillable` or `$guarded` - not both\. In the example below, all attributes \*\*except for `price`\*\* will be mass assignable:$/`$fillable`が複数代入時における属性の「ホワイトリスト」として動作する一方、`$guarded`の使用を選ぶことができます。`$guarded`プロパティは複数代入したくない属性の配列です。配列に含まれない他の属性は全部複数代入可能です。そのため`$guarded`は「ブラックリスト」として働きます。もちろん`$fillable`か`$guarded`のどちらか一方を使用してください。両方一度には使えません。以下の例は、**`price`を除いた**全属性に複数代入できます。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that aren't mass assignable\.$/         * 複数代入しない属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $guarded = \['price'\];$/        protected $guarded = ['price'];/
s/^If you would like to make all attributes mass assignable, you may define the `$guarded` property as an empty array:$/全属性を複数代入可能にする場合は、`$guarded`プロパティに空の配列を定義します。/
s/^    \/\*\*$/    \/**/
s/^     \* The attributes that aren't mass assignable\.$/     * 複数代入しない属性/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $guarded = \[\];$/    protected $guarded = [];/
s/^### Other Creation Methods$/### 他の生成メソッド/
s/^There are two other methods you may use to create models by mass assigning attributes: `firstOrCreate` and `firstOrNew`\. The `firstOrCreate` method will attempt to locate a database record using the given column \/ value pairs\. If the model can not be found in the database, a record will be inserted with the attributes from the first parameter, along with those in the optional second parameter\.$/他にも属性の複数代入可能な生成メソッドが２つあります。`firstOrCreate`と`firstOrNew`です。`firstOrCreate`メソッドは指定されたカラム／値ペアでデータベースレコードを見つけようします。モデルがデータベースで見つからない場合は、最初の引数が表す属性、任意の第２引数があればそれが表す属性も同時に含む、レコードが挿入されます。/
s/^The `firstOrNew` method, like `firstOrCreate` will attempt to locate a record in the database matching the given attributes\. However, if a model is not found, a new model instance will be returned\. Note that the model returned by `firstOrNew` has not yet been persisted to the database\. You will need to call `save` manually to persist it:$/`firstOrNew`メソッドも`firstOrCreate`のように指定された属性にマッチするデータベースのレコードを見つけようとします。しかしモデルが見つからない場合、新しいモデルインスタンスが返されます。`firstOrNew`が返すモデルはデータベースに保存されていないことに注目です。保存するには`save`メソッドを呼び出す必要があります。/
s/^    \/\/ Retrieve flight by name, or create it if it doesn't exist\.\.\.$/    \/\/ nameでフライトを取得するか、存在しなければ作成する/
s/^    $flight = App\\Flight::firstOrCreate(\['name' => 'Flight 10'\]);$/    $flight = App\\Flight::firstOrCreate(['name' => 'Flight 10']);/
s/^    \/\/ Retrieve flight by name, or create it with the name and delayed attributes\.\.\.$/    \/\/ nameでフライトを取得するか、存在しなければ指定されたnameとdelayedを含め、インスタンス化する/
s/^        \['name' => 'Flight 10'\], \['delayed' => 1\]$/        ['name' => 'Flight 10'], ['delayed' => 1]/
s/^    \/\/ Retrieve by name, or instantiate\.\.\.$/    \/\/ nameで取得するか、インスタンス化する/
s/^    $flight = App\\Flight::firstOrNew(\['name' => 'Flight 10'\]);$/    $flight = App\\Flight::firstOrNew(['name' => 'Flight 10']);/
s/^    \/\/ Retrieve by name, or instantiate with the name and delayed attributes\.\.\.$/    \/\/ nameで取得するか、nameとdelayedを含めインスタンス化する/
s/^        \['name' => 'Flight 10'\], \['delayed' => 1\]$/        ['name' => 'Flight 10'], ['delayed' => 1]/
s/^You may also come across situations where you want to update an existing model or create a new model if none exists\. Laravel provides an `updateOrCreate` method to do this in one step\. Like the `firstOrCreate` method, `updateOrCreate` persists the model, so there's no need to call `save()`:$/また、既存のモデルを更新するか、存在しない場合は新しいモデルを作成したい状況も存在します。これを一度に行うために、Laravelでは`updateOrCreate`メソッドを提供しています。`firstOrCreate`メソッドと同様に、`updateOrCreate`もモデルを保存するため、`save()`を呼び出す必要はありません。/
s/^    \/\/ If there's a flight from Oakland to San Diego, set the price to $99\.$/    \/\/ OaklandからSan Diego行きの飛行機があれば、料金へ９９ドルを設定する。/
s/^    \/\/ If no matching model exists, create one\.$/    \/\/ 一致するモデルがなければ、作成する。/
s/^        \['departure' => 'Oakland', 'destination' => 'San Diego'\],$/        ['departure' => 'Oakland', 'destination' => 'San Diego'],/
s/^        \['price' => 99\]$/        ['price' => 99]/
s/^## Deleting Models$/## モデル削除/
s/^To delete a model, call the `delete` method on a model instance:$/モデルを削除するには、モデルに対し`delete`メソッドを呼び出します。/
s/^#### Deleting An Existing Model By Key$/#### キーによる既存モデルの削除/
s/^In the example above, we are retrieving the model from the database before calling the `delete` method\. However, if you know the primary key of the model, you may delete the model without retrieving it\. To do so, call the `destroy` method:$/上記の例では`delete`メソッドを呼び出す前にデータベースからモデルを取得しています。しかしモデルの主キーが分かっている場合なら、モデルを取得せずに削除できます。`destroy`メソッドを呼び出してください。/
s/^    App\\Flight::destroy(\[1, 2, 3\]);$/    App\\Flight::destroy([1, 2, 3]);/
s/^#### Deleting Models By Query$/#### クエリによるモデル削除/
s/^Of course, you may also run a delete statement on a set of models\. In this example, we will delete all flights that are marked as inactive\. Like mass updates, mass deletes will not fire any model events for the models that are deleted:$/もちろん一連のモデルに対する削除文を実行することもできます。次の例はactiveではない印を付けられたフライトを削除しています。複数モデル更新と同様に、複数削除は削除されるモデルに対するモデルイベントを発行しません。/
s/^> {note} When executing a mass delete statement via Eloquent, the `deleting` and `deleted` model events will not be fired for the deleted models\. This is because the models are never actually retrieved when executing the delete statement\.$/> {note} 複数削除文をEloquentにより実行する時、削除対象モデルに対する`deleting`と`deleted`モデルイベントは発行されません。なぜなら、削除文の実行時に、実際にそのモデルが取得されるわけではないためです。/
s/^### Soft Deleting$/### ソフトデリート/
s/^In addition to actually removing records from your database, Eloquent can also "soft delete" models\. When models are soft deleted, they are not actually removed from your database\. Instead, a `deleted_at` attribute is set on the model and inserted into the database\. If a model has a non-null `deleted_at` value, the model has been soft deleted\. To enable soft deletes for a model, use the `Illuminate\\Database\\Eloquent\\SoftDeletes` trait on the model and add the `deleted_at` column to your `$dates` property:$/実際にデータベースからレコードを削除する方法に加え、Eloquentはモデルの「ソフトデリート」も行えます。モデルがソフトデリートされても実際にはデータベースのレコードから削除されません。代わりにそのモデルに`deleted_at`属性がセットされ、データベースへ書き戻されます。モデルの`deleted_at`の値がNULLでない場合、ソフトデリートされています。モデルのソフトデリートを有効にするにはモデルに`Illuminate\\Database\\Eloquent\\SoftDeletes`トレイトを使い、`deleted_at`カラムを`$dates`プロパティに追加します。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be mutated to dates\.$/         * 日付へキャストする属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $dates = \['deleted_at'\];$/        protected $dates = ['deleted_at'];/
s/^Of course, you should add the `deleted_at` column to your database table\. The Laravel \[schema builder\](\/docs\/{{version}}\/migrations) contains a helper method to create this column:$/もちろんデータベーステーブルにも`deleted_at`カラムを追加する必要があります。Laravel[スキーマビルダ](\/docs\/{{version}}\/migrations)にはこのカラムを作成するメソッドが存在しています。/
s/^Now, when you call the `delete` method on the model, the `deleted_at` column will be set to the current date and time\. And, when querying a model that uses soft deletes, the soft deleted models will automatically be excluded from all query results\.$/これでモデルに対し`delete`メソッドを使用すれば、`deleted_at`カラムに現在の時間がセットされます。ソフトデリートされたモデルに対しクエリがあっても、削除済みのモデルはクエリ結果に含まれません。/
s/^To determine if a given model instance has been soft deleted, use the `trashed` method:$/指定されたモデルインスタンスがソフトデリートされているかを確認するには、`trashed`メソッドを使います。/
s/^### Querying Soft Deleted Models$/### ソフトデリート済みモデルのクエリ/
s/^#### Including Soft Deleted Models$/#### ソフトデリート済みモデルも含める/
s/^As noted above, soft deleted models will automatically be excluded from query results\. However, you may force soft deleted models to appear in a result set using the `withTrashed` method on the query:$/前述のようにソフトデリートされたモデルは自動的にクエリの結果から除外されます。しかし結果にソフトデリート済みのモデルを含めるように強制したい場合は、クエリに`withTrashed`メソッドを使ってください。/
s/^The `withTrashed` method may also be used on a \[relationship\](\/docs\/{{version}}\/eloquent-relationships) query:$/`withTrashed`メソッドは[リレーション](\/docs\/{{version}}\/eloquent-relationships)のクエリにも使えます。/
s/^#### Retrieving Only Soft Deleted Models$/#### ソフトデリート済みモデルのみの取得/
s/^The `onlyTrashed` method will retrieve \*\*only\*\* soft deleted models:$/`onlyTrashed`メソッドによりソフトデリート済みのモデル**のみ**を取得できます。/
s/^#### Restoring Soft Deleted Models$/#### ソフトデリートの解除/
s/^Sometimes you may wish to "un-delete" a soft deleted model\. To restore a soft deleted model into an active state, use the `restore` method on a model instance:$/時にはソフトデリート済みのモデルを「未削除」に戻したい場合も起きます。ソフトデリート済みモデルを有効な状態に戻すには、そのモデルインスタンスに対し`restore`メソッドを使ってください。/
s/^You may also use the `restore` method in a query to quickly restore multiple models\. Again, like other "mass" operations, this will not fire any model events for the models that are restored:$/複数のモデルを手っ取り早く未削除に戻すため、クエリに`restore`メソッドを使うこともできます。他の「複数モデル」操作と同様に、この場合も復元されるモデルに対するモデルイベントは、発行されません。/
s/^Like the `withTrashed` method, the `restore` method may also be used on \[relationships\](\/docs\/{{version}}\/eloquent-relationships):$/`withTrashed`メソッドと同様、`restore`メソッドは[リレーション](\/docs\/{{version}}\/eloquent-relationships)に対しても使用できます。/
s/^#### Permanently Deleting Models$/#### モデルの完全削除/
s/^Sometimes you may need to truly remove a model from your database\. To permanently remove a soft deleted model from the database, use the `forceDelete` method:$/データベースからモデルを本当に削除する場合もあるでしょう。データベースからソフトデリート済みモデルを永久に削除するには`forceDelete`メソッドを使います。/
s/^    \/\/ Force deleting a single model instance\.\.\.$/    \/\/ １モデルを完全に削除する/
s/^    \/\/ Force deleting all related models\.\.\.$/    \/\/ 関係するモデルを全部完全に削除する/
s/^## Query Scopes$/## クエリスコープ/
s/^### Global Scopes$/### グローバルスコープ/
s/^Global scopes allow you to add constraints to all queries for a given model\. Laravel's own \[soft delete\](#soft-deleting) functionality utilizes global scopes to only pull "non-deleted" models from the database\. Writing your own global scopes can provide a convenient, easy way to make sure every query for a given model receives certain constraints\.$/グローバルスコープにより、指定したモデルの**全**クエリに対して、制約を付け加えることができます。Laravel自身の[ソフトデリート](#soft-deleting)機能は、「削除されていない」モデルをデータベースから取得するためにグローバルスコープを使用しています。独自のグローバルスコープを書くことにより、特定のモデルのクエリに制約を確実に、簡単に、便利に指定できます。/
s/^#### Writing Global Scopes$/#### グローバルスコープの記述/
s/^Writing a global scope is simple\. Define a class that implements the `Illuminate\\Database\\Eloquent\\Scope` interface\. This interface requires you to implement one method: `apply`\. The `apply` method may add `where` constraints to the query as needed:$/グローバルスコープは簡単に書けます。`Illuminate\\Database\\Eloquent\\Scope`インターフェイスを実装したクラスを定義します。このインターフェイスは、`apply`メソッドだけを実装するように要求しています。`apply`メソッドは必要に応じ、`where`制約を追加します。/
s/^        \/\*\*$/        \/**/
s/^         \* Apply the scope to a given Eloquent query builder\.$/         * Eloquentクエリビルダへ適用するスコープ/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Database\\Eloquent\\Builder  $builder$/         * @param  \\Illuminate\\Database\\Eloquent\\Builder  $builder/
s/^         \* @param  \\Illuminate\\Database\\Eloquent\\Model  $model$/         * @param  \\Illuminate\\Database\\Eloquent\\Model  $model/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^> {tip} If your global scope is adding columns to the select clause of the query, you should use the `addSelect` method instead of `select`\. This will prevent the unintentional replacement of the query's existing select clause\.$/> {tip} クエリのSELECT節にカラムを追加するグローバルスコープの場合は、`select`の代わりに`addSelect`メソッドを使用してください。これにより、クエリの存在するSELECT節を意図せずに置き換えてしまうのを防げます。/
s/^#### Applying Global Scopes$/#### グローバルスコープの適用/
s/^To assign a global scope to a model, you should override a given model's `boot` method and use the `addGlobalScope` method:$/モデルにグローバルスコープを適用するには、そのモデルの`boot`メソッドをオーバライドし、`addGlobalScope`メソッドを呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* The "booting" method of the model\.$/         * モデルの「初期起動」メソッド/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^After adding the scope, a query to `User::all()` will produce the following SQL:$/スコープを追加した後から、`User::all()`は以下のクエリを生成するようになります。/
s/^    select \* from `users` where `age` > 200$/    select * from `users` where `age` > 200/
s/^#### Anonymous Global Scopes$/#### クロージャによるグローバルスコープ/
s/^Eloquent also allows you to define global scopes using Closures, which is particularly useful for simple scopes that do not warrant a separate class:$/Eloquentではクロージャを使ったグローバルスコープも定義できます。独立したクラスを使うだけの理由がない、簡単なスコープを使いたい場合、特に便利です。/
s/^        \/\*\*$/        \/**/
s/^         \* The "booting" method of the model\.$/         * モデルの「初期起動」メソッド/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^#### Removing Global Scopes$/#### グローバルスコープの削除/
s/^If you would like to remove a global scope for a given query, you may use the `withoutGlobalScope` method\. The method accepts the class name of the global scope as its only argument:$/特定のクエリからグローバルスコープを削除した場合は、`withoutGlobalScope`メソッドを使います。唯一の引数として、クラス名を受けます。/
s/^If you would like to remove several or even all of the global scopes, you may use the `withoutGlobalScopes` method:$/複数、もしくは全部のグローバルスコープを削除したい場合も、`withoutGlobalScopes`メソッドが使えます。/
s/^    \/\/ Remove all of the global scopes\.\.\.$/    \/\/ 全グローバルスコープの削除/
s/^    \/\/ Remove some of the global scopes\.\.\.$/    \/\/ いくつかのグローバルスコープの削除/
s/^    User::withoutGlobalScopes(\[$/    User::withoutGlobalScopes([/
s/^    \])->get();$/    ])->get();/
s/^### Local Scopes$/### ローカルスコープ/
s/^Local scopes allow you to define common sets of constraints that you may easily re-use throughout your application\. For example, you may need to frequently retrieve all users that are considered "popular"\. To define a scope, prefix an Eloquent model method with `scope`\.$/ローカルスコープによりアプリケーション全体で簡単に再利用可能な、一連の共通制約を定義できます。例えば、人気のある(popular)ユーザーを全員取得する必要が、しばしばあるとしましょう。スコープを定義するには、`scope`を先頭につけた、Eloquentモデルのメソッドを定義します。/
s/^Scopes should always return a query builder instance:$/スコープはいつもクエリビルダインスタンスを返します。/
s/^        \/\*\*$/        \/**/
s/^         \* Scope a query to only include popular users\.$/         * 人気のあるユーザーだけに限定するクエリスコープ/
s/^         \*$/         */
s/^         \* @param \\Illuminate\\Database\\Eloquent\\Builder $query$/         * @param \\Illuminate\\Database\\Eloquent\\Builder $query/
s/^         \* @return \\Illuminate\\Database\\Eloquent\\Builder$/         * @return \\Illuminate\\Database\\Eloquent\\Builder/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Scope a query to only include active users\.$/         * アクティブなユーザーだけに限定するクエリスコープ/
s/^         \*$/         */
s/^         \* @param \\Illuminate\\Database\\Eloquent\\Builder $query$/         * @param \\Illuminate\\Database\\Eloquent\\Builder $query/
s/^         \* @return \\Illuminate\\Database\\Eloquent\\Builder$/         * @return \\Illuminate\\Database\\Eloquent\\Builder/
s/^         \*\/$/         *\//
s/^#### Utilizing A Local Scope$/#### ローカルスコープの利用/
s/^Once the scope has been defined, you may call the scope methods when querying the model\. However, you should not include the `scope` prefix when calling the method\. You can even chain calls to various scopes, for example:$/スコープが定義できたらモデルのクエリ時にスコープメソッドを呼び出せます。しかし、メソッドを呼び出すときは`scope`プレフィックスをつけないでください。様々なスコープをチェーンでつなぎ呼び出すこともできます。例を見てください。/
s/^#### Dynamic Scopes$/#### 動的スコープ/
s/^Sometimes you may wish to define a scope that accepts parameters\. To get started, just add your additional parameters to your scope\. Scope parameters should be defined after the `$query` parameter:$/引数を受け取るスコープを定義したい場合もあるでしょう。スコープにパラメーターを付けるだけです。スコープパラメーターは`$query`引数の後に定義しする必要があります。/
s/^        \/\*\*$/        \/**/
s/^         \* Scope a query to only include users of a given type\.$/         * 指定したタイプのユーザーだけを含むクエリのスコープ/
s/^         \*$/         */
s/^         \* @param \\Illuminate\\Database\\Eloquent\\Builder $query$/         * @param \\Illuminate\\Database\\Eloquent\\Builder $query/
s/^         \* @param mixed $type$/         * @param mixed $type/
s/^         \* @return \\Illuminate\\Database\\Eloquent\\Builder$/         * @return \\Illuminate\\Database\\Eloquent\\Builder/
s/^         \*\/$/         *\//
s/^Now, you may pass the parameters when calling the scope:$/これでスコープを呼び出すときにパラメーターを渡せます。/
s/^## Comparing Models$/## モデルの比較/
s/^Sometimes you may need to determine if two models are the "same"\. The `is` method may be used to quickly verify two models have same primary key, table, and database connection:$/時に２つのモデルが「同じ」であるかを判定する必要が起きるでしょう。`is`メソッドは２つのモデルが、同じ主キー、テーブル、データベース接続を持っているかを確認します。/
s/^## Events$/## イベント/
s/^Eloquent models fire several events, allowing you to hook into the following points in a model's lifecycle: `retrieved`, `creating`, `created`, `updating`, `updated`, `saving`, `saved`, `deleting`, `deleted`, `restoring`, `restored`\. Events allow you to easily execute code each time a specific model class is saved or updated in the database\.$/Eloquentモデルは多くのイベントを発行します。`creating`、`created`、`updating`、`updated`、`saving`、`saved`、`deleting`、`deleted`、`restoring`、`restored`、`retrieved`のメソッドを利用し、モデルのライフサイクルの様々な時点をフックすることができます。イベントにより特定のモデルクラスが保存されたりアップデートされたりするたび、簡単にコードを実行できるようになります。/
s/^The `retrieved` event will fire when an existing model is retrieved from the database\. When a new model is saved for the first time, the `creating` and `created` events will fire\. If a model already existed in the database and the `save` method is called, the `updating` \/ `updated` events will fire\. However, in both cases, the `saving` \/ `saved` events will fire\.$/`retrieved`は、データベースから既存のモデルを取得した時に発行されます。新しいアイテムが最初に保存される場合に`creating`と`created`イベントが発行されます。既存のアイテムに`save`メソッドが呼び出されると`updating`と`updated`イベントが発行されます。どちらの場合にも`saving`と`saved`イベントは発行されます。/
s/^> {note} When issuing a mass update via Eloquent, the `saved` and `updated` model events will not be fired for the updated models\. This is because the models are never actually retrieved when issuing a mass update\.$/> {note} Eloquentにより複数更新を実行する場合、更新したモデルに対し`saved`と`updated`イベントは発行されません。この理由は複数更新実行時に、モデルが実際には取得されないからです。/
s/^To get started, define a `$dispatchesEvents` property on your Eloquent model that maps various points of the Eloquent model's lifecycle to your own \[event classes\](\/docs\/{{version}}\/events):$/使用するには、Eloquentモデルに`$dispatchesEvents`プロパティを定義します。これにより、Eloquentモデルのライフサイクルの様々な時点を皆さん自身の[イベントクラス](\/docs\/{{version}}\/events)へマップします。/
s/^        \/\*\*$/        \/**/
s/^         \* The event map for the model\.$/         * モデルのイベントマップ/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $dispatchesEvents = \[$/        protected $dispatchesEvents = [/
s/^        \];$/        ];/
s/^### Observers$/### オブザーバ/
s/^#### Defining Observers$/#### オブザーバの定義/
s/^If you are listening for many events on a given model, you may use observers to group all of your listeners into a single class\. Observers classes have method names which reflect the Eloquent events you wish to listen for\. Each of these methods receives the model as their only argument\. The `make:observer` Artisan command is the easiest way to create a new observer class:$/特定のモデルに対し、多くのイベントをリスニングしている場合、全リスナのグループに対するオブザーバを一つのクラスの中で使用できます。オブザーバクラスは、リッスンしたいEloquentイベントに対応する名前のメソッドを持ちます。これらのメソッドは、唯一の引数としてモデルを受け取ります。`make:observer`　Artisanコマンドで、新しいオブザーバクラスを簡単に生成できます。/
s/^This command will place the new observer in your `App\/Observers` directory\. If this directory does not exist, Artisan will create it for you\. Your fresh observer will look like the following:$/このコマンドは、`App\/Observers`ディレクトリへ新しいオブザーバを設置します。このディレクトリが存在しなければ、Artisanが作成します。真新しいオブザーバは、次の通りです。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle to the User "created" event\.$/         * ユーザーの"created"イベントを処理/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Handle the User "updated" event\.$/         * ユーザーの"updated"イベントを処理/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Handle the User "deleted" event\.$/         * ユーザーの"deleted"イベントを処理/
s/^         \*$/         */
s/^         \* @param  \\App\\User  $user$/         * @param  \\App\\User  $user/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^To register an observer, use the `observe` method on the model you wish to observe\. You may register observers in the `boot` method of one of your service providers\. In this example, we'll register the observer in the `AppServiceProvider`:$/オブザーバを登録するには、監視したいモデルに対し、`observe`メソッドを使用します。サービスプロバイダの一つの、`boot`メソッドで登録します。以下の例では、`AppServiceProvider`でオブザーバを登録しています。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションサービスの初期起動処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register the service provider\.$/         * サービスプロバイダの登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
