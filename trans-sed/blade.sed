s/^# Blade Templates$/# Bladeテンプレート/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Template Inheritance\](#template-inheritance)$/- [テンプレートの継承](#template-inheritance)/
s/^    - \[Defining A Layout\](#defining-a-layout)$/    - [レイアウトの定義](#defining-a-layout)/
s/^    - \[Extending A Layout\](#extending-a-layout)$/    - [レイアウトの拡張](#extending-a-layout)/
s/^- \[Components & Slots\](#components-and-slots)$/- [コンポーネントとスロット](#components-and-slots)/
s/^- \[Displaying Data\](#displaying-data)$/- [データ表示](#displaying-data)/
s/^    - \[Blade & JavaScript Frameworks\](#blade-and-javascript-frameworks)$/    - [BladeとJavaScriptフレームワーク](#blade-and-javascript-frameworks)/
s/^- \[Control Structures\](#control-structures)$/- [制御構文](#control-structures)/
s/^    - \[If Statements\](#if-statements)$/    - [If文](#if-statements)/
s/^    - \[Switch Statements\](#switch-statements)$/    - [Switch文](#switch-statements)/
s/^    - \[Loops\](#loops)$/    - [繰り返し](#loops)/
s/^    - \[The Loop Variable\](#the-loop-variable)$/    - [ループ変数](#the-loop-variable)/
s/^    - \[Comments\](#comments)$/    - [コメント](#comments)/
s/^    - \[PHP\](#php)$/    - [PHP](#php)/
s/^- \[Including Sub-Views\](#including-sub-views)$/- [サブビューの読み込み](#including-sub-views)/
s/^    - \[Rendering Views For Collections\](#rendering-views-for-collections)$/    - [コレクションのレンダービュー](#rendering-views-for-collections)/
s/^- \[Stacks\](#stacks)$/- [スタック](#stacks)/
s/^- \[Service Injection\](#service-injection)$/- [サービス注入](#service-injection)/
s/^- \[Extending Blade\](#extending-blade)$/- [Blade拡張](#extending-blade)/
s/^    - \[Custom If Statements\](#custom-if-statements)$/    - [カスタムif文](#custom-if-statements)/
s/^## Introduction$/## イントロダクション/
s/^Blade is the simple, yet powerful templating engine provided with Laravel\. Unlike other popular PHP templating engines, Blade does not restrict you from using plain PHP code in your views\. In fact, all Blade views are compiled into plain PHP code and cached until they are modified, meaning Blade adds essentially zero overhead to your application\. Blade view files use the `\.blade\.php` file extension and are typically stored in the `resources\/views` directory\.$/BladeはシンプルながらパワフルなLaravelのテンプレートエンジンです。他の人気のあるPHPテンプレートエンジンとは異なり、ビューの中にPHPを直接記述することを許しています。全BladeビューはPHPへコンパイルされ、変更があるまでキャッシュされます。つまりアプリケーションのオーバーヘッドは基本的に０です。Bladeビューには`.blade.php`ファイル拡張子を付け、通常は`resources\/views`ディレクトリの中に設置します。/
s/^## Template Inheritance$/## テンプレートの継承/
s/^### Defining A Layout$/### レイアウト定義/
s/^Two of the primary benefits of using Blade are _template inheritance_ and _sections_\. To get started, let's take a look at a simple example\. First, we will examine a "master" page layout\. Since most web applications maintain the same general layout across various pages, it's convenient to define this layout as a single Blade view:$/Bladeを使用する主な利点は、**テンプレートの継承**と**セクション**です。初めに簡単な例を見てください。通常ほとんどのアプリケーションでは、数多くのページを同じ全体的なレイアウトの中に表示するので、最初は"master"ページレイアウトを確認しましょう。レイアウトは一つのBladeビューとして、簡単に定義できます。/
s/^    <!-- Stored in resources\/views\/layouts\/app\.blade\.php -->$/    <!-- resources\/views\/layouts\/app.blade.phpとして保存 -->/
s/^            <title>App Name - @yield('title')<\/title>$/            <title>アプリ名 - @yield('title')<\/title>/
s/^                This is the master sidebar\.$/                ここがメインのサイドバー/
s/^As you can see, this file contains typical HTML mark-up\. However, take note of the `@section` and `@yield` directives\. The `@section` directive, as the name implies, defines a section of content, while the `@yield` directive is used to display the contents of a given section\.$/ご覧の通り、典型的なHTMLマークアップで構成されたファイルです。しかし、`@section`や`@yield`ディレクティブに注目です。`@section`ディレクティブは名前が示す通りにコンテンツのセクションを定義し、一方の`@yield`ディレクティブは指定したセクションの内容を表示するために使用します。/
s/^Now that we have defined a layout for our application, let's define a child page that inherits the layout\.$/これでアプリケーションのレイアウトが定義できました。このレイアウトを継承する、子のページを定義しましょう。/
s/^### Extending A Layout$/### レイアウト拡張/
s/^When defining a child view, use the Blade `@extends` directive to specify which layout the child view should "inherit"\. Views which extend a Blade layout may inject content into the layout's sections using `@section` directives\. Remember, as seen in the example above, the contents of these sections will be displayed in the layout using `@yield`:$/子のビューを定義するには、「継承」するレイアウトを指定する、Blade `@extends`ディレクティブを使用します。Bladeレイアウトを拡張するビューは、`@section`ディレクティブを使用し、レイアウトのセクションに内容を挿入します。前例にあるようにレイアウトでセクションを表示するには`@yield`を使用します。/
s/^    <!-- Stored in resources\/views\/child\.blade\.php -->$/    <!-- resources\/views\/child.blade.phpとして保存 -->/
s/^    @extends('layouts\.app')$/    @extends('layouts.app')/
s/^        <p>This is appended to the master sidebar\.<\/p>$/        <p>ここはメインのサイドバーに追加される<\/p>/
s/^        <p>This is my body content\.<\/p>$/        <p>ここが本文のコンテンツ<\/p>/
s/^In this example, the `sidebar` section is utilizing the `@@parent` directive to append (rather than overwriting) content to the layout's sidebar\. The `@@parent` directive will be replaced by the content of the layout when the view is rendered\.$/この例の`sidebar`セクションでは、レイアウトのサイドバーの内容をコンテンツに上書きするのではなく追加するために`@@parent`ディレクティブを使用しています。`@@parent`ディレクティブはビューをレンダーするときに、レイアウトの内容に置き換わります。/
s/^> {tip} Contrary to the previous example, this `sidebar` section ends with `@endsection` instead of `@show`\. The `@endsection` directive will only define a section while `@show` will define and \*\*immediately yield\*\* the section\.$/> {tip} 直前の例とは異なり、この`sidebar`セクションは`@show`の代わりに`@endsection`で終わっています。`@endsection`ディレクティブはセクションを定義するだけに対し、`@show`は定義しつつ、そのセクションを**即時にその場所に取り込みます**。/
s/^Blade views may be returned from routes using the global `view` helper:$/Bladeビューはグローバルな`view`ヘルパを使用し、ルートから返すことができます。/
s/^## Components & Slots$/## コンポーネントとスロット/
s/^Components and slots provide similar benefits to sections and layouts; however, some may find the mental model of components and slots easier to understand\. First, let's imagine a reusable "alert" component we would like to reuse throughout our application:$/コンポーネントとスロットは、セクションとレイアウトと似た利便を提供します。しかし、コンポーネントとスロットのメンタルモデルのほうが簡単に理解できることに気づくはずです。最初に、アプリケーション全体で再利用する、"alert"コンポーネントをイメージしてください。/
s/^    <!-- \/resources\/views\/alert\.blade\.php -->$/    <!-- \/resources\/views\/alert.blade.php -->/
s/^The `{{ $slot }}` variable will contain the content we wish to inject into the component\. Now, to construct this component, we can use the `@component` Blade directive:$/`{{ $slot }}`変数は、このコンポーネントへ注入しようとする内容を含んでいます。では、このコンポーネントを構築するため、`@component` Bladeディレクティブを使いましょう。/
s/^Sometimes it is helpful to define multiple slots for a component\. Let's modify our alert component to allow for the injection of a "title"\. Named slots may be displayed by "echoing" the variable that matches their name:$/一つのコンポーネントに対し、複数のスロットを定義するのも、役立つことがあるでしょう。"title"を注入できるようにalertコンポーネントを改造してみましょう。名前付きスロットは、名前に一致する変数を"echo"します。/
s/^    <!-- \/resources\/views\/alert\.blade\.php -->$/    <!-- \/resources\/views\/alert.blade.php -->/
s/^Now, we can inject content into the named slot using the `@slot` directive\. Any content not within a `@slot` directive will be passed to the component in the `$slot` variable:$/これで、`@slot`ディレクティブを使い、名前付きスロットへ内容を注入できます。`@slot`ディレクティブ範囲外の全内容は、`$slot`変数の中のコンポーネントへ渡されます。/
s/^#### Passing Additional Data To Components$/#### コンポーネントへ追加のデータを渡す/
s/^Sometimes you may need to pass additional data to a component\. For this reason, you can pass an array of data as the second argument to the `@component` directive\. All of the data will be made available to the component template as variables:$/場合により、コンポーネントへ追加のデータを渡す必要が起きます。そのため、`@component`ディレクティブの第２引数で、データの配列が渡せます。全データはテンプレート中で変数として利用できます。/
s/^    @component('alert', \['foo' => 'bar'\])$/    @component('alert', ['foo' => 'bar'])/
s/^        \.\.\.$/        .../
s/^#### Aliasing Components$/#### コンポーネントの別名/
s/^If your Blade components are stored in a sub-directory, you may wish to alias them for easier access\. For example, imagine a Blade component that is stored at `resources\/views\/components\/alert\.blade\.php`\. You may use the `component` method to alias the component from `components\.alert` to `alert`\. Typically, this should be done in the `boot` method of your `AppServiceProvider`:$/Bladeコンポーネントをサブディレクトリへ保存している場合、簡単にアクセスできるようにエイリアスを使いたくなります。たとえば、`resources\/views\/components\/alert.blade.php`へBladeコンポーネントを保存していると想像してください。`component`メソッドを使い、`components.alert`コンポーネントの別名を`alert`と名付けられます。通常、`AppServiceProvider`の`boot`メソッドで別名を指定します。/
s/^    Blade::component('components\.alert', 'alert');$/    Blade::component('components.alert', 'alert');/
s/^Once the component has been aliased, you may render it using a directive:$/コンポーネントへ別名を付けたら、ディレクティブでレンダーできます。」/
s/^    @alert(\['type' => 'danger'\])$/    @alert(['type' => 'danger'])/
s/^You may omit the component parameters if it has no additional slots:$/追加のスロットがなければ、コンポーネントの引数を省略できます。/
s/^## Displaying Data$/## データ表示/
s/^You may display data passed to your Blade views by wrapping the variable in curly braces\. For example, given the following route:$/Bladeビューに渡されたデータは、波括弧で変数を囲うことで表示できます。たとえば、次のルートがあるとしましょう。/
s/^        return view('welcome', \['name' => 'Samantha'\]);$/        return view('welcome', ['name' => 'Samantha']);/
s/^You may display the contents of the `name` variable like so:$/`name`変数の内容を表示しましょう。/
s/^    Hello, {{ $name }}\.$/    Hello, {{ $name }}./
s/^Of course, you are not limited to displaying the contents of the variables passed to the view\. You may also echo the results of any PHP function\. In fact, you can put any PHP code you wish inside of a Blade echo statement:$/もちろんビューに渡された変数の内容を表示するだけに限られません。PHP関数の結果をechoすることもできます。実際、どんなPHPコードもBladeのecho文の中に書けます。/
s/^    The current UNIX timestamp is {{ time() }}\.$/    The current UNIX timestamp is {{ time() }}./
s/^> {tip} Blade `{{ }}` statements are automatically sent through PHP's `htmlspecialchars` function to prevent XSS attacks\.$/> {tip} Bladeの`{{ }}`記法はXSS攻撃を防ぐため、自動的にPHPの`htmlspecialchars`関数を通されます。/
s/^#### Displaying Unescaped Data$/#### エスケープしないデータの表示/
s/^By default, Blade `{{ }}` statements are automatically sent through PHP's `htmlspecialchars` function to prevent XSS attacks\. If you do not want your data to be escaped, you may use the following syntax:$/デフォルトでブレードの`{{ }}`文はXSS攻撃を防ぐために、PHPの`htmlspecialchars`関数を自動的に通されます。しかしデータをエスケープしたくない場合は、以下の構文を使ってください。/
s/^    Hello, {!! $name !!}\.$/    Hello, {!! $name !!}./
s/^> {note} Be very careful when echoing content that is supplied by users of your application\. Always use the escaped, double curly brace syntax to prevent XSS attacks when displaying user supplied data\.$/> {note} アプリケーションでユーザーの入力内容をechoする場合は注意が必要です。ユーザーの入力を表示するときは、常に二重の波括弧の記法でHTMLエンティティにエスケープすべきです。/
s/^#### Rendering JSON$/#### JSONのレンダ/
s/^Sometimes you may pass an array to your view with the intention of rendering it as JSON in order to initialize a JavaScript variable\. For example:$/JavaScriptの変数を初期化するために、配列をビューに渡してJSONとして描画することができます。/
s/^However, instead of manually calling `json_encode`, you may use the `@json` Blade directive:$/その際、`json_encode`を使う代わりに、`@json`ディレクティブを使うことができます。/
s/^#### HTML Entity Encoding$/#### HTMLエンティティエンコーディング/
s/^By default, Blade (and the Laravel `e` helper) will double encode HTML entities\. If you would like to disable double encoding, call the `Blade::withoutDoubleEncoding` method from the `boot` method of your `AppServiceProvider`:$/Blade（およびLaravelの`e`ヘルパ）はデフォルトで、HTMLエンティティをdouble encodeします。double encodeを無効にするには、`AppServiceProvider`の`boot`メソッドで、`Blade::withoutDoubleEncoding`メソッドを呼び出してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Bootstrap any application services\.$/         * アプリケーションの全サービスの初期処理/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^### Blade & JavaScript Frameworks$/### BladeとJavaScriptフレームワーク/
s/^Since many JavaScript frameworks also use "curly" braces to indicate a given expression should be displayed in the browser, you may use the `@` symbol to inform the Blade rendering engine an expression should remain untouched\. For example:$/多くのJavaScriptフレームワークでも、与えられた式をブラウザに表示するために波括弧を使っていますので、`@`シンボルでBladeレンダリングエンジンに波括弧の展開をしないように指示することが可能です。/
s/^    Hello, @{{ name }}\.$/    Hello, @{{ name }}./
s/^In this example, the `@` symbol will be removed by Blade; however, `{{ name }}` expression will remain untouched by the Blade engine, allowing it to instead be rendered by your JavaScript framework\.$/この例で、`@`記号はBladeにより削除されます。しかし、`{{ name }}`式はBladeエンジンにより変更されずにそのまま残り、JavaScriptフレームワークによりレンダリングできるようになります。/
s/^#### The `@verbatim` Directive$/#### `@verbatim`ディレクティブ/
s/^If you are displaying JavaScript variables in a large portion of your template, you may wrap the HTML in the `@verbatim` directive so that you do not have to prefix each Blade echo statement with an `@` symbol:$/テンプレートの広い箇所でJavaScript変数を表示する場合は、HTMLを`@verbatim`ディレクティブで囲めば、各Blade echo文の先頭に`@`記号を付ける必要はなくなります。/
s/^            Hello, {{ name }}\.$/            Hello, {{ name }}./
s/^## Control Structures$/## 制御構文/
s/^In addition to template inheritance and displaying data, Blade also provides convenient shortcuts for common PHP control structures, such as conditional statements and loops\. These shortcuts provide a very clean, terse way of working with PHP control structures, while also remaining familiar to their PHP counterparts\.$/テンプレートの継承とデータ表示に付け加え、Bladeは条件文やループなどの一般的なPHPの制御構文の便利な短縮記述方法を提供しています。こうした短縮形は、PHP制御構文の美しく簡潔な記述を提供しつつも、対応するPHPの構文と似せています。/
s/^### If Statements$/### If文/
s/^You may construct `if` statements using the `@if`, `@elseif`, `@else`, and `@endif` directives\. These directives function identically to their PHP counterparts:$/`if`文の構文には、`@if`、`@elseif`、`@else`、`@endif`ディレクティブを使用します。これらの使い方はPHPの構文と同じです。/
s/^        I have one record!$/        １レコードある！/
s/^        I have multiple records!$/        複数レコードある！/
s/^        I don't have any records!$/        レコードがない！/
s/^For convenience, Blade also provides an `@unless` directive:$/便利な@unlessディレクティブも提供しています。/
s/^        You are not signed in\.$/        あなたはログインしていません。/
s/^In addition to the conditional directives already discussed, the `@isset` and `@empty` directives may be used as convenient shortcuts for their respective PHP functions:$/さらに、既に説明したように`@isset`と`@empty`ディレクティブも、同名のPHP関数の便利なショートカットとして使用できます。/
s/^        \/\/ $records is defined and is not null\.\.\.$/        \/\/ $recordsは定義済みでnullでない/
s/^        \/\/ $records is "empty"\.\.\.$/        \/\/ $recordsが「空」だ/
s/^#### Authentication Directives$/#### 認証ディレクティブ/
s/^The `@auth` and `@guest` directives may be used to quickly determine if the current user is authenticated or is a guest:$/`@auth`と`@guest`ディレクティブは、現在のユーザーが認証されているか、もしくはゲストであるかを簡単に判定するために使用します。/
s/^        \/\/ The user is authenticated\.\.\.$/        \/\/ ユーザーは認証済み/
s/^        \/\/ The user is not authenticated\.\.\.$/        \/\/ ユーザーは認証されていない/
s/^If needed, you may specify the \[authentication guard\](\/docs\/{{version}}\/authentication) that should be checked when using the `@auth` and `@guest` directives:$/必要であれば、`@auth`と`@guest`ディレクティブ使用時に、確認すべき[認証ガード](\/docs\/{{version}}\/authentication)を指定できます。/
s/^        \/\/ The user is authenticated\.\.\.$/        \/\/ ユーザーは認証済み/
s/^        \/\/ The user is not authenticated\.\.\.$/        \/\/ ユーザーは認証されていない/
s/^#### Section Directives$/#### セクションディレクティブ/
s/^You may check if a section has content using the `@hasSection` directive:$/セクションがコンテンツを持っているかを判定したい場合は、`@hasSection`ディレクティブを使用します。/
s/^### Switch Statements$/### Switch文/
s/^Switch statements can be constructed using the `@switch`, `@case`, `@break`, `@default` and `@endswitch` directives:$/`@switch`、`@case`、`@break`、`@default`、`@endswitch`ディレクティブを使用し、switch文を構成できます。/
s/^            First case\.\.\.$/            最初のケース/
s/^            Second case\.\.\.$/            ２番めのケース/
s/^            Default case\.\.\.$/            デフォルトのケース/
s/^### Loops$/### 繰り返し/
s/^In addition to conditional statements, Blade provides simple directives for working with PHP's loop structures\. Again, each of these directives functions identically to their PHP counterparts:$/条件文に加え、BladeはPHPがサポートしている繰り返し構文も提供しています。これらも、対応するPHP構文と使い方は一緒です。/
s/^    @for ($i = 0; $i < 10; $i\+\+)$/    @for ($i = 0; $i < 10; $i++)/
s/^        The current value is {{ $i }}$/        現在の値は： {{ $i }}/
s/^        <p>This is user {{ $user->id }}<\/p>$/        <p>これは {{ $user->id }} ユーザーです。<\/p>/
s/^        <p>No users<\/p>$/        <p>ユーザーなし<\/p>/
s/^        <p>I'm looping forever\.<\/p>$/        <p>無限ループ中<\/p>/
s/^> {tip} When looping, you may use the \[loop variable\](#the-loop-variable) to gain valuable information about the loop, such as whether you are in the first or last iteration through the loop\.$/> {tip} 繰り返し中は[ループ変数](#the-loop-variable)を使い、繰り返しの最初や最後なのかなど、繰り返し情報を取得できます。/
s/^When using loops you may also end the loop or skip the current iteration:$/繰り返しを使用する場合、ループを終了するか、現在の繰り返しをスキップすることもできます。/
s/^You may also include the condition with the directive declaration in one line:$/もしくは、ディレクティブに条件を記述して、一行で済ますこともできます。/
s/^### The Loop Variable$/### ループ変数/
s/^When looping, a `$loop` variable will be available inside of your loop\. This variable provides access to some useful bits of information such as the current loop index and whether this is the first or last iteration through the loop:$/繰り返し中は、`$loop`変数が使用できます。この変数により、現在のループインデックスや繰り返しの最初／最後なのかなど、便利な情報にアクセスできます。/
s/^            This is the first iteration\.$/            これは最初の繰り返し/
s/^            This is the last iteration\.$/            これは最後の繰り返し/
s/^        <p>This is user {{ $user->id }}<\/p>$/        <p>これは {{ $user->id }} ユーザーです。<\/p>/
s/^If you are in a nested loop, you may access the parent loop's `$loop` variable via the `parent` property:$/ネストした繰り返しでは、親のループの`$loop`変数に`parent`プロパティを通じアクセスできます。/
s/^                This is first iteration of the parent loop\.$/                これは親のループの最初の繰り返しだ/
s/^The `$loop` variable also contains a variety of other useful properties:$/`$loop`変数は、他にもいろいろと便利なプロパティを持っています。/
s/^Property  | Description$/プロパティ  | 説明/
s/^`$loop->index`  |  The index of the current loop iteration (starts at 0)\.$/`$loop->index`  |  現在のループのインデックス（初期値0）/
s/^`$loop->iteration`  |  The current loop iteration (starts at 1)\.$/`$loop->iteration`  |  現在の繰り返し数（初期値1）/
s/^`$loop->remaining`  |  The iterations remaining in the loop\.$/`$loop->remaining`  |  繰り返しの残り数/
s/^`$loop->count`  |  The total number of items in the array being iterated\.$/`$loop->count`  |  繰り返し中の配列の総アイテム数/
s/^`$loop->first`  |  Whether this is the first iteration through the loop\.$/`$loop->first`  |  ループの最初の繰り返しか/
s/^`$loop->last`  |  Whether this is the last iteration through the loop\.$/`$loop->last`  |  ループの最後の繰り返しか/
s/^`$loop->depth`  |  The nesting level of the current loop\.$/`$loop->depth`  |  現在のループのネストレベル/
s/^`$loop->parent`  |  When in a nested loop, the parent's loop variable\.$/`$loop->parent`  |  ループがネストしている場合、親のループ変数/
s/^### Comments$/### コメント/
s/^Blade also allows you to define comments in your views\. However, unlike HTML comments, Blade comments are not included in the HTML returned by your application:$/Bladeでビューにコメントを書くこともできます。HTMLコメントと異なり、Bladeのコメントはアプリケーションから返されるHTMLには含まれません。/
s/^    {{-- This comment will not be present in the rendered HTML --}}$/    {{-- このコメントはレンダー後のHTMLには現れない --}}/
s/^In some situations, it's useful to embed PHP code into your views\. You can use the Blade `@php` directive to execute a block of plain PHP within your template:$/PHPコードをビューへ埋め込むと便利な場合もあります。Bladeの`@php`ディレクティブを使えば、テンプレートの中でプレーンなPHPブロックを実行できます。/
s/^> {tip} While Blade provides this feature, using it frequently may be a signal that you have too much logic embedded within your template\.$/> {tip} Bladeはこの機能を提供していますが、数多く使用しているのであれば、それはテンプレートへ多すぎるロジックを埋め込んでいるサインです。/
s/^## Including Sub-Views$/## サブビューの読み込み/
s/^Blade's `@include` directive allows you to include a Blade view from within another view\. All variables that are available to the parent view will be made available to the included view:$/Bladeの`@include`ディレクディブを使えば、ビューの中から簡単に他のBladeビューを取り込めます。読み込み元のビューで使用可能な変数は、取り込み先のビューでも利用可能です。/
s/^        @include('shared\.errors')$/        @include('shared.errors')/
s/^            <!-- Form Contents -->$/            <!-- フォームの内容 -->/
s/^Even though the included view will inherit all data available in the parent view, you may also pass an array of extra data to the included view:$/親のビューの全データ変数が取り込み先のビューに継承されますが、追加のデータも配列で渡すことができます。/
s/^    @include('view\.name', \['some' => 'data'\])$/    @include('view.name', ['some' => 'data'])/
s/^Of course, if you attempt to `@include` a view which does not exist, Laravel will throw an error\. If you would like to include a view that may or may not be present, you should use the `@includeIf` directive:$/もちろん、存在しないビューを`@include`すれば、Laravelはエラーを投げます。存在しているかどうかわからないビューを取り込みたい場合は、`@includeIf`ディレクティブを使います。/
s/^    @includeIf('view\.name', \['some' => 'data'\])$/    @includeIf('view.name', ['some' => 'data'])/
s/^If you would like to `@include` a view depending on a given boolean condition, you may use the `@includeWhen` directive:$/指定した論理条件にもとづいて`@include`したい場合は、`@includeWhen`ディレクティブを使用します。/
s/^    @includeWhen($boolean, 'view\.name', \['some' => 'data'\])$/    @includeWhen($boolean, 'view.name', ['some' => 'data'])/
s/^To include the first view that exists from a given array of views, you may use the `includeFirst` directive:$/指定するビューの配列から、最初に存在するビューを読み込むには、`includeFirst`ディレクティブを使用します。/
s/^    @includeFirst(\['custom\.admin', 'admin'\], \['some' => 'data'\])$/    @includeFirst(['custom.admin', 'admin'], ['some' => 'data'])/
s/^> {note} You should avoid using the `__DIR__` and `__FILE__` constants in your Blade views, since they will refer to the location of the cached, compiled view\.$/> {note} Bladeビューの中では`__DIR__`や`__FILE__`を使わないでください。キャッシュされたコンパイル済みのビューのパスが返されるからです。/
s/^### Rendering Views For Collections$/### コレクションのレンダービュー/
s/^You may combine loops and includes into one line with Blade's `@each` directive:$/Bladeの`@each`ディレクティブを使い、ループとビューの読み込みを組み合わせられます。/
s/^    @each('view\.name', $jobs, 'job')$/    @each('view.name', $jobs, 'job')/
s/^The first argument is the view partial to render for each element in the array or collection\. The second argument is the array or collection you wish to iterate over, while the third argument is the variable name that will be assigned to the current iteration within the view\. So, for example, if you are iterating over an array of `jobs`, typically you will want to access each job as a `job` variable within your view partial\. The key for the current iteration will be available as the `key` variable within your view partial\.$/最初の引数は配列かコレクションの各要素をレンダーするための部分ビューです。第２引数は繰り返し処理する配列かコレクションで、第３引数はビューの中の繰り返し値が代入される変数名です。ですから、たとえば`jobs`配列を繰り返す場合なら、部分ビューの中で各ジョブには`job`変数としてアクセスしたいと通常は考えるでしょう。 現在の繰り返しのキーは、部分ビューの中の`key`変数で参照できます。/
s/^You may also pass a fourth argument to the `@each` directive\. This argument determines the view that will be rendered if the given array is empty\.$/`@each`ディレクティブには第４引数を渡たせます。この引数は配列が空の場合にレンダーされるビューを指定します。/
s/^    @each('view\.name', $jobs, 'job', 'view\.empty')$/    @each('view.name', $jobs, 'job', 'view.empty')/
s/^> {note} Views rendered via `@each` do not inherit the variables from the parent view\. If the child view requires these variables, you should use `@foreach` and `@include` instead\.$/> {note} `@each`を使ってレンダされるビューは、親のビューから変数を継承しません。子ビューで親ビューの変数が必要な場合は、代わりに`@foreach`と`@include`を使用してください。/
s/^## Stacks$/## スタック/
s/^Blade allows you to push to named stacks which can be rendered somewhere else in another view or layout\. This can be particularly useful for specifying any JavaScript libraries required by your child views:$/Bladeはさらに、他のビューやレイアウトでレンダーできるように、名前付きのスタックへ内容を退避できます。子ビューで必要なJavaScriptを指定する場合に、便利です。/
s/^        <script src="\/example\.js"><\/script>$/        <script src="\/example.js"><\/script>/
s/^You may push to a stack as many times as needed\. To render the complete stack contents, pass the name of the stack to the `@stack` directive:$/必要なだけ何回もスタックをプッシュできます。スタックした内容をレンダーするには、`@stack`ディレクティブにスタック名を指定してください。/
s/^        <!-- Head Contents -->$/        <!-- Headの内容 -->/
s/^If you would like to prepend content onto the beginning of a stack, you should use the `@prepend` directive:$/スタックの先頭に内容を追加したい場合は、`@prepend`ディレクティブを使用してください。/
s/^        This will be second\.\.\.$/        ここは２番目/
s/^    \/\/ Later\.\.\.$/    \/\/ …後から/
s/^        This will be first\.\.\.$/        ここは最初/
s/^## Service Injection$/## サービス注入/
s/^The `@inject` directive may be used to retrieve a service from the Laravel \[service container\](\/docs\/{{version}}\/container)\. The first argument passed to `@inject` is the name of the variable the service will be placed into, while the second argument is the class or interface name of the service you wish to resolve:$/`@inject`ディレクティブはLaravelの[サービスコンテナ](\/docs\/{{version}}\/container)からサービスを取得するために使用します。`@inject`の最初の引数はそのサービスを取り込む変数名で、第２引数は依存解決したいクラス／インターフェイス名です。/
s/^        Monthly Revenue: {{ $metrics->monthlyRevenue() }}\.$/        Monthly Revenue: {{ $metrics->monthlyRevenue() }}./
s/^## Extending Blade$/## Blade拡張/
s/^Blade allows you to define your own custom directives using the `directive` method\. When the Blade compiler encounters the custom directive, it will call the provided callback with the expression that the directive contains\.$/Bladeでは`directive`メソッドを使い、自分のカスタムディレクティブを定義することができます。Bladeコンパイラがそのカスタムディレクティブを見つけると、そのディレクティブに渡される引数をコールバックへの引数として呼び出します。/
s/^The following example creates a `@datetime($var)` directive which formats a given `$var`, which should be an instance of `DateTime`:$/次の例は`@datetime($var)`ディレクティブを作成し、渡される`DateTime`インスタンスの`$var`をフォーマットします。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービスの初期起動後に登録する/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナへ結合を登録する/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^As you can see, we will chain the `format` method onto whatever expression is passed into the directive\. So, in this example, the final PHP generated by this directive will be:$/ご覧の通り、ディレクティブがどんなものであれ、渡された引数に`format`メソッドをチェーンし、呼び出しています。そのため、この例のディレクティブの場合、最終的に生成されるPHPコードは、次のようになります。/
s/^> {note} After updating the logic of a Blade directive, you will need to delete all of the cached Blade views\. The cached Blade views may be removed using the `view:clear` Artisan command\.$/> {note} Bladeディレクティブのロジックを更新した後に、Bladeビューのキャッシュを全部削除する必要があります。`view:clear` Artisanコマンドで、キャッシュされているBladeビューを削除できます。/
s/^### Custom If Statements$/### カスタムif文/
s/^Programming a custom directive is sometimes more complex than necessary when defining simple, custom conditional statements\. For that reason, Blade provides a `Blade::if` method which allows you to quickly define custom conditional directives using Closures\. For example, let's define a custom conditional that checks the current application environment\. We may do this in the `boot` method of our `AppServiceProvider`:$/シンプルなカスタム条件文を定義する時、必要以上にカスタムディレクティブのプログラミングが複雑になってしまうことが、時々起きます。そのため、Bladeはクロージャを使用し、カスタム条件ディレクティブを素早く定義できるように、`Blade::if`メソッドを提供しています。例として、現在のアプリケーション環境をチェックするカスタム条件を定義してみましょう。`AppServiceProvider`の`boot`メソッドで行います。/
s/^    \/\*\*$/    \/**/
s/^     \* Perform post-registration booting of services\.$/     * サービスの初期処理後に実行/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Once the custom conditional has been defined, we can easily use it on our templates:$/カスタム条件を定義したら、テンプレートの中で簡単に利用できます。/
s/^        \/\/ The application is in the local environment\.\.\.$/        \/\/ アプリケーションはlocal環境/
s/^        \/\/ The application is in the testing environment\.\.\.$/        \/\/ アプリケーションはtesting環境/
s/^        \/\/ The application is not in the local or testing environment\.\.\.$/        \/\/ アプリケーションは、local環境でもtesting環境でもない/
