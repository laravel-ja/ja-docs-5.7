s/^# Eloquent: Relationships$/# Eloquent：リレーション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Defining Relationships\](#defining-relationships)$/- [リレーションの定義](#defining-relationships)/
s/^    - \[One To One\](#one-to-one)$/    - [１対１](#one-to-one)/
s/^    - \[One To Many\](#one-to-many)$/    - [１対多](#one-to-many)/
s/^    - \[One To Many (Inverse)\](#one-to-many-inverse)$/    - [１対多（逆）](#one-to-many-inverse)/
s/^    - \[Many To Many\](#many-to-many)$/    - [多対多](#many-to-many)/
s/^    - \[Has Many Through\](#has-many-through)$/    - [Has Many Through](#has-many-through)/
s/^    - \[Polymorphic Relations\](#polymorphic-relations)$/    - [ポリモーフィックリレーション](#polymorphic-relations)/
s/^    - \[Many To Many Polymorphic Relations\](#many-to-many-polymorphic-relations)$/    - [ポリモーフィック関係の多対多](#many-to-many-polymorphic-relations)/
s/^- \[Querying Relations\](#querying-relations)$/- [リレーションのクエリ](#querying-relations)/
s/^    - \[Relationship Methods Vs\. Dynamic Properties\](#relationship-methods-vs-dynamic-properties)$/    - [リレーションメソッド 対 動的プロパティ](#relationship-methods-vs-dynamic-properties)/
s/^    - \[Querying Relationship Existence\](#querying-relationship-existence)$/    - [存在するリレーションのクエリ](#querying-relationship-existence)/
s/^    - \[Querying Relationship Absence\](#querying-relationship-absence)$/    - [存在しないリレーションのクエリ](#querying-relationship-absence)/
s/^    - \[Counting Related Models\](#counting-related-models)$/    - [関連するモデルのカウント](#counting-related-models)/
s/^- \[Eager Loading\](#eager-loading)$/- [Eagerローディング](#eager-loading)/
s/^    - \[Constraining Eager Loads\](#constraining-eager-loads)$/    - [制約Eager Loads](#constraining-eager-loads)/
s/^    - \[Lazy Eager Loading\](#lazy-eager-loading)$/    - [遅延Eagerローディング](#lazy-eager-loading)/
s/^- \[Inserting & Updating Related Models\](#inserting-and-updating-related-models)$/- [関連したモデルの挿入／更新](#inserting-and-updating-related-models)/
s/^    - \[The `save` Method\](#the-save-method)$/    - [saveメソッド](#the-save-method)/
s/^    - \[The `create` Method\](#the-create-method)$/    - [createメソッド](#the-create-method)/
s/^    - \[Belongs To Relationships\](#updating-belongs-to-relationships)$/    - [Belongs To関係](#updating-belongs-to-relationships)/
s/^    - \[Many To Many Relationships\](#updating-many-to-many-relationships)$/    - [Many To Many関係](#updating-many-to-many-relationships)/
s/^- \[Touching Parent Timestamps\](#touching-parent-timestamps)$/- [親のタイムスタンプの更新](#touching-parent-timestamps)/
s/^## Introduction$/## イントロダクション/
s/^Database tables are often related to one another\. For example, a blog post may have many comments, or an order could be related to the user who placed it\. Eloquent makes managing and working with these relationships easy, and supports several different types of relationships:$/データベーステーブルは大抵の場合他のものと関連しています。たとえばブログ投稿（ポスト）は多くのコメントを持つか、それを投稿したユーザーと関連しています。Eloquentはそうしたリレーションを簡単に管理し操作できるようにするとともに、様々なタイプのリレーションをサポートしています。/
s/^- \[One To One\](#one-to-one)$/- [１対１](#one-to-one)/
s/^- \[One To Many\](#one-to-many)$/- [１対多](#one-to-many)/
s/^- \[Many To Many\](#many-to-many)$/- [多対多](#many-to-many)/
s/^- \[Has Many Through\](#has-many-through)$/- [Has Many Through](#has-many-through)/
s/^- \[Polymorphic Relations\](#polymorphic-relations)$/- [ポリモーフィックリレーション](#polymorphic-relations)/
s/^- \[Many To Many Polymorphic Relations\](#many-to-many-polymorphic-relations)$/- [ポリモーフィック関係の多対多](#many-to-many-polymorphic-relations)/
s/^## Defining Relationships$/## リレーションの定義/
s/^Eloquent relationships are defined as methods on your Eloquent model classes\. Since, like Eloquent models themselves, relationships also serve as powerful \[query builders\](\/docs\/{{version}}\/queries), defining relationships as methods provides powerful method chaining and querying capabilities\. For example, we may chain additional constraints on this `posts` relationship:$/Eloquentのリレーション（関係）とはEloquentモデルクラスのメソッドとして定義します。Eloquentモデル自身と同様にリレーションはパワフルな[クエリビルダ](\/docs\/{{version}}\/queries)として動作しますので、メソッドとして定義しているリレーションはパワフルなメソッドのチェーンとクエリ能力を提供できるのです。例として、posts関係に追加の制約をチェーンしてみましょう。/
s/^But, before diving too deep into using relationships, let's learn how to define each type\.$/リレーションの詳しい使い方へ進む前に、リレーションの各タイプをどのように定義するかを学びましょう。/
s/^### One To One$/### １対１/
s/^A one-to-one relationship is a very basic relation\. For example, a `User` model might be associated with one `Phone`\. To define this relationship, we place a `phone` method on the `User` model\. The `phone` method should call the `hasOne` method and return its result:$/１対１関係が基本です。たとえば`User`モデルは`Phone`モデル一つと関係しているとしましょう。このリレーションを定義するには、`phone`メソッドを`User`モデルに設置します。`phone`メソッドはベースのEloquentモデルクラスの`hasOne`メソッドを結果として返す必要があります。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the phone record associated with the user\.$/         * ユーザーに関連する電話レコードを取得/
s/^         \*\/$/         *\//
s/^The first argument passed to the `hasOne` method is the name of the related model\. Once the relationship is defined, we may retrieve the related record using Eloquent's dynamic properties\. Dynamic properties allow you to access relationship methods as if they were properties defined on the model:$/`hasOne`メソッドの最初の引数は関係するモデルの名前です。リレーションが定義できたらEloquentの動的プロパティを使って、関係したレコードを取得できます。動的プロパティによりモデル上のプロパティのようにリレーションメソッドにアクセスできます。/
s/^Eloquent determines the foreign key of the relationship based on the model name\. In this case, the `Phone` model is automatically assumed to have a `user_id` foreign key\. If you wish to override this convention, you may pass a second argument to the `hasOne` method:$/Eloquentはリレーションの外部キーがモデル名に基づいていると仮定します。この場合自動的に`Phone`モデルは`user_id`外部キーを持っていると仮定します。この規約をオーバーライドしたければ、`hasOne`メソッドの第２引数を指定してください。/
s/^Additionally, Eloquent assumes that the foreign key should have a value matching the `id` (or the custom `$primaryKey`) column of the parent\. In other words, Eloquent will look for the value of the user's `id` column in the `user_id` column of the `Phone` record\. If you would like the relationship to use a value other than `id`, you may pass a third argument to the `hasOne` method specifying your custom key:$/Eloquentは親の`id`カラム（もしくはカスタム`$primaryKey`）と一致する外部キーの値を持っていると仮定します。言い換えればEloquentはユーザーの`id`カラムの値を`Phone`レコードの`user_id`カラムに存在しないか探します。リレーションで他の`id`を使いたければ、`hadOne`メソッドの第３引数でカスタムキーを指定してください。/
s/^#### Defining The Inverse Of The Relationship$/#### 逆の関係の定義/
s/^So, we can access the `Phone` model from our `User`\. Now, let's define a relationship on the `Phone` model that will let us access the `User` that owns the phone\. We can define the inverse of a `hasOne` relationship using the `belongsTo` method:$/これで`User`から`Phone`モデルへアクセスできるようになりました。今度は`Phone`モデルからそれを所有している`User`へアクセスするリレーションを定義しましょう。`hasOne`の逆のリレーションを定義するには、`belongsTo`メソッドを使います。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the user that owns the phone\.$/         * この電話を所有するUserを取得/
s/^         \*\/$/         *\//
s/^In the example above, Eloquent will try to match the `user_id` from the `Phone` model to an `id` on the `User` model\. Eloquent determines the default foreign key name by examining the name of the relationship method and suffixing the method name with `_id`\. However, if the foreign key on the `Phone` model is not `user_id`, you may pass a custom key name as the second argument to the `belongsTo` method:$/上の例でEloquentは`Phone`モデルの`user_id`に一致する`id`を持つ`User`モデルを見つけようとします。Eloquentはリレーションメソッド名に`_id`のサフィックスを付けた名前をデフォルトの外部キー名とします。しかし`Phone`モデルの外部キーが`user_id`でなければ、`belongsTo`メソッドの第２引数にカスタムキー名を渡してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the user that owns the phone\.$/     * この電話を所有するUserを取得/
s/^     \*\/$/     *\//
s/^If your parent model does not use `id` as its primary key, or you wish to join the child model to a different column, you may pass a third argument to the `belongsTo` method specifying your parent table's custom key:$/親のモデルの主キーが`id`でない、もしくは子のモデルと違ったカラムで紐付けたい場合は、親テーブルのカスタムキー名を`belongsTo`メソッドの第３引数に渡してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the user that owns the phone\.$/     * この電話を所有するUserを取得/
s/^     \*\/$/     *\//
s/^### One To Many$/### １対多/
s/^A "one-to-many" relationship is used to define relationships where a single model owns any amount of other models\. For example, a blog post may have an infinite number of comments\. Like all other Eloquent relationships, one-to-many relationships are defined by placing a function on your Eloquent model:$/「１対多」リレーションは一つのモデルが他の多くのモデルを所有する関係を定義するために使います。ブログポストが多くのコメントを持つのが一例です。他のEloquentリレーションと同様に１対多リレーションはEloquentモデルの関数として定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the comments for the blog post\.$/         * ブログポストのコメントを取得/
s/^         \*\/$/         *\//
s/^Remember, Eloquent will automatically determine the proper foreign key column on the `Comment` model\. By convention, Eloquent will take the "snake case" name of the owning model and suffix it with `_id`\. So, for this example, Eloquent will assume the foreign key on the `Comment` model is `post_id`\.$/Eloquentは、`Comment`モデルに対する外部キーを自動的に決めることを心に留めてください。規約によりEloquentは、自分自身のモデル名の「スネークケース」に`_id`のサフィックスをつけた名前と想定します。ですから今回の例でEloquentは、`Comment`モデルの外部キーを`post_id`であると想定します。/
s/^Once the relationship has been defined, we can access the collection of comments by accessing the `comments` property\. Remember, since Eloquent provides "dynamic properties", we can access relationship methods as if they were defined as properties on the model:$/リレーションを定義したら、`comments`プロパティによりコメントのコレクションへアクセスできます。Eloquentは「動的プロパティ」を提供しているので、モデルのプロパティとして定義したリレーションメソッドへアクセスできることを覚えておきましょう。/
s/^Of course, since all relationships also serve as query builders, you can add further constraints to which comments are retrieved by calling the `comments` method and continuing to chain conditions onto the query:$/もちろん、全リレーションはクエリビルダとしても働きますから、`comments`メソッドを呼び出すときにどのコメントを取得するのかという制約を追加でき、クエリに条件を続けてチェーンでつなげます。/
s/^Like the `hasOne` method, you may also override the foreign and local keys by passing additional arguments to the `hasMany` method:$/`hasOne`メソッドと同様に、外部キーとローカルキーを`hasMany`メソッドに追加の引数として渡すことでオーバーライドできます。/
s/^### One To Many (Inverse)$/### １対多 (Inverse)/
s/^Now that we can access all of a post's comments, let's define a relationship to allow a comment to access its parent post\. To define the inverse of a `hasMany` relationship, define a relationship function on the child model which calls the `belongsTo` method:$/これでポストの全コメントにアクセスできます。今度はコメントから親のポストへアクセスできるようにしましょう。`hasMany`リレーションの逆を定義するには子のモデルで`belongsTo`メソッドによりリレーション関数を定義します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the post that owns the comment\.$/         * このコメントを所有するポストを取得/
s/^         \*\/$/         *\//
s/^Once the relationship has been defined, we can retrieve the `Post` model for a `Comment` by accessing the `post` "dynamic property":$/リレーションが定義できたら`Comment`の`Post`モデルを`post`動的プロパティにより取得しましょう。/
s/^In the example above, Eloquent will try to match the `post_id` from the `Comment` model to an `id` on the `Post` model\. Eloquent determines the default foreign key name by examining the name of the relationship method and suffixing the method name with a `_` followed by the name of the primary key column\. However, if the foreign key on the `Comment` model is not `post_id`, you may pass a custom key name as the second argument to the `belongsTo` method:$/前の例でEloquentは`Comment`モデルの`post_id`と一致する`id`の`Post`モデルを見つけようとします。Eloquentはリレーションメソッドの名前として、`_`に続けて主キーのカラム名をサフィックスとして付けた名前をデフォルトの外部キーとします。しかし`Comment`モデルの外部キーが`post_id`でなければ、`belongsTo`メソッドの第２引数にカスタムキー名を指定してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the post that owns the comment\.$/     * このコメントを所有するポストを取得/
s/^     \*\/$/     *\//
s/^If your parent model does not use `id` as its primary key, or you wish to join the child model to a different column, you may pass a third argument to the `belongsTo` method specifying your parent table's custom key:$/親のモデルの主キーが`id`でない、もしくは子のモデルと違ったカラムで紐付けたい場合は、親テーブルのカスタムキー名を`belongsTo`メソッドの第３引数に渡してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the post that owns the comment\.$/     * このコメントを所有するポストを取得/
s/^     \*\/$/     *\//
s/^### Many To Many$/### 多対多/
s/^Many-to-many relations are slightly more complicated than `hasOne` and `hasMany` relationships\. An example of such a relationship is a user with many roles, where the roles are also shared by other users\. For example, many users may have the role of "Admin"\. To define this relationship, three database tables are needed: `users`, `roles`, and `role_user`\. The `role_user` table is derived from the alphabetical order of the related model names, and contains the `user_id` and `role_id` columns\.$/多対多の関係は`hasOne`と`hasMany`リレーションよりも多少複雑な関係です。このような関係として、ユーザー(user)が多くの役目(roles)を持ち、役目(role)も大勢のユーザー(users)に共有されるという例が挙げられます。たとえば多くのユーザーは"管理者"の役目を持っています。`users`、`roles`、`role_user`の３テーブルがこの関係には必要です。`role_user`テーブルは関係するモデル名をアルファベット順に並べたもので、`user_id`と`role_id`を持つ必要があります。/
s/^Many-to-many relationships are defined by writing a method that returns the result of the `belongsToMany` method\. For example, let's define the `roles` method on our `User` model:$/多対多リレーションは`belongsToMany`メソッド呼び出しを記述することで定義します。例として`User`モデルに`roles`メソッドを定義してみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The roles that belong to the user\.$/         * userに所属する役目を取得/
s/^         \*\/$/         *\//
s/^Once the relationship is defined, you may access the user's roles using the `roles` dynamic property:$/リレーションが定義できたら、`roles`動的プロパティを使いユーザーの役割にアクセスできます。/
s/^Of course, like all other relationship types, you may call the `roles` method to continue chaining query constraints onto the relationship:$/もちろん他のリレーションタイプと同様にリレーションを制約するクエリを`roles`に続けてチェーンすることができます。/
s/^As mentioned previously, to determine the table name of the relationship's joining table, Eloquent will join the two related model names in alphabetical order\. However, you are free to override this convention\. You may do so by passing a second argument to the `belongsToMany` method:$/前に述べたようにリレーションの結合テーブルの名前を決めるため、Eloquentは２つのモデル名をアルファベット順に結合します。しかしこの規約は自由にオーバーライドできます。`belongsToMany`メソッドの第２引数に渡してください。/
s/^In addition to customizing the name of the joining table, you may also customize the column names of the keys on the table by passing additional arguments to the `belongsToMany` method\. The third argument is the foreign key name of the model on which you are defining the relationship, while the fourth argument is the foreign key name of the model that you are joining to:$/結合テーブル名のカスタマイズに加えテーブルのキーカラム名をカスタマイズするには、`belongsToMany`メソッドに追加の引数を渡してください。第３引数はリレーションを定義しているモデルの外部キー名で、一方の第４引数には結合するモデルの外部キー名を渡します。/
s/^#### Defining The Inverse Of The Relationship$/#### 逆の関係の定義/
s/^To define the inverse of a many-to-many relationship, you place another call to `belongsToMany` on your related model\. To continue our user roles example, let's define the `users` method on the `Role` model:$/多対多のリレーションの逆リレーションを定義するには、関連するモデルで`belongsToMany`を呼び出してください。引き続きユーザーと役割の例を続けますが`Role`モデルで`users`メソッドを定義してみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The users that belong to the role\.$/         * 役目を所有するユーザー/
s/^         \*\/$/         *\//
s/^As you can see, the relationship is defined exactly the same as its `User` counterpart, with the exception of referencing the `App\\User` model\. Since we're reusing the `belongsToMany` method, all of the usual table and key customization options are available when defining the inverse of many-to-many relationships\.$/ご覧の通り一方の`User`と全く同じ定義のリレーションです。違いは`App\\User`モデルを参照していることです。同じ`belongsToMany`メソッドを使っているのですから、通常のテーブル名、キーカスタマイズのオプションは逆の多対多リレーションを定義するときでも全て使用できます。/
s/^#### Retrieving Intermediate Table Columns$/#### 中間テーブルのカラム取得/
s/^As you have already learned, working with many-to-many relations requires the presence of an intermediate table\. Eloquent provides some very helpful ways of interacting with this table\. For example, let's assume our `User` object has many `Role` objects that it is related to\. After accessing this relationship, we may access the intermediate table using the `pivot` attribute on the models:$/既に学んだように、多対多リレーションの操作には中間テーブルが必要です。Eloquentこのテーブルを操作する便利な手段を用意しています。例として`User`オブジェクトが関連する`Role`オブジェクトを持っているとしましょう。このリレーションへアクセスした後、モデルの`pivot`属性を使い中間テーブルにアクセスできます。/
s/^Notice that each `Role` model we retrieve is automatically assigned a `pivot` attribute\. This attribute contains a model representing the intermediate table, and may be used like any other Eloquent model\.$/取得したそれぞれの`Role`モデルは`pivot`属性と自動的に結合されます。この属性は中間テーブルを表すモデルを含んでおり、他のElouquentモデルと同様に使用できます。/
s/^By default, only the model keys will be present on the `pivot` object\. If your pivot table contains extra attributes, you must specify them when defining the relationship:$/デフォルトでモデルキーは`pivot`オブジェクト上のものを表しています。中間テーブルがその他の属性を持っている場合、リレーションを定義するときに指定できます。/
s/^If you want your pivot table to have automatically maintained `created_at` and `updated_at` timestamps, use the `withTimestamps` method on the relationship definition:$/もし中間テーブルの`created_at`、`updated_at`タイムスタンプを自動的に保守したい場合は、`withTimestamps`メソッドをリレーション定義に付けてください。/
s/^#### Customizing The `pivot` Attribute Name$/#### `pivot`属性の名前変更/
s/^As noted earlier, attributes from the intermediate table may be accessed on models using the `pivot` attribute\. However, you are free to customize the name of this attribute to better reflect its purpose within your application\.$/前述の通り、中間テーブルには`pivot`属性を使ってアクセスできます。その際、アプリケーションの目的をより良く反映するために`pivot`属性の名前を変更することができます。/
s/^For example, if your application contains users that may subscribe to podcasts, you probably have a many-to-many relationship between users and podcasts\. If this is the case, you may wish to rename your intermediate table accessor to `subscription` instead of `pivot`\. This can be done using the `as` method when defining the relationship:$/たとえばユーザーがポッドキャストを購読するようなアプリケーションでは、ユーザーとポッドキャストが多対多の関係となっていることがあります。その場合、中間テーブルへアクセスする際の`pivot`属性の名前を`subscription`に変更したいかもしれません。これはリレーションを定義する際に、`as`メソッドを使うことで実現できます。/
s/^Once this is done, you may access the intermediate table data using the customized name:$/これにより、変更した名前で中間テーブルへアクセスできます。/
s/^#### Filtering Relationships Via Intermediate Table Columns$/#### 中間テーブルのカラムを使った関係のフィルタリング/
s/^You can also filter the results returned by `belongsToMany` using the `wherePivot` and `wherePivotIn` methods when defining the relationship:$/リレーション定義時に、`wherePivot`や`wherePivotIn`を使い、`belongsToMany`が返す結果をフィルタリングすることも可能です。/
s/^    return $this->belongsToMany('App\\Role')->wherePivotIn('priority', \[1, 2\]);$/    return $this->belongsToMany('App\\Role')->wherePivotIn('priority', [1, 2]);/
s/^#### Defining Custom Intermediate Table Models$/#### カスタム中間テーブルモデルの定義/
s/^If you would like to define a custom model to represent the intermediate table of your relationship, you may call the `using` method when defining the relationship\. Custom many-to-many pivot models should extend the `Illuminate\\Database\\Eloquent\\Relations\\Pivot` class while custom polymorphic many-to-many pivot models should extend the `Illuminate\\Database\\Eloquent\\Relations\\MorphPivot` class\. For example, we may define a `Role` which uses a custom `UserRole` pivot model:$/リレーションの中間テーブルを表す、カスタムモデルを定義したい場合は、リレーション定義で`using`メソッドを呼び出します。カスタム多対多ピボットモデルは、`Illuminate\\Database\\Eloquent\\Relations\\Pivot`クラス、一方のカスタムポリモーフィック多対多ピボットモデルは、`Illuminate\\Database\\Eloquent\\Relations\\MorphPivot`クラスを拡張する必要があります。例として、カスタム`UserRole`ピボットモデルを使用する、`Role`を定義してみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* The users that belong to the role\.$/         * 役目を所有するユーザー/
s/^         \*\/$/         *\//
s/^When defining the `UserRole` model, we will extend the `Pivot` class:$/`UserRole`定義時に、`Pivot`クラスを拡張します。/
s/^The "has-many-through" relationship provides a convenient shortcut for accessing distant relations via an intermediate relation\. For example, a `Country` model might have many `Post` models through an intermediate `User` model\. In this example, you could easily gather all blog posts for a given country\. Let's look at the tables required to define this relationship:$/has many through（〜経由の多対多）リレーションは、仲介するテーブルを通して直接関連付けしていないテーブルへアクセスするための、便利な近道を提供します。たとえば`Country`モデルは`Users`モデルを経由して、多くの`Posts`を所有することでしょう。テーブルは以下のような構成になります。/
s/^Though `posts` does not contain a `country_id` column, the `hasManyThrough` relation provides access to a country's posts via `$country->posts`\. To perform this query, Eloquent inspects the `country_id` on the intermediate `users` table\. After finding the matching user IDs, they are used to query the `posts` table\.$/たとえ`posts`テーブルに`country_id`が存在しなくても、`hasManyThrough`リレーションではCountryのPostへ`$country->posts`によりアクセスできます。このクエリを行うためにEloquentは仲介する`users`テーブルの`country_id`を調べます。一致するユーザーIDが存在していたら`posts`テーブルのクエリに利用します。/
s/^Now that we have examined the table structure for the relationship, let's define it on the `Country` model:$/ではリレーションのテーブル構造を理解したところで、`Country`モデルを定義しましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the posts for the country\.$/         * この国の全ポストを取得/
s/^         \*\/$/         *\//
s/^The first argument passed to the `hasManyThrough` method is the name of the final model we wish to access, while the second argument is the name of the intermediate model\.$/`hasManyThrough`メソッドの第一引数は最終的にアクセスしたいモデル名で、第２引数は仲介するモデル名です。/
s/^Typical Eloquent foreign key conventions will be used when performing the relationship's queries\. If you would like to customize the keys of the relationship, you may pass them as the third and fourth arguments to the `hasManyThrough` method\. The third argument is the name of the foreign key on the intermediate model\. The fourth argument is the name of the foreign key on the final model\. The fifth argument is the local key, while the sixth argument is the local key of the intermediate model:$/リレーションのクエリ実行時は、典型的なEloquentの外部キー規約が使用されます。リレーションのキーをカスタマイズしたい場合は、`hasManyThrough`メソッドの第３引数と、第４引数を指定してください。第３引数は仲介モデルの外部キー名、第４引数は最終的なモデルの外部キー名です。第５引数はローカルキーで、第６引数は仲介モデルのローカルキーです。/
s/^                'country_id', \/\/ Foreign key on users table\.\.\.$/                'country_id', \/\/ usersテーブルの外部キー/
s/^                'user_id', \/\/ Foreign key on posts table\.\.\.$/                'user_id', \/\/ postsテーブルの外部キー/
s/^                'id', \/\/ Local key on countries table\.\.\.$/                'id', \/\/ countriesテーブルのローカルキー/
s/^                'id' \/\/ Local key on users table\.\.\.$/                'id' \/\/ usersテーブルのローカルキー/
s/^### Polymorphic Relations$/### ポリモーフィック関係/
s/^#### Table Structure$/#### テーブル構造/
s/^Polymorphic relations allow a model to belong to more than one other model on a single association\. For example, imagine users of your application can "comment" on both posts and videos\. Using polymorphic relationships, you can use a single `comments` table for both of these scenarios\. First, let's examine the table structure required to build this relationship:$/ポリモーフィック（Polymorphic：多様性）リレーションは一つの関係で、複数のモデルに所属させます。たとえば、アプリケーションのユーザーがポスト(post:記事)と動画(video)に「コメント(comment)」できるとしましょう。最初にこのリレーションを構築するために必要な構造を確認してください。/
s/^Two important columns to note are the `commentable_id` and `commentable_type` columns on the `comments` table\. The `commentable_id` column will contain the ID value of the post or video, while the `commentable_type` column will contain the class name of the owning model\. The `commentable_type` column is how the ORM determines which "type" of owning model to return when accessing the `commentable` relation\.$/`comments`テーブルには２つの重要な`commentable_id`と`commentable_type`カラムがあります。`commentable_id`カラムはポストかビデオのID値を保持します。一方の`commentable_type`カラムには、所有しているモデルのクラス名が保存されます。`commentable`関係にアクセスされた時に、所有してるのはどちらの「タイプ」のモデルなのか、ORMが決めるために`commentable_type`カラムが存在しています。/
s/^#### Model Structure$/#### モデル構造/
s/^Next, let's examine the model definitions needed to build this relationship:$/次にこのリレーションを構築するために必要なモデル定義を見てみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the owning commentable models\.$/         * 所有しているcommentableモデルの全取得/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the post's comments\.$/         * 全ポストコメントの取得/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the video's comments\.$/         * 全ビデオコメントの取得/
s/^         \*\/$/         *\//
s/^#### Retrieving Polymorphic Relations$/#### ポリモーフィックリレーションの取得/
s/^Once your database table and models are defined, you may access the relationships via your models\. For example, to access all of the comments for a post, we can use the `comments` dynamic property:$/データベーステーブルとモデルが定義できたら、モデルを使いリレーションにアクセスできます。たとえば、あるポストの全コメントへアクセスするには、`comments`動的プロパティを使います。/
s/^You may also retrieve the owner of a polymorphic relation from the polymorphic model by accessing the name of the method that performs the call to `morphTo`\. In our case, that is the `commentable` method on the `Comment` model\. So, we will access that method as a dynamic property:$/`morphTo`の呼び出しを行うメソッドの名前にアクセスすることにより、ポリモーフィック関連の所有者を取得することもできます。この例の場合、`Comment`モデルの`commentable`メソッドです。では、このメソッドに動的プロパティによりアクセスしましょう。/
s/^The `commentable` relation on the `Comment` model will return either a `Post` or `Video` instance, depending on which type of model owns the comment\.$/`Comment`モデルの`commentable`関係は、`Post`か`video`インスタンスのどちらかを返します。そのコメントを所有しているモデルのタイプにより決まります。/
s/^#### Custom Polymorphic Types$/#### カスタムポリモーフィックリレーション/
s/^By default, Laravel will use the fully qualified class name to store the type of the related model\. For instance, given the example above where a `Comment` may belong to a `Post` or a `Video`, the default `commentable_type` would be either `App\\Post` or `App\\Video`, respectively\. However, you may wish to decouple your database from your application's internal structure\. In that case, you may define a relationship "morph map" to instruct Eloquent to use a custom name for each model instead of the class name:$/関連付けられたモデルのタイプを保存するため、デフォルトでLaravelははっきりと識別できるクラス名を使います。たとえば上記の例で、`Comment`が`Post`か`Video`に所属しているとすると、`commentable_type`はデフォルトで`App\\Post`か`App\\Video`のどちらかになるでしょう。しかし、データーベースをアプリケーションの内部構造と分離したい場合もあります。その場合、リレーションの"morph map"を定義し、クラス名の代わりに使用する、各モデルに関連づいたテーブル名をEloquentへ指示することができます。/
s/^    Relation::morphMap(\[$/    Relation::morphMap([/
s/^    \]);$/    ]);/
s/^You may register the `morphMap` in the `boot` function of your `AppServiceProvider` or create a separate service provider if you wish\.$/`morphMap`は、`AppServiceProvider`の`boot`関数で登録できますし、お望みであれば独立したサービスプロバイダを作成し、その中で行うこともできます。/
s/^### Many To Many Polymorphic Relations$/### ポリモーフィック関係の多対多/
s/^#### Table Structure$/#### テーブル構造/
s/^In addition to traditional polymorphic relations, you may also define "many-to-many" polymorphic relations\. For example, a blog `Post` and `Video` model could share a polymorphic relation to a `Tag` model\. Using a many-to-many polymorphic relation allows you to have a single list of unique tags that are shared across blog posts and videos\. First, let's examine the table structure:$/伝統的なポリモーフィックリレーションに加え、「多対多」のポリモーフィックリレーションも指定することができます。たとえばブログの`Post`と`Video`モデルは`Tag`モデルに対するポリモーフィックリレーションを共有できます。多対多ポリモーフィックリレーションを使うことで、ブログポストとビデオの両者に所有されている一意のタグのリストを取得できます。最初にテーブル構造を確認しましょう。/
s/^#### Model Structure$/#### モデル構造/
s/^Next, we're ready to define the relationships on the model\. The `Post` and `Video` models will both have a `tags` method that calls the `morphToMany` method on the base Eloquent class:$/次にモデルにその関係を用意しましょう。`Post`と`Video`モデルは両方ともベースのEloquentクラスの`morphToMany`メソッドを呼び出す`tags`メソッドを持っています。/
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the tags for the post\.$/         * ポストに対する全タグを取得/
s/^         \*\/$/         *\//
s/^#### Defining The Inverse Of The Relationship$/#### 逆の関係の定義/
s/^Next, on the `Tag` model, you should define a method for each of its related models\. So, for this example, we will define a `posts` method and a `videos` method:$/次に`Tag`モデルで関係する各モデルに対するメソッドを定義する必要があります。たとえばこの例であれば、`posts`メソッドと`videos`メソッドを用意します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the posts that are assigned this tag\.$/         * このタグをつけた全ポストの取得/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the videos that are assigned this tag\.$/         * このタグをつけた全ビデオの取得/
s/^         \*\/$/         *\//
s/^#### Retrieving The Relationship$/#### リレーションの取得/
s/^Once your database table and models are defined, you may access the relationships via your models\. For example, to access all of the tags for a post, you can use the `tags` dynamic property:$/データベーステーブルとモデルが定義できたら、モデルを使いリレーションにアクセスできます。たとえば、ポストに対する全タグへアクセスするには、単に`tags`動的プロパティを使用します。/
s/^You may also retrieve the owner of a polymorphic relation from the polymorphic model by accessing the name of the method that performs the call to `morphedByMany`\. In our case, that is the `posts` or `videos` methods on the `Tag` model\. So, you will access those methods as dynamic properties:$/さらに`morphedByMany`を呼び出すメソッドの名前にアクセスし、ポリモーフィックモデルからポリモーフィックリレーションの所有者を取得することも可能です。この例の場合`Tag`モデルの`posts`と`videos`メソッドです。では動的プロパティとしてメソッドを呼び出しましょう。/
s/^## Querying Relations$/## リレーションのクエリ/
s/^Since all types of Eloquent relationships are defined via methods, you may call those methods to obtain an instance of the relationship without actually executing the relationship queries\. In addition, all types of Eloquent relationships also serve as \[query builders\](\/docs\/{{version}}\/queries), allowing you to continue to chain constraints onto the relationship query before finally executing the SQL against your database\.$/Eloquentリレーションは全てメソッドとして定義されているため、リレーションのクエリを実際に記述しなくても、メソッドを呼び出すことで、そのリレーションのインスタンスを取得できます。さらに、すべてのタイプのEloquentリレーションもクエリビルダとしても動作し、データベースに対してSQLが最終的に実行される前に、そのリレーションのクエリをチェーンで続けて記述できます。/
s/^For example, imagine a blog system in which a `User` model has many associated `Post` models:$/たとえばブログシステムで関連した多くの`Post`モデルを持つ`User`モデルを想像してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Get all of the posts for the user\.$/         * ユーザーの全ポストの取得/
s/^         \*\/$/         *\//
s/^You may query the `posts` relationship and add additional constraints to the relationship like so:$/次のように`posts`リレーションのクエリに追加の制約を付け加えられます。/
s/^You are able to use any of the \[query builder\](\/docs\/{{version}}\/queries) methods on the relationship, so be sure to explore the query builder documentation to learn about all of the methods that are available to you\.$/すべての[クエリビルダ](\/docs\/{{version}}\/queries)メソッドをリレーションで使用することも可能です。ですから、提供している全メソッドを学ぶために、クエリビルダのドキュメントを研究してください。/
s/^### Relationship Methods Vs\. Dynamic Properties$/### リレーションメソッド 対 動的プロパティ/
s/^If you do not need to add additional constraints to an Eloquent relationship query, you may access the relationship as if it were a property\. For example, continuing to use our `User` and `Post` example models, we may access all of a user's posts like so:$/リレーションクエリに追加の制約を加える必要がなければ、そのリレーションへプロパティとしてアクセスできます。`User`と`Post`の例を続けるとして、ユーザーの全ポストには次のようにアクセスできます。/
s/^Dynamic properties are "lazy loading", meaning they will only load their relationship data when you actually access them\. Because of this, developers often use \[eager loading\](#eager-loading) to pre-load relationships they know will be accessed after loading the model\. Eager loading provides a significant reduction in SQL queries that must be executed to load a model's relations\.$/動的プロパティは「遅延ロード」されます。つまり実際にアクセスされた時にだけそのリレーションのデータはロードされます。そのため開発者は多くの場合に[Eagerローディング](#eager-loading)を使い、モデルをロードした後にアクセスするリレーションを前もってロードしておきます。Eagerロードはモデルのリレーションをロードするため実行されるSQLクエリを大幅に減らしてくれます。/
s/^### Querying Relationship Existence$/### 存在するリレーションのクエリ/
s/^When accessing the records for a model, you may wish to limit your results based on the existence of a relationship\. For example, imagine you want to retrieve all blog posts that have at least one comment\. To do so, you may pass the name of the relationship to the `has` and `orHas` methods:$/関連付けたモデルのレコードに基づいて、モデルのレコードに対するマッチングを絞り込みたい場合もあるでしょう。たとえば、最低でも一つのコメントを持つ、全ブログポストを取得したい場合を考えてください。これを行うためには、リレーションの名前を`has`と`orHas`メソッドに渡します。/
s/^    \/\/ Retrieve all posts that have at least one comment\.\.\.$/    \/\/ 最低１つのコメントを持つ全ポストの取得/
s/^You may also specify an operator and count to further customize the query:$/演算子と数を指定しクエリをカスタマイズすることもできます。/
s/^    \/\/ Retrieve all posts that have three or more comments\.\.\.$/    \/\/ ３つ以上のコメントを持つ全ポストの取得/
s/^Nested `has` statements may also be constructed using "dot" notation\. For example, you may retrieve all posts that have at least one comment and vote:$/ネストした`has`文は「ドット」記法で組立てられます。たとえば最低一つのコメントと評価を持つ全ポストを取得する場合です。/
s/^    \/\/ Retrieve all posts that have at least one comment with votes\.\.\.$/    \/\/ 最低１つのコメントと、それに対する評価を持つ全ポストの取得/
s/^    $posts = App\\Post::has('comments\.votes')->get();$/    $posts = App\\Post::has('comments.votes')->get();/
s/^If you need even more power, you may use the `whereHas` and `orWhereHas` methods to put "where" conditions on your `has` queries\. These methods allow you to add customized constraints to a relationship constraint, such as checking the content of a comment:$/もっと強力な機能がお望みならば`has`の問い合わせに"WHERE"で条件をつけるられる、`whereHas`や`orWhereHas`を利用して下さい。これらのメソッドによりリレーションの制約にカスタマイズした制約を追加できます。たとえばコメントの内容を調べることです。/
s/^    \/\/ Retrieve all posts with at least one comment containing words like foo%$/    \/\/ like foo%の制約に一致する最低１つのコメントを持つ全ポストの取得/
s/^### Querying Relationship Absence$/### 存在しないリレーションのクエリ/
s/^When accessing the records for a model, you may wish to limit your results based on the absence of a relationship\. For example, imagine you want to retrieve all blog posts that \*\*don't\*\* have any comments\. To do so, you may pass the name of the relationship to the `doesntHave` and `orDoesntHave` methods:$/モデルへアクセスする時に、結果をリレーションを持たないレコードに限定したい場合があります。たとえばブログで、コメントを**持たない**ポストのみ全て取得したい場合です。これを行うには、`doesntHave`と`orDoesntHave`メソッドにリレーション名を渡してください。/
s/^If you need even more power, you may use the `whereDoesntHave` and `orWhereDoesntHave` methods to put "where" conditions on your `doesntHave` queries\. These methods allows you to add customized constraints to a relationship constraint, such as checking the content of a comment:$/もっと強力な機能がお望みなら、`doesntHave`クエリに"WHERE"で条件を付けられる、`whereDoesntHave`と`orWhereDoesntHave`メソッドを使ってください。これらのメソッドはコメントの内容を調べるなど、リレーション制約にカスタム制約を付け加えられます。/
s/^You may use "dot" notation to execute a query against a nested relationship\. For example, the following query will retrieve all posts with comments from authors that are not banned:$/「ドット」記法を使い、ネストしたリレーションに対してクエリを実行できます。たとえば、以下のクエリにより、アカウントを無効(ban)されていない著者の、コメントが存在するすべてのポストを取得できます。/
s/^    $posts = App\\Post::whereDoesntHave('comments\.author', function ($query) {$/    $posts = App\\Post::whereDoesntHave('comments.author', function ($query) {/
s/^### Counting Related Models$/### 関連するモデルのカウント/
s/^If you want to count the number of results from a relationship without actually loading them you may use the `withCount` method, which will place a `{relation}_count` column on your resulting models\. For example:$/リレーション結果の件数を実際にレコードを読み込むことなく知りたい場合は、`withCount`メソッドを使います。件数は結果のモデルの`{リレーション名}_count`カラムに格納されます。/
s/^You may add the "counts" for multiple relations as well as add constraints to the queries:$/クエリによる制約を加え、複数のリレーションの件数を取得することも可能です。/
s/^    $posts = App\\Post::withCount(\['votes', 'comments' => function ($query) {$/    $posts = App\\Post::withCount(['votes', 'comments' => function ($query) {/
s/^    }\])->get();$/    }])->get();/
s/^    echo $posts\[0\]->votes_count;$/    echo $posts[0]->votes_count;/
s/^    echo $posts\[0\]->comments_count;$/    echo $posts[0]->comments_count;/
s/^You may also alias the relationship count result, allowing multiple counts on the same relationship:$/同じリレーションに複数の件数を含めるため、リレーション件数結果の別名も付けられます。/
s/^    $posts = App\\Post::withCount(\[$/    $posts = App\\Post::withCount([/
s/^    \])->get();$/    ])->get();/
s/^    echo $posts\[0\]->comments_count;$/    echo $posts[0]->comments_count;/
s/^    echo $posts\[0\]->pending_comments_count;$/    echo $posts[0]->pending_comments_count;/
s/^## Eager Loading$/## Eagerロード/
s/^When accessing Eloquent relationships as properties, the relationship data is "lazy loaded"\. This means the relationship data is not actually loaded until you first access the property\. However, Eloquent can "eager load" relationships at the time you query the parent model\. Eager loading alleviates the N \+ 1 query problem\. To illustrate the N \+ 1 query problem, consider a `Book` model that is related to `Author`:$/プロパティとしてEloquentリレーションにアクセスする場合、そのリレーションデータは「遅延ロード」されます。つまり、そのリレーションデータが最初にアクセスされるまで、実際にはロードされません。しかし、Eloquentでは、親のモデルに対するクエリと同時にリレーションを「Eagerロード」可能です。EagerロードはN+1クエリ問題の解決策です。N+１クエリ問題を理解するには、`Author`と関連がある`Book`モデルを考えてみてください。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the author that wrote the book\.$/         * この本を書いた著者を取得/
s/^         \*\/$/         *\//
s/^Now, let's retrieve all books and their authors:$/では全書籍とその著者を取得しましょう。/
s/^This loop will execute 1 query to retrieve all of the books on the table, then another query for each book to retrieve the author\. So, if we have 25 books, this loop would run 26 queries: 1 for the original book, and 25 additional queries to retrieve the author of each book\.$/このループではまず全ての本をテーブルから取得するために１クエリ実行され、それから著者をそれぞれの本について取得します。ですから２５冊あるならば、このループで２６クエリが発生します。/
s/^Thankfully, we can use eager loading to reduce this operation to just 2 queries\. When querying, you may specify which relationships should be eager loaded using the `with` method:$/うれしいことにクエリの数を徹底的に減らすために、Eagerローディングを使うことができます。`with`メソッドを使い指定してください。/
s/^For this operation, only two queries will be executed:$/この操作では２つだけしかクエリが実行されません。/
s/^    select \* from books$/    select * from books/
s/^    select \* from authors where id in (1, 2, 3, 4, 5, \.\.\.)$/    select * from authors where id in (1, 2, 3, 4, 5, ...)/
s/^#### Eager Loading Multiple Relationships$/#### 複数のリレーションに対するEagerロード/
s/^Sometimes you may need to eager load several different relationships in a single operation\. To do so, just pass additional arguments to the `with` method:$/一回の操作で異なった複数のリレーションをEagerロードする必要がある場合もあります。その場合でも、ただ`with`メソッドに引数を追加で渡すだけです。/
s/^    $books = App\\Book::with(\['author', 'publisher'\])->get();$/    $books = App\\Book::with(['author', 'publisher'])->get();/
s/^#### Nested Eager Loading$/#### ネストしたEagerロード/
s/^To eager load nested relationships, you may use "dot" syntax\. For example, let's eager load all of the book's authors and all of the author's personal contacts in one Eloquent statement:$/ネストしたリレーションをEagerロードする場合は「ドット」記法が使用できます。例としてEloquent文で全著者と著者個人のコンタクトも全部Eagerロードしてみましょう。/
s/^    $books = App\\Book::with('author\.contacts')->get();$/    $books = App\\Book::with('author.contacts')->get();/
s/^#### Eager Loading Specific Columns$/#### 特定カラムのEagerロード/
s/^You may not always need every column from the relationships you are retrieving\. For this reason, Eloquent allows you to specify which columns of the relationship you would like to retrieve:$/検索しているリレーションの中で全てのカラムが必要とは限りません。そのため、Eloquentではリレーションの中で検索したいカラムを特定することができます。/
s/^> {note} When using this feature, you should always include the `id` column in the list of columns you wish to retrieve\.$/> {note} この機能を使う際には、 検索したいカラムと一緒に `id` カラムを含めなければなりません。/
s/^### Constraining Eager Loads$/### Eagerロードへの制約/
s/^Sometimes you may wish to eager load a relationship, but also specify additional query constraints for the eager loading query\. Here's an example:$/場合によりリレーションをEagerロードしたいが、Eagerロードクエリに制約を追加したい場合があります。例を見てください。/
s/^    $users = App\\User::with(\['posts' => function ($query) {$/    $users = App\\User::with(['posts' => function ($query) {/
s/^    }\])->get();$/    }])->get();/
s/^In this example, Eloquent will only eager load posts where the post's `title` column contains the word `first`\. Of course, you may call other \[query builder\](\/docs\/{{version}}\/queries) methods to further customize the eager loading operation:$/この例でEloquentは、`title`カラムの内容に`first`という言葉を含むポストのみをEagerロードしています。もちろんEagerロード操作を更にカスタマイズするために、他の[クエリビルダ](\/docs\/{{version}}\/queries)を呼び出すこともできます。/
s/^    $users = App\\User::with(\['posts' => function ($query) {$/    $users = App\\User::with(['posts' => function ($query) {/
s/^    }\])->get();$/    }])->get();/
s/^### Lazy Eager Loading$/### 遅延Eagerローディング/
s/^Sometimes you may need to eager load a relationship after the parent model has already been retrieved\. For example, this may be useful if you need to dynamically decide whether to load related models:$/既に親のモデルを取得した後に、リレーションをEagerロードする必要がある場合もあるでしょう。たとえば、どの関連しているモデルをロードするかを動的に決める場合に便利です。/
s/^If you need to set additional query constraints on the eager loading query, you may pass an array keyed by the relationships you wish to load\. The array values should be `Closure` instances which receive the query instance:$/Eagerロードに追加の制約をかける必要があるなら、ロードしたい関連へ配列のキーを付け渡してください。配列地は、クエリインスタンスを受け取る「クロージャ」でなければなりません。/
s/^    $books->load(\['author' => function ($query) {$/    $books->load(['author' => function ($query) {/
s/^    }\]);$/    }]);/
s/^To load a relationship only when it has not already been loaded, use the `loadMissing` method:$/リレーションをまだロードしていない場合のみロードする場合は、`loadMissing`メソッドを使用します。/
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^## Inserting & Updating Related Models$/## 関連したモデルの挿入／更新/
s/^### The Save Method$/### `Save`メソッド/
s/^Eloquent provides convenient methods for adding new models to relationships\. For example, perhaps you need to insert a new `Comment` for a `Post` model\. Instead of manually setting the `post_id` attribute on the `Comment`, you may insert the `Comment` directly from the relationship's `save` method:$/Eloquentは新しいモデルをリレーションに追加するために便利なメソッドを用意しています。たとえば`Post`モデルに新しい`Comment`を挿入する必要がある場合です。`Comment`の`post_id`属性を自分で設定する代わりに、リレーションの`save`メソッドで直接`Comment`を挿入できます。/
s/^    $comment = new App\\Comment(\['message' => 'A new comment\.'\]);$/    $comment = new App\\Comment(['message' => 'A new comment.']);/
s/^Notice that we did not access the `comments` relationship as a dynamic property\. Instead, we called the `comments` method to obtain an instance of the relationship\. The `save` method will automatically add the appropriate `post_id` value to the new `Comment` model\.$/動的プロパティとして`comments`リレーションにアクセスできない点には注意してください。代わりにリレーションの取得で`comments`メソッドを呼び出しています。`save`メソッドは自動的に新しい`Comment`モデルの`post_id`へ適した値を代入します。/
s/^If you need to save multiple related models, you may use the `saveMany` method:$/複数の関連したモデルを保存する必要があるなら、`saveMany`メソッドを使用できます。/
s/^    $post->comments()->saveMany(\[$/    $post->comments()->saveMany([/
s/^        new App\\Comment(\['message' => 'A new comment\.'\]),$/        new App\\Comment(['message' => 'A new comment.']),/
s/^        new App\\Comment(\['message' => 'Another comment\.'\]),$/        new App\\Comment(['message' => 'Another comment.']),/
s/^    \]);$/    ]);/
s/^### The Create Method$/### `Create`メソッド/
s/^In addition to the `save` and `saveMany` methods, you may also use the `create` method, which accepts an array of attributes, creates a model, and inserts it into the database\. Again, the difference between `save` and `create` is that `save` accepts a full Eloquent model instance while `create` accepts a plain PHP `array`:$/`save`と`saveMany`メソッドに加え、`create`メソッドも使用できます。属性の配列を引数に受け付け、モデルを作成しデータベースへ挿入します。`save`と`create`の違いは`save`が完全なEloquentモデルを受け付けるのに対し、`create`は普通のPHPの「配列」を受け付ける点です。/
s/^    $comment = $post->comments()->create(\[$/    $comment = $post->comments()->create([/
s/^        'message' => 'A new comment\.',$/        'message' => 'A new comment.',/
s/^    \]);$/    ]);/
s/^> {tip} Before using the `create` method, be sure to review the documentation on attribute \[mass assignment\](\/docs\/{{version}}\/eloquent#mass-assignment)\.$/> {tip} `create`メソッドを使用する前に属性の[複数代入](\/docs\/{{version}}\/eloquent#mass-assignment)に関するドキュメントを読んでおいてください。/
s/^You may use the `createMany` method to create multiple related models:$/`createMany`メソッドで複数のリレーションモデルを生成することができます。/
s/^    $post->comments()->createMany(\[$/    $post->comments()->createMany([/
s/^        \[$/        [/
s/^            'message' => 'A new comment\.',$/            'message' => 'A new comment.',/
s/^        \],$/        ],/
s/^        \[$/        [/
s/^            'message' => 'Another new comment\.',$/            'message' => 'Another new comment.',/
s/^        \],$/        ],/
s/^    \]);$/    ]);/
s/^### Belongs To Relationships$/### Belongs To関係/
s/^When updating a `belongsTo` relationship, you may use the `associate` method\. This method will set the foreign key on the child model:$/`belongsTo`リレーションを更新する場合は`associate`メソッドを使います。このメソッドは子モデルへ外部キーをセットします。/
s/^When removing a `belongsTo` relationship, you may use the `dissociate` method\. This method will set the relationship's foreign key to `null`:$/`belongsTo`リレーションを削除する場合は`dissociate`メソッドを使用します。このメソッドはリレーションの子モデルの外部キーを`null`にします。/
s/^#### Default Models$/#### デフォルトモデル/
s/^The `belongsTo` relationship allows you to define a default model that will be returned if the given relationship is `null`\. This pattern is often referred to as the \[Null Object pattern\](https:\/\/en\.wikipedia\.org\/wiki\/Null_Object_pattern) and can help remove conditional checks in your code\. In the following example, the `user` relation will return an empty `App\\User` model if no `user` is attached to the post:$/`belongsTo`リレーションでは、指定したリレーションが`null`の場合に返却するデフォルトモデルを定義できます。このパターンは、頻繁に[Nullオブジェクトパターン](https:\/\/en.wikipedia.org\/wiki\/Null_Object_pattern)と呼ばれ、コードから条件のチェックを省くのに役立ちます。以下の例では、ポストに従属する`user`がない場合に、空の`App\\User`モデルを返しています。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the author of the post\.$/     * ポストの著者を取得/
s/^     \*\/$/     *\//
s/^To populate the default model with attributes, you may pass an array or Closure to the `withDefault` method:$/属性を指定したデフォルトモデルを返すためには、`withDefault`メソッドに配列かクロージャを渡してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the author of the post\.$/     * ポストの著者を取得/
s/^     \*\/$/     *\//
s/^        return $this->belongsTo('App\\User')->withDefault(\[$/        return $this->belongsTo('App\\User')->withDefault([/
s/^        \]);$/        ]);/
s/^    \/\*\*$/    \/**/
s/^     \* Get the author of the post\.$/     * ポストの著者を取得/
s/^     \*\/$/     *\//
s/^### Many To Many Relationships$/### 多対多関係/
s/^#### Attaching \/ Detaching$/#### attach／detach/
s/^Eloquent also provides a few additional helper methods to make working with related models more convenient\. For example, let's imagine a user can have many roles and a role can have many users\. To attach a role to a user by inserting a record in the intermediate table that joins the models, use the `attach` method:$/多対多リレーションを操作時により便利なように、Eloquentはヘルパメソッドをいくつか用意しています。例としてユーザーが多くの役割を持ち、役割も多くのユーザーを持てる場合を考えてみましょう。モデルを結びつけている中間テーブルにレコードを挿入することにより、ユーザーに役割を持たせるには`attach`メソッドを使います。/
s/^When attaching a relationship to a model, you may also pass an array of additional data to be inserted into the intermediate table:$/モデルにリレーションを割りつけるときに中間テーブルに挿入したい追加のデータを配列で渡すこともできます。/
s/^    $user->roles()->attach($roleId, \['expires' => $expires\]);$/    $user->roles()->attach($roleId, ['expires' => $expires]);/
s/^Of course, sometimes it may be necessary to remove a role from a user\. To remove a many-to-many relationship record, use the `detach` method\. The `detach` method will remove the appropriate record out of the intermediate table; however, both models will remain in the database:$/もちろんユーザーから役割を削除する必要がある場合もあるでしょう。多対多リレーションのレコードを削除するには`detach`メソッドを使います。`detach`メソッドは中間テーブルから対応するレコードを削除します。しかし両方のモデルはデータベースに残ります。/
s/^    \/\/ Detach a single role from the user\.\.\.$/    \/\/ ユーザーから役割を一つ切り離す/
s/^    \/\/ Detach all roles from the user\.\.\.$/    \/\/ ユーザーから役割を全部切り離す/
s/^For convenience, `attach` and `detach` also accept arrays of IDs as input:$/便利なように`attach`と`detach`の両方共にIDの配列を指定することができます。/
s/^    $user->roles()->detach(\[1, 2, 3\]);$/    $user->roles()->detach([1, 2, 3]);/
s/^    $user->roles()->attach(\[$/    $user->roles()->attach([/
s/^        1 => \['expires' => $expires\],$/        1 => ['expires' => $expires],/
s/^        2 => \['expires' => $expires\]$/        2 => ['expires' => $expires]/
s/^    \]);$/    ]);/
s/^#### Syncing Associations$/#### 関連付けの同期/
s/^You may also use the `sync` method to construct many-to-many associations\. The `sync` method accepts an array of IDs to place on the intermediate table\. Any IDs that are not in the given array will be removed from the intermediate table\. So, after this operation is complete, only the IDs in the given array will exist in the intermediate table:$/多対多の関連を構築するために`sync`メソッドも使用できます。`sync`メソッドへは中間テーブルに設置しておくIDの配列を渡します。その配列に指定されなかったIDは中間テーブルから削除されます。ですからこの操作が完了すると、中間テーブルには配列中のIDだけが存在することになります。/
s/^    $user->roles()->sync(\[1, 2, 3\]);$/    $user->roles()->sync([1, 2, 3]);/
s/^You may also pass additional intermediate table values with the IDs:$/IDと一緒に中間テーブルの追加の値を渡すことができます。/
s/^    $user->roles()->sync(\[1 => \['expires' => true\], 2, 3\]);$/    $user->roles()->sync([1 => ['expires' => true], 2, 3]);/
s/^If you do not want to detach existing IDs, you may use the `syncWithoutDetaching` method:$/存在しているIDを削除したくない場合は、`syncWithoutDetaching`メソッドを使用します。/
s/^    $user->roles()->syncWithoutDetaching(\[1, 2, 3\]);$/    $user->roles()->syncWithoutDetaching([1, 2, 3]);/
s/^#### Toggling Associations$/#### 関連の切り替え/
s/^The many-to-many relationship also provides a `toggle` method which "toggles" the attachment status of the given IDs\. If the given ID is currently attached, it will be detached\. Likewise, if it is currently detached, it will be attached:$/多対多リレーションは、指定したIDの関連状態を「切り替える」、`toggle`メソッドも提供しています。指定したIDが現在関連している場合は、関連を切り離します。同様に現在関連がない場合は、関連付けます。/
s/^    $user->roles()->toggle(\[1, 2, 3\]);$/    $user->roles()->toggle([1, 2, 3]);/
s/^#### Saving Additional Data On A Pivot Table$/#### 中間テーブルへの追加データ保存/
s/^When working with a many-to-many relationship, the `save` method accepts an array of additional intermediate table attributes as its second argument:$/多対多リレーションを操作する場合、`save`メソッドの第２引数へ追加の中間テーブルの属性を指定できます。/
s/^    App\\User::find(1)->roles()->save($role, \['expires' => $expires\]);$/    App\\User::find(1)->roles()->save($role, ['expires' => $expires]);/
s/^#### Updating A Record On A Pivot Table$/#### 中間テーブルのレコード更新/
s/^If you need to update an existing row in your pivot table, you may use `updateExistingPivot` method\. This method accepts the pivot record foreign key and an array of attributes to update:$/中間テーブルに存在している行を更新する必要がある場合は、`updateExistingPivot`メソッドを使います。このメソッドは、中間テーブルの外部キーと更新する属性の配列を引数に取ります。/
s/^## Touching Parent Timestamps$/## 親のタイムスタンプの更新/
s/^When a model `belongsTo` or `belongsToMany` another model, such as a `Comment` which belongs to a `Post`, it is sometimes helpful to update the parent's timestamp when the child model is updated\. For example, when a `Comment` model is updated, you may want to automatically "touch" the `updated_at` timestamp of the owning `Post`\. Eloquent makes it easy\. Just add a `touches` property containing the names of the relationships to the child model:$/`Comment`が`Post`に所属しているように、あるモデルが他のモデルに所属（`belongsTo`もしくは`belongsToMany`）しており、子のモデルが更新される時に親のタイムスタンプを更新できると便利なことがあります。たとえば`Comment`モデルが更新されたら、所有者の`Post`の`updated_at`タイムスタンプを自動的に"touch"したい場合です。Eloquentなら簡単です。子のモデルに`touches`プロパティを追加しリレーション名を指定してください。/
s/^        \/\*\*$/        \/**/
s/^         \* All of the relationships to be touched\.$/         * 全リレーションをtouch/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $touches = \['post'\];$/        protected $touches = ['post'];/
s/^        \/\*\*$/        \/**/
s/^         \* Get the post that the comment belongs to\.$/         * ポストに所属しているコメント取得/
s/^         \*\/$/         *\//
s/^Now, when you update a `Comment`, the owning `Post` will have its `updated_at` column updated as well, making it more convenient to know when to invalidate a cache of the `Post` model:$/これで`Comment`が更新されると、所有している`Post`の`updated_at`カラムも同時に更新され、これにより`Post`モデルのどの時点のキャッシュを無効にするか判定できます。/
