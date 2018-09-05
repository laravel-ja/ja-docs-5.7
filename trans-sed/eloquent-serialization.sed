s/^# Eloquent: Serialization$/# Eloquent：シリアライズ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Serializing Models & Collections\](#serializing-models-and-collections)$/- [モデルとコレクションのシリアライズ](#serializing-models-and-collections)/
s/^    - \[Serializing To Arrays\](#serializing-to-arrays)$/    - [配列へのシリアライズ](#serializing-to-arrays)/
s/^    - \[Serializing To JSON\](#serializing-to-json)$/    - [JSONへのシリアライズ](#serializing-to-json)/
s/^- \[Hiding Attributes From JSON\](#hiding-attributes-from-json)$/- [JSONに含めない属性](#hiding-attributes-from-json)/
s/^- \[Appending Values To JSON\](#appending-values-to-json)$/- [JSONへ値を追加](#appending-values-to-json)/
s/^- \[Date Serialization\](#date-serialization)$/- [日付のシリアライズ](#date-serialization)/
s/^## Introduction$/## イントロダクション/
s/^When building JSON APIs, you will often need to convert your models and relationships to arrays or JSON\. Eloquent includes convenient methods for making these conversions, as well as controlling which attributes are included in your serializations\.$/JSONでAPIを作成する場合にはモデルとリレーションを配列やJSONに変換する必要が良く起きます。そのためEloquentはシリアライズ結果にどの属性を含むかをコントロールしながら、変換を行う便利なメソッドを含んでいます/
s/^## Serializing Models & Collections$/## モデルとコレクションのシリアライズ/
s/^### Serializing To Arrays$/### 配列へのシリアライズ/
s/^To convert a model and its loaded \[relationships\](\/docs\/{{version}}\/eloquent-relationships) to an array, you should use the `toArray` method\. This method is recursive, so all attributes and all relations (including the relations of relations) will be converted to arrays:$/モデルとロード済みの[リレーション](\/docs\/{{version}}\/eloquent-relationships)を配列に変換する場合、`toArray`メソッドを使います。このメソッドは再帰的に動作しますので、全属性と全リレーション（リレーションのリレーションも含む）は配列へ変換されます。/
s/^You may also convert entire \[collections\](\/docs\/{{version}}\/eloquent-collections) of models to arrays:$/モデルの[コレクション](\/docs\/{{version}}\/eloquent-collections)を配列に変換することもできます。/
s/^### Serializing To JSON$/### JSONへのシリアライズ/
s/^To convert a model to JSON, you should use the `toJson` method\. Like `toArray`, the `toJson` method is recursive, so all attributes and relations will be converted to JSON\. You may also specify JSON encoding options \[supported by PHP\](http:\/\/php\.net\/manual\/en\/function\.json-encode\.php):$/モデルをJSONへ変換するには`toJson`メソッドを使います。`toArray`と同様に`toJson`メソッドは再帰的に動作し、全属性と全リレーションをJSONへ変換します。さらに、[PHPによりサポートされている](https:\/\/secure.php.net\/manual\/ja\/function.json-encode.php)JSONエンコーディングオプションも指定できます。/
s/^Alternatively, you may cast a model or collection to a string, which will automatically call the `toJson` method on the model or collection:$/もしくはモデルやコレクションが文字列へキャストされる場合、自動的に`toJson`メソッドが呼び出されます。/
s/^Since models and collections are converted to JSON when cast to a string, you can return Eloquent objects directly from your application's routes or controllers:$/文字列にキャストする場合、モデルやコレクションはJSONに変換されますので、アプリケーションのルートやコントローラから直接Eloquentオブジェクトを返すことができます。/
s/^## Hiding Attributes From JSON$/## JSONに含めない属性/
s/^Sometimes you may wish to limit the attributes, such as passwords, that are included in your model's array or JSON representation\. To do so, add a `$hidden` property to your model:$/モデルから変換する配列やJSONに、パスワードのような属性を含めたくない場合があります。それにはモデルの`$hidden`プロパティに定義を追加してください。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be hidden for arrays\.$/         * 配列に含めない属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $hidden = \['password'\];$/        protected $hidden = ['password'];/
s/^> {note} When hiding relationships, use the relationship's method name\.$/> {note} リレーションを含めない場合は、メソッド名を指定してください。/
s/^Alternatively, you may use the `visible` property to define a white-list of attributes that should be included in your model's array and JSON representation\. All other attributes will be hidden when the model is converted to an array or JSON:$/もしくはモデルを変換後の配列やJSONに含めるべき属性のホワイトリストを定義する、`visible`プロパティを使用してください。モデルが配列やJSONへ変換される場合、その他の属性はすべて、変換結果に含まれません。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be visible in arrays\.$/         * 配列中に含める属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $visible = \['first_name', 'last_name'\];$/        protected $visible = ['first_name', 'last_name'];/
s/^#### Temporarily Modifying Attribute Visibility$/#### プロパティ配列出力管理の一時的変更/
s/^If you would like to make some typically hidden attributes visible on a given model instance, you may use the `makeVisible` method\. The `makeVisible` method returns the model instance for convenient method chaining:$/特定のモデルインスタンスにおいて、通常は配列に含めない属性を含めたい場合は、`makeVisible`メソッドを使います。このメソッドは、メソッドチェーンしやすいようにモデルインスタンスを返します。/
s/^Likewise, if you would like to make some typically visible attributes hidden on a given model instance, you may use the `makeHidden` method\.$/同様に、通常は含める属性を特定のインスタンスで隠したい場合は、`makeHidden`メソッドを使います。/
s/^## Appending Values To JSON$/## JSONへ値を追加/
s/^Occasionally, when casting models to an array or JSON, you may wish to add attributes that do not have a corresponding column in your database\. To do so, first define an \[accessor\](\/docs\/{{version}}\/eloquent-mutators) for the value:$/モデルを配列やJSONへキャストするとき、データベースに対応するカラムがない属性の配列を追加する必要がある場合も時々あります。これを行うには、最初にその値の[アクセサ](\/docs\/{{version}}\/eloquent-mutators)を定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the administrator flag for the user\.$/         * ユーザーの管理者フラグを取得/
s/^         \*$/         */
s/^         \* @return bool$/         * @return bool/
s/^         \*\/$/         *\//
s/^            return $this->attributes\['admin'\] == 'yes';$/            return $this->attributes['admin'] == 'yes';/
s/^After creating the accessor, add the attribute name to the `appends` property on the model\. Note that attribute names are typically referenced in "snake case", even though the accessor is defined using "camel case":$/アクセサができたらモデルの`appends`プロパティへ属性名を追加します。アクセサが「キャメルケース」で定義されていても、属性名は通常通り「スネークケース」でアクセスされることに注目してください。/
s/^        \/\*\*$/        \/**/
s/^         \* The accessors to append to the model's array form\.$/         * モデルの配列形態に追加するアクセサ/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $appends = \['is_admin'\];$/        protected $appends = ['is_admin'];/
s/^Once the attribute has been added to the `appends` list, it will be included in both the model's array and JSON representations\. Attributes in the `appends` array will also respect the `visible` and `hidden` settings configured on the model\.$/`appends`リストに属性を追加すれば、モデルの配列とJSON形式両方に含まれるようになります。`appends`配列の属性もモデルの`visible`と`hidden`の設定に従い動作します。/
s/^#### Appending At Run Time$/#### 実行時の追加/
s/^You may instruct a single model instance to append attributes using the `append` method\. Or, you may use the `setAppends` method to override the entire array of appended properties for a given model instance:$/一つのモデルインスタンスに対し、`append`メソッドにより属性を追加するように指示できます。もしくは、指定したモデルに対して、追加するプロパティの配列全体をオーバーライドするために、`setAppends`メソッドを使用します。/
s/^    return $user->setAppends(\['is_admin'\])->toArray();$/    return $user->setAppends(['is_admin'])->toArray();/
s/^## Date Serialization$/## 日付のシリアライズ/
s/^#### Customizing The Date Format Per Attribute$/#### 属性ごとに日付形式をカスタマイズ/
s/^You may customize the serialization format of individual Eloquent date attributes by specifying the date format in the \[cast declaration\](\/docs\/{{version}}\/eloquent-mutators#attribute-casting):$/[キャスト宣言](\/docs\/{{version}}\/eloquent-mutators#attribute-casting)で日付形式を指定することにより、Eloquent日付属性ごとにシリアライズ形式をカスタマイズできます。/
s/^    protected $casts = \[$/    protected $casts = [/
s/^    \];$/    ];/
s/^#### Global Customization Via Carbon$/#### Carbonによる、グローバルなカスタマイズ/
s/^Laravel extends the \[Carbon\](https:\/\/github\.com\/briannesbitt\/Carbon) date library in order to provide convenient customization of Carbon's JSON serialization format\. To customize how all Carbon dates throughout your application are serialized, use the `Carbon::serializeUsing` method\. The `serializeUsing` method accepts a Closure which returns a string representation of the date for JSON serialization:$/Laravelは[Carbon](https:\/\/github.com\/briannesbitt\/Carbon)（日付と時刻を扱うライブラリ）を拡張しており、JSONへシリアライズするために便利なカスタマイズ方法を提供しています。アプリケーション上のすべての日付と時刻が、Carbonによりどのようにシリアライズされるかをカスタマイズするために、`Carbon::serializeUsing`メソッドを使います。`Carbon::serializeUsing`メソッドは、JSONへのシリアライズのために日付時刻の文字列形式を返すクロージャを引数に取ります。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービスの登録後、起動を行う/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナに結合する/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
