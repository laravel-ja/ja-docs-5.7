s/^# Artisan Console$/# Artisanコンソール/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Writing Commands\](#writing-commands)$/- [コマンド記述](#writing-commands)/
s/^    - \[Generating Commands\](#generating-commands)$/    - [コマンド生成](#generating-commands)/
s/^    - \[Command Structure\](#command-structure)$/    - [コマンド構造](#command-structure)/
s/^    - \[Closure Commands\](#closure-commands)$/    - [クロージャコマンド](#closure-commands)/
s/^- \[Defining Input Expectations\](#defining-input-expectations)$/- [コマンドライン指定の定義](#defining-input-expectations)/
s/^    - \[Arguments\](#arguments)$/    - [引数](#arguments)/
s/^    - \[Options\](#options)$/    - [オプション](#options)/
s/^    - \[Input Arrays\](#input-arrays)$/    - [入力配列](#input-arrays)/
s/^    - \[Input Descriptions\](#input-descriptions)$/    - [入力の説明](#input-descriptions)/
s/^- \[Command I\/O\](#command-io)$/- [コマンドI\/O](#command-io)/
s/^    - \[Retrieving Input\](#retrieving-input)$/    - [入力の取得](#retrieving-input)/
s/^    - \[Prompting For Input\](#prompting-for-input)$/    - [入力のプロンプト](#prompting-for-input)/
s/^    - \[Writing Output\](#writing-output)$/    - [出力の書き出し](#writing-output)/
s/^- \[Registering Commands\](#registering-commands)$/- [コマンド登録](#registering-commands)/
s/^- \[Programmatically Executing Commands\](#programmatically-executing-commands)$/- [プログラムによるコマンド実行](#programmatically-executing-commands)/
s/^    - \[Calling Commands From Other Commands\](#calling-commands-from-other-commands)$/    - [他のコマンドからの呼び出し](#calling-commands-from-other-commands)/
s/^## Introduction$/## イントロダクション/
s/^Artisan is the command-line interface included with Laravel\. It provides a number of helpful commands that can assist you while you build your application\. To view a list of all available Artisan commands, you may use the `list` command:$/ArtisanはLaravelに含まれているコマンドラインインターフェイスです。アプリケーション開発全体で役に立つ、数多くのコマンドを提供しています。使用可能な全Artisanコマンドを確認するには、`list`コマンドを使います。/
s/^Every command also includes a "help" screen which displays and describes the command's available arguments and options\. To view a help screen, precede the name of the command with `help`:$/全てのコマンドは「ヘルプ」が用意されており、説明と使用できる引数、オプションを表示します。ヘルプを表示するには`help`に続いてコマンド名を入力してください。/
s/^All Laravel applications include Tinker, a REPL powered by the \[PsySH\](https:\/\/github\.com\/bobthecow\/psysh) package\. Tinker allows you to interact with your entire Laravel application on the command line, including the Eloquent ORM, jobs, events, and more\. To enter the Tinker environment, run the `tinker` Artisan command:$/全てのLaravelアプリケーションには、[PsySH](https:\/\/github.com\/bobthecow\/psysh)パッケージによるREPLである、Tinkerが含まれています。Tinkerにより、Laravel全体のEloquent ORM、ジョブ、イベントなどをコマンドラインから操作できます。Tinker環境に入るには、`tinker` Artisanコマンドを実行します。/
s/^## Writing Commands$/## コマンド記述/
s/^In addition to the commands provided with Artisan, you may also build your own custom commands\. Commands are typically stored in the `app\/Console\/Commands` directory; however, you are free to choose your own storage location as long as your commands can be loaded by Composer\.$/Artisanに用意されているコマンドに加え、独自のカスタムコマンドも構築できます。コマンドは通常、`app\/Console\/Commands`ディレクトリへ設置します。しかし、Composerによりコマンドがロードできる場所であるならば、自由に設置場所を選べます。/
s/^### Generating Commands$/### コマンド生成/
s/^To create a new command, use the `make:command` Artisan command\. This command will create a new command class in the `app\/Console\/Commands` directory\. Don't worry if this directory does not exist in your application, since it will be created the first time you run the `make:command` Artisan command\. The generated command will include the default set of properties and methods that are present on all commands:$/新しいコマンドを作成するには、`make:command` Artisanコマンドを使います。このコマンドは、`app\/Console\/Commands`ディレクトリへ新しいコマンドクラスを設置します。アプリケーションにこのディレクトリがなくても心配ありません。最初に、`make:command` Artisanコマンドを実行するときに作成されます。生成されたコマンドには、すべてのコマンドで必要な、プロパティとメソッドがデフォルトで一揃い用意されています。/
s/^### Command Structure$/### コマンド構造/
s/^After generating your command, you should fill in the `signature` and `description` properties of the class, which will be used when displaying your command on the `list` screen\. The `handle` method will be called when your command is executed\. You may place your command logic in this method\.$/コマンドが生成できたら、`list`スクリーンでそのコマンドが表示できるように、クラスの`signature`と`description`プロパティを指定してください。`handle`メソッドは、コマンド実行時に呼び出されます。コマンドのロジックは、このメソッドの中へ記述します。/
s/^> {tip} For greater code reuse, it is good practice to keep your console commands light and let them defer to application services to accomplish their tasks\. In the example below, note that we inject a service class to do the "heavy lifting" of sending the e-mails\.$/> {tip} コンソールコマンドを軽いままにし、実行内容をアプリケーションサービスとして遅らせるのは、コードの再利用性のためのグッドプラクティスです。以下の例で、メール送信の「重荷を軽く」するために、サービスクラスを注入しているところに注目してください。/
s/^Let's take a look at an example command\. Note that we are able to inject any dependencies we need into the command's constructor or `handle` method\. The Laravel \[service container\](\/docs\/{{version}}\/container) will automatically inject all dependencies type-hinted in the constructor or `handle` method:$/コマンドのサンプルを見てみましょう。コマンドのコンストラクタ、もしくは`handle`メソッドで、必要な依存を注入できるところに注目してください。Laravelの[サービスコンテナ](\/docs\/{{version}}\/container)は、コンストラクタか`handle`メソッドでタイプヒントされた依存をすべて自動的に注入します。/
s/^        \/\*\*$/        \/**/
s/^         \* The name and signature of the console command\.$/         * コンソールコマンドの名前と引数、オプション/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* The console command description\.$/         * コンソールコマンドの説明/
s/^         \*$/         */
s/^         \* @var string$/         * @var string/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* The drip e-mail service\.$/         * drip Eメールサービス/
s/^         \*$/         */
s/^         \* @var DripEmailer$/         * @var DripEmailer/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new command instance\.$/         * 新しいコマンドインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  DripEmailer  $drip$/         * @param  DripEmailer  $drip/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Execute the console command\.$/         * コンソールコマンドの実行/
s/^         \*$/         */
s/^         \* @return mixed$/         * @return mixed/
s/^         \*\/$/         *\//
s/^### Closure Commands$/### クロージャコマンド/
s/^Closure based commands provide an alternative to defining console commands as classes\. In the same way that route Closures are an alternative to controllers, think of command Closures as an alternative to command classes\. Within the `commands` method of your `app\/Console\/Kernel\.php` file, Laravel loads the `routes\/console\.php` file:$/クロージャベースコマンドは、クラスによりコンソールコマンドを定義する方法の代替手法を提供します。ルートクロージャがコントローラの代替であるのと同じように、コマンドクロージャはコマンドクラスの代替だと考えてください。`app\/Console\/Kernel.php`ファイルの`commands`メソッドの中で、Laravelは`routes\/console.php`ファイルをロードしています。/
s/^    \/\*\*$/    \/**/
s/^     \* Register the Closure based commands for the application\.$/     * アプリケーションのクロージャベースコマンドの登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        require base_path('routes\/console\.php');$/        require base_path('routes\/console.php');/
s/^Even though this file does not define HTTP routes, it defines console based entry points (routes) into your application\. Within this file, you may define all of your Closure based routes using the `Artisan::command` method\. The `command` method accepts two arguments: the \[command signature\](#defining-input-expectations) and a Closure which receives the commands arguments and options:$/HTTPルートは定義していませんが、このファイルはアプリケーションに対する、コンソールベースのエントリポイント（ルート）を定義しているのです。`Artisan::command`メソッドを使い、全クロージャベースルートをこのファイル中で定義します。`command`メソッドは[コマンドの使い方](#defining-input-expectations)と、コマンドの引数とオプションを受け取るクロージャを引数として受け取ります。/
s/^The Closure is bound to the underlying command instance, so you have full access to all of the helper methods you would typically be able to access on a full command class\.$/クロージャは裏で動作するコマンドインスタンスと結合します。そのため、完全なコマンドクラス上でアクセスできる、通常のヘルパメソッドにすべてアクセスできます。/
s/^#### Type-Hinting Dependencies$/#### 依存のタイプヒント/
s/^In addition to receiving your command's arguments and options, command Closures may also type-hint additional dependencies that you would like resolved out of the \[service container\](\/docs\/{{version}}\/container):$/コマンドの引数とオプションに付け加え、コマンドクロージャはタイプヒントによる追加の依存を受け取り、それらは[サービスコンテナ](\/docs\/{{version}}\/container)により依存解決されます。/
s/^#### Closure Command Descriptions$/#### クロージャコマンドの説明/
s/^When defining a Closure based command, you may use the `describe` method to add a description to the command\. This description will be displayed when you run the `php artisan list` or `php artisan help` commands:$/クロージャベースコマンドの定義時には、コマンドの説明を追加するために`describe`メソッドを使います。この説明は`php artisan list`や`php artisan help`コマンド実行時に表示されます。/
s/^## Defining Input Expectations$/## コマンドライン指定の定義/
s/^When writing console commands, it is common to gather input from the user through arguments or options\. Laravel makes it very convenient to define the input you expect from the user using the `signature` property on your commands\. The `signature` property allows you to define the name, arguments, and options for the command in a single, expressive, route-like syntax\.$/コンソールコマンドを書く場合、引数やオプションによりユーザーから情報を入力してもらうのが一般的です。コマンドの`signature`プロパティにユーザーに期待する入力を記述することにより、Laravelではとても便利に定義できます。`signature`プロパティ１行でわかりやすいルート定義のような記法により、コマンドの名前と引数、オプションを定義できます。/
s/^### Arguments$/### 引数/
s/^All user supplied arguments and options are wrapped in curly braces\. In the following example, the command defines one \*\*required\*\* argument: `user`:$/ユーザーから入力してもらう引数とオプションは全て波括弧で囲みます。以下の例の場合、**必須の**`user`コマンド引数を定義しています。/
s/^    \/\*\*$/    \/**/
s/^     \* The name and signature of the console command\.$/     * コンソールコマンドの名前と引数、オプション/
s/^     \*$/     */
s/^     \* @var string$/     * @var string/
s/^     \*\/$/     *\//
s/^You may also make arguments optional and define default values for arguments:$/任意の引数やデフォルト値を指定することも可能です。/
s/^    \/\/ Optional argument\.\.\.$/    \/\/ 任意指定な引数/
s/^    \/\/ Optional argument with default value\.\.\.$/    \/\/ デフォルト値を持つ、任意指定な引数/
s/^### Options$/### オプション/
s/^Options, like arguments, are another form of user input\. Options are prefixed by two hyphens (`--`) when they are specified on the command line\. There are two types of options: those that receive a value and those that don't\. Options that don't receive a value serve as a boolean "switch"\. Let's take a look at an example of this type of option:$/オプションも引数と同様にユーザーからの入力です。コマンドラインで指定する場合、２つのハイフン(`--`)を先頭に付けます。値を取るものと、取らないもの、２つのタイプのオプションがあります。値を取らないオプションは、論理的な「スイッチ」として動作します。このタイプのオプションを確認しましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* The name and signature of the console command\.$/     * コンソールコマンドの名前と引数、オプション/
s/^     \*$/     */
s/^     \* @var string$/     * @var string/
s/^     \*\/$/     *\//
s/^In this example, the `--queue` switch may be specified when calling the Artisan command\. If the `--queue` switch is passed, the value of the option will be `true`\. Otherwise, the value will be `false`:$/この例の場合、Artisanコマンド起動時に、`--queue`スイッチを指定できるようになります。`--queue`スイッチが指定されると、オプションの値は`true`になります。そうでなければ、値は`false`になります。/
s/^#### Options With Values$/#### 値を取るオプション/
s/^Next, let's take a look at an option that expects a value\. If the user must specify a value for an option, suffix the option name with a `=` sign:$/次に、ユーザーによる値の入力を基体するオプションを確認しましょう。ユーザーによりオプションの値の指定が必要である場合、オプション名は`=`記号ではじめます。/
s/^    \/\*\*$/    \/**/
s/^     \* The name and signature of the console command\.$/     * コンソールコマンドの名前と引数、オプション/
s/^     \*$/     */
s/^     \* @var string$/     * @var string/
s/^     \*\/$/     *\//
s/^In this example, the user may pass a value for the option like so:$/この例では、次のようにオプションに値を指定します。/
s/^You may assign default values to options by specifying the default value after the option name\. If no option value is passed by the user, the default value will be used:$/オプション名の後に値を指定することにより、オプションのデフォルト値を指定できます。ユーザーにより値が指定されない場合、デフォルト値が指定されます。/
s/^#### Option Shortcuts$/#### オプションショートカット/
s/^To assign a shortcut when defining an option, you may specify it before the option name and use a | delimiter to separate the shortcut from the full option name:$/オプション定義時にショートカットを割りつけるには、完全なオプション名の前に|で区切り、ショートカットを指定してください。/
s/^### Input Arrays$/### 入力配列/
s/^If you would like to define arguments or options to expect array inputs, you may use the `\*` character\. First, let's take a look at an example that specifies an array argument:$/引数やオプションで、配列による入力を定義したい場合は、`*`文字を使います。最初に引数の配列指定の例を、見てみましょう。/
s/^    email:send {user\*}$/    email:send {user*}/
s/^When calling this method, the `user` arguments may be passed in order to the command line\. For example, the following command will set the value of `user` to `\['foo', 'bar'\]`:$/このメソッド呼び出し時に、`user`引数はコマンドラインの順番に渡されます。以下のコマンドは、`user`に`['foo', 'bar']`をセットします。/
s/^When defining an option that expects an array input, each option value passed to the command should be prefixed with the option name:$/オプションの配列入力を定義する場合、各値はオプション名を付けて指定する必要があります。/
s/^    email:send {user} {--id=\*}$/    email:send {user} {--id=*}/
s/^### Input Descriptions$/### 入力の説明/
s/^You may assign descriptions to input arguments and options by separating the parameter from the description using a colon\. If you need a little extra room to define your command, feel free to spread the definition across multiple lines:$/入力の引数とオプションの説明をパラメータと説明をコロンで分けることで指定できます。コマンドを定義するため、もう少し余裕が欲しければ、定義を複数行へ自由に分割してください。/
s/^    \/\*\*$/    \/**/
s/^     \* The name and signature of the console command\.$/     * コンソールコマンドの名前と引数、オプション/
s/^     \*$/     */
s/^     \* @var string$/     * @var string/
s/^     \*\/$/     *\//
s/^## Command I\/O$/## コマンドI\/O/
s/^### Retrieving Input$/### 入力の取得/
s/^While your command is executing, you will obviously need to access the values for the arguments and options accepted by your command\. To do so, you may use the `argument` and `option` methods:$/コマンド実行時に指定された引数やオプションの値にアクセスする必要は明確にあります。そのために、`argument`と`option`メソッドを使用して下さい。/
s/^    \/\*\*$/    \/**/
s/^     \* Execute the console command\.$/     * コンソールコマンドの実行/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^If you need to retrieve all of the arguments as an `array`, call the `arguments` method:$/全引数を「配列」で受け取りたければ、`argument`を呼んでください。/
s/^Options may be retrieved just as easily as arguments using the `option` method\. To retrieve all of the options as an array, call the `options` method:$/引数と同様、とても簡単に`option`メソッドでオプションを取得できます。`argument`メソッドと同じように呼びだせば、全オプションを「配列」で取得できます。/
s/^    \/\/ Retrieve a specific option\.\.\.$/    \/\/ 特定オプションの取得/
s/^    \/\/ Retrieve all options\.\.\.$/    \/\/ 全オプションの取得/
s/^If the argument or option does not exist, `null` will be returned\.$/引数やオプションが存在していない場合、`null`が返されます。/
s/^### Prompting For Input$/### 入力のプロンプト/
s/^In addition to displaying output, you may also ask the user to provide input during the execution of your command\. The `ask` method will prompt the user with the given question, accept their input, and then return the user's input back to your command:$/コマンドラインに付け加え、コマンド実行時にユーザーに入力を尋ねることもできます。`ask`メソッドにユーザーへ表示する質問を指定すると、ユーザーに入力してもらい、その後値がコマンドに返ってきます。/
s/^    \/\*\*$/    \/**/
s/^     \* Execute the console command\.$/     * コンソールコマンドの実行/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^The `secret` method is similar to `ask`, but the user's input will not be visible to them as they type in the console\. This method is useful when asking for sensitive information such as a password:$/`secret`メソッドも`ask`と似ていますが、コンソールでユーザーがタイプした値を表示しません。このメソッドはパスワードのような機密情報を尋ねるときに便利です。/
s/^#### Asking For Confirmation$/#### 確認/
s/^If you need to ask the user for a simple confirmation, you may use the `confirm` method\. By default, this method will return `false`\. However, if the user enters `y` or `yes` in response to the prompt, the method will return `true`\.$/単純にユーザーから確認を取りたい場合は、`confirm`メソッドを使ってください。このメソッドはデフォルトで`false`を返します。プロンプトに対して`y`か`yes`が入力されると、`true`を返します。/
s/^#### Auto-Completion$/#### 自動補完/
s/^The `anticipate` method can be used to provide auto-completion for possible choices\. The user can still choose any answer, regardless of the auto-completion hints:$/`anticipate`メソッドは可能性のある選択肢の、自動補完機能を提供するために使用します。ユーザーは表示される自動補完の候補にかかわらず、どんな答えも返答できます。/
s/^    $name = $this->anticipate('What is your name?', \['Taylor', 'Dayle'\]);$/    $name = $this->anticipate('What is your name?', ['Taylor', 'Dayle']);/
s/^#### Multiple Choice Questions$/#### 複数選択の質問/
s/^If you need to give the user a predefined set of choices, you may use the `choice` method\. You may set the array index of the default value to be returned if no option is chosen:$/あらかじめ決められた選択肢をユーザーから選んでもらいたい場合は、`choice`メソッドを使用します。何も選ばれなかった場合に返ってくるデフォルト値の配列インデックスを指定することも可能です。/
s/^    $name = $this->choice('What is your name?', \['Taylor', 'Dayle'\], $defaultIndex);$/    $name = $this->choice('What is your name?', ['Taylor', 'Dayle'], $defaultIndex);/
s/^### Writing Output$/### 出力の書き出し/
s/^To send output to the console, use the `line`, `info`, `comment`, `question` and `error` methods\. Each of these methods will use appropriate ANSI colors for their purpose\. For example, let's display some general information to the user\. Typically, the `info` method will display in the console as green text:$/コンソールに出力するには、`line`、`info`、`comment`、`question`、`error`メソッドを使います。その名前が表す目的で使用し、それぞれ適当なANSIカラーが表示に使われます。たとえば、全般的な情報をユーザーへ表示しましょう。通常、`info`メソッドはコンソールに緑の文字で表示します。/
s/^    \/\*\*$/    \/**/
s/^     \* Execute the console command\.$/     * コンソールコマンドの実行/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^To display an error message, use the `error` method\. Error message text is typically displayed in red:$/エラーメッセージを表示する場合は、`error`メソッドです。エラーメッセージは通常赤で表示されます。/
s/^If you would like to display plain, uncolored console output, use the `line` method:$/プレーンな、色を使わずにコンソール出力する場合は、`line`メソッドを使います。/
s/^#### Table Layouts$/#### テーブルレイアウト/
s/^The `table` method makes it easy to correctly format multiple rows \/ columns of data\. Just pass in the headers and rows to the method\. The width and height will be dynamically calculated based on the given data:$/`table`メソッドにより簡単に正しくデータの複数行／カラムをフォーマットできます。メソッドにヘッダと行を渡してください。幅と高さは与えたデータから動的に計算されます。/
s/^    $headers = \['Name', 'Email'\];$/    $headers = ['Name', 'Email'];/
s/^    $users = App\\User::all(\['name', 'email'\])->toArray();$/    $users = App\\User::all(['name', 'email'])->toArray();/
s/^#### Progress Bars$/#### プログレスバー/
s/^For long running tasks, it could be helpful to show a progress indicator\. Using the output object, we can start, advance and stop the Progress Bar\. First, define the total number of steps the process will iterate through\. Then, advance the Progress Bar after processing each item:$/時間がかかるタスクでは、進捗状況のインディケータを表示できると便利です。出力のオブジェクトを使用し、プログレスバーを開始、進行、停止することができます。最初に、処理全体を繰り返す総ステップ数を定義します。それから、各アイテムの処理の後に、プログレスバーを進めます。/
s/^For more advanced options, check out the \[Symfony Progress Bar component documentation\](https:\/\/symfony\.com\/doc\/current\/components\/console\/helpers\/progressbar\.html)\.$/より詳細なオプションに関しては、[Symfonyのプログレスバーコンポーネントのドキュメント](https:\/\/symfony.com\/doc\/current\/components\/console\/helpers\/progressbar.html)で確認してください。/
s/^## Registering Commands$/## コマンド登録/
s/^Because of the `load` method call in your console kernel's `commands` method, all commands within the `app\/Console\/Commands` directory will automatically be registered with Artisan\. In fact, you are free to make additional calls to the `load` method to scan other directories for Artisan commands:$/コンソールカーネルの`command`メソッドの中で、`load`メソッドが呼び出されているため、`app\/Console\/Commands`ディレクトリ中の全コマンドは、自動的にArtisanに登録されます。そのため、他のディレクトリに存在するArtisanコマンドをスキャンするために、`load`メソッドを自由に呼び出すことができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Register the commands for the application\.$/     * アプリケーションのコマンドを登録/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^        $this->load(__DIR__\.'\/Commands');$/        $this->load(__DIR__.'\/Commands');/
s/^        $this->load(__DIR__\.'\/MoreCommands');$/        $this->load(__DIR__.'\/MoreCommands');/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^You may also manually register commands by adding its class name to the `$commands` property of your `app\/Console\/Kernel\.php` file\. When Artisan boots, all the commands listed in this property will be resolved by the \[service container\](\/docs\/{{version}}\/container) and registered with Artisan:$/また、`app\/Console\/Kernel.php`ファイルの`$commands`プロパティへクラス名を追加することで、自分でコマンドを登録することもできます。Artisanが起動すると、[サービスコンテナ](\/docs\/{{version}}\/container)によりこのプロパティ中にリストされているコマンドは全て依存解決され、Artisanへ登録されます。/
s/^    protected $commands = \[$/    protected $commands = [/
s/^    \];$/    ];/
s/^## Programmatically Executing Commands$/## プログラムによるコマンド実行/
s/^Sometimes you may wish to execute an Artisan command outside of the CLI\. For example, you may wish to fire an Artisan command from a route or controller\. You may use the `call` method on the `Artisan` facade to accomplish this\. The `call` method accepts either the command's name or class as the first argument, and an array of command parameters as the second argument\. The exit code will be returned:$/ArtisanコマンドをCLI以外から実行したい場合もあります。たとえばルートやコントローラからArtisanコマンドを起動したい場合です。`Artisan`ファサードの`call`メソッドで実行できます。`call`メソッドは、第１引数にコマンド名かクラス、第２引数にコマンドのパラメーターを配列で指定します。exitコードが返されます。/
s/^        $exitCode = Artisan::call('email:send', \[$/        $exitCode = Artisan::call('email:send', [/
s/^        \]);$/        ]);/
s/^Using the `queue` method on the `Artisan` facade, you may even queue Artisan commands so they are processed in the background by your \[queue workers\](\/docs\/{{version}}\/queues)\. Before using this method, make sure you have configured your queue and are running a queue listener:$/`Artisan`ファサードの`queue`メソッドを使用すると、[キューワーカー](\/docs\/{{version}}\/queues)によりバックグラウンドでArtisanコマンドが実行されるようにキューされます。このメソッドを使用する前に、キューの設定を確実に済ませ、キューリスナを実行してください。/
s/^        Artisan::queue('email:send', \[$/        Artisan::queue('email:send', [/
s/^        \]);$/        ]);/
s/^You may also specify the connection or queue the Artisan command should be dispatched to:$/Artisanコマンドが実行される接続やキューを特定することもできます。/
s/^    Artisan::queue('email:send', \[$/    Artisan::queue('email:send', [/
s/^    \])->onConnection('redis')->onQueue('commands');$/    ])->onConnection('redis')->onQueue('commands');/
s/^#### Passing Array Values$/#### 配列値の引数/
s/^If your command defines an option that accepts an array, you may pass an array of values to that option:$/コマンドで配列を受け取るオプションを定義している場合、そのオプションに配列値を渡してください。/
s/^        $exitCode = Artisan::call('email:send', \[$/        $exitCode = Artisan::call('email:send', [/
s/^            'user' => 1, '--id' => \[5, 13\]$/            'user' => 1, '--id' => [5, 13]/
s/^        \]);$/        ]);/
s/^#### Passing Boolean Values$/#### 論理値の引数/
s/^If you need to specify the value of an option that does not accept string values, such as the `--force` flag on the `migrate:refresh` command, you should pass `true` or `false`:$/`migrate:refresh`コマンドの`--force`フラグのように、文字列値を受け取らないオプションに値を指定する必要がある場合は、`true`か`false`を渡す必要があります。/
s/^    $exitCode = Artisan::call('migrate:refresh', \[$/    $exitCode = Artisan::call('migrate:refresh', [/
s/^    \]);$/    ]);/
s/^### Calling Commands From Other Commands$/### 他のコマンドからの呼び出し/
s/^Sometimes you may wish to call other commands from an existing Artisan command\. You may do so using the `call` method\. This `call` method accepts the command name and an array of command parameters:$/存在するArtisanコマンドから別のコマンドを呼び出したい場合もあるでしょう。`call`メソッドで実行できます。この`call`メソッドへは、コマンド名とコマンドパラメーターの配列を指定します。/
s/^    \/\*\*$/    \/**/
s/^     \* Execute the console command\.$/     * コンソールコマンドの実行/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^        $this->call('email:send', \[$/        $this->call('email:send', [/
s/^        \]);$/        ]);/
s/^If you would like to call another console command and suppress all of its output, you may use the `callSilent` method\. The `callSilent` method has the same signature as the `call` method:$/他のコンソールコマンドを実行しつつ、出力を全て無視したい場合は、`callSilent`メソッドを使用してください。`callSilent`メソッドの使い方は、`call`メソッドと同じです。/
s/^    $this->callSilent('email:send', \[$/    $this->callSilent('email:send', [/
s/^    \]);$/    ]);/
