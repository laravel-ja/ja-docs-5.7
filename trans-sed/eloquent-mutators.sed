s/^# Eloquent: Mutators$/# Eloquent：ミューテタ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Accessors & Mutators\](#accessors-and-mutators)$/- [アクセサとミューテタ](#accessors-and-mutators)/
s/^    - \[Defining An Accessor\](#defining-an-accessor)$/    - [アクセサの定義](#defining-an-accessor)/
s/^    - \[Defining A Mutator\](#defining-a-mutator)$/    - [ミューテタの定義](#defining-a-mutator)/
s/^- \[Date Mutators\](#date-mutators)$/- [日付ミューテタ](#date-mutators)/
s/^- \[Attribute Casting\](#attribute-casting)$/- [属性キャスト](#attribute-casting)/
s/^    - \[Array & JSON Casting\](#array-and-json-casting)$/    - [配列とJSONのキャスト](#array-and-json-casting)/
s/^## Introduction$/## イントロダクション/
s/^Accessors and mutators allow you to format Eloquent attribute values when you retrieve or set them on model instances\. For example, you may want to use the \[Laravel encrypter\](\/docs\/{{version}}\/encryption) to encrypt a value while it is stored in the database, and then automatically decrypt the attribute when you access it on an Eloquent model\.$/アクセサとミューテタはモデルの取得や値を設定するときに、Eloquent属性のフォーマットを可能にします。たとえば[Laravelの暗号化](\/docs\/{{version}}\/encryption)を使いデータベース保存時に値を暗号化し、Eloquentモデルでアクセスする時には自動的にその属性を復元するように設定できます。/
s/^In addition to custom accessors and mutators, Eloquent can also automatically cast date fields to \[Carbon\](https:\/\/github\.com\/briannesbitt\/Carbon) instances or even \[cast text fields to JSON\](#attribute-casting)\.$/カスタムのアクセサやミューテタに加え、Eloquentは日付フールドを自動的に[Carbon](https:\/\/github.com\/briannesbitt\/Carbon)インスタンスにキャストしますし、[テキストフィールドをJSONにキャスト](#attribute-casting)することもできます。/
s/^## Accessors & Mutators$/## アクセサとミューテタ/
s/^### Defining An Accessor$/### アクセサの定義/
s/^To define an accessor, create a `getFooAttribute` method on your model where `Foo` is the "studly" cased name of the column you wish to access\. In this example, we'll define an accessor for the `first_name` attribute\. The accessor will automatically be called by Eloquent when attempting to retrieve the value of the `first_name` attribute:$/アクセサを定義するには、アクセスしたいカラム名が「studlyケース（Upper Camel Case）」で`Foo`の場合、`getFooAttribute`メソッドをモデルに作成します。以下の例では、`first_name`属性のアクセサを定義しています。`first_name`属性の値にアクセスが起きると、Eloquentは自動的にこのアクセサを呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the user's first name\.$/         * ユーザーのファーストネームを取得/
s/^         \*$/         */
s/^         \* @param  string  $value$/         * @param  string  $value/
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^As you can see, the original value of the column is passed to the accessor, allowing you to manipulate and return the value\. To access the value of the accessor, you may access the `first_name` attribute on a model instance:$/ご覧の通り、アクセサにはそのカラムのオリジナルの値が渡されますので、それを加工し値を返します。アクセサの値にアクセスするには、モデルインスタンスの`first_name`属性へアクセスしてください。/
s/^Of course, you may also use accessors to return new, computed values from existing attributes:$/もちろん、既存の属性を元に算出した、新しい値をアクセサを使用し返すことも可能です。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the user's full name\.$/     * ユーザーのフルネーム取得/
s/^     \*$/     */
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^### Defining A Mutator$/### ミューテタの定義/
s/^To define a mutator, define a `setFooAttribute` method on your model where `Foo` is the "studly" cased name of the column you wish to access\. So, again, let's define a mutator for the `first_name` attribute\. This mutator will be automatically called when we attempt to set the value of the `first_name` attribute on the model:$/ミューテタを定義するにはアクセスしたいカラム名が`Foo`の場合、モデルに「ローワーキャメルケース」で`setFooAttribute`メソッドを作成します。今回も`first_name`属性を取り上げ、ミューテタを定義しましょう。このミューテタはモデルの`first_name`属性へ値を設定する時に自動的に呼びだされます。/
s/^        \/\*\*$/        \/**/
s/^         \* Set the user's first name\.$/         * ユーザーのファーストネームを設定/
s/^         \*$/         */
s/^         \* @param  string  $value$/         * @param  string  $value/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            $this->attributes\['first_name'\] = strtolower($value);$/            $this->attributes['first_name'] = strtolower($value);/
s/^The mutator will receive the value that is being set on the attribute, allowing you to manipulate the value and set the manipulated value on the Eloquent model's internal `$attributes` property\. So, for example, if we attempt to set the `first_name` attribute to `Sally`:$/ミューテタは属性に設定しようとしている値を受け取りますのでこれを加工し、Eloquentモデルの`$attributes`内部プロパティへ加工済みの値を設定します。では`Sally`を`first_name`属性へ設定してみましょう。/
s/^In this example, the `setFirstNameAttribute` function will be called with the value `Sally`\. The mutator will then apply the `strtolower` function to the name and set its resulting value in the internal `$attributes` array\.$/上記の場合、`setFirstNameAttribute`メソッドが呼び出され、`Sallay`の値が渡されます。このミューテタはそれから名前に`strtolower`を適用し、その値を`$attributes`内部配列へ設定します。/
s/^## Date Mutators$/## 日付ミューテタ/
s/^By default, Eloquent will convert the `created_at` and `updated_at` columns to instances of \[Carbon\](https:\/\/github\.com\/briannesbitt\/Carbon), which extends the PHP `DateTime` class to provide an assortment of helpful methods\. You may customize which dates are automatically mutated, and even completely disable this mutation, by overriding the `$dates` property of your model:$/デフォルトでEloquentは`created_at`と`updated_at`カラムを[Carbon](https:\/\/github.com\/briannesbitt\/Carbon)インスタンスへ変換します。CarbonはPHPネイティブの`DateTime`クラスを拡張しており、便利なメソッドを色々と提供しています。モデルの`$dates`プロパティをオーバーライドすることで、どのフィールドを自動的に変形するのか、逆にこのミューテタを適用しないのかをカスタマイズできます。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be mutated to dates\.$/         * 日付を変形する属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $dates = \[$/        protected $dates = [/
s/^        \];$/        ];/
s/^When a column is considered a date, you may set its value to a UNIX timestamp, date string (`Y-m-d`), date-time string, and of course a `DateTime` \/ `Carbon` instance, and the date's value will automatically be correctly stored in your database:$/カラムが日付だと推定される場合、値はUnixタイムスタンプ、日付文字列(`Y-m-d`)、日付時間文字列、それにもちろん`DateTime`や`Carbon`インスタンスを値としてセットでき、日付は自動的に正しくデータベースへ保存されます。/
s/^As noted above, when retrieving attributes that are listed in your `$dates` property, they will automatically be cast to \[Carbon\](https:\/\/github\.com\/briannesbitt\/Carbon) instances, allowing you to use any of Carbon's methods on your attributes:$/前記の通り`$dates`プロパティにリストした属性を取得する場合、自動的に[Carbon](https:\/\/github.com\/briannesbitt\/Carbon)インスタンスへキャストされますので、その属性でCarbonのメソッドがどれでも使用できます。/
s/^#### Date Formats$/#### Dateフォーマット/
s/^By default, timestamps are formatted as `'Y-m-d H:i:s'`\. If you need to customize the timestamp format, set the `$dateFormat` property on your model\. This property determines how date attributes are stored in the database, as well as their format when the model is serialized to an array or JSON:$/デフォルトのタイムスタンプフォーマットは`'Y-m-d H:i:s'`です。タイムスタンプフォーマットをカスタマイズする必要があるなら、モデルの`$dateFormat`プロパティを設定してください。このプロパティは日付属性がデータベースにどのように保存されるかと同時に、モデルが配列やJSONにシリアライズされる時のフォーマットを決定します。/
s/^        \/\*\*$/        \/**/
s/^         \* The storage format of the model's date columns\.$/         * モデルの日付カラムの保存形式/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^## Attribute Casting$/## 属性キャスト/
s/^The `$casts` property on your model provides a convenient method of converting attributes to common data types\. The `$casts` property should be an array where the key is the name of the attribute being cast and the value is the type you wish to cast the column to\. The supported cast types are: `integer`, `real`, `float`, `double`, `string`, `boolean`, `object`, `array`, `collection`, `date`, `datetime`, and `timestamp`\.$/モデルの`$casts`プロパティは属性を一般的なデータタイプへキャストする便利な手法を提供します。`$casts`プロパティは配列で、キーにはキャストする属性名を指定し、値にはそのカラムに対してキャストしたいタイプを指定します。サポートしているキャストタイプは`integer`、`real`、`float`、`double`、`string`、`boolean`、`object`、`array`、`collection`、`date`、`datetime`、`timestamp`です。/
s/^For example, let's cast the `is_admin` attribute, which is stored in our database as an integer (`0` or `1`) to a boolean value:$/例としてデータベースには整数の`0`と`1`で保存されている`is_admin`属性を論理値にキャストしてみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be cast to native types\.$/         * ネイティブなタイプへキャストする属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $casts = \[$/        protected $casts = [/
s/^        \];$/        ];/
s/^Now the `is_admin` attribute will always be cast to a boolean when you access it, even if the underlying value is stored in the database as an integer:$/これでデータベースには整数で保存されていても`is_admin`属性にアクセスすれば、いつでも論理値にキャストされます。/
s/^### Array & JSON Casting$/### 配列とJSONのキャスト/
s/^The `array` cast type is particularly useful when working with columns that are stored as serialized JSON\. For example, if your database has a `JSON` or `TEXT` field type that contains serialized JSON, adding the `array` cast to that attribute will automatically deserialize the attribute to a PHP array when you access it on your Eloquent model:$/`array`キャストタイプは、シリアライズされたJSON形式で保存されているカラムを取り扱うときに特に便利です。たとえば、データベースにシリアライズ済みのJSONを持つ`JSON`か`TEXT`フィールドがある場合、その属性に`array`キャストを追加すれば、Eloquentモデルにアクセスされた時点で自動的に非シリアライズ化され、PHPの配列へとキャストされます。/
s/^        \/\*\*$/        \/**/
s/^         \* The attributes that should be cast to native types\.$/         * ネイティブなタイプへキャストする属性/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $casts = \[$/        protected $casts = [/
s/^        \];$/        ];/
s/^Once the cast is defined, you may access the `options` attribute and it will automatically be deserialized from JSON into a PHP array\. When you set the value of the `options` attribute, the given array will automatically be serialized back into JSON for storage:$/キャストを定義後、`options`属性にアクセスすると自動的に非シリアライズされPHP配列になります。`options`属性へ値をセットすると配列は保存のために自動的にJSONへシリアライズされます。/
s/^    $options\['key'\] = 'value';$/    $options['key'] = 'value';/
s/^### Date Casting$/### 日付のキャスト/
s/^When using the `date` or `datetime` cast type, you may specify the date's format\. This format will be used when the \[model is serialized to an array or JSON\](\/docs\/{{version}}\/eloquent-serialization):$/`date`や`datetime`キャストタイプを使用する場合、日付のフォーマットを指定できます。このフォーマットは、[モデルを配列やJSONへシリアライズする](\/docs\/{{version}}\/eloquent-serialization)場合に使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* The attributes that should be cast to native types\.$/     * ネイティブのタイプへキャストする属性/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $casts = \[$/    protected $casts = [/
s/^    \];$/    ];/
