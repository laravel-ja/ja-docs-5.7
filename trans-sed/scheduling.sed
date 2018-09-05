s/^# Task Scheduling$/# タスクスケジュール/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Defining Schedules\](#defining-schedules)$/- [スケジュール定義](#defining-schedules)/
s/^    - \[Scheduling Artisan Commands\](#scheduling-artisan-commands)$/    - [Artisanコマンドのスケジュール](#scheduling-artisan-commands)/
s/^    - \[Scheduling Queued Jobs\](#scheduling-queued-jobs)$/    - [キュー投入するジョブのスケジュール](#scheduling-queued-jobs)/
s/^    - \[Scheduling Shell Commands\](#scheduling-shell-commands)$/    - [シェルコマンドのスケジュール](#scheduling-shell-commands)/
s/^    - \[Schedule Frequency Options\](#schedule-frequency-options)$/    - [繰り返しのスケジュールオプション](#schedule-frequency-options)/
s/^    - \[Timezones\](#timezones)$/    - [タイムゾーン](#timezones)/
s/^    - \[Preventing Task Overlaps\](#preventing-task-overlaps)$/    - [タスク多重起動の停止](#preventing-task-overlaps)/
s/^    - \[Running Tasks On One Server\](#running-tasks-on-one-server)$/    - [単一サーバ上でのタスク実行](#running-tasks-on-one-server)/
s/^    - \[Maintenance Mode\](#maintenance-mode)$/    - [メンテナンスモード](#maintenance-mode)/
s/^- \[Task Output\](#task-output)$/- [タスク出力](#task-output)/
s/^- \[Task Hooks\](#task-hooks)$/- [タスクフック](#task-hooks)/
s/^## Introduction$/## イントロダクション/
s/^In the past, you may have generated a Cron entry for each task you needed to schedule on your server\. However, this can quickly become a pain, because your task schedule is no longer in source control and you must SSH into your server to add additional Cron entries\.$/今までは実行をスケジュールする必要のあるタスクごとにサーバで、Cronエントリを制作していたかと思います。しかし、これはすぐに面倒になります。/
s/^Laravel's command scheduler allows you to fluently and expressively define your command schedule within Laravel itself\. When using the scheduler, only a single Cron entry is needed on your server\. Your task schedule is defined in the `app\/Console\/Kernel\.php` file's `schedule` method\. To help you get started, a simple example is defined within the method\.$/Laravelのコマンドスケジューラは、Laravel自身の中でコマンドの実行スケジュールをスラスラと記述的に定義できるようにしてくれます。スケジューラを使用すると、サーバにはCronエントリがたった一つだけで済みます。タスクスケジュールは、`app\/Console\/Kernel.php`ファイルの`schedule`メソッドで定義します。使いはじめる手助けになるように、サンプルがこのメソッド中で定義してあります。/
s/^### Starting The Scheduler$/### スケジューラを使いはじめる/
s/^When using the scheduler, you only need to add the following Cron entry to your server\. If you do not know how to add Cron entries to your server, consider using a service such as \[Laravel Forge\](https:\/\/forge\.laravel\.com) which can manage the Cron entries for you:$/スケジューラを使用するには、サーバに以下のCronエントリを追加するだけです。サーバにどうやってCronエントリを追加するかわからない場合は、Cronエントリを管理できる[Laravel Forge](https:\/\/forge.laravel.com)のようなサービスを使用することを考慮してください。/
s/^    \* \* \* \* \* cd \/path-to-your-project && php artisan schedule:run >> \/dev\/null 2>&1$/    * * * * * cd \/path-to-your-project \&\& php artisan schedule:run >> \/dev\/null 2>\&1/
s/^This Cron will call the Laravel command scheduler every minute\. When the `schedule:run` command is executed, Laravel will evaluate your scheduled tasks and runs the tasks that are due\.$/このCronはLaravelコマンドスケジューラを毎分呼び出します。`schedule:run`コマンドが実行されると、Laravelはスケジュールされているジョブを評価し、実行する必要のあるジョブを起動します。/
s/^## Defining Schedules$/## スケジュール定義/
s/^You may define all of your scheduled tasks in the `schedule` method of the `App\\Console\\Kernel` class\. To get started, let's look at an example of scheduling a task\. In this example, we will schedule a `Closure` to be called every day at midnight\. Within the `Closure` we will execute a database query to clear a table:$/スケジュールタスクは全部`App\\Console\\Kernel`クラスの`schedule`メソッドの中に定義します。手始めに、スケジュールタスクの例を見てください。この例は毎日深夜１２時に「クロージャ」をスケジュールしています。「クロージャ」の中でテーブルをクリアするデータベースクエリを実行しています。/
s/^        \/\*\*$/        \/**/
s/^         \* The Artisan commands provided by your application\.$/         * アプリケーションで提供するArtisanコマンド/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $commands = \[$/        protected $commands = [/
s/^        \];$/        ];/
s/^        \/\*\*$/        \/**/
s/^         \* Define the application's command schedule\.$/         * アプリケーションのコマンド実行スケジュール定義/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Console\\Scheduling\\Schedule  $schedule$/         * @param  \\Illuminate\\Console\\Scheduling\\Schedule  $schedule/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^In addition to scheduling using Closures, you may also using \[invokable objects\](http:\/\/php\.net\/manual\/en\/language\.oop5\.magic\.php#object\.invoke)\. Invokable objects are simple PHP classes that contain an `__invoke` method:$/さらにクロージャを使用したスケジュールでは、[invoke可能なオブジェクト](http:\/\/php.net\/manual\/en\/language.oop5.magic.php#object.invoke)も使用できます。Invoke可能なオブジェクトとは、単に`__invoke`メソッドを含むPHPクラスのことです。/
s/^### Scheduling Artisan Commands$/### Artisanコマンドのスケジュール/
s/^In addition to scheduling Closure calls, you may also schedule \[Artisan commands\](\/docs\/{{version}}\/artisan) and operating system commands\. For example, you may use the `command` method to schedule an Artisan command using either the command's name or class:$/「クロージャ」の呼び出しをスケジュールするほかに、[Artisanコマンド](\/docs\/{{version}}\/artisan)やオペレーティングシステムコマンドをスケジュールできます。たとえば、コマンド名かそのクラスのどちらかを用いて、Artisanコマンドをスケジュールする`command`メソッドを使ってみましょう。/
s/^    $schedule->command(EmailsCommand::class, \['--force'\])->daily();$/    $schedule->command(EmailsCommand::class, ['--force'])->daily();/
s/^### Scheduling Queued Jobs$/### キュー投入するジョブのスケジュール/
s/^The `job` method may be used to schedule a \[queued job\](\/docs\/{{version}}\/queues)\. This method provides a convenient way to schedule jobs without using the `call` method to manually create Closures to queue the job:$/[キュー投入するジョブ](\/docs\/{{version}}\/queues)をスケジュールするには、`job`メソッドを使います。このメソッドを使うと、ジョブをキューに入れるためのクロージャを自前で作成する`call`メソッドを使わずとも、ジョブをスケジュール実行することができます。/
s/^    \/\/ Dispatch the job to the "heartbeats" queue\.\.\.$/    \/\/ ジョブを"heartbeats"キューへ投入する/
s/^### Scheduling Shell Commands$/### シェルコマンドのスケジュール/
s/^The `exec` method may be used to issue a command to the operating system:$/オペレーティングシステムでコマンドを実行するためには`exec`メソッドを使います。/
s/^    $schedule->exec('node \/home\/forge\/script\.js')->daily();$/    $schedule->exec('node \/home\/forge\/script.js')->daily();/
s/^### Schedule Frequency Options$/### 繰り返しのスケジュールオプション/
s/^Of course, there are a variety of schedules you may assign to your task:$/もちろん、タスクは様々なスケジュールを割り付けることができます。/
s/^Method  | Description$/メソッド  | 説明/
s/^`->cron('\* \* \* \* \*');`  |  Run the task on a custom Cron schedule$/`->cron('* * * * *');`  |  Cron指定に基づきタスク実行/
s/^`->everyMinute();`  |  Run the task every minute$/`->everyMinute();`  |  毎分タスク実行/
s/^`->everyFiveMinutes();`  |  Run the task every five minutes$/`->everyFiveMinutes();`  |  ５分毎にタスク実行/
s/^`->everyTenMinutes();`  |  Run the task every ten minutes$/`->everyTenMinutes();`  |  １０分毎にタスク実行/
s/^`->everyFifteenMinutes();`  |  Run the task every fifteen minutes$/`->everyFifteenMinutes();`  |  １５分毎にタスク実行/
s/^`->everyThirtyMinutes();`  |  Run the task every thirty minutes$/`->everyThirtyMinutes();`  |  ３０分毎にタスク実行/
s/^`->hourly();`  |  Run the task every hour$/`->hourly();`  |  毎時タスク実行/
s/^`->hourlyAt(17);`  |  Run the task every hour at 17 mins past the hour$/`->hourlyAt(17);`  |  一時間ごと、毎時１７分にタスク実行/
s/^`->daily();`  |  Run the task every day at midnight$/`->daily();`  |  毎日深夜１２時に実行/
s/^`->dailyAt('13:00');`  |  Run the task every day at 13:00$/`->dailyAt('13:00');`  |  毎日13:00に実行/
s/^`->twiceDaily(1, 13);`  |  Run the task daily at 1:00 & 13:00$/`->twiceDaily(1, 13);`  |  毎日1:00と13:00時に実行/
s/^`->weekly();`  |  Run the task every week$/`->weekly();`  |  毎週実行/
s/^`->weeklyOn(1, '8:00');`  |  Run the task every week on Monday at 8:00$/`->weeklyOn(1, '8:00');`  |  毎週月曜日の8:00時に実行/
s/^`->monthly();`  |  Run the task every month$/`->monthly();`  |  毎月実行/
s/^`->monthlyOn(4, '15:00');`  |  Run the task every month on the 4th at 15:00$/`->monthlyOn(4, '15:00');`  |  毎月4日の15:00に実行/
s/^`->quarterly();` |  Run the task every quarter$/`->quarterly();` |  四半期ごとに実行/
s/^`->yearly();`  |  Run the task every year$/`->yearly();`  |  毎年実行/
s/^`->timezone('America\/New_York');` | Set the timezone$/`->timezone('America\/New_York');` | タイムゾーン設定/
s/^These methods may be combined with additional constraints to create even more finely tuned schedules that only run on certain days of the week\. For example, to schedule a command to run weekly on Monday:$/これらのメソッドは週の特定の曜日だけに実行させるために、追加の制約と組み合わせ細かく調整できます。/
s/^    \/\/ Run once per week on Monday at 1 PM\.\.\.$/    \/\/ 週に一回、月曜の13:00に実行/
s/^    \/\/ Run hourly from 8 AM to 5 PM on weekdays\.\.\.$/    \/\/ ウィークエンドの8時から17時まで一時間ごとに実行/
s/^Below is a list of the additional schedule constraints:$/以下が追加のスケジュール制約のリストです。/
s/^Method  | Description$/メソッド  | 説明/
s/^`->weekdays();`  |  Limit the task to weekdays$/`->weekdays();`  |  ウイークデーのみに限定/
s/^`->sundays();`  |  Limit the task to Sunday$/`->sundays();`  |  日曜だけに限定/
s/^`->mondays();`  |  Limit the task to Monday$/`->mondays();`  |  月曜だけに限定/
s/^`->tuesdays();`  |  Limit the task to Tuesday$/`->tuesdays();`  |  火曜だけに限定/
s/^`->wednesdays();`  |  Limit the task to Wednesday$/`->wednesdays();`  |  水曜だけに限定/
s/^`->thursdays();`  |  Limit the task to Thursday$/`->thursdays();`  |  木曜だけに限定/
s/^`->fridays();`  |  Limit the task to Friday$/`->fridays();`  |  金曜だけに限定/
s/^`->saturdays();`  |  Limit the task to Saturday$/`->saturdays();`  |  土曜だけに限定/
s/^`->between($start, $end);`  |  Limit the task to run between start and end times$/`->between($start, $end);`  |  開始と終了時間間にタスク実行を制限/
s/^`->when(Closure);`  |  Limit the task based on a truth test$/`->when(Closure);`  |  クロージャの戻り値が`true`の時のみに限定/
s/^#### Between Time Constraints$/#### 時間制限/
s/^The `between` method may be used to limit the execution of a task based on the time of day:$/`between`メソッドは一日の時間に基づき、実行時間を制限するために使用します。/
s/^Similarly, the `unlessBetween` method can be used to exclude the execution of a task for a period of time:$/同じように、`unlessBetween`メソッドは、その時間にタスクの実行を除外するために使用します。/
s/^#### Truth Test Constraints$/#### 真値テスト制約/
s/^The `when` method may be used to limit the execution of a task based on the result of a given truth test\. In other words, if the given `Closure` returns `true`, the task will execute as long as no other constraining conditions prevent the task from running:$/`when`メソッドは指定した真値テストの結果に基づき制限を実行します。言い換えれば指定した「クロージャ」が`true`を返し、他の制約が実行を停止しない限りタスクを実行します。/
s/^The `skip` method may be seen as the inverse of `when`\. If the `skip` method returns `true`, the scheduled task will not be executed:$/`skip`メソッドは`when`をひっくり返したものです。`skip`メソッドへ渡したクロージャが`true`を返した時、スケジュールタスクは実行されます。/
s/^When using chained `when` methods, the scheduled command will only execute if all `when` conditions return `true`\.$/`when`メソッドをいくつかチェーンした場合は、全部の`when`条件が`true`を返すときのみスケジュールされたコマンドが実行されます。/
s/^### Timezones$/### タイムゾーン/
s/^Using the `timezone` method, you may specify that a scheduled task's time should be interpreted within a given timezone:$/`timezone`メソッドを使い、タスクのスケジュールをどこのタイムゾーンとみなすか指定できます。/
s/^> {note} Remember that some timezones utilize daylight savings time\. When daylight saving time changes occur, your scheduled task may run twice or even not run at all\. For this reason, we recommend avoiding timezone scheduling when possible\.$/> {note} タイムゾーンの中には夏時間を取り入れているものがあることを忘れないでください。夏時間の切り替えにより、スケジュールされたタスクが2回実行されたり、全くされないことがあります。そのため、可能であればタイムゾーンによるスケジュールは使用しないことをおすすめします。/
s/^### Preventing Task Overlaps$/### タスク多重起動の防止/
s/^By default, scheduled tasks will be run even if the previous instance of the task is still running\. To prevent this, you may use the `withoutOverlapping` method:$/デフォルトでは以前の同じジョブが起動中であっても、スケジュールされたジョブは実行されます。これを防ぐには、`withoutOverlapping`メソッドを使用してください。/
s/^In this example, the `emails:send` \[Artisan command\](\/docs\/{{version}}\/artisan) will be run every minute if it is not already running\. The `withoutOverlapping` method is especially useful if you have tasks that vary drastically in their execution time, preventing you from predicting exactly how long a given task will take\.$/この例の場合、`emails:send` [Artisanコマンド](\/docs\/{{version}}\/artisan)は実行中でない限り毎分実行されます。`withoutOverlapping`メソッドは指定したタスクの実行時間の変動が非常に大きく、予想がつかない場合に特に便利です。/
s/^If needed, you may specify how many minutes must pass before the "without overlapping" lock expires\. By default, the lock will expire after 24 hours:$/必要であれば、「重起動の防止(without overlapping)」ロックを期限切れにするまでに、何分間経過させるかを指定できます。時間切れまでデフォルトは、２４時間です。/
s/^### Running Tasks On One Server$/### 単一サーバ上でのタスク実行/
s/^> {note} To utilize this feature, your application must be using the `memcached` or `redis` cache driver as your application's default cache driver\. In addition, all servers must be communicating with the same central cache server\.$/> {note} この機能を使用するには、アプリケーションのデフォルトキャッシュドライバとして、`memcached`か`redis`キャッシュドライバを使用する必要があります。更に、全サーバが同じ単一のキャッシュサーバと通信している必要があります。/
s/^If your application is running on multiple servers, you may limit a scheduled job to only execute on a single server\. For instance, assume you have a scheduled task that generates a new report every Friday night\. If the task scheduler is running on three worker servers, the scheduled task will run on all three servers and generate the report three times\. Not good!$/アプリケーションが複数のサーバで実行される場合、スケジュール済みのジョブを単一サーバ上のみで実行するよう制限できるようになりました。たとえば、毎週の金曜の夜に、新しいレポートを生成するタスクをスケジュールしていると仮定しましょう。タスクスケジューラが３つのワーカーサーバ上で実行されているなら、スケジュールされているタスクは３つ全部のサーバで実行され、３回レポートが生成されます。これではいけません。/
s/^To indicate that the task should run on only one server, use the `onOneServer` method when defining the scheduled task\. The first server to obtain the task will secure an atomic lock on the job to prevent other servers from running the same task at the same time:$/タスクをサーバひとつだけで実行するように指示するには、スケジュールタスクを定義するときに`onOneServer`メソッドを使用します。このタスクを最初に取得したサーバが、同じタスクを同じCronサイクルで他のサーバで実行しないように、ジョブにアトミックなロックを確保します。/
s/^### Maintenance Mode$/### メンテナンスモード/
s/^Laravel's scheduled tasks will not run when Laravel is in \[maintenance mode\](\/docs\/{{version}}\/configuration#maintenance-mode), since we don't want your tasks to interfere with any unfinished maintenance you may be performing on your server\. However, if you would like to force a task to run even in maintenance mode, you may use the `evenInMaintenanceMode` method:$/Laravelのスケジュールタスクは、Laravelが[メンテナンスモード](\/docs\/{{version}}\/configuration#maintenance-mode)の間は実行されません。メンテナンスが完了していないサーバ上で、タスクが実行されてほしくないからです。しかし、メンテナンスモードでも実行するように強制したい場合は、`evenInMaintenanceMode`メソッドを使用します。/
s/^## Task Output$/## タスク出力/
s/^The Laravel scheduler provides several convenient methods for working with the output generated by scheduled tasks\. First, using the `sendOutputTo` method, you may send the output to a file for later inspection:$/Laravelスケジューラはスケジュールしたタスクが生成する出力を取り扱う便利なメソッドをたくさん用意しています。最初に`sendOutputTo`メソッドを使い、後ほど内容を調べられるようにファイルへ出力してみましょう。/
s/^If you would like to append the output to a given file, you may use the `appendOutputTo` method:$/出力を指定したファイルに追加したい場合は、`appendOutputTo`メソッドを使います。/
s/^Using the `emailOutputTo` method, you may e-mail the output to an e-mail address of your choice\. Before e-mailing the output of a task, you should configure Laravel's \[e-mail services\](\/docs\/{{version}}\/mail):$/`emailOutputTo`メソッドを使えば、選択したメールアドレスへ出力をメールで送ることができます。タスク出力をメールで送信する前に、[メール送信サービス](\/docs\/{{version}}\/mail)の設定を済ませておく必要があります。/
s/^             ->emailOutputTo('foo@example\.com');$/             ->emailOutputTo('foo@example.com');/
s/^> {note} The `emailOutputTo`, `sendOutputTo` and `appendOutputTo` methods are exclusive to the `command` and `exec` methods\.$/> {note} The `emailOutputTo`, `sendOutputTo` and `appendOutputTo` methods are exclusive to the `command` and `exec` methods./
s/^## Task Hooks$/## タスクフック/
s/^Using the `before` and `after` methods, you may specify code to be executed before and after the scheduled task is complete:$/`before`と`after`メソッドを使えば、スケジュールされたタスクの実行前後に指定したコードを実行することができます。/
s/^                 \/\/ Task is about to start\.\.\.$/                 \/\/ タスク開始時…/
s/^                 \/\/ Task is complete\.\.\.$/                 \/\/ タスク終了時…/
s/^#### Pinging URLs$/#### URLへのPing/
s/^Using the `pingBefore` and `thenPing` methods, the scheduler can automatically ping a given URL before or after a task is complete\. This method is useful for notifying an external service, such as \[Laravel Envoyer\](https:\/\/envoyer\.io), that your scheduled task is commencing or has finished execution:$/`pingBefore`と`thenPing`メソッドを使用し、タスク実行前、タスク完了後に指定したURLへ自動的にPingすることができます。これは[Laravel Envoyer](https:\/\/envoyer.io)のような外部サービスへスケジュールされたタスクが始まる、または完了したことを知らせるのに便利です。/
s/^Using either the `pingBefore($url)` or `thenPing($url)` feature requires the Guzzle HTTP library\. You can add Guzzle to your project using the Composer package manager:$/`pingBefore($url)`か`thenPing($url)`のどちらを使用するにも、Guzzle HTTPライブラリーが必要です。GuzzleはComposerパッケージマネージャを利用し追加できます。/
