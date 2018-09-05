s/^# Eloquent: API Resources$/# Eloquent: APIリソース/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Generating Resources\](#generating-resources)$/- [リソース生成](#generating-resources)/
s/^- \[Concept Overview\](#concept-overview)$/- [概略](#concept-overview)/
s/^- \[Writing Resources\](#writing-resources)$/- [リソース記述](#writing-resources)/
s/^    - \[Data Wrapping\](#data-wrapping)$/    - [データラップ](#data-wrapping)/
s/^    - \[Pagination\](#pagination)$/    - [ペジネーション](#pagination)/
s/^    - \[Conditional Attributes\](#conditional-attributes)$/    - [条件付き属性](#conditional-attributes)/
s/^    - \[Conditional Relationships\](#conditional-relationships)$/    - [条件付きリレーション](#conditional-relationships)/
s/^    - \[Adding Meta Data\](#adding-meta-data)$/    - [メタデータ追加](#adding-meta-data)/
s/^- \[Resource Responses\](#resource-responses)$/- [リソースレスポンス](#resource-responses)/
s/^## Introduction$/## イントロダクション/
s/^When building an API, you may need a transformation layer that sits between your Eloquent models and the JSON responses that are actually returned to your application's users\. Laravel's resource classes allow you to expressively and easily transform your models and model collections into JSON\.$/API構築時、Eloquentモデルと、アプリケーションユーザーに対して実際に返信するJSONリスポンスとの間に、トランスレーション層を設置することが必要となります。Laravelのリソースクラスは、モデルやモデルコレクションを記述しやすく簡単に、JSONへと変換してくれます。/
s/^## Generating Resources$/## リソース生成/
s/^To generate a resource class, you may use the `make:resource` Artisan command\. By default, resources will be placed in the `app\/Http\/Resources` directory of your application\. Resources extend the `Illuminate\\Http\\Resources\\Json\\JsonResource` class:$/リソースクラスを生成するには、`make:resource` Artisanコマンドを使用します。リソースはデフォルトで、アプリケーションの`app\/Http\/Resources`ディレクトリに設置されます。リソースは、`Illuminate\\Http\\Resources\\Json\\JsonResource`クラスを拡張します。/
s/^#### Resource Collections$/#### コレクションのリソース/
s/^In addition to generating resources that transform individual models, you may generate resources that are responsible for transforming collections of models\. This allows your response to include links and other meta information that is relevant to an entire collection of a given resource\.$/個別のモデルのリソースに加え、モデルのコレクションを変換し、返信するリソースを生成することも可能です。これにより、レスポンスにリンクと、指定したコレクションリソース全体を表す他のメタ情報を含めることができるようになります。/
s/^To create a resource collection, you should use the `--collection` flag when creating the resource\. Or, including the word `Collection` in the resource name will indicate to Laravel that it should create a collection resource\. Collection resources extend the `Illuminate\\Http\\Resources\\Json\\ResourceCollection` class:$/コレクションリソースを生成するには、リソース生成時に`--collection`フラグを指定してください。もしくは、リソース名へ`Collection`を含め、Laravelへコレクションリソースを生成するように指示できます。コレクションリソースは、`Illuminate\\Http\\Resources\\Json\\ResourceCollection`クラスを拡張します。/
s/^## Concept Overview$/## 概略/
s/^> {tip} This is a high-level overview of resources and resource collections\. You are highly encouraged to read the other sections of this documentation to gain a deeper understanding of the customization and power offered to you by resources\.$/> {tip} このセクションは、リソースとコレクションリソースについて、大雑把に概略を説明します。リソースで実現可能な機能とカスタマイズについて深く理解するため、このドキュメントの他の部分もお読みください。/
s/^Before diving into all of the options available to you when writing resources, let's first take a high-level look at how resources are used within Laravel\. A resource class represents a single model that needs to be transformed into a JSON structure\. For example, here is a simple `User` resource class:$/リソースを書く場合に指定可能な全オプションを説明する前に、最初はLaravelでリソースがどのように使われるかという点を俯瞰し、確認しておきましょう。リソースクラスは、JSON構造へ変換する必要のある一つのモデルを表します。例として、シンプルな`User`クラスを見てみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource into an array\.$/         * リソースを配列へ変換する/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^            \];$/            ];/
s/^Every resource class defines a `toArray` method which returns the array of attributes that should be converted to JSON when sending the response\. Notice that we can access model properties directly from the `$this` variable\. This is because a resource class will automatically proxy property and method access down to the underlying model for convenient access\. Once the resource is defined, it may be returned from a route or controller:$/レスポンスを送り返す時に、JSONへ変換する必要のある属性の配列を返す、`toArray`メソッドを全リソースクラスで定義します。`$this`変数を使用し、直接モデルのプロパティへアクセスできる点に注目です。これはリソースクラスが、変換するためにアクセスするモデルの、プロパティとメソッドを自動的に仲介するからです。リソースが定義できたら、ルートやコントローラから返します。/
s/^### Resource Collections$/### コレクションリソース/
s/^If you are returning a collection of resources or a paginated response, you may use the `collection` method when creating the resource instance in your route or controller:$/ページ付けしたリソースやコレクションを返す場合は、ルートかコントローラの中で、リソースインスタンスを生成する時に、`collection`メソッドを使用します。/
s/^Of course, this does not allow any addition of meta data that may need to be returned with the collection\. If you would like to customize the resource collection response, you may create a dedicated resource to represent the collection:$/当然ながら、これにより返信するコレクションに付加する必要のあるメタデータが、追加されるわけではありません。コレクションリソースレスポンスをカスタマイズしたい場合は、そのコレクションを表すための専用リソースを生成してください。/
s/^Once the resource collection class has been generated, you may easily define any meta data that should be included with the response:$/コレクションリソースを生成すれば、レスポンスに含めたいメタデータを簡単に定義できます。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource collection into an array\.$/         * コレクションリソースを配列へ変換/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^                'links' => \[$/                'links' => [/
s/^                \],$/                ],/
s/^            \];$/            ];/
s/^After defining your resource collection, it may be returned from a route or controller:$/定義したコレクションリソースは、ルートかコントローラから返してください。/
s/^## Writing Resources$/## リソース記述/
s/^> {tip} If you have not read the \[concept overview\](#concept-overview), you are highly encouraged to do so before proceeding with this documentation\.$/> {tip} [概略](#concept-overview)をまだ読んでいないのなら、ドキュメントを読み進める前に目を通しておくことを強くおすすめします。/
s/^In essence, resources are simple\. They only need to transform a given model into an array\. So, each resource contains a `toArray` method which translates your model's attributes into an API friendly array that can be returned to your users:$/リソースの本質はシンプルです。特定のモデルを配列に変換する必要があるだけです。そのため、APIフレンドリーな配列としてユーザーへ送り返せるように、モデルの属性を変換するための`toArray`メソッドをリソースは持っています。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource into an array\.$/         * リソースを配列へ変換する/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^            \];$/            ];/
s/^Once a resource has been defined, it may be returned directly from a route or controller:$/リソースを定義したら、ルートかコントローラから、直接返してください。/
s/^#### Relationships$/#### リレーション/
s/^If you would like to include related resources in your response, you may add them to the array returned by your `toArray` method\. In this example, we will use the `Post` resource's `collection` method to add the user's blog posts to the resource response:$/関連するリソースをレスポンスへ含めるには、`toArray`メソッドから返す配列に追加します。以下の例では、`Post`リソースの`collection`メソッドを使用し、ユーザーのブログポストをリソースレスポンスへ追加しています。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^> {tip} If you would like to include relationships only when they have already been loaded, check out the documentation on \[conditional relationships\](#conditional-relationships)\.$/> {tip} 既にロードされている場合のみ、リレーションを含めたい場合は、[条件付きリレーション](#conditional-relationships)のドキュメントを参照してください。/
s/^#### Resource Collections$/#### コレクションのリソース/
s/^While resources translate a single model into an array, resource collections translate a collection of models into an array\. It is not absolutely necessary to define a resource collection class for each one of your model types since all resources provide a `collection` method to generate an "ad-hoc" resource collection on the fly:$/リソースは一つのモデルを配列へ変換するのに対し、コレクションリソースはモデルのコレクションを配列へ変換します。モデルタイプそれぞれに対し、コレクションリソースを絶対に定義する必要があるわけではありません。すべてのリソースは、簡単に「アドホック」なコレクションリソースを生成するために、`collection`メソッドを提供しています。/
s/^However, if you need to customize the meta data returned with the collection, it will be necessary to define a resource collection:$/しかしながら、コレクションと一緒に返すメタデータをカスタマイズする必要がある場合は、コレクションリソースを定義する必要があります。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource collection into an array\.$/         * コレクションリソースを配列へ変換/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^                'links' => \[$/                'links' => [/
s/^                \],$/                ],/
s/^            \];$/            ];/
s/^Like singular resources, resource collections may be returned directly from routes or controllers:$/１モデルを扱うリソースと同様にコレクションリソースも、ルートやコントローラから直接返してください。/
s/^### Data Wrapping$/### データラップ/
s/^By default, your outer-most resource is wrapped in a `data` key when the resource response is converted to JSON\. So, for example, a typical resource collection response looks like the following:$/デフォルトではリソースレスポンスがJSONに変換されるとき、一番外側のリソースを`data`キー下にラップします。たとえば、典型的なコレクションリソースのレスポンスは、次のようになるでしょう。/
s/^        "data": \[$/        "data": [/
s/^                "name": "Eladio Schroeder Sr\.",$/                "name": "Eladio Schroeder Sr.",/
s/^                "email": "therese28@example\.com",$/                "email": "therese28@example.com",/
s/^                "email": "evandervort@example\.com",$/                "email": "evandervort@example.com",/
s/^        \]$/        ]/
s/^If you would like to disable the wrapping of the outer-most resource, you may use the `withoutWrapping` method on the base resource class\. Typically, you should call this method from your `AppServiceProvider` or another \[service provider\](\/docs\/{{version}}\/providers) that is loaded on every request to your application:$/一番外部のリソースでラップしないようにしたい場合は、ベースのリソースクラスに対し、`withoutWrapping`メソッドを使用してください。通常、このメソッドはアプリケーションに対するリクエストごとにロードされる、`AppServiceProvider`か、もしくは他の[サービスプロバイダ](\/docs\/{{version}}\/providers)から呼び出します。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービスの初期起動後に、登録内容を処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナに結合を登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^> {note} The `withoutWrapping` method only affects the outer-most response and will not remove `data` keys that you manually add to your own resource collections\.$/> {note} `withoutWrapping`メソッドは、最も外側のレスポンスだけに影響を与えます。コレクションリソースに皆さんが自分で追加した`data`キーは、削除されません。/
s/^### Wrapping Nested Resources$/### ネストしたリソースのラップ/
s/^You have total freedom to determine how your resource's relationships are wrapped\. If you would like all resource collections to be wrapped in a `data` key, regardless of their nesting, you should define a resource collection class for each resource and return the collection within a `data` key\.$/リソースのリレーションをどのようにラップするかは、完全に自由です。ネスト状態にかかわらず、`data`キーの中に全コレクションリソースをラップしたい場合は、リソースそれぞれに対するコレクションリソースを定義し、`data`キーにコレクションを含めて返す必要があります。/
s/^Of course, you may be wondering if this will cause your outer-most resource to be wrapped in two `data` keys\. Don't worry, Laravel will never let your resources be accidentally double-wrapped, so you don't have to be concerned about the nesting level of the resource collection you are transforming:$/それにより、最も外側のリソースが二重の`data`キーでラップされてしまうのではないかと、疑うのは当然です。心配ありません。Laravelは決してリソースを間違って二重にラップしたりしません。変換するコレクションリソースのネストレベルについて、心配する必要はありません。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource collection into an array\.$/         * コレクションリソースを配列へ変換/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \['data' => $this->collection\];$/            return ['data' => $this->collection];/
s/^### Data Wrapping And Pagination$/### データラップとペジネーション/
s/^When returning paginated collections in a resource response, Laravel will wrap your resource data in a `data` key even if the `withoutWrapping` method has been called\. This is because paginated responses always contain `meta` and `links` keys with information about the paginator's state:$/リソースレスポンスの中から、ページ付けしたコレクションを返す場合、`withoutWrapping`メソッドが呼び出されていても、Laravelはリソースデータを`data`キーでラップします。なぜなら、ページ付けしたレスポンスは、ペジネータの状態を含めた`meta`と`links`キーを常に含めるからです。/
s/^        "data": \[$/        "data": [/
s/^                "name": "Eladio Schroeder Sr\.",$/                "name": "Eladio Schroeder Sr.",/
s/^                "email": "therese28@example\.com",$/                "email": "therese28@example.com",/
s/^                "email": "evandervort@example\.com",$/                "email": "evandervort@example.com",/
s/^        \],$/        ],/
s/^            "first": "http:\/\/example\.com\/pagination?page=1",$/            "first": "http:\/\/example.com\/pagination?page=1",/
s/^            "last": "http:\/\/example\.com\/pagination?page=1",$/            "last": "http:\/\/example.com\/pagination?page=1",/
s/^            "path": "http:\/\/example\.com\/pagination",$/            "path": "http:\/\/example.com\/pagination",/
s/^### Pagination$/### ペジネーション/
s/^You may always pass a paginator instance to the `collection` method of a resource or to a custom resource collection:$/常にペジネータインスタンスをリソースの`collection`メソッドや、カスタムコレクションリソースへ渡せます。/
s/^Paginated responses always contain `meta` and `links` keys with information about the paginator's state:$/ページ付けしたレスポンスは常に、ペジネータの状態を含む`meta`と`links`キーを持っています。/
s/^        "data": \[$/        "data": [/
s/^                "name": "Eladio Schroeder Sr\.",$/                "name": "Eladio Schroeder Sr.",/
s/^                "email": "therese28@example\.com",$/                "email": "therese28@example.com",/
s/^                "email": "evandervort@example\.com",$/                "email": "evandervort@example.com",/
s/^        \],$/        ],/
s/^            "first": "http:\/\/example\.com\/pagination?page=1",$/            "first": "http:\/\/example.com\/pagination?page=1",/
s/^            "last": "http:\/\/example\.com\/pagination?page=1",$/            "last": "http:\/\/example.com\/pagination?page=1",/
s/^            "path": "http:\/\/example\.com\/pagination",$/            "path": "http:\/\/example.com\/pagination",/
s/^### Conditional Attributes$/### 条件付き属性/
s/^Sometimes you may wish to only include an attribute in a resource response if a given condition is met\. For example, you may wish to only include a value if the current user is an "administrator"\. Laravel provides a variety of helper methods to assist you in this situation\. The `when` method may be used to conditionally add an attribute to a resource response:$/条件が一致する場合のみ、リソースレスポンスへ属性を含めたいこともあります。たとえば、現在のユーザーが"administrator"の場合のみ、ある値を含めたいときです。こうした状況で役に立つ様々なヘルパメソッドをLaravelは提供しています。`when`メソッドは条件により、リソースレスポンスへ属性を追加する場合に使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^In this example, the `secret` key will only be returned in the final resource response if the authenticated user's `isAdmin` method returns `true`\. If the method returns `false`, the `secret` key will be removed from the resource response entirely before it is sent back to the client\. The `when` method allows you to expressively define your resources without resorting to conditional statements when building the array\.$/この例では、認証済みユーザーの`isAdmin`メソッドが`true`を返す場合のみ、最終的なリソースレスポンスに`secret`キーが返されます。メソッドが`false`の場合、クライアントへ送り返される前に、リソースレスポンスから`secret`キーは完全に削除されます。`when`メソッドにより、配列の構築時に条件文に頼らずに、リソースを記述的に定義できます。/
s/^The `when` method also accepts a Closure as its second argument, allowing you to calculate the resulting value only if the given condition is `true`:$/`when`メソッドは、第２引数にクロージャを引き受け、指定した条件が`true`の場合のみ、結果の値を算出することもできます。/
s/^#### Merging Conditional Attributes$/#### 条件付き属性のマージ/
s/^Sometimes you may have several attributes that should only be included in the resource response based on the same condition\. In this case, you may use the `mergeWhen` method to include the attributes in the response only when the given condition is `true`:$/リソースレスポンスへ同じ条件にもとづいて、多くの属性を含めたい場合もあります。この場合、指定した条件が`true`の場合のみ、レスポンスへ属性を組み入れる`mergeWhen`メソッドを使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^            $this->mergeWhen(Auth::user()->isAdmin(), \[$/            $this->mergeWhen(Auth::user()->isAdmin(), [/
s/^            \]),$/            ]),/
s/^        \];$/        ];/
s/^Again, if the given condition is `false`, these attributes will be removed from the resource response entirely before it is sent to the client\.$/このメソッドでも、指定した条件が`false`の場合、利用者へ送り返される前に、属性はリソースレスポンスから完全に取り除かれます。/
s/^> {note} The `mergeWhen` method should not be used within arrays that mix string and numeric keys\. Furthermore, it should not be used within arrays with numeric keys that are not ordered sequentially\.$/> {note} `mergeWhen`メソッドは、文字列と数値のキーが混ざっている配列の中では、使用しないでください。さらに、順番に並んでいない数値キーの配列でも、使用しないでください。/
s/^### Conditional Relationships$/### 条件付きリレーション/
s/^In addition to conditionally loading attributes, you may conditionally include relationships on your resource responses based on if the relationship has already been loaded on the model\. This allows your controller to decide which relationships should be loaded on the model and your resource can easily include them only when they have actually been loaded\.$/条件によりロードする属性に付け加え、リレーションがモデルにロードされているかに基づいて、リソースレスポンスへリレーションを条件付きで含めることもできます。これにより、どのリレーションをモデルにロードさせるかをコントローラで決め、リソースが実際にロード済みの場合のみ、レスポンスへ含めることが簡単に実現できます。/
s/^Ultimately, this makes it easier to avoid "N\+1" query problems within your resources\. The `whenLoaded` method may be used to conditionally load a relationship\. In order to avoid unnecessarily loading relationships, this method accepts the name of the relationship instead of the relationship itself:$/究極的には、これによりリソースの中で、「N＋１」クエリ問題を簡単に防ぐことができます。`whenLoaded`メソッドは、リレーションを条件付きでロードするために使用できます。不必要なリレーションのロードを防ぐために、このメソッドはリレーションの代わりに、リレーションの名前を引数に取ります。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^In this example, if the relationship has not been loaded, the `posts` key will be removed from the resource response entirely before it is sent to the client\.$/この例の場合、リレーションがロードされていない場合、`posts`キーは利用者へ送り返される前に、レスポンスから完全に取り除かれます。/
s/^#### Conditional Pivot Information$/#### 条件付きピボット情報/
s/^In addition to conditionally including relationship information in your resource responses, you may conditionally include data from the intermediate tables of many-to-many relationships using the `whenPivotLoaded` method\. The `whenPivotLoaded` method accepts the name of the pivot table as its first argument\. The second argument should be a Closure that defines the value to be returned if the pivot information is available on the model:$/リソースレスポンスへ条件付きでリレーション情報を含める機能に付け加え、`whenPivotLoaded`メソッドを使用し、多対多リレーションの中間テーブルからのデータを含めることもできます。`whenPivotLoaded`メソッドは、第１引数に中間テーブルの名前を引き受けます。第２引数には、ピボット情報がそのモデルに対し利用可能な場合の返却値を定義するクロージャを指定します。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^### Adding Meta Data$/### メタデータ追加/
s/^Some JSON API standards require the addition of meta data to your resource and resource collections responses\. This often includes things like `links` to the resource or related resources, or meta data about the resource itself\. If you need to return additional meta data about a resource, include it in your `toArray` method\. For example, you might include `link` information when transforming a resource collection:$/いくつかのJSON API規約では、リソースとコレクションリソースレスポンスで、追加のメタデータを要求しています。これらには、リソースへの`link`のような情報や、関連するリソース、リソース自体のメタデータなどがよく含まれます。リソースに関する追加のメタデータを返す必要がある場合は、`toArray`メソッドに含めます。たとえば、コレクションリソースを変換する時に、`link`情報を含めるには次のようにします。/
s/^    \/\*\*$/    \/**/
s/^     \* Transform the resource into an array\.$/     * リソースを配列へ変換/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Http\\Request$/     * @param  \\Illuminate\\Http\\Request/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^            'links' => \[$/            'links' => [/
s/^            \],$/            ],/
s/^        \];$/        ];/
s/^When returning additional meta data from your resources, you never have to worry about accidentally overriding the `links` or `meta` keys that are automatically added by Laravel when returning paginated responses\. Any additional `links` you define will be merged with the links provided by the paginator\.$/追加のメタデータをリソースから返す場合、ページ付けレスポンスへLaravelが自動的に付け加える、`links`や`meta`キーを意図せずオーバーライドしてしまう心配はありません。追加の`links`定義は、ペジネータが提供するリンク情報にマージされます。/
s/^#### Top Level Meta Data$/#### トップレベルメタデータ/
s/^Sometimes you may wish to only include certain meta data with a resource response if the resource is the outer-most resource being returned\. Typically, this includes meta information about the response as a whole\. To define this meta data, add a `with` method to your resource class\. This method should return an array of meta data to be included with the resource response only when the resource is the outer-most resource being rendered:$/一番外側のリソースが返される場合にのみ、特定のメタデータをリソースレスポンスへ含めたい場合があります。典型的な例は、レスポンス全体のメタ情報です。こうしたメタデータを定義するには、リソースクラスへ`with`メソッドを追加します。このメソッドには、一番外側のリソースを返す場合のみ、リソースレスポンスへ含めるメタデータの配列を返します。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource collection into an array\.$/         * コレクションリソースを配列へ変換/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get additional data that should be returned with the resource array\.$/         * リソース配列と共に返すべき、追加データの取得/
s/^         \*$/         */
s/^         \* @param \\Illuminate\\Http\\Request  $request$/         * @param \\Illuminate\\Http\\Request  $request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^                'meta' => \[$/                'meta' => [/
s/^                \],$/                ],/
s/^            \];$/            ];/
s/^#### Adding Meta Data When Constructing Resources$/#### リソース構築時のメタデータ追加/
s/^You may also add top-level data when constructing resource instances in your route or controller\. The `additional` method, which is available on all resources, accepts an array of data that should be added to the resource response:$/ルートやコントローラの中で、リソースインスタンスを構築する時に、トップレベルのデータを追加することもできます。全リソースの中で利用可能な`additional`メソッドは、リソースレスポンスへ含めるべき追加データの配列を引数に取ります。/
s/^                    ->additional(\['meta' => \[$/                    ->additional(['meta' => [/
s/^                    \]\]);$/                    ]]);/
s/^## Resource Responses$/## リソースレスポンス/
s/^As you have already read, resources may be returned directly from routes and controllers:$/既に説明したように、リソースはルートかコントローラから直接返されます。/
s/^However, sometimes you may need to customize the outgoing HTTP response before it is sent to the client\. There are two ways to accomplish this\. First, you may chain the `response` method onto the resource\. This method will return an `Illuminate\\Http\\Response` instance, allowing you full control of the response's headers:$/しかし、利用者へ送信する前に、HTTPレスポンスをカスタマイズする必要が時々あります。リソースに対して`response`メソッドをチェーンしてください。このメソッドは、`Illuminate\\Http\\Response`インスタンスを返しますので、レスポンスヘッダを完全にコントロールできます。/
s/^Alternatively, you may define a `withResponse` method within the resource itself\. This method will be called when the resource is returned as the outer-most resource in a response:$/もしくは、`withResponse`メソッドをレスポンス自身の中で定義することもできます。このメソッドはレスポンスの中で一番外側のリソースとして返す場合に呼び出されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Transform the resource into an array\.$/         * リソースを配列へ変換する/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \[$/            return [/
s/^            \];$/            ];/
s/^        \/\*\*$/        \/**/
s/^         \* Customize the outgoing response for the resource\.$/         * リソースに対して送信するレスポンスのカスタマイズ/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Http\\Request$/         * @param  \\Illuminate\\Http\\Request/
s/^         \* @param  \\Illuminate\\Http\\Response$/         * @param  \\Illuminate\\Http\\Response/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
