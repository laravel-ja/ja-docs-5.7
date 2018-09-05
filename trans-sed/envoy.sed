s/^# Envoy Task Runner$/# Envoyタスクランナー/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Installation\](#installation)$/    - [インストール](#installation)/
s/^- \[Writing Tasks\](#writing-tasks)$/- [タスク記述](#writing-tasks)/
s/^    - \[Setup\](#setup)$/    - [準備](#setup)/
s/^    - \[Variables\](#variables)$/    - [変数](#variables)/
s/^    - \[Stories\](#stories)$/    - [ストーリー](#stories)/
s/^    - \[Multiple Servers\](#multiple-servers)$/    - [複数サーバ](#multiple-servers)/
s/^- \[Running Tasks\](#running-tasks)$/- [タスク実行](#running-tasks)/
s/^    - \[Confirming Task Execution\](#confirming-task-execution)$/    - [タスク実行の確認](#confirming-task-execution)/
s/^- \[Notifications\](#notifications)$/- [通知](#notifications)/
s/^    - \[Slack\](#slack)$/    - [Slack](#slack)/
s/^## Introduction$/## イントロダクション/
s/^\[Laravel Envoy\](https:\/\/github\.com\/laravel\/envoy) provides a clean, minimal syntax for defining common tasks you run on your remote servers\. Using Blade style syntax, you can easily setup tasks for deployment, Artisan commands, and more\. Currently, Envoy only supports the Mac and Linux operating systems\.$/[Laravel Envoy](https:\/\/github.com\/laravel\/envoy)（使節）はリモートサーバ間で共通のタスクを実行するために、美しく最小限の記法を提供します。デプロイやArtisanコマンドなどのタスクをBlade記法により簡単に準備できます。EnvoyはMacとLinuxのオペレーションシステムのみサポートしています。/
s/^### Installation$/### インストール/
s/^First, install Envoy using the Composer `global require` command:$/最初にEnvoyをComposerの`global require`コマンドでインストールします。/
s/^Since global Composer libraries can sometimes cause package version conflicts, you may wish to consider using `cgr`, which is a drop-in replacement for the `composer global require` command\. The `cgr` library's installation instructions can be \[found on GitHub\](https:\/\/github\.com\/consolidation-org\/cgr)\.$/グローバルComposerライブラリは、時々パッケージバージョンのコンフリクトを起こすため、`composer global require`コマンドの代替として、`cgr`の使用を考慮してください。`cgr`ライブラリのインストール方法は、[GitHubで見つけられます](https:\/\/github.com\/consolidation-org\/cgr)。/
s/^> {note} Make sure to place the `~\/\.composer\/vendor\/bin` directory in your PATH so the `envoy` executable is found when running the `envoy` command in your terminal\.$/> {note} `envoy`コマンドを端末で実行するときに`envoy`の実行ファイルが見つかるように、`~\/.composer\/vendor\/bin`ディレクトリに実行パスを通しておくのを忘れないでください。/
s/^#### Updating Envoy$/#### Envoyの更新/
s/^You may also use Composer to keep your Envoy installation up to date\. Issuing the `composer global update` command will update all of your globally installed Composer packages:$/インストールしたEnvoyをアップデートするためにも、Composerを使用します。`composer global update`コマンドの実行により、インストール済みのグローバルComposerパッケージがすべてアップデートされます。/
s/^## Writing Tasks$/## タスク記述/
s/^All of your Envoy tasks should be defined in an `Envoy\.blade\.php` file in the root of your project\. Here's an example to get you started:$/Envoyの全タスクはプロジェクトルートの`Envoy.blade.php`ファイルの中で定義します。最初に例を見てください。/
s/^    @servers(\['web' => \['user@192\.168\.1\.1'\]\])$/    @servers(['web' => ['user@192.168.1.1']])/
s/^    @task('foo', \['on' => 'web'\])$/    @task('foo', ['on' => 'web'])/
s/^As you can see, an array of `@servers` is defined at the top of the file, allowing you to reference these servers in the `on` option of your task declarations\. Within your `@task` declarations, you should place the Bash code that should run on your server when the task is executed\.$/見ての通り、`@servers`の配列をファイルの最初で定義し、タスク定義の`on`オプションでそれらのサーバを参照できるようにしています。`@task`定義の中には、タスクが実行されるときにサーバで実行するBASHコードを記述します。/
s/^You can force a script to run locally by specifying the server's IP address as `127\.0\.0\.1`:$/サーバのIPアドレスを`127.0.0.1`にすることで、強制的にスクリプトをローカルで実行できます。/
s/^    @servers(\['localhost' => '127\.0\.0\.1'\])$/    @servers(['localhost' => '127.0.0.1'])/
s/^### Setup$/### 準備/
s/^Sometimes, you may need to execute some PHP code before executing your Envoy tasks\. You may use the ```@setup``` directive to declare variables and do other general PHP work before any of your other tasks are executed:$/タスクを実行する前に、PHPコードを評価する必要がある場合もあります。変数を宣言するために`@setup`ディレクティブを使用し、他のタスクが実行される前に通常のPHPを動作させます。/
s/^If you need to require other PHP files before your task is executed, you may use the `@include` directive at the top of your `Envoy\.blade\.php` file:$/タスク実行前に他のPHPライブラリを読み込む必要がある場合は、`Envoy.blade.php`ファイルの先頭で、`@include`ディレティブを使用してください。/
s/^    @include('vendor\/autoload\.php')$/    @include('vendor\/autoload.php')/
s/^        # \.\.\.$/        # .../
s/^### Variables$/### 変数/
s/^If needed, you may pass option values into Envoy tasks using the command line:$/必要であれば、コマンドラインを使い、Envoyタスクへオプション値を渡すことができます。/
s/^You may access the options in your tasks via Blade's "echo" syntax\. Of course, you may also use `if` statements and loops within your tasks\. For example, let's verify the presence of the `$branch` variable before executing the `git pull` command:$/オプションはBladeの"echo"記法により、タスク中からアクセスできます。もちろん、`if`文も使用できますし、タスク内で繰り返しも可能です。例として`git pull`コマンドを実行する前に、`$branch`の存在を確認してみましょう。/
s/^    @servers(\['web' => '192\.168\.1\.1'\])$/    @servers(['web' => '192.168.1.1'])/
s/^    @task('deploy', \['on' => 'web'\])$/    @task('deploy', ['on' => 'web'])/
s/^### Stories$/### ストーリー/
s/^Stories group a set of tasks under a single, convenient name, allowing you to group small, focused tasks into large tasks\. For instance, a `deploy` story may run the `git` and `composer` tasks by listing the task names within its definition:$/ストーリーにより、選択した小さなタスクを大きなタスクにまとめることができます。名前を付け、一連のタスクを一つにまとめます。一例としてタスク名をリストすることにより、`deploy`ストーリーを定義し、`git`と`composer`タスクを実行してみます。/
s/^    @servers(\['web' => '192\.168\.1\.1'\])$/    @servers(['web' => '192.168.1.1'])/
s/^Once the story has been written, you may run it just like a typical task:$/ストーリーを書き上げたら、通常のタスクと同じように実行します。/
s/^### Multiple Servers$/### 複数サーバ/
s/^Envoy allows you to easily run a task across multiple servers\. First, add additional servers to your `@servers` declaration\. Each server should be assigned a unique name\. Once you have defined your additional servers, list each of the servers in the task's `on` array:$/Envoyでは、複数のサーバに渡りタスクを実行するのも簡単です。最初に追加のサーバを`@servers`ディレクティブで指定してください。各サーバには一意な名前を割り当ててください。追加サーバを定義したら、タスクの`on`配列にサーバをリストするだけです。/
s/^    @servers(\['web-1' => '192\.168\.1\.1', 'web-2' => '192\.168\.1\.2'\])$/    @servers(['web-1' => '192.168.1.1', 'web-2' => '192.168.1.2'])/
s/^    @task('deploy', \['on' => \['web-1', 'web-2'\]\])$/    @task('deploy', ['on' => ['web-1', 'web-2']])/
s/^#### Parallel Execution$/#### 並列実行/
s/^By default, tasks will be executed on each server serially\. In other words, a task will finish running on the first server before proceeding to execute on the second server\. If you would like to run a task across multiple servers in parallel, add the `parallel` option to your task declaration:$/デフォルトでタスクは各サーバで順番に実行されます。つまり最初のサーバで実行を終えたら、次のサーバで実行されます。タスクを複数サーバで並列実行したい場合は、タスク宣言に`parallel`オプションを追加してください。/
s/^    @servers(\['web-1' => '192\.168\.1\.1', 'web-2' => '192\.168\.1\.2'\])$/    @servers(['web-1' => '192.168.1.1', 'web-2' => '192.168.1.2'])/
s/^    @task('deploy', \['on' => \['web-1', 'web-2'\], 'parallel' => true\])$/    @task('deploy', ['on' => ['web-1', 'web-2'], 'parallel' => true])/
s/^## Running Tasks$/## タスク実行/
s/^To run a task or story that is defined in your `Envoy\.blade\.php` file, execute Envoy's `run` command, passing the name of the task or story you would like to execute\. Envoy will run the task and display the output from the servers as the task is running:$/`Envoy.blade.php`ファイルのタスクやストーリーを実行するには、実行したいタスクかストーリーの名前を指定し、Envoyの`run`コマンドを実行します。Envoyはタスクを実行し、タスク実行中にサーバからの出力を表示します。/
s/^### Confirming Task Execution$/### タスク実行の確認/
s/^If you would like to be prompted for confirmation before running a given task on your servers, you should add the `confirm` directive to your task declaration\. This option is particularly useful for destructive operations:$/サーバ上の特定タスク実行前に、確認のプロンプトを出したい場合は、タスク宣言で`confirm`ディレクティブを追加してください。このオプションは、破壊的な操作を行う場合に特に便利です。/
s/^    @task('deploy', \['on' => 'web', 'confirm' => true\])$/    @task('deploy', ['on' => 'web', 'confirm' => true])/
s/^## Notifications$/## 通知/
s/^Envoy also supports sending notifications to \[Slack\](https:\/\/slack\.com) after each task is executed\. The `@slack` directive accepts a Slack hook URL and a channel name\. You may retrieve your webhook URL by creating an "Incoming WebHooks" integration in your Slack control panel\. You should pass the entire webhook URL into the `@slack` directive:$/Envoyは各タスク実行後の、[Slack](https:\/\/slack.com)への通知もサポートしています。`@slack`ディレクティブは、SlackフックURLとチャンネル名を引数に取ります。WebフックURLは、Slackコントロールパネルで"Incoming WebHooks"統合を作成することにより、作成されます。WebフックURL全体を`@slack`ディレクティブへ渡してください。/
s/^You may provide one of the following as the channel argument:$/チャンネル引数には以下のどちらかを指定します。/
s/^- To send the notification to a channel: `#channel`$/- チャンネルに通知するには： `#channel`/
s/^- To send the notification to a user: `@user`$/- ユーザーに通知するには： `@user`/
