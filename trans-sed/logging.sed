s/^# Logging$/# ログ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[Building Log Stacks\](#building-log-stacks)$/    - [ログスタックの構築](#building-log-stacks)/
s/^- \[Writing Log Messages\](#writing-log-messages)$/- [ログメッセージの記述](#writing-log-messages)/
s/^    - \[Writing To Specific Channels\](#writing-to-specific-channels)$/    - [指定チャンネルへの記述](#writing-to-specific-channels)/
s/^- \[Advanced Monolog Channel Customization\](#advanced-monolog-channel-customization)$/- [Monologチャンネルの上級カスタマイズ](#advanced-monolog-channel-customization)/
s/^    - \[Customizing Monolog For Channels\](#customizing-monolog-for-channels)$/    - [チャンネル用Monologカスタマイズ](#customizing-monolog-for-channels)/
s/^    - \[Creating Monolog Handler Channels\](#creating-monolog-handler-channels)$/    - [Monologハンドラチャンネルの作成](#creating-monolog-handler-channels)/
s/^    - \[Creating Channels Via Factories\](#creating-channels-via-factories)$/    - [ファクトリを用いたチャンネル生成](#creating-channels-via-factories)/
s/^## Introduction$/## イントロダクション/
s/^To help you learn more about what's happening within your application, Laravel provides robust logging services that allow you to log messages to files, the system error log, and even to Slack to notify your entire team\.$/アプリケーションで発生している事象を確実に捕らえられるように、Laravelはログメッセージをファイルやシステムエラーログ、さらにチーム全体に知らせるためのSlack通知も可能な、堅牢なログサービスを提供しています。/
s/^Under the hood, Laravel utilizes the \[Monolog\](https:\/\/github\.com\/Seldaek\/monolog) library, which provides support for a variety of powerful log handlers\. Laravel makes it a cinch to configure these handlers, allowing you to mix and match them to customize your application's log handling\.$/そのために、Laravelは多くのパワフルなログハンドラをサポートしている、[Monolog](https:\/\/github.com\/Seldaek\/monolog)ライブラリーを活用しています。Laravelはそうしたハンドラの設定を簡単にできるようにし、アプリケーションのログ処理に合わせカスタマイズするため、ハンドラを多重に使ったり、マッチングできるようにしています。/
s/^## Configuration$/## 設定/
s/^All of the configuration for your application's logging system is housed in the `config\/logging\.php` configuration file\. This file allows you to configure your application's log channels, so be sure to review each of the available channels and their options\. Of course, we'll review a few common options below\.$/アプリケーションのログシステムの設定はすべて、`config\/logging.php`設定ファイルに用意されています。このファイルはアプリケーションのログチャンネルを設定できるため、使用可能なチャンネルやその他のオプションをしっかりとレビューしてください。もちろん、よく使用されるオプションを以降からレビューします。/
s/^By default, Laravel will use the `stack` channel when logging messages\. The `stack` channel is used to aggregate multiple log channels into a single channel\. For more information on building stacks, check out the \[documentation below\](#building-log-stacks)\.$/デフォルトでは、Laravelは`stack`チャンネルをメッセージをログする場合に使用します。`stack`チャンネルは、複数のログチャンネルを一つのログチャンネルへ集結するために使用します。スタックの構築に関する詳細は、[このドキュメントで後ほど](#building-log-stacks)説明します。/
s/^#### Configuring The Channel Name$/#### チャンネル名の設定/
s/^By default, Monolog is instantiated with a "channel name" that matches the current environment, such as `production` or `local`\. To change this value, add a `name` option to your channel's configuration:$/Monologはデフォルトで`production`や`local`のような、現在の環境と一致する「チャンネル名」でインスタンス化されます。この値を変更するには、チャンネルの設定に`name`オプションを追加してください。/
s/^    'stack' => \[$/    'stack' => [/
s/^        'channels' => \['single', 'slack'\],$/        'channels' => ['single', 'slack'],/
s/^    \],$/    ],/
s/^#### Available Channel Drivers$/#### 利用可能なチャンネルドライバ/
s/^Name | Description$/名前 | 説明/
s/^`stack` | A wrapper to facilitate creating "multi-channel" channels$/`stack` | 「マルチチャンネル」チャンネルを作成するためのラッパー機能/
s/^`single` | A single file or path based logger channel (`StreamHandler`)$/`single` | シングルファイル／パスベースのロガーチャンネル（`StreamHandler`）/
s/^`daily` | A `RotatingFileHandler` based Monolog driver which rotates daily$/`daily` | `RotatingFileHandler`ベースの毎日ファイルを切り替えるMonologドライバ/
s/^`slack` | A `SlackWebhookHandler` based Monolog driver$/`slack` | `SlackWebhookHandler`ベースのMonologドライバ/
s/^`syslog` | A `SyslogHandler` based Monolog driver$/`syslog` | `SyslogHandler`ベースのMonologドライバ/
s/^`errorlog` | A `ErrorLogHandler` based Monolog driver$/`errorlog` | `ErrorLogHandler`ベースのMonologドライバ/
s/^`monolog` | A Monolog factory driver that may use any supported Monolog handler$/`monolog` | サポートしているMonologハンドラをどれでも使用できる、Monologファクトリドライバ/
s/^`custom` | A driver that calls a specified factory to create a channel$/`custom` | チャンネルを生成するため、指定したファクトリを呼び出すドライバ/
s/^> {tip} Check out the documentation on \[advanced channel customization\](#advanced-monolog-channel-customization) to learn more about the `monolog` and `custom` drivers\.$/> {tip} `monolog`と`custom`ドライバの詳細は、[上級チャンネルカスタマイズ](#advanced-monolog-channel-customization)のドキュメントを確認し、学んでください。/
s/^#### Configuring The Slack Channel$/#### Slackチャンネルの設定/
s/^The `slack` channel requires a `url` configuration option\. This URL should match a URL for an \[incoming webhook\](https:\/\/slack\.com\/apps\/A0F7XDUAZ-incoming-webhooks) that you have configured for your Slack team\.$/`slack`チャンネルには、`url`設定オプションが必須です。このURLはSlackチームに対して設定されている、[incoming webhook](https:\/\/slack.com\/apps\/A0F7XDUAZ-incoming-webhooks)へのURLと一致させる必要があります。/
s/^### Building Log Stacks$/### ログスタックの構築/
s/^As previously mentioned, the `stack` driver allows you to combine multiple channels into a single log channel\. To illustrate how to use log stacks, let's take a look at an example configuration that you might see in a production application:$/先に説明した通り、`stack`ドライバーは、複数のチャンネルを一つのログチャンネルへまとめるために使用します。ログスタックの使用方法を説明するため、ある実働環境に対する設定例を見てみましょう。/
s/^    'channels' => \[$/    'channels' => [/
s/^        'stack' => \[$/        'stack' => [/
s/^            'channels' => \['syslog', 'slack'\],$/            'channels' => ['syslog', 'slack'],/
s/^        \],$/        ],/
s/^        'syslog' => \[$/        'syslog' => [/
s/^        \],$/        ],/
s/^        'slack' => \[$/        'slack' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^Let's dissect this configuration\. First, notice our `stack` channel aggregates two other channels via its `channels` option: `syslog` and `slack`\. So, when logging messages, both of these channels will have the opportunity to log the message\.$/では、個別にこの設定を確認しましょう。最初に、`stack`チャンネルが`channels`オプションにより`syslog`と`slack`、２つのチャンネルをまとめていることに注目してください。/
s/^#### Log Levels$/#### ログレベル/
s/^Take note of the `level` configuration option present on the `syslog` and `slack` channel configurations in the example above\. This option determines the minimum "level" a message must be in order to be logged by the channel\. Monolog, which powers Laravel's logging services, offers all of the log levels defined in the \[RFC 5424 specification\](https:\/\/tools\.ietf\.org\/html\/rfc5424): \*\*emergency\*\*, \*\*alert\*\*, \*\*critical\*\*, \*\*error\*\*, \*\*warning\*\*, \*\*notice\*\*, \*\*info\*\*, and \*\*debug\*\*\.$/上記の例で、`syslog`と`slack`チャンネル設定の中に、`level`設定オプションが存在していることに注目です。このオプションは、そのチャンネルでメッセージをログする、最低の「レベル」を定めるオプションです。Laravelのログサービスを動かしているMonologは、[RFC 5424規約](https:\/\/tools.ietf.org\/html\/rfc5424)で定められている全ログレベルが使用できます。**emergency**と**alert**、**critical**、**error**、**warning**、**notice**、**info**、**debug**です。/
s/^So, imagine we log a message using the `debug` method:$/`debug`メソッドを使用し、メッセージをログしてみることを想像しましょう。/
s/^    Log::debug('An informational message\.');$/    Log::debug('An informational message.');/
s/^Given our configuration, the `syslog` channel will write the message to the system log; however, since the error message is not `critical` or above, it will not be sent to Slack\. However, if we log an `emergency` message, it will be sent to both the system log and Slack since the `emergency` level is above our minimum level threshold for both channels:$/上記設定では、`syslog`チャンネルにより、システムログへメッセージを書き込みます。しかしながら、エラーメッセージは`critical`以上ではないため、Slackには送られません。ところが、`emergency`メッセージをログする場合、両方のチャンネルに対する最低の基準レベル以上のため、システムログとSlackの両方へ送られます。/
s/^## Writing Log Messages$/## ログメッセージの記述/
s/^You may write information to the logs using the `Log` \[facade\](\/docs\/{{version}}\/facades)\. As previously mentioned, the logger provides the eight logging levels defined in the \[RFC 5424 specification\](https:\/\/tools\.ietf\.org\/html\/rfc5424): \*\*emergency\*\*, \*\*alert\*\*, \*\*critical\*\*, \*\*error\*\*, \*\*warning\*\*, \*\*notice\*\*, \*\*info\*\* and \*\*debug\*\*:$/`Log`[ファサード](\/docs\/{{version}}\/facades)を使い、情報をログできます。先に説明したように、ロガーは[RFC 5424規約](https:\/\/tools.ietf.org\/html\/rfc5424)に定義されている、**emergency**、**alert**、**critical**、**error**、**warning**、**notice**、**info**、**debug**の８ログレベルを提供しています。/
s/^So, you may call any of these methods to log a message for the corresponding level\. By default, the message will be written to the default log channel as configured by your `config\/logging\.php` configuration file:$/ログメッセージレベルに応じたメソッドを呼び出してください。デフォルトでは、`config\/logging.php`設定ファイルで定義されているデフォルトログチャンネルへ、メッセージが書き込まれます。/
s/^        \/\*\*$/        \/**/
s/^         \* Show the profile for the given user\.$/         * 指定したユーザーのプロファイルを表示/
s/^         \*$/         */
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            Log::info('Showing user profile for user: '\.$id);$/            Log::info('Showing user profile for user: '.$id);/
s/^            return view('user\.profile', \['user' => User::findOrFail($id)\]);$/            return view('user.profile', ['user' => User::findOrFail($id)]);/
s/^#### Contextual Information$/#### 文脈情報/
s/^An array of contextual data may also be passed to the log methods\. This contextual data will be formatted and displayed with the log message:$/ログメソッドには、文脈情報の配列を渡すことも可能です。この文脈情報は、ログメッセージに整形され、表示されます。/
s/^    Log::info('User failed to login\.', \['id' => $user->id\]);$/    Log::info('User failed to login.', ['id' => $user->id]);/
s/^### Writing To Specific Channels$/### 指定チャンネルへの記述/
s/^Sometimes you may wish to log a message to a channel other than your application's default channel\. You may use the `channel` method on the `Log` facade to retrieve and log to any channel defined in your configuration file:$/アプリケーションのデフォルトチャンネルの代わりに、別のチェンネルへメッセージをログしたい場合もあります。設定ファイルに定義してあるチャンネルを`Log`ファサードの`channel`メソッドを使い取得し、ログしてください。/
s/^If you would like to create an on-demand logging stack consisting of multiple channels, you may use the `stack` method:$/複数チャンネルで構成されたログスタックをオンデマンドで生成したい場合は、`stack`メソッドを使います。/
s/^    Log::stack(\['single', 'slack'\])->info('Something happened!');$/    Log::stack(['single', 'slack'])->info('Something happened!');/
s/^## Advanced Monolog Channel Customization$/## Monologチャンネルの上級カスタマイズ/
s/^### Customizing Monolog For Channels$/### チャンネル用Monologカスタマイズ/
s/^Sometimes you may need complete control over how Monolog is configured for an existing channel\. For example, you may want to configure a custom Monolog `FormatterInterface` implementation for a given channel's handlers\.$/既存チャンネルに対するMonologの設定方法を複雑にコントロールする必要がある場合もあり得ます。たとえば、指定したチェンネルハンドラに対し、Monologの`FormatterInterface`カスタム実装を設定したい場合です。/
s/^To get started, define a `tap` array on the channel's configuration\. The `tap` array should contain a list of classes that should have an opportunity to customize (or "tap" into) the Monolog instance after it is created:$/そのためには、チャンネルの設定で、`tap`配列を定義します。`tap`配列は、生成された後のMonologインスタンスをカスタマイズ（もしくは利用 : "`tap` into"）する機会を与える、クラスのリストを含んでいる必要があります。/
s/^    'single' => \[$/    'single' => [/
s/^        'tap' => \[App\\Logging\\CustomizeFormatter::class\],$/        'tap' => [App\\Logging\\CustomizeFormatter::class],/
s/^        'path' => storage_path('logs\/laravel\.log'),$/        'path' => storage_path('logs\/laravel.log'),/
s/^    \],$/    ],/
s/^Once you have configured the `tap` option on your channel, you're ready to define the class that will customize your Monolog instance\. This class only needs a single method: `__invoke`, which receives an `Illuminate\\Log\\Logger` instance\. The `Illuminate\\Log\\Logger` instance proxies all method calls to the underlying Monolog instance:$/チャンネルに対する`tap`オプションを定義したら、Monologインスタンスをカスタマイズするクラスを定義する準備が整いました。このクラスは`Illuminate\\Log\\Logger`インスタンスを受け取る、`__invoke`メソッドのみ必要です。`Illuminate\\Log\\Logger`インスタンスは、すべてのメソッドを裏で動作するMonologインスタンスへ送るプロキシクラスです。/
s/^        \/\*\*$/        \/**/
s/^         \* Customize the given logger instance\.$/         * 渡されたロガーインスタンスのカスタマイズ/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Log\\Logger  $logger$/         * @param  \\Illuminate\\Log\\Logger  $logger/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^                $handler->setFormatter(\.\.\.);$/                $handler->setFormatter(...);/
s/^> {tip} All of your "tap" classes are resolved by the \[service container\](\/docs\/{{version}}\/container), so any constructor dependencies they require will automatically be injected\.$/> {tip} すべての"tap"クラスは、[サービスコンテナ](\/docs\/{{version}}\/container)により、依存解決されます。そのため、コンストラクタで要求した依存は、自動的に注入されます。/
s/^### Creating Monolog Handler Channels$/### Monologハンドラチャンネルの作成/
s/^Monolog has a variety of \[available handlers\](https:\/\/github\.com\/Seldaek\/monolog\/tree\/master\/src\/Monolog\/Handler)\. In some cases, the type of logger you wish to create is merely a Monolog driver with an instance of a specific handler\.  These channels can be created using the `monolog` driver\.$/Monologはバラエティーに富んだ[利用可能なハンドラ](https:\/\/github.com\/Seldaek\/monolog\/tree\/master\/src\/Monolog\/Handler)を用意しています。あるケースでは、生成したいロガーのタイプが、単に特定のハンドラを持つMonologドライバであることがあります。こうしたチャンネルは`monolog`ドライバーを使用し、生成できます。/
s/^When using the `monolog` driver, the `handler` configuration option is used to specify which handler will be instantiated\. Optionally, any constructor parameters the handler needs may be specified using the `handler_with` configuration option:$/`monolog`ドライバーを使用する場合、インスタンス化するハンドラを指定するために、`handler`設定オプションを使います。任意のコンストラクタパラメータを指定する必要がある場合は、`handler_with`設定オプションを使用します。/
s/^    'logentries' => \[$/    'logentries' => [/
s/^        'handler_with' => \[$/        'handler_with' => [/
s/^            'host' => 'my\.logentries\.internal\.datahubhost\.company\.com',$/            'host' => 'my.logentries.internal.datahubhost.company.com',/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^#### Monolog Formatters$/#### Monologフォーマッター/
s/^When using the `monolog` driver, the Monolog `LineFormatter` will be used as the default formatter\. However, you may customize the type of formatter passed to the handler using the `formatter` and `formatter_with` configuration options:$/`monolog`ドライバーを使用する場合、Monolog `LineFormatter`をデフォルトフォーマッターとして使用します。しかし、フォーマッターのタイプをカスタマイズする必要がある場合は、`formatter`と`formatter_with`設定オプションを使用します。/
s/^    'browser' => \[$/    'browser' => [/
s/^        'formatter_with' => \[$/        'formatter_with' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^If you are using a Monolog handler that is capable of providing its own formatter, you may set the value of the `formatter` configuration option to `default`:$/Monologハンドラが提供する自身のフォーマッターを使用する場合は、`formatter`設定オプションに`default`を値として指定してください。/
s/^    'newrelic' => \[$/    'newrelic' => [/
s/^    \],$/    ],/
s/^### Creating Channels Via Factories$/### ファクトリを用いたチャンネル生成/
s/^If you would like to define an entirely custom channel in which you have full control over Monolog's instantiation and configuration, you may specify a `custom` driver type in your `config\/logging\.php` configuration file\. Your configuration should include a `via` option to point to the factory class which will be invoked to create the Monolog instance:$/Monologのインスタンス化と設定を完全にコントロールするために、完全なカスタムチャンネルを定義したい場合は、`config\/logging.php`設定ファイルで、`custom`ドライバータイプを指定してください。Monologインスンタンスを生成するために、呼び出すファクトリクラスを指定するために、`via`オプションを設定に含める必要があります。/
s/^    'channels' => \[$/    'channels' => [/
s/^        'custom' => \[$/        'custom' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^Once you have configured the `custom` channel, you're ready to define the class that will create your Monolog instance\. This class only needs a single method: `__invoke`, which should return the Monolog instance:$/`custom`チャンネルを設定したら、Monologインスタンスを生成するクラスを定義する準備が整いました。このクラスはMonologインスタンスを返す、`__invoke`メソッドのみ必要です。/
s/^        \/\*\*$/        \/**/
s/^         \* Create a custom Monolog instance\.$/         * カスタムMonologインスタンスの生成/
s/^         \*$/         */
s/^         \* @param  array  $config$/         * @param  array  $config/
s/^         \* @return \\Monolog\\Logger$/         * @return \\Monolog\\Logger/
s/^         \*\/$/         *\//
s/^            return new Logger(\.\.\.);$/            return new Logger(...);/
