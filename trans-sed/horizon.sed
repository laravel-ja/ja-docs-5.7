s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^    - \[Dashboard Authentication\](#dashboard-authentication)$/    - [ダッシュボードの認可](#dashboard-authentication)/
s/^- \[Running Horizon\](#running-horizon)$/- [Horizonの実行](#running-horizon)/
s/^    - \[Deploying Horizon\](#deploying-horizon)$/    - [Horizonのデプロイ](#deploying-horizon)/
s/^- \[Tags\](#tags)$/- [タグ](#tags)/
s/^- \[Notifications\](#notifications)$/- [通知](#notifications)/
s/^- \[Metrics\](#metrics)$/- [メトリックス](#metrics)/
s/^## Introduction$/## イントロダクション/
s/^Horizon provides a beautiful dashboard and code-driven configuration for your Laravel powered Redis queues\. Horizon allows you to easily monitor key metrics of your queue system such as job throughput, runtime, and job failures\.$/Horizon（水平線、展望）は、Laravelで動作するRedisキューのための、美しいダッシュボードとコード駆動による設定を提供します。Horizonにより、ジョブのスループット、ランタイム、実行の失敗など、キューシステムのキーメトリックを簡単に監視できます。/
s/^All of your worker configuration is stored in a single, simple configuration file, allowing your configuration to stay in source control where your entire team can collaborate\.$/一つのシンプルな設定ファイルにすべてのワーカ設定を保存するため、チーム全体がコラボレート可能なソースコントロール下に、設定を保持できます。/
s/^## Installation$/## インストール/
s/^> {note} Due to its usage of async process signals, Horizon requires PHP 7\.1\+\. Secondly, you should ensure that your queue driver is set to `redis` in your `queue` configuration file\.$/> {note} 非同期のプロセスシグナルを活用しているため、Horizonを動作させるにはPHP7.1以上が必要です。次に、`queue`設定で、`redis`をキュードライバーへ確実に指定してください。/
s/^You may use Composer to install Horizon into your Laravel project:$/Composerを使い、LaravelプロジェクトにHorizonをインストールします。/
s/^After installing Horizon, publish its assets using the `vendor:publish` Artisan command:$/Horizonをインストールしたら、`vendor:publish` Artisanコマンドを使用し、アセットを公開します。/
s/^### Configuration$/### 設定/
s/^After publishing Horizon's assets, its primary configuration file will be located at `config\/horizon\.php`\. This configuration file allows you to configure your worker options and each configuration option includes a description of its purpose, so be sure to thoroughly explore this file\.$/Horizonのアセットを公開すると、`config\/horizon.php`に一番重要な設定ファイルが設置されます。この設定ファイルにより、ワーカのオプションを設置します。各オプションにはその目的が説明されていますので、ファイル全体をしっかりと確認してください。/
s/^#### Balance Options$/#### バランスオプション/
s/^Horizon allows you to choose from three balancing strategies: `simple`, `auto`, and `false`\. The `simple` strategy, which is the default, splits incoming jobs evenly between processes:$/Horizonでは３つのバランシング戦略が選択できます。`simple`と`auto`、`false`です。`simple`戦略はデフォルトであり、投入されたジョブをプロセス間に均等に割り当てます。/
s/^The `auto` strategy adjusts the number of worker processes per queue based on the current workload of the queue\. For example, if your `notifications` queue has 1,000 waiting jobs while your `render` queue is empty, Horizon will allocate more workers to your `notifications` queue until it is empty\. When the `balance` option is set to `false`, the default Laravel behavior will be used, which processes queues in the order they are listed in your configuration\.$/`auto`戦略は、現在のキュー負荷に基づき、それぞれのキューへ割り当てるワーカプロセス数を調整します。たとえば、`notifications`キューに１，０００ジョブが溜まっており、一方で`render`キューが空の場合、Horizonは空になるまで`notifications`キューにより多くのワーカを割り当てます。`balance`オプションへ`false`を設定すると、設定にリストした順番でキューが処理される、Laravelデフォルトの振る舞いが使われます。/
s/^### Dashboard Authentication$/### ダッシュボードの認可/
s/^Horizon exposes a dashboard at `\/horizon`\. By default, you will only be able to access this dashboard in the `local` environment\. To define a more specific access policy for the dashboard, you should use the `Horizon::auth` method\. The `auth` method accepts a callback which should return `true` or `false`, indicating whether the user should have access to the Horizon dashboard\. Typically, you should call `Horizon::auth` in the `boot` method of your `AppServiceProvider`:$/Horizonは、`\/horizon`でダッシュボードを表示します。デフォルトでは`local`環境でのみ、このダッシュボードへアクセスできます。ダッシュボードへ更に多くのアクセスポリシーを割り当てるには、`Horizon::auth`メソッドを使用する必要があります。`auth`メソッドは、`true`か`false`を返すコールバックを引数に取り、そのユーザーがHorizonダッシュボードへアクセスできるかどうかを指示します。通常、`AppServiceProvider`の`boot`メソッドで、`Horizon::auth`を呼び出します。/
s/^        \/\/ return true \/ false;$/        \/\/ trueかfalseを返す/
s/^## Running Horizon$/## Horizonの実行/
s/^Once you have configured your workers in the `config\/horizon\.php` configuration file, you may start Horizon using the `horizon` Artisan command\. This single command will start all of your configured workers:$/`config\/horizon.php`設定ファイルでワーカの設定を済ませたら、`horizon` Artisanコマンドを使用し、Horizonを使用開始します。このコマンド一つで、設定済みのワーカ全部を起動できます。/
s/^You may pause the Horizon process and instruct it to continue processing jobs using the `horizon:pause` and `horizon:continue` Artisan commands:$/Horizonプロセスを`horizon:pause` Artisanコマンドで一時停止したり、`horizon:continue`コマンドで処理を続行したりできます。/
s/^You may gracefully terminate the master Horizon process on your machine using the `horizon:terminate` Artisan command\. Any jobs that Horizon is currently processing will be completed and then Horizon will exit:$/マシン上のマスタHorizonプロセスを穏やかに終了させたい場合は、`horizon:terminate` Artisanコマンドを使用します。現在処理中のジョブが完了した後に、Horizonは停止します。/
s/^### Deploying Horizon$/### Horizonのデプロイ/
s/^If you are deploying Horizon to a live server, you should configure a process monitor to monitor the `php artisan horizon` command and restart it if it quits unexpectedly\. When deploying fresh code to your server, you will need to instruct the master Horizon process to terminate so it can be restarted by your process monitor and receive your code changes\.$/Horizonを実働サーバにデプロイする場合、`php artisan horizon`コマンドをプロセスモニタで監視し、予期せず終了した場合には再起動をかけるように設定する必要があります。サーバに新しいコードをデプロイしたときに、Horizonプロセスを停止指示する必要があります。その結果、プロセスモニタにより再起動され、コードの変更が反映されます。/
s/^#### Supervisor Configuration$/#### Supervisor設定/
s/^If you are using the Supervisor process monitor to manage your `horizon` process, the following configuration file should suffice:$/`horizon`プロセスを管理するため、Supervisorプロセスモニタを使用する場合は、以下の設定ファイルが利用できるでしょう。/
s/^    \[program:horizon\]$/    [program:horizon]/
s/^    command=php \/home\/forge\/app\.com\/artisan horizon$/    command=php \/home\/forge\/app.com\/artisan horizon/
s/^    stdout_logfile=\/home\/forge\/app\.com\/horizon\.log$/    stdout_logfile=\/home\/forge\/app.com\/horizon.log/
s/^> {tip} If you are uncomfortable managing your own servers, consider using \[Laravel Forge\](https:\/\/forge\.laravel\.com)\. Forge provisions PHP 7\+ servers with everything you need to run modern, robust Laravel applications with Horizon\.$/> {tip} サーバ管理に自信がない場合は、[Laravel Forge](https:\/\/forge.laravel.com)の利用を考慮してください。ForgeはHorizonを利用する、モダンで堅牢なLaravelアプリケーションに必要なすべてをPHP7以上のサーバにプロビションします。/
s/^## Tags$/## タグ/
s/^Horizon allows you to assign “tags” to jobs, including mailables, event broadcasts, notifications, and queued event listeners\. In fact, Horizon will intelligently and automatically tag most jobs depending on the Eloquent models that are attached to the job\. For example, take a look at the following job:$/Horizonでは、mailableやイベントブロードキャスト、通知、キューイベントリスナなどを含むジョブに「タグ」を割り付けられます。実際、ジョブに割り付けられたEloquentモデルに基づいて、ほとんどのジョブでは賢く自動的にHorizonがタグ付けします。例として、以下のジョブをご覧ください。/
s/^        \/\*\*$/        \/**/
s/^         \* The video instance\.$/         * ビデオインスタンス/
s/^         \*$/         */
s/^         \* @var \\App\\Video$/         * @var \\App\\Video/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new job instance\.$/         * 新しいジョブインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  \\App\\Video  $video$/         * @param  \\App\\Video  $video/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Execute the job\.$/         * ジョブの実行/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^If this job is queued with an `App\\Video` instance that has an `id` of `1`, it will automatically receive the tag `App\\Video:1`\. This is because Horizon will examine the job's properties for any Eloquent models\. If Eloquent models are found, Horizon will intelligently tag the job using the model's class name and primary key:$/`id`が`1`の`App\\Video`インスタンスを持つジョブがキューされると、自動的に`App\\Video:1`タグが付けられます。HorizonはジョブのプロパティがEloquentモデルであるかを確認するからです。Eloquentモデルが見つかると、Horizonはモデルのクラス名と主キーを使用し、賢くタグ付けします。/
s/^#### Manually Tagging$/#### 手動のタグ付け/
s/^If you would like to manually define the tags for one of your queueable objects, you may define a `tags` method on the class:$/queueableオブジェクトのタグを任意に定義したい場合は、そのクラスで`tags`メソッドを定義してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the tags that should be assigned to the job\.$/         * ジョブに割り付けるタグの取得/
s/^         \*$/         */
s/^         \* @return array$/         * @return array/
s/^         \*\/$/         *\//
s/^            return \['render', 'video:'\.$this->video->id\];$/            return ['render', 'video:'.$this->video->id];/
s/^## Notifications$/## 通知/
s/^> \*\*Note:\*\* Before using notifications, you should add the `guzzlehttp\/guzzle` Composer package to your project\. When configuring Horizon to send SMS notifications, you should also review the \[prerequisites for the Nexmo notification driver\](https:\/\/laravel\.com\/docs\/5\.6\/notifications#sms-notifications)\.$/> **注意：** 通知を利用する前に、プロジェクトへ`guzzlehttp\/guzzle` Composerパッケージを追加してください。HorizonでSMSを通知する設定の場合は、[Nexmo通知ドライバーの動作要件](https:\/\/laravel.com\/docs\/5.6\/notifications#sms-notifications)についても、確認する必要があります。/
s/^If you would like to be notified when one of your queues has a long wait time, you may use the `Horizon::routeMailNotificationsTo`, `Horizon::routeSlackNotificationsTo`, and `Horizon::routeSmsNotificationsTo` methods\. You may call these methods from your application's `AppServiceProvider`:$/あるキューが長時間waitしている時に、通知を受け取りたい場合は、`Horizon::routeSlackNotificationsTo`や、`Horizon::routeSlackNotificationsTo`、`Horizon::routeSmsNotificationsTo`メソッドを利用してください。これらのメソッドは、`AppServiceProvider`から呼び出すのが良いでしょう。/
s/^    Horizon::routeMailNotificationsTo('example@example\.com');$/    Horizon::routeMailNotificationsTo('example@example.com');/
s/^#### Configuring Notification Wait Time Thresholds$/#### 通知wait時間のシュレッドホールド設定/
s/^You may configure how many seconds are considered a "long wait" within your `config\/horizon\.php` configuration file\. The `waits` configuration option within this file allows you to control the long wait threshold for each connection \/ queue combination:$/何秒を「長時間」と考えるかは、`config\/horizon.php`設定ファイルで指定できます。このファイルの`waits`設定オプションで、接続／キューの組み合わせごとに、長時間と判定するシュレッドホールドをコントロールできます。/
s/^    'waits' => \[$/    'waits' => [/
s/^    \],$/    ],/
s/^## Metrics$/## メトリックス/
s/^Horizon includes a metrics dashboard which provides information on your job and queue wait times and throughput\. In order to populate this dashboard, you should configure Horizon's `snapshot` Artisan command to run every five minutes via your application's \[scheduler\](\/docs\/{{version}}\/scheduling):$/Horizonはジョブとキューの待ち時間とスループットの情報をダッシュボードに表示します。このダッシュボードを表示するために、アプリケーションの[スケジューラ](\/docs\/{{version}}\/scheduling)で、５分毎に`snapshot` Artisanコマンドを実行する設定を行う必要があります。/
s/^    \/\*\*$/    \/**/
s/^     \* Define the application's command schedule\.$/     * アプリケーションのコマンドスケジュールの定義/
s/^     \*$/     */
s/^     \* @param  \\Illuminate\\Console\\Scheduling\\Schedule  $schedule$/     * @param  \\Illuminate\\Console\\Scheduling\\Schedule  $schedule/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
