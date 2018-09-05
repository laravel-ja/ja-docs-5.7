s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Queueing\](#queueing)$/    - [キュー](#queueing)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバの事前要件](#driver-prerequisites)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[Configuring Model Indexes\](#configuring-model-indexes)$/    - [モデルインデックスの設定](#configuring-model-indexes)/
s/^    - \[Configuring Searchable Data\](#configuring-searchable-data)$/    - [検索可能データの設定](#configuring-searchable-data)/
s/^    - \[Configuring The Model ID\](#configuring-the-model-id)$/    - [モデルIDの設定](#configuring-the-model-id)/
s/^- \[Indexing\](#indexing)$/- [インデックス](#indexing)/
s/^    - \[Batch Import\](#batch-import)$/    - [バッチ取り込み](#batch-import)/
s/^    - \[Adding Records\](#adding-records)$/    - [レコード追加](#adding-records)/
s/^    - \[Updating Records\](#updating-records)$/    - [レコード更新](#updating-records)/
s/^    - \[Removing Records\](#removing-records)$/    - [レコード削除](#removing-records)/
s/^    - \[Pausing Indexing\](#pausing-indexing)$/    - [インデックスの一時停止](#pausing-indexing)/
s/^    - \[Conditionally Searchable Model Instances\](#conditionally-searchable-model-instances)$/    - [条件付き検索可能モデルインスタンス](#conditionally-searchable-model-instances)/
s/^- \[Searching\](#searching)$/- [検索](#searching)/
s/^    - \[Where Clauses\](#where-clauses)$/    - [Where節](#where-clauses)/
s/^    - \[Pagination\](#pagination)$/    - [ペジネーション](#pagination)/
s/^    - \[Soft Deleting\](#soft-deleting)$/    - [ソフトデリート](#soft-deleting)/
s/^- \[Custom Engines\](#custom-engines)$/- [カスタムエンジン](#custom-engines)/
s/^## Introduction$/## イントロダクション/
s/^Laravel Scout provides a simple, driver based solution for adding full-text search to your \[Eloquent models\](\/docs\/{{version}}\/eloquent)\. Using model observers, Scout will automatically keep your search indexes in sync with your Eloquent records\.$/Laravel Scout（スカウト、斥候）は、[Eloquentモデル](\/docs\/{{version}}\/eloquent)へ、シンプルなドライバベースのフルテキストサーチを提供します。モデルオブサーバを使い、Scoutは検索インデックスを自動的にEloquentレコードと同期します。/
s/^Currently, Scout ships with an \[Algolia\](https:\/\/www\.algolia\.com\/) driver; however, writing custom drivers is simple and you are free to extend Scout with your own search implementations\.$/現在、Scoutは[Algolia](https:\/\/www.algolia.com\/)ドライバを用意しています。カスタムドライバは簡単に書けますので、独自の検索を実装し、Scoutを拡張できます。/
s/^## Installation$/## インストール/
s/^First, install Scout via the Composer package manager:$/最初に、Composerパッケージマネージャを使い、Scoutをインストールします。/
s/^After installing Scout, you should publish the Scout configuration using the `vendor:publish` Artisan command\. This command will publish the `scout\.php` configuration file to your `config` directory:$/Scoutをインストールしたら、`vendor:publish` Artisanコマンドを使用し、Scout設定ファイルを公開します。このコマンドは、`config`ディレクトリ下に`scout.php`設定ファイルを公開します。/
s/^Finally, add the `Laravel\\Scout\\Searchable` trait to the model you would like to make searchable\. This trait will register a model observer to keep the model in sync with your search driver:$/最後に、検索可能にしたいモデルへ、`Laravel\\Scout\\Searchable`トレイトを追加します。このトレイトはモデルオブザーバを登録し、サーチドライバとモデルの同期を取り続けます。/
s/^### Queueing$/### キュー/
s/^While not strictly required to use Scout, you should strongly consider configuring a \[queue driver\](\/docs\/{{version}}\/queues) before using the library\. Running a queue worker will allow Scout to queue all operations that sync your model information to your search indexes, providing much better response times for your application's web interface\.$/Scoutを厳格（リアルタイム）に利用する必要が無いのであれば、このライブラリを使用する前に[キュードライバ](\/docs\/{{version}}\/queues)の設定を考えてみるべきでしょう。キューワーカの実行により、モデルの情報を検索インデックスに同期する全操作をキューイングでき、アプリケーションのWebインターフェイスのレスポンス時間を改善できるでしょう。/
s/^Once you have configured a queue driver, set the value of the `queue` option in your `config\/scout\.php` configuration file to `true`:$/キュードライバを設定したら、`config\/scout.php`設定ファイルの`queue`オプション値を`true`に設定してください。/
s/^### Driver Prerequisites$/### ドライバの事前要件/
s/^When using the Algolia driver, you should configure your Algolia `id` and `secret` credentials in your `config\/scout\.php` configuration file\. Once your credentials have been configured, you will also need to install the Algolia PHP SDK via the Composer package manager:$/Algoliaドライバを使用する場合、Algolia `id`と`secret`接続情報を`config\/scout.php`設定ファイルで設定する必要があります。接続情報を設定し終えたら、Algolia PHP SDKをComposerパッケージマネージャで、インストールする必要があります。/
s/^## Configuration$/## 設定/
s/^### Configuring Model Indexes$/### モデルインデックスの設定/
s/^Each Eloquent model is synced with a given search "index", which contains all of the searchable records for that model\. In other words, you can think of each index like a MySQL table\. By default, each model will be persisted to an index matching the model's typical "table" name\. Typically, this is the plural form of the model name; however, you are free to customize the model's index by overriding the `searchableAs` method on the model:$/各Eloquentモデルは、検索可能レコードすべてを含む、指定された検索「インデックス」と同期されます。言い換えれば、各インデックスはMySQLテーブルのようなものであると、考えられます。デフォルトで、各モデルはそのモデルの典型的な「テーブル」名に一致するインデックスへ保存されます。通常、モデルの複数形ですが、モデルの`searchableAs`メソッドをオーバーライドすることで、このモデルのインデックスを自由にカスタマイズ可能です。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the index name for the model\.$/         * モデルのインデックス名取得/
s/^         \*$/         */
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^### Configuring Searchable Data$/### 検索可能データの設定/
s/^By default, the entire `toArray` form of a given model will be persisted to its search index\. If you would like to customize the data that is synchronized to the search index, you may override the `toSearchableArray` method on the model:$/デフォルトでは、指定されたモデルの`toArray`形態全体が、検索インデックスへ保存されます。検索インデックスと同期するデータをカスタマイズしたい場合は、そのモデルの`toSearchableArray`メソッドをオーバーライドできます。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the indexable data array for the model\.$/         * モデルのインデックス可能なデータ配列の取得/
s/^         \*$/         */
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            \/\/ Customize array\.\.\.$/            \/\/ 配列のカスタマイズ…/
s/^### Configuring The Model ID$/### モデルIDの設定/
s/^By default, Scout will use the primary key of the model as the unique ID stored in the search index\. If you need to customize this behavior, you may override the `getScoutKey` method on the model:$/Scoutはデフォルトとして、モデルの主キーを検索インデックスへ保存するユニークなIDとして使用します。この振る舞いをカスタマイズしたい場合は、モデルの`getScoutKey`メソッドをオーバーライドしてください。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the value used to index the model\.$/         * モデルのインデックスに使用する値の取得/
s/^         \*$/         */
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^## Indexing$/## インデックス/
s/^### Batch Import$/### バッチ取り込み/
s/^If you are installing Scout into an existing project, you may already have database records you need to import into your search driver\. Scout provides an `import` Artisan command that you may use to import all of your existing records into your search indexes:$/既存プロジェクトにScoutをインストールする場合、検索ドライバへ取り込むために必要なデータベースレコードは、既に存在しています。Scoutは既存の全レコードを検索インデックスへ取り込むために使用する、`import` Artisanコマンドを提供しています。/
s/^The `flush` command may be used to remove all of a model's records from your search indexes:$/`flush`コマンドは、検索インデックスからモデルの全レコードを削除するために使用します。/
s/^### Adding Records$/### レコード追加/
s/^Once you have added the `Laravel\\Scout\\Searchable` trait to a model, all you need to do is `save` a model instance and it will automatically be added to your search index\. If you have configured Scout to \[use queues\](#queueing) this operation will be performed in the background by your queue worker:$/モデルに`Laravel\\Scout\\Searchable`トレイトを追加したら、必要なのはモデルインスタンスを`save`することです。これにより自動的に検索インデックスへ追加されます。Scoutで[キューを使用する](#queueing)設定にしている場合は、この操作はキューワーカにより、バックグランドで実行されます。/
s/^    \/\/ \.\.\.$/    \/\/ .../
s/^#### Adding Via Query$/#### クエリによる追加/
s/^If you would like to add a collection of models to your search index via an Eloquent query, you may chain the `searchable` method onto an Eloquent query\. The `searchable` method will \[chunk the results\](\/docs\/{{version}}\/eloquent#chunking-results) of the query and add the records to your search index\. Again, if you have configured Scout to use queues, all of the chunks will be added in the background by your queue workers:$/Eloquentクエリにより、検索インデックスへモデルのコレクションを追加したい場合は、Eloquentクエリに`searchable`メソッドをチェーンします。`searchable`メソッドは、クエリの[結果をチャンクへ分割](\/docs\/{{version}}\/eloquent#chunking-results)し、レコードを検索エンジンへ追加します。この場合も、Scoutでキューを使用する設定をしていれば、キューワーカが全チャンクをバックグランドで追加します。/
s/^    \/\/ Adding via Eloquent query\.\.\.$/    \/\/ Eloquentクエリにより追加/
s/^    \/\/ You may also add records via relationships\.\.\.$/    \/\/ リレーションにより、レコードを追加することもできる/
s/^    \/\/ You may also add records via collections\.\.\.$/    \/\/ コレクションにより、追加することもできる/
s/^The `searchable` method can be considered an "upsert" operation\. In other words, if the model record is already in your index, it will be updated\. If it does not exist in the search index, it will be added to the index\.$/`searchable`メソッドは"upsert(update+insert)"操作と考えられます。言い換えれば、モデルレコードがインデックスへ既に存在していれば、更新されます。検索エンジンに存在していなければ、インデックスへ追加されます。/
s/^### Updating Records$/### レコード更新/
s/^To update a searchable model, you only need to update the model instance's properties and `save` the model to your database\. Scout will automatically persist the changes to your search index:$/検索可能モデルを更新するには、モデルインスタンスのプロパティを更新し、`save`でモデルをデータベースへ保存します。Scoutは自動的に変更を検索インデックスへ保存します。/
s/^    \/\/ Update the order\.\.\.$/    \/\/ 注文を更新…/
s/^You may also use the `searchable` method on an Eloquent query to update a collection of models\. If the models do not exist in your search index, they will be created:$/モデルのコレクションを更新するためにも、Eloquentクエリの`searchable`メソッドを使用します。検索エンジンにモデルが存在していない場合は、作成します。/
s/^    \/\/ Updating via Eloquent query\.\.\.$/    \/\/ Eloquentクエリによる更新/
s/^    \/\/ You may also update via relationships\.\.\.$/    \/\/ リレーションによる更新も可能/
s/^    \/\/ You may also update via collections\.\.\.$/    \/\/ コレクションによる更新も可能/
s/^### Removing Records$/### レコード削除/
s/^To remove a record from your index, `delete` the model from the database\. This form of removal is even compatible with \[soft deleted\](\/docs\/{{version}}\/eloquent#soft-deleting) models:$/インデックスからレコードを削除するには、データベースからモデルを`delete`で削除します。この形態による削除は、モデルの[ソフト削除](\/docs\/{{version}}\/eloquent#soft-deleting)と互換性があります。/
s/^If you do not want to retrieve the model before deleting the record, you may use the `unsearchable` method on an Eloquent query instance or collection:$/レコードを削除する前に、モデルを取得したくない場合は、Eloquentクエリインスタンスかコレクションに対し、`unsearchable`メソッドを使用します。/
s/^    \/\/ Removing via Eloquent query\.\.\.$/    \/\/ Eloquentクエリによる削除/
s/^    \/\/ You may also remove via relationships\.\.\.$/    \/\/ リレーションによる削除も可能/
s/^    \/\/ You may also remove via collections\.\.\.$/    \/\/ コレクションによる削除も可能/
s/^### Pausing Indexing$/### インデックスの一時停止/
s/^Sometimes you may need to perform a batch of Eloquent operations on a model without syncing the model data to your search index\. You may do this using the `withoutSyncingToSearch` method\. This method accepts a single callback which will be immediately executed\. Any model operations that occur within the callback will not be synced to the model's index:$/Eloquentモデルをバッチ処理するが、検索インデックスへモデルデータを同期したくない場合も時々あります。`withoutSyncingToSearch`メソッドを使用することで可能です。このメソッドは、即時に実行されるコールバックを１つ引数に取ります。コールバック中のモデル操作は、インデックスへ同期されることはありません。/
s/^        \/\/ Perform model actions\.\.\.$/        \/\/ モデルアクションの実行…/
s/^### Conditionally Searchable Model Instances$/### 条件付き検索可能モデルインスタンス/
s/^Sometimes you may need to only make a model searchable under certain conditions\. For example, imagine you have `App\\Post` model that may be in one of two states: "draft" and "published"\. You may only want to allow "published" posts to be searchable\. To accomplish this, you may define a `shouldBeSearchable` method on your model:$/特定の条件下でのみ、モデルを検索可能にする必要がある場合も起きるでしょう。たとえば、`App\\Post`モデルが、"draft"か"published"の２つのうち、どちらか１つの状態を取ると想像してください。「公開済み:published」のモデルのみ検索可能にする必要があります。これを実現するには、モデルに`shouldBeSearchable`メソッドを定義してください。/
s/^## Searching$/## 検索/
s/^You may begin searching a model using the `search` method\. The search method accepts a single string that will be used to search your models\. You should then chain the `get` method onto the search query to retrieve the Eloquent models that match the given search query:$/`search`メソッドにより、モデルの検索を開始しましょう。`search`メソッドはモデルを検索するために使用する文字列だけを引数に指定します。`get`メソッドを検索クエリにチェーンし、指定した検索クエリに一致するEloquentモデルを取得できます。/
s/^Since Scout searches return a collection of Eloquent models, you may even return the results directly from a route or controller and they will automatically be converted to JSON:$/Scoutの検索ではEloquentモデルのコレクションが返されるため、ルートやコントローラから直接結果を返せば、自動的にJSONへ変換されます。/
s/^If you would like to get the raw results before they are converted to Eloquent models, you should use the `raw` method:$/Eloquentモデルにより変換される前の、結果をそのまま取得したい場合は、`raw`メソッドを使用してください。/
s/^Search queries will typically be performed on the index specified by the model's \[`searchableAs`\](#configuring-model-indexes) method\. However, you may use the `within` method to specify a custom index that should be searched instead:$/検索クエリは通常、モデルの[`searchableAs`](#configuring-model-indexes)メソッドに指定されたインデックスを使い実行されます。しかし、その代わりに検索に使用するカスタムインデックスを`within`メソッドで使用することもできます。/
s/^### Where Clauses$/### Where節/
s/^Scout allows you to add simple "where" clauses to your search queries\. Currently, these clauses only support basic numeric equality checks, and are primarily useful for scoping search queries by a tenant ID\. Since a search index is not a relational database, more advanced "where" clauses are not currently supported:$/Scoutは検索クエリに対して"WHERE"節を単に追加する方法も提供しています。現在、この節としてサポートしているのは、基本的な数値の一致を確認することだけで、主にIDにより検索クエリを絞り込むために使用します。検索インデックスはリレーショナル・データベースではないため、より上級の"WHERE"節は現在サポートしていません。/
s/^### Pagination$/### ペジネーション/
s/^In addition to retrieving a collection of models, you may paginate your search results using the `paginate` method\. This method will return a `Paginator` instance just as if you had \[paginated a traditional Eloquent query\](\/docs\/{{version}}\/pagination):$/コレクションの取得に付け加え、検索結果を`paginate`メソッドでページづけできます。このメソッドは、`Paginator`インスタンスを返しますので、[Eloquentクエリのペジネーション](\/docs\/{{version}}\/pagination)と同様に取り扱えます。/
s/^You may specify how many models to retrieve per page by passing the amount as the first argument to the `paginate` method:$/`paginate`メソッドの第１引数として、各ページごとに取得したいモデル数を指定します。/
s/^Once you have retrieved the results, you may display the results and render the page links using \[Blade\](\/docs\/{{version}}\/blade) just as if you had paginated a traditional Eloquent query:$/結果が取得できたら、通常のEloquentクエリのペジネーションと同様に、結果を表示し、[Blade](\/docs\/{{version}}\/blade)を使用してページリンクをレンダーできます。/
s/^### Soft Deleting$/### ソフトデリート/
s/^If your indexed models are \[soft deleting\](\/docs\/{{version}}\/eloquent#soft-deleting) and you need to search your soft deleted models, set the `soft_delete` option of the `config\/scout\.php` configuration file to `true`:$/インデックス付きのモデルが[ソフトデリート](\/docs\/{{version}}\/eloquent#soft-deleting)され、ソフトデリート済みのモデルをサーチする必要がある場合、`config\/scout.php`設定ファイルの`soft_delete`オプションを`true`に設定してください。/
s/^When this configuration option is `true`, Scout will not remove soft deleted models from the search index\. Instead, it will set a hidden `__soft_deleted` attribute on the indexed record\. Then, you may use the `withTrashed` or `onlyTrashed` methods to retrieve the soft deleted records when searching:$/この設定オプションを`true`にすると、Scoutは検索インデックスからソフトデリートされたモデルを削除しません。代わりに、インデックスされたレコードへ、隠し`__soft_deleted`属性をセットします。これにより、検索時にソフトデリート済みレコードを取得するために、`withTrashed`や`onlyTrashed`メソッドがつかえます。/
s/^    \/\/ Include trashed records when retrieving results\.\.\.$/    \/\/ 結果の取得時に、削除済みレコードも含める/
s/^    \/\/ Only include trashed records when retrieving results\.\.\.$/    \/\/ 結果の取得時に、削除済みレコードのみを対象とする/
s/^> {tip} When a soft deleted model is permanently deleted using `forceDelete`, Scout will remove it from the search index automatically\.$/> {tip} ソフトデリートされたモデルが、`forceDelete`により完全に削除されると、Scoutは自動的に検索インデックスから削除します。/
s/^## Custom Engines$/## カスタムエンジン/
s/^#### Writing The Engine$/#### エンジンのプログラミング/
s/^If one of the built-in Scout search engines doesn't fit your needs, you may write your own custom engine and register it with Scout\. Your engine should extend the `Laravel\\Scout\\Engines\\Engine` abstract class\. This abstract class contains seven methods your custom engine must implement:$/組み込みのScout検索エンジンがニーズに合わない場合、独自のカスタムエンジンを書き、Scoutへ登録してください。エンジンは、`Laravel\\Scout\\Engines\\Engine`抽象クラスを拡張してください。この抽象クラスは、カスタムエンジンが実装する必要のある、７つのメソッドを持っています。/
s/^You may find it helpful to review the implementations of these methods on the `Laravel\\Scout\\Engines\\AlgoliaEngine` class\. This class will provide you with a good starting point for learning how to implement each of these methods in your own engine\.$/これらのメソッドの実装をレビューするために、`Laravel\\Scout\\Engines\\AlgoliaEngine`クラスが役に立つでしょう。このクラスは独自エンジンで、各メソッドをどのように実装すればよいかの、良い取り掛かりになるでしょう。/
s/^#### Registering The Engine$/#### エンジンの登録/
s/^Once you have written your custom engine, you may register it with Scout using the `extend` method of the Scout engine manager\. You should call the `extend` method from the `boot` method of your `AppServiceProvider` or any other service provider used by your application\. For example, if you have written a `MySqlSearchEngine`, you may register it like so:$/カスタムエンジンを書いたら、Scoutエンジンマネージャの`extend`メソッドを使用し、Scoutへ登録します。`AppServiceProvider`かアプリケーションで使用している他のサービスプロバイダの`boot`メソッドで、`extend`メソッドを呼び出してください。たとえば、`MySqlSearchEngine`を書いた場合、次のように登録します。/
s/^    \/\*\*$/    \/**/
s/^     \* Bootstrap any application services\.$/     * 全アプリケーションサービスの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Once your engine has been registered, you may specify it as your default Scout `driver` in your `config\/scout\.php` configuration file:$/エンジンが登録できたら、Scoutのデフォルト`driver`として、`config\/scout.php`設定ファイルで設定します。/
