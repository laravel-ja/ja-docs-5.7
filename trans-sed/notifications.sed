s/^# Notifications$/# 通知/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Creating Notifications\](#creating-notifications)$/- [通知の作成](#creating-notifications)/
s/^- \[Sending Notifications\](#sending-notifications)$/- [通知の送信](#sending-notifications)/
s/^    - \[Using The Notifiable Trait\](#using-the-notifiable-trait)$/    - [Notifiableトレイトの使用](#using-the-notifiable-trait)/
s/^    - \[Using The Notification Facade\](#using-the-notification-facade)$/    - [Notificationファサードの使用](#using-the-notification-facade)/
s/^    - \[Specifying Delivery Channels\](#specifying-delivery-channels)$/    - [配信チャンネルの指定](#specifying-delivery-channels)/
s/^    - \[Queueing Notifications\](#queueing-notifications)$/    - [通知のキューイング](#queueing-notifications)/
s/^    - \[On-Demand Notifications\](#on-demand-notifications)$/    - [オンデマンド通知](#on-demand-notifications)/
s/^- \[Mail Notifications\](#mail-notifications)$/- [メール通知](#mail-notifications)/
s/^    - \[Formatting Mail Messages\](#formatting-mail-messages)$/    - [メールメッセージのフォーマット](#formatting-mail-messages)/
s/^    - \[Customizing The Recipient\](#customizing-the-recipient)$/    - [受信者のカスタマイズ](#customizing-the-recipient)/
s/^    - \[Customizing The Subject\](#customizing-the-subject)$/    - [件名のカスタマイズ](#customizing-the-subject)/
s/^    - \[Customizing The Templates\](#customizing-the-templates)$/    - [テンプレートのカスタマイズ](#customizing-the-templates)/
s/^- \[Markdown Mail Notifications\](#markdown-mail-notifications)$/- [Markdownメール通知](#markdown-mail-notifications)/
s/^    - \[Generating The Message\](#generating-the-message)$/    - [メッセージ生成](#generating-the-message)/
s/^    - \[Writing The Message\](#writing-the-message)$/    - [メッセージ記述](#writing-the-message)/
s/^    - \[Customizing The Components\](#customizing-the-components)$/    - [コンポーネントカスタマイズ](#customizing-the-components)/
s/^- \[Database Notifications\](#database-notifications)$/- [データベース通知](#database-notifications)/
s/^    - \[Prerequisites\](#database-prerequisites)$/    - [事前要件](#database-prerequisites)/
s/^    - \[Formatting Database Notifications\](#formatting-database-notifications)$/    - [データベース通知のフォーマット](#formatting-database-notifications)/
s/^    - \[Accessing The Notifications\](#accessing-the-notifications)$/    - [通知へのアクセス](#accessing-the-notifications)/
s/^    - \[Marking Notifications As Read\](#marking-notifications-as-read)$/    - [Readとしての通知作成](#marking-notifications-as-read)/
s/^- \[Broadcast Notifications\](#broadcast-notifications)$/- [ブロードキャスト通知](#broadcast-notifications)/
s/^    - \[Prerequisites\](#broadcast-prerequisites)$/    - [事前要件](#broadcast-prerequisites)/
s/^    - \[Formatting Broadcast Notifications\](#formatting-broadcast-notifications)$/    - [ブロードキャスト通知のフォーマット](#formatting-broadcast-notifications)/
s/^    - \[Listening For Notifications\](#listening-for-notifications)$/    - [通知のリッスン](#listening-for-notifications)/
s/^- \[SMS Notifications\](#sms-notifications)$/- [SMS通知](#sms-notifications)/
s/^    - \[Prerequisites\](#sms-prerequisites)$/    - [事前要件](#sms-prerequisites)/
s/^    - \[Formatting SMS Notifications\](#formatting-sms-notifications)$/    - [SMS通知のフォーマット](#formatting-sms-notifications)/
s/^    - \[Customizing The "From" Number\](#customizing-the-from-number)$/    - [発信元電話番号のカスタマイズ](#customizing-the-from-number)/
s/^    - \[Routing SMS Notifications\](#routing-sms-notifications)$/    - [SMS通知のルート指定](#routing-sms-notifications)/
s/^- \[Slack Notifications\](#slack-notifications)$/- [Slack通知](#slack-notifications)/
s/^    - \[Prerequisites\](#slack-prerequisites)$/    - [事前要件](#slack-prerequisites)/
s/^    - \[Formatting Slack Notifications\](#formatting-slack-notifications)$/    - [Slack通知のフォーマット](#formatting-slack-notifications)/
s/^    - \[Slack Attachments\](#slack-attachments)$/    - [Slack添付](#slack-attachments)/
s/^    - \[Routing Slack Notifications\](#routing-slack-notifications)$/    - [Slack通知のルート指定](#routing-slack-notifications)/
s/^- \[Notification Events\](#notification-events)$/- [通知イベント](#notification-events)/
s/^- \[Custom Channels\](#custom-channels)$/- [カスタムチャンネル](#custom-channels)/
s/^## Introduction$/## イントロダクション/
s/^In addition to support for \[sending email\](\/docs\/{{version}}\/mail), Laravel provides support for sending notifications across a variety of delivery channels, including mail, SMS (via \[Nexmo\](https:\/\/www\.nexmo\.com\/)), and \[Slack\](https:\/\/slack\.com)\. Notifications may also be stored in a database so they may be displayed in your web interface\.$/[メール送信](\/docs\/{{version}}\/mail)に加え、LaravelはSMS（[Nexmo](https:\/\/www.nexmo.com\/)使用）、[Slack](https:\/\/slack.com)などの、さまざまな複数チャンネルへ渡る通知をサポートしています。通知はWebインターフェイスで表示できるように、データバースに保存することもできます。/
s/^Typically, notifications should be short, informational messages that notify users of something that occurred in your application\. For example, if you are writing a billing application, you might send an "Invoice Paid" notification to your users via the email and SMS channels\.$/通常、通知はアプリケーションで何かが起きたことをユーザーへ知らせる、短い情報メッセージです。たとえば、課金アプリを作成しているなら、メールとSMSチャンネルで「課金支払い」を送信できます。/
s/^## Creating Notifications$/## 通知の作成/
s/^In Laravel, each notification is represented by a single class (typically stored in the `app\/Notifications` directory)\. Don't worry if you don't see this directory in your application, it will be created for you when you run the `make:notification` Artisan command:$/Laravelの各通知は、（通常、`app\/Notifications`ディレクトリに設置される）クラスにより表されます。このディレクトリがアプリケーションで見つからなくても、心配ありません。`make:notification` Artisanコマンドを実行すると、作成されます。/
s/^This command will place a fresh notification class in your `app\/Notifications` directory\. Each notification class contains a `via` method and a variable number of message building methods (such as `toMail` or `toDatabase`) that convert the notification to a message optimized for that particular channel\.$/このコマンドにより、真新しい通知クラスが、`app\/Notifications`ディレクトリに生成されます。各通知クラスは`via`メソッドと、特定のチャンネルに最適化したメッセージへ変換する、いくつかのメッセージ構築メソッド（`toMail`、`toDatabase`など）を含んでいます。/
s/^## Sending Notifications$/## 通知の送信/
s/^### Using The Notifiable Trait$/### Notifiableトレイトの使用/
s/^Notifications may be sent in two ways: using the `notify` method of the `Notifiable` trait or using the `Notification` \[facade\](\/docs\/{{version}}\/facades)\. First, let's explore using the trait:$/通知は２つの方法で送信されます。`Notifiable`トレイトの`notify`メソッドか、`Notification`[ファサード](\/docs\/{{version}}\/facades)を使う方法です。最初に、トレイトを見ていきましょう。/
s/^This trait is utilized by the default `App\\User` model and contains one method that may be used to send notifications: `notify`\. The `notify` method expects to receive a notification instance:$/このトレイトは、デフォルトの`App\\User`モデルで使用されており、通知を送るための`notify`メソッドを一つ含んでいます。`notify`メソッドは通知インスタンスを受け取ります。/
s/^> {tip} Remember, you may use the `Illuminate\\Notifications\\Notifiable` trait on any of your models\. You are not limited to only including it on your `User` model\.$/> {tip} みなさんのどんなモデルであっても、`Illuminate\\Notifications\\Notifiable`トレイトを使えることを覚えておきましょう。使用は`User`モデルだけに限定されているわけでありません。/
s/^### Using The Notification Facade$/### Notificationファサードの使用/
s/^Alternatively, you may send notifications via the `Notification` \[facade\](\/docs\/{{version}}\/facades)\. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users\. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the `send` method:$/ほかに、`Notification`[ファサード](\/docs\/{{version}}\/facades)を使用し、通知を送る方法もあります。これは主にユーザーコレクションのような、複数の通知可能エンティティに対し、通知する場合に便利です。ファサードを使い通知するには、`send`メソッドへ通知可能エンティティ全部と、通知インスタンスを渡します。/
s/^### Specifying Delivery Channels$/### 配信チャンネルの指定/
s/^Every notification class has a `via` method that determines on which channels the notification will be delivered\. Out of the box, notifications may be sent on the `mail`, `database`, `broadcast`, `nexmo`, and `slack` channels\.$/通知を配信するチャンネルを指定するため、すべての通知クラスは`via`メソッドを持っています。通知は`mail`、`database`、`broadcast`、`nexmo`、`slack`へ送れるようになっています。/
s/^> {tip} If you would like to use other delivery channels such as Telegram or Pusher, check out the community driven \[Laravel Notification Channels website\](http:\/\/laravel-notification-channels\.com)\.$/> {tip} TelegramやPusherのような、他の配信チャンネルを利用したい場合は、コミュニティが管理している、[Laravel Notification Channels website](http:\/\/laravel-notification-channels.com)をご覧ください。/
s/^The `via` method receives a `$notifiable` instance, which will be an instance of the class to which the notification is being sent\. You may use `$notifiable` to determine which channels the notification should be delivered on:$/`via`メソッドは、通知を送っているクラスのインスタンスである、`$notifiable`インスタンスを引数に受け取ります。`$notifiable`を使い、通知をどこに配信するチャンネルなのかを判定することができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the notification's delivery channels\.$/     * 通知の配信チャンネルを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return $notifiable->prefers_sms ? \['nexmo'\] : \['mail', 'database'\];$/        return $notifiable->prefers_sms ? ['nexmo'] : ['mail', 'database'];/
s/^### Queueing Notifications$/### 通知のキューイング/
s/^> {note} Before queueing notifications you should configure your queue and \[start a worker\](\/docs\/{{version}}\/queues)\.$/> {note} 通知のキューイングを行う前に、キューを設定し、[ワーカを起動](\/docs\/{{version}}\/queues)する必要があります。/
s/^Sending notifications can take time, especially if the channel needs an external API call to deliver the notification\. To speed up your application's response time, let your notification be queued by adding the `ShouldQueue` interface and `Queueable` trait to your class\. The interface and trait are already imported for all notifications generated using `make:notification`, so you may immediately add them to your notification class:$/通知の送信には時間が取られます。特にそのチャンネルが通知を配信するために、外部のAPIを呼び出す必要がある場合は特にです。アプリケーションのレスポンスタイムを向上させるには、クラスに`ShouldQueue`インターフェイスと、`Queueable`トレイトを追加し、キューイングしましょう。このインターフェイスとトレイトは、`make:notification`を使用して生成された全通知でインポート済みですから、すぐに通知クラスに追加できます。/
s/^        \/\/ \.\.\.$/        \/\/ .../
s/^Once the `ShouldQueue` interface has been added to your notification, you may send the notification like normal\. Laravel will detect the `ShouldQueue` interface on the class and automatically queue the delivery of the notification:$/`ShouldQueue`インターフェイスを通知クラスへ追加したら、通常通りに送信してください。Laravelはクラスの`ShouldQueue`インターフェイスを見つけ、自動的に通知の配信をキューへ投入します。/
s/^If you would like to delay the delivery of the notification, you may chain the `delay` method onto your notification instantiation:$/通知の配信を遅らせたい場合、`delay`メソッドを通知のインスタンスへチェーンしてください。/
s/^### On-Demand Notifications$/### オンデマンド通知/
s/^Sometimes you may need to send a notification to someone who is not stored as a "user" of your application\. Using the `Notification::route` method, you may specify ad-hoc notification routing information before sending the notification:$/場合により、アプリケーションの「ユーザー」として保存されていない誰かに対し、通知を送る必要が起きることがあります。`Notification::route`メソッドを使い、通知を送る前にアドホックな通知ルーティング情報を指定できます。/
s/^    Notification::route('mail', 'taylor@example\.com')$/    Notification::route('mail', 'taylor@example.com')/
s/^## Mail Notifications$/## メール通知/
s/^### Formatting Mail Messages$/### メールメッセージのフォーマット/
s/^If a notification supports being sent as an email, you should define a `toMail` method on the notification class\. This method will receive a `$notifiable` entity and should return a `Illuminate\\Notifications\\Messages\\MailMessage` instance\. Mail messages may contain lines of text as well as a "call to action"\. Let's take a look at an example `toMail` method:$/ある通知でメール送信をサポートする場合、通知クラスに`toMail`メソッドを定義してください。このメソッドは、`$notifiable`エンティティを受け取り、`Illuminate\\Notifications\\Messages\\MailMessage`インスタンスを返す必要があります。メールメッセージはテキスト行と、同時に"call to action"（アクションの呼び出し）を含むことでしょう。`toMail`メソッドの例を見てみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return \\Illuminate\\Notifications\\Messages\\MailMessage$/     * @return \\Illuminate\\Notifications\\Messages\\MailMessage/
s/^     \*\/$/     *\//
s/^        $url = url('\/invoice\/'\.$this->invoice->id);$/        $url = url('\/invoice\/'.$this->invoice->id);/
s/^                    ->line('One of your invoices has been paid!')$/                    ->line('課金が支払われました。')/
s/^                    ->action('View Invoice', $url)$/                    ->action('インボイス確認', $url)/
s/^                    ->line('Thank you for using our application!');$/                    ->line('私達のアプリケーションをご利用いただき、ありがとうございます。');/
s/^> {tip} Note we are using `$this->invoice->id` in our `toMail` method\. You may pass any data your notification needs to generate its message into the notification's constructor\.$/> {tip} `toMail`メソッドの中で、`$this->invoice->id`を使っていることに注意してください。通知メッセージを生成するために必要な情報は、どんなものでも通知のコンストラクタへ渡せます。/
s/^In this example, we register a greeting, a line of text, a call to action, and then another line of text\. These methods provided by the `MailMessage` object make it simple and fast to format small transactional emails\. The mail channel will then translate the message components into a nice, responsive HTML email template with a plain-text counterpart\. Here is an example of an email generated by the `mail` channel:$/この例では、挨拶、テキスト行、アクションの呼び出し、別のテキスト行を登録しています。これらのメソッドは、小さなトランザクションメールをシンプルで素早くフォーマットする、`MailMessage`オブジェクトが提供しています。メールチャンネルはテンプレートにより、メッセージの構成物をきれいでレスポンシブなHTMLメールへ、変換します。平文メールも用意されます。以下は`mail`チャンネルにより生成されたメールの例です。I/
s/^<img src="https:\/\/laravel\.com\/assets\/img\/notification-example\.png" width="551" height="596">$/<img src="https:\/\/laravel.com\/assets\/img\/notification-example.png" width="551" height="596">/
s/^> {tip} When sending mail notifications, be sure to set the `name` value in your `config\/app\.php` configuration file\. This value will be used in the header and footer of your mail notification messages\.$/> {tip} メール通知を行うときは、`config\/app.php`設定ファイルの`name`値を確実に設定してください。この値は、メール通知メッセージのヘッダとフッタで使用されます。/
s/^#### Other Notification Formatting Options$/#### 他の通知フォーマットオプション/
s/^Instead of defining the "lines" of text in the notification class, you may use the `view` method to specify a custom template that should be used to render the notification email:$/通知クラスの中にテキストの「行(line)」を定義する代わりに、通知メールをレンダーするためのカスタムテンプレートを`view`メソッドを使い、指定することができます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return \\Illuminate\\Notifications\\Messages\\MailMessage$/     * @return \\Illuminate\\Notifications\\Messages\\MailMessage/
s/^     \*\/$/     *\//
s/^            'emails\.name', \['invoice' => $this->invoice\]$/            'emails.name', ['invoice' => $this->invoice]/
s/^In addition, you may return a \[mailable object\](\/docs\/{{version}}\/mail) from the `toMail` method:$/さらに、`toMail`メソッドから[Mailableオブジェクト](\/docs\/{{version}}\/mail)を返すこともできます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return Mailable$/     * @return Mailable/
s/^     \*\/$/     *\//
s/^#### Error Messages$/#### エラーメッセージ/
s/^Some notifications inform users of errors, such as a failed invoice payment\. You may indicate that a mail message is regarding an error by calling the `error` method when building your message\. When using the `error` method on a mail message, the call to action button will be red instead of blue:$/ある通知はユーザーへエラーを知らせます。たとえば、課金の失敗です。メールメッセージがエラーに関するものであることを知らせるためには、メッセージ構築時に`error`メソッドを呼び出します。`error`メソッドをメールメッセージで使用すると、アクション呼び出しボタンが青の代わりに赤で表示されます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return \\Illuminate\\Notifications\\Message$/     * @return \\Illuminate\\Notifications\\Message/
s/^     \*\/$/     *\//
s/^                    ->line('\.\.\.');$/                    ->line('...');/
s/^### Customizing The Recipient$/### 受信者のカスタマイズ/
s/^When sending notifications via the `mail` channel, the notification system will automatically look for an `email` property on your notifiable entity\. You may customize which email address is used to deliver the notification by defining a `routeNotificationForMail` method on the entity:$/`mail`チャンネルを使い通知を送る場合、通知システムは自動的に通知エンティティで`email`プロパティを探します。通知を配信するために使用するメールアドレスをカスタマイズするには、エンティティに対し`routeNotificationForMail`メソッドを定義してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Route notifications for the mail channel\.$/         * メールチャンネルに対する通知をルートする/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Notifications\\Notification  $notification$/         * @param  \\Illuminate\\Notifications\\Notification  $notification/
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^### Customizing The Subject$/### 件名のカスタマイズ/
s/^By default, the email's subject is the class name of the notification formatted to "title case"\. So, if your notification class is named `InvoicePaid`, the email's subject will be `Invoice Paid`\. If you would like to specify an explicit subject for the message, you may call the `subject` method when building your message:$/デフォルトのメール件名は、通知のクラス名を"title case"にフォーマットしたものです。ですから、`InvoicePaid`という通知クラス名は、`Invoice Paid`というメールの件名になります。メッセージの件名を明確に指定したい場合は、メッセージを構築時に`subject`メソッドを呼び出してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return \\Illuminate\\Notifications\\Messages\\MailMessage$/     * @return \\Illuminate\\Notifications\\Messages\\MailMessage/
s/^     \*\/$/     *\//
s/^                    ->line('\.\.\.');$/                    ->line('...');/
s/^### Customizing The Templates$/### テンプレートのカスタマイズ/
s/^You can modify the HTML and plain-text template used by mail notifications by publishing the notification package's resources\. After running this command, the mail notification templates will be located in the `resources\/views\/vendor\/notifications` directory:$/通知パッケージのリソースを公開（開発者が変更できる場所にリソースを用意することを示すLaravel用語）することにより、メール通知で使用されるHTMLと平文テキストのテンプレートを変更することが可能です。次のコマンドを実行した後、メール通知のテンプレートは`resources\/views\/vendor\/notifications`ディレクトリ下に作成されます。/
s/^## Markdown Mail Notifications$/## Markdownメール通知/
s/^Markdown mail notifications allow you to take advantage of the pre-built templates of mail notifications, while giving you more freedom to write longer, customized messages\. Since the messages are written in Markdown, Laravel is able to render beautiful, responsive HTML templates for the messages while also automatically generating a plain-text counterpart\.$/Markdownメール通知により、事前に構築したテンプレートとメール通知のコンポーネントの利点をMailable中で利用できます。メッセージをMarkdownで記述すると、Laravelは美しいレスポンシブHTMLテンプレートをレンダーすると同時に、自動的に平文テキスト版も生成します。/
s/^### Generating The Message$/### メッセージ生成/
s/^To generate a notification with a corresponding Markdown template, you may use the `--markdown` option of the `make:notification` Artisan command:$/対応するMarkdownテンプレートを指定し、Mailableを生成するには、`make:notification` Artisanコマンドを`--markdown`オプション付きで使用します。/
s/^    php artisan make:notification InvoicePaid --markdown=mail\.invoice\.paid$/    php artisan make:notification InvoicePaid --markdown=mail.invoice.paid/
s/^Like all other mail notifications, notifications that use Markdown templates should define a `toMail` method on their notification class\. However, instead of using the `line` and `action` methods to construct the notification, use the `markdown` method to specify the name of the Markdown template that should be used:$/他のメール通知すべてと同様に、Markdownテンプレートを使用する通知は、通知クラスに`toMail`メソッドを定義する必要があります。しかし、`line`と`action`メソッドで通知を構成する代わりに、`markdown`メソッドを使用し、使用するMarkdownテンプレートの名前を指定します。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the mail representation of the notification\.$/     * 通知のメールプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return \\Illuminate\\Notifications\\Messages\\MailMessage$/     * @return \\Illuminate\\Notifications\\Messages\\MailMessage/
s/^     \*\/$/     *\//
s/^        $url = url('\/invoice\/'\.$this->invoice->id);$/        $url = url('\/invoice\/'.$this->invoice->id);/
s/^                    ->markdown('mail\.invoice\.paid', \['url' => $url\]);$/                    ->markdown('mail.invoice.paid', ['url' => $url]);/
s/^### Writing The Message$/### メッセージ記述/
s/^Markdown mail notifications use a combination of Blade components and Markdown syntax which allow you to easily construct notifications while leveraging Laravel's pre-crafted notification components:$/Markdownメール通知ではBladeコンポーネントとMarkdown記法が利用でき、メールメッセージを簡単に構築できると同時に、Laravelが用意している通知コンポーネントも活用できます。/
s/^    # Invoice Paid$/    # 発送のお知らせ/
s/^    Your invoice has been paid!$/    商品が発送されました！/
s/^    @component('mail::button', \['url' => $url\])$/    @component('mail::button', ['url' => $url])/
s/^    View Invoice$/    注文の確認/
s/^    Thanks,<br>$/    注文の確認<br>/
s/^    {{ config('app\.name') }}$/    {{ config('app.name') }} 様/
s/^#### Button Component$/#### Buttonコンポーネント/
s/^The button component renders a centered button link\. The component accepts two arguments, a `url` and an optional `color`\. Supported colors are `blue`, `green`, and `red`\. You may add as many button components to a notification as you wish:$/ボタンコンポーネントは中央寄せのボタンリンクをレンダーします。このコンポーネントは引数として、`url`とオプションの`color`を受け取ります。サポートしている色は`blue`、`green`、`red`です。メッセージに好きなだけのボタンコンポーネントを追加できます。/
s/^    @component('mail::button', \['url' => $url, 'color' => 'green'\])$/    @component('mail::button', ['url' => $url, 'color' => 'green'])/
s/^    View Invoice$/    注文の確認/
s/^#### Panel Component$/#### Panelコンポーネント/
s/^The panel component renders the given block of text in a panel that has a slightly different background color than the rest of the notification\. This allows you to draw attention to a given block of text:$/パネルコンポーネントは、メッセージの他の部分とは少し異なった背景色のパネルの中に、指定されたテキストブロックをレンダーします。これにより、指定するテキストに注目を集められます。/
s/^    This is the panel content\.$/    ここはパネルの内容です。/
s/^#### Table Component$/#### Tableコンポーネント/
s/^The table component allows you to transform a Markdown table into an HTML table\. The component accepts the Markdown table as its content\. Table column alignment is supported using the default Markdown table alignment syntax:$/テーブルコンポーネントは、MarkdownテーブルをHTMLテーブルへ変換します。このコンポーネントはMarkdownテーブルを内容として受け入れます。デフォルトのMarkdownテーブルの記法を使った、文字寄せをサポートしています。/
s/^    | Laravel       | Table         | Example  |$/    | Laravel       | テーブル      | 例       |/
s/^    | Col 2 is      | Centered      | $10      |$/    | 第２カラムは  | 中央寄せ      | $10      |/
s/^    | Col 3 is      | Right-Aligned | $20      |$/    | 第３カラムは  | 右寄せ        | $20      |/
s/^### Customizing The Components$/### コンポーネントカスタマイズ/
s/^You may export all of the Markdown notification components to your own application for customization\. To export the components, use the `vendor:publish` Artisan command to publish the `laravel-mail` asset tag:$/自身のアプリケーション向きにカスタマイズできるように、Markdown通知コンポーネントは全てエクスポートできます。コンポーネントをエクスポートするには、`vendor:publish` Artisanコマンドを使い、`laravel-mail`アセットを公開します。/
s/^This command will publish the Markdown mail components to the `resources\/views\/vendor\/mail` directory\. The `mail` directory will contain a `html` and a `markdown` directory, each containing their respective representations of every available component\. You are free to customize these components however you like\.$/このコマンドにより、`resources\/views\/vendor\/mail`ディレクトリ下にMarkdownメールコンポーネントが公開されます。`mail`ディレクトリ下に、`html`と`markdown`ディレクトリがあります。各ディレクトリは名前が示す形式で、利用できるコンポーネント全てのレスポンシブなプレゼンテーションを持っています。これらのコンポーネントはお好きなように自由にカスタマイズしてください。/
s/^#### Customizing The CSS$/#### CSSのカスタマイズ/
s/^After exporting the components, the `resources\/views\/vendor\/mail\/html\/themes` directory will contain a `default\.css` file\. You may customize the CSS in this file and your styles will automatically be in-lined within the HTML representations of your Markdown notifications\.$/コンポーネントをエクスポートすると、`resources\/views\/vendor\/mail\/html\/themes`ディレクトリに、`default.css`ファイルが用意されます。このファイル中のCSSをカスタマイズすれば、Markdownメール通知変換後のHTML形式の中に、インラインCSSとして自動的に取り込まれます。/
s/^> {tip} If you would like to build an entirely new theme for the Markdown components, write a new CSS file within the `html\/themes` directory and change the `theme` option of your `mail` configuration file\.$/> {tip} Markdownコンポーネント全体の新しいテーマを作成したい場合は、`html\/themes`の中に新しいCSSファイルを記述し、`mail`設定ファイルの`theme`オプションを変更します。/
s/^## Database Notifications$/## データベース通知/
s/^### Prerequisites$/### 事前要件/
s/^The `database` notification channel stores the notification information in a database table\. This table will contain information such as the notification type as well as custom JSON data that describes the notification\.$/`database`通知チャンネルは、通知情報をデータベーステーブルへ保存します。このテーブルは通知タイプのような情報と同時に、通知を説明するカスタムJSONデータを含みます。/
s/^You can query the table to display the notifications in your application's user interface\. But, before you can do that, you will need to create a database table to hold your notifications\. You may use the `notifications:table` command to generate a migration with the proper table schema:$/アプリケーションのユーザーインターフェイスで通知を表示するために、テーブルをクエリすることができます。しかし、その前に通知を保存するデータベーステーブルを作成する必要があります。実際のテーブルスキーマのマイグレーションを生成するために、`notifications:table`を使用してください。/
s/^### Formatting Database Notifications$/### データベース通知のフォーマット/
s/^If a notification supports being stored in a database table, you should define a `toDatabase` or `toArray` method on the notification class\. This method will receive a `$notifiable` entity and should return a plain PHP array\. The returned array will be encoded as JSON and stored in the `data` column of your `notifications` table\. Let's take a look at an example `toArray` method:$/通知でデータベーステーブルへの保存をサポートする場合、通知クラスに`toDatabase`か`toArray`メソッドを定義する必要があります。このメソッドは`$notifiable`エンティティを受け取り、プレーンなPHP配列を返す必要があります。返された配列はJSONへエンコードされ、`notifications`テーブルの`data`カラムに保存されます。`toArray`メソッドの例を見てみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the array representation of the notification\.$/     * 通知の配列プレゼンテーションの取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return array$/     * @return array/
s/^     \*\/$/     *\//
s/^        return \[$/        return [/
s/^        \];$/        ];/
s/^#### `toDatabase` Vs\. `toArray`$/#### `toDatabase` Vs. `toArray`/
s/^The `toArray` method is also used by the `broadcast` channel to determine which data to broadcast to your JavaScript client\. If you would like to have two different array representations for the `database` and `broadcast` channels, you should define a `toDatabase` method instead of a `toArray` method\.$/`toArray`メソッドは、JavaScriptクライアントへどのデータをブロードキャストするかを決めるために、`broadcast`チャンネルでも使用されます。`database`と`broadcast`チャンネルで、別々の配列プレゼンテーションを持ちたい場合は、`toArray`メソッドの代わりに、`toDatabase`メソッドを定義してください。/
s/^### Accessing The Notifications$/### 通知へのアクセス/
s/^Once notifications are stored in the database, you need a convenient way to access them from your notifiable entities\. The `Illuminate\\Notifications\\Notifiable` trait, which is included on Laravel's default `App\\User` model, includes a `notifications` Eloquent relationship that returns the notifications for the entity\. To fetch notifications, you may access this method like any other Eloquent relationship\. By default, notifications will be sorted by the `created_at` timestamp:$/通知をデータベースへ保存したら、通知エンティティから便利にアクセスできる方法が必要になります。Laravelのデフォルト`App\\User`モデルに含まれている、`Illuminate\\Notifications\\Notifiable`トレイトは、`notifications` Eloquentリレーションを含んでおり、そのエンティティの通知を返します。通知を取得するために、他のEloquentリレーションと同様に、このメソッドにアクセスできます。デフォルトで、通知は`created_at`タイムスタンプでソートされます。/
s/^If you want to retrieve only the "unread" notifications, you may use the `unreadNotifications` relationship\. Again, these notifications will be sorted by the `created_at` timestamp:$/「未読」の通知のみを取得したい場合は、`unreadNotifications`リレーションシップを使います。この場合も、通知は`created_at`タイムスタンプでソートされます。/
s/^> {tip} To access your notifications from your JavaScript client, you should define a notification controller for your application which returns the notifications for a notifiable entity, such as the current user\. You may then make an HTTP request to that controller's URI from your JavaScript client\.$/> {tip} 通知にJavaScriptクライアントからアクセスするには、現在のユーザーのような、通知可能なエンティティに対する通知を返す、通知コントローラをアプリケーションに定義する必要があります。その後、JavaScriptクライエントから、コントローラのURIへHTTPリクエストを作成します。/
s/^### Marking Notifications As Read$/### Readとしての通知作成/
s/^Typically, you will want to mark a notification as "read" when a user views it\. The `Illuminate\\Notifications\\Notifiable` trait provides a `markAsRead` method, which updates the `read_at` column on the notification's database record:$/通常、ユーザーが閲覧したときに、その通知を「既読」とマークするでしょう。`Illuminate\\Notifications\\Notifiable`トレイトは、通知のデータベースレコード上にある、`read_at`カラムを更新する`markAsRead`メソッドを提供しています。/
s/^However, instead of looping through each notification, you may use the `markAsRead` method directly on a collection of notifications:$/各通知をループで処理する代わりに、`markAsRead`メソッドを通知コレクションへ直接使用できます。/
s/^You may also use a mass-update query to mark all of the notifications as read without retrieving them from the database:$/データベースから取得せずに、全通知に既読をマークするため、複数更新クエリを使用することもできます。/
s/^    $user->unreadNotifications()->update(\['read_at' => now()\]);$/    $user->unreadNotifications()->update(['read_at' => now()]);/
s/^Of course, you may `delete` the notifications to remove them from the table entirely:$/もちろん、テーブルエンティティから通知を削除するために、`delete`を使うこともできます。/
s/^## Broadcast Notifications$/## ブロードキャスト通知/
s/^### Prerequisites$/### 事前要件/
s/^Before broadcasting notifications, you should configure and be familiar with Laravel's \[event broadcasting\](\/docs\/{{version}}\/broadcasting) services\. Event broadcasting provides a way to react to server-side fired Laravel events from your JavaScript client\.$/ブロードキャスト通知の前に、Laravelの[イベントブロードキャスト](\/docs\/{{version}}\/broadcasting)サービスを設定し、慣れておく必要があります。イベントブロードキャストは、JavaScriptクライアント側で、サーバサイドで発行されたLaravelイベントに対処する方法を提供しています。/
s/^### Formatting Broadcast Notifications$/### ブロードキャスト通知のフォーマット/
s/^The `broadcast` channel broadcasts notifications using Laravel's \[event broadcasting\](\/docs\/{{version}}\/broadcasting) services, allowing your JavaScript client to catch notifications in realtime\. If a notification supports broadcasting, you should define a `toBroadcast` method on the notification class\. This method will receive a `$notifiable` entity and should return a `BroadcastMessage` instance\. The returned data will be encoded as JSON and broadcast to your JavaScript client\. Let's take a look at an example `toBroadcast` method:$/`broadcast`チャンネルは、リアルタイムでJavaScriptクライアントが通知を補足できるようにする、Laravelの[イベントブロードキャスト](\/docs\/{{version}}\/broadcasting)サービスを用い、通知をブロードキャストします。通知でブロードキャストをサポートする場合、通知クラスで`toBroadcast`メソッドを定義する必要があります。このメソッドは`$notifiable`エンティティを受け取り、プレーンなPHP配列を返す必要があります。返される配列はJSONへエンコードされ、JavaScriptクライアントへブロードキャストされます。`toBroadcast`メソッドの例を見てみましょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the broadcastable representation of the notification\.$/     * 通知のブロードキャストプレゼンテーションの取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return BroadcastMessage$/     * @return BroadcastMessage/
s/^     \*\/$/     *\//
s/^        return new BroadcastMessage(\[$/        return new BroadcastMessage([/
s/^        \]);$/        ]);/
s/^#### Broadcast Queue Configuration$/#### ブロードキャストキュー設定/
s/^All broadcast notifications are queued for broadcasting\. If you would like to configure the queue connection or queue name that is used to the queue the broadcast operation, you may use the `onConnection` and `onQueue` methods of the `BroadcastMessage`:$/全てのブロードキャスト通知はキューへ投入されます。ブロードキャスト操作に使用されるキューの接続や名前を設定したい場合は、`BroadcastMessage`の`onConnection`と`onQueue`メソッドを使用してください。/
s/^> {tip} In addition to the data you specify, broadcast notifications will also contain a `type` field containing the class name of the notification\.$/> {tip} 指定したデータに付け加え、ブロードキャスト通知は、通知のクラス名を含んだ`type`フィールドも付加します。/
s/^### Listening For Notifications$/### 通知のリッスン/
s/^Notifications will broadcast on a private channel formatted using a `{notifiable}\.{id}` convention\. So, if you are sending a notification to a `App\\User` instance with an ID of `1`, the notification will be broadcast on the `App\.User\.1` private channel\. When using \[Laravel Echo\](\/docs\/{{version}}\/broadcasting), you may easily listen for notifications on a channel using the `notification` helper method:$/プライベートチャンネルにブロードキャストされる通知は、`{notifiable}.{id}`命名規則に従いフォーマットされます。ですから、IDが`1`の`App\\User`インスタンスを通知で送る場合、`App.User.1`プライベートチャンネルへブロードキャストされます。[Laravel Echo](\/docs\/{{version}}\/broadcasting)を使用していれば、`notification`ヘルパメソッドを使い、チャンネルへの通知を簡単にリッスンできます。/
s/^    Echo\.private('App\.User\.' \+ userId)$/    Echo.private('App.User.' + userId)/
s/^        \.notification((notification) => {$/        .notification((notification) => {/
s/^            console\.log(notification\.type);$/            console.log(notification.type);/
s/^#### Customizing The Notification Channel$/#### 通知チャンネルのカスタマイズ/
s/^If you would like to customize which channels a notifiable entity receives its broadcast notifications on, you may define a `receivesBroadcastNotificationsOn` method on the notifiable entity:$/ブロードキャスト通知のNotifiableエンティティを受け取るチャンネルをカスタマイズしたい場合は、そのエンティティに`receivesBroadcastNotificationsOn`メソッドを定義してください。/
s/^        \/\*\*$/        \/**/
s/^         \* The channels the user receives notification broadcasts on\.$/         * ユーザーがブロードキャストされる通知を受け取るチャンネル/
s/^         \*$/         */
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^            return 'users\.'\.$this->id;$/            return 'users.'.$this->id;/
s/^## SMS Notifications$/## SMS通知/
s/^### Prerequisites$/### 事前要件/
s/^Sending SMS notifications in Laravel is powered by \[Nexmo\](https:\/\/www\.nexmo\.com\/)\. Before you can send notifications via Nexmo, you need to install the `nexmo\/client` Composer package and add a few configuration options to your `config\/services\.php` configuration file\. You may copy the example configuration below to get started:$/LaravelのSMS通知送信は、[Nexmo](https:\/\/www.nexmo.com\/)を使用します。Nexmoにより通知を送れるようにする前に、`nexmo\/client` Composerパッケージをインストールし、`config\/services.php`設定ファイルへ設定オプションをいくつか追加する必要があります。参考例として、以下の設定をコピーしてください。/
s/^    'nexmo' => \[$/    'nexmo' => [/
s/^    \],$/    ],/
s/^The `sms_from` option is the phone number that your SMS messages will be sent from\. You should generate a phone number for your application in the Nexmo control panel\.$/`sms_from`オプションはSMSメッセージを送る電話番号です。アプリケーションの電話番号は、Nexmoコントロールパネルで作成してください。/
s/^### Formatting SMS Notifications$/### SMS通知のフォーマット/
s/^If a notification supports being sent as an SMS, you should define a `toNexmo` method on the notification class\. This method will receive a `$notifiable` entity and should return a `Illuminate\\Notifications\\Messages\\NexmoMessage` instance:$/SMSとしての通知をサポートするには、通知クラスに`toNexmo`メソッドを定義する必要があります。このメソッドは`$notifiable`エンティティを受け取り、`Illuminate\\Notifications\\Messages\\NexmoMessage`インスタンスを返す必要があります。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Nexmo \/ SMS representation of the notification\.$/     * 通知のNexmo\/SMSプレゼンテーションを取得する/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return NexmoMessage$/     * @return NexmoMessage/
s/^     \*\/$/     *\//
s/^#### Unicode Content$/#### Unicodeコンテンツ/
s/^If your SMS message will contain unicode characters, you should call the `unicode` method when constructing the `NexmoMessage` instance:$/SMSメッセージにUnicode文字を含む場合は、`NexmoMessage`インスタンスの生成時に、`unicode`メソッドを呼び出してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Nexmo \/ SMS representation of the notification\.$/     * 通知のNexmo\/SMSプレゼンテーションを取得する/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return NexmoMessage$/     * @return NexmoMessage/
s/^     \*\/$/     *\//
s/^### Customizing The "From" Number$/### 発信元電話番号のカスタマイズ/
s/^If you would like to send some notifications from a phone number that is different from the phone number specified in your `config\/services\.php` file, you may use the `from` method on a `NexmoMessage` instance:$/`config\/services.php`ファイルで指定した電話番号とは異なる番号から、通知を送りたい場合は、`NexmoMessage`インスタンスの`from`メソッドを使用します。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Nexmo \/ SMS representation of the notification\.$/     * 通知のNexmo\/SMSプレゼンテーションを取得する/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return NexmoMessage$/     * @return NexmoMessage/
s/^     \*\/$/     *\//
s/^### Routing SMS Notifications$/### SMS通知のルート指定/
s/^When sending notifications via the `nexmo` channel, the notification system will automatically look for a `phone_number` attribute on the notifiable entity\. If you would like to customize the phone number the notification is delivered to, define a `routeNotificationForNexmo` method on the entity:$/`nexmo`チャンネルで通知を送るとき、通知システムは自動的に`phone_number`属性を通知可能エンティティの中で探します。通知を配信する電話番号をカスタマイズしたい場合は、エンティティで`routeNotificationForNexmo`メソッドを定義してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Route notifications for the Nexmo channel\.$/         * Nexmoチャンネルへの通知をルートする/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Notifications\\Notification  $notification$/         * @param  \\Illuminate\\Notifications\\Notification  $notification/
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^## Slack Notifications$/## Slack通知/
s/^### Prerequisites$/### 事前要件/
s/^Before you can send notifications via Slack, you must install the Guzzle HTTP library via Composer:$/Slackを通じ通知を送る場合、Guzzle HTTPライブラリをComposerでインストールする必要があります。/
s/^You will also need to configure an \["Incoming Webhook"\](https:\/\/api\.slack\.com\/incoming-webhooks) integration for your Slack team\. This integration will provide you with a URL you may use when \[routing Slack notifications\](#routing-slack-notifications)\.$/さらに、Slackチームの["Incoming Webhook"](https:\/\/api.slack.com\/incoming-webhooks)インテグレーションを設定する必要もあります。このインテグレーションは、[Slack通知のルート](#routing-slack-notifications)を行う時に使用するURLを提供します。/
s/^### Formatting Slack Notifications$/### Slack通知のフォーマット/
s/^If a notification supports being sent as a Slack message, you should define a `toSlack` method on the notification class\. This method will receive a `$notifiable` entity and should return a `Illuminate\\Notifications\\Messages\\SlackMessage` instance\. Slack messages may contain text content as well as an "attachment" that formats additional text or an array of fields\. Let's take a look at a basic `toSlack` example:$/通知がSlackメッセージとしての送信をサポートする場合、通知クラスに`toSlack`メソッドを定義する必要があります。このメソッドは`$notifiable`エンティティを受け取り、`Illuminate\\Notifications\\Messages\\SlackMessage`インスタンスを返す必要があります。Slackメッセージはテキストと同時に、追加テキストのフォーマットか、フィールドの配列を「添付」として含みます。基本的な`toSlack`の例を見てください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^In this example we are just sending a single line of text to Slack, which will create a message that looks like the following:$/この例では、Slackへ一行のテキストを送っており、以下のようなメッセージが生成されます。/
s/^<img src="https:\/\/laravel\.com\/assets\/img\/basic-slack-notification\.png">$/<img src="https:\/\/laravel.com\/assets\/img\/basic-slack-notification.png">/
s/^#### Customizing The Sender & Recipient$/#### 送信者と受信者のカスタマイズ/
s/^You may use the `from` and `to` methods to customize the sender and recipient\. The `from` method accepts a username and emoji identifier, while the `to` method accepts a channel or username:$/`from`と`to`メソッドを使い、送信者と受信者のカスタマイズができます。`from`メソッドはユーザー名と絵文字識別子を受け付け、`to`メソッドはチャンネルかユーザー名を受け取ります。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^You may also use an image as your logo instead of an emoji:$/絵文字の代わりにロゴイメージを使うこともできます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^                    ->image('https:\/\/laravel\.com\/favicon\.png')$/                    ->image('https:\/\/laravel.com\/favicon.png')/
s/^### Slack Attachments$/### Slack添付/
s/^You may also add "attachments" to Slack messages\. Attachments provide richer formatting options than simple text messages\. In this example, we will send an error notification about an exception that occurred in an application, including a link to view more details about the exception:$/Slackメッセージに「添付」を追加することもできます。添付はシンプルなテキストメッセージよりも、リッチなフォーマットのオプションを提供します。以下の例では、アプリケーションで起きた例外についてのエラー通知で、例外についての詳細情報を表示するリンクを含めています。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^        $url = url('\/exceptions\/'\.$this->exception->id);$/        $url = url('\/exceptions\/'.$this->exception->id);/
s/^                    ->content('Whoops! Something went wrong\.')$/                    ->content('Whoops! Something went wrong.')/
s/^                                   ->content('File \[background\.jpg\] was not found\.');$/                                   ->content('File [background.jpg] was not found.');/
s/^The example above will generate a Slack message that looks like the following:$/上の例は、次のようなSlackメッセージを生成します。/
s/^<img src="https:\/\/laravel\.com\/assets\/img\/basic-slack-attachment\.png">$/<img src="https:\/\/laravel.com\/assets\/img\/basic-slack-attachment.png">/
s/^Attachments also allow you to specify an array of data that should be presented to the user\. The given data will be presented in a table-style format for easy reading:$/添付ではさらに、ユーザーに対し表示すべきデータの配列を指定することもできます。指定したデータは簡単に読めるように、テーブルスタイルの形式で表示されます。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^        $url = url('\/invoices\/'\.$this->invoice->id);$/        $url = url('\/invoices\/'.$this->invoice->id);/
s/^                                   ->fields(\[$/                                   ->fields([/
s/^                                    \]);$/                                    ]);/
s/^The example above will create a Slack message that looks like the following:$/上の例は、以下のようなSlackメッセージを作成します。/
s/^<img src="https:\/\/laravel\.com\/assets\/img\/slack-fields-attachment\.png">$/<img src="https:\/\/laravel.com\/assets\/img\/slack-fields-attachment.png">/
s/^#### Markdown Attachment Content$/#### Markdown添付コンテンツ/
s/^If some of your attachment fields contain Markdown, you may use the `markdown` method to instruct Slack to parse and display the given attachment fields as Markdown formatted text\. The values accepted by this method are: `pretext`, `text`, and \/ or `fields`\. For more information about Slack attachment formatting, check out the \[Slack API documentation\](https:\/\/api\.slack\.com\/docs\/message-formatting#message_formatting):$/添付フィールドをMarkdownで構成している場合、`markdown`メソッドでSlackへ指定した添付フィールドがMarkdown形式のテキストであるため、パースしてから表示するように指示します。このメソッドが受け取る値は、`pretext`、`text`、`fields`です。Slackの添付形式についての詳細は、[Slack APIドキュメント](https:\/\/api.slack.com\/docs\/message-formatting#message_formatting)をご覧ください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the Slack representation of the notification\.$/     * 通知のSlackプレゼンテーションを取得/
s/^     \*$/     */
s/^     \* @param  mixed  $notifiable$/     * @param  mixed  $notifiable/
s/^     \* @return SlackMessage$/     * @return SlackMessage/
s/^     \*\/$/     *\//
s/^        $url = url('\/exceptions\/'\.$this->exception->id);$/        $url = url('\/exceptions\/'.$this->exception->id);/
s/^                    ->content('Whoops! Something went wrong\.')$/                    ->content('Whoops! Something went wrong.')/
s/^                                   ->content('File \[background\.jpg\] was \*not found\*\.')$/                                   ->content('File [background.jpg] was *not found*.')/
s/^                                   ->markdown(\['text'\]);$/                                   ->markdown(['text']);/
s/^### Routing Slack Notifications$/### Slack通知のルート指定/
s/^To route Slack notifications to the proper location, define a `routeNotificationForSlack` method on your notifiable entity\. This should return the webhook URL to which the notification should be delivered\. Webhook URLs may be generated by adding an "Incoming Webhook" service to your Slack team:$/実際の場所へSlack通知をルートするには、通知可能エンティティの`routeNotificationForSlack`メソッドを定義します。これは通知が配送されるべきWebhook URLを返す必要があります。Webhook URLは、Slackチームの"Incoming Webhook"サービスを追加することにより、作成されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Route notifications for the Slack channel\.$/         * Slackチャンネルに対する通知をルートする/
s/^         \*$/         */
s/^         \* @param  \\Illuminate\\Notifications\\Notification  $notification$/         * @param  \\Illuminate\\Notifications\\Notification  $notification/
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^## Notification Events$/## 通知イベント/
s/^When a notification is sent, the `Illuminate\\Notifications\\Events\\NotificationSent` event is fired by the notification system\. This contains the "notifiable" entity and the notification instance itself\. You may register listeners for this event in your `EventServiceProvider`:$/通知が送信されると、`Illuminate\\Notifications\\Events\\NotificationSent`イベントが、通知システムにより発行されます。これには「通知可能」エンティティと通知インスンタンス自身が含まれます。このイベントのリスナは、`EventServiceProvider`で登録します。/
s/^    \/\*\*$/    \/**/
s/^     \* The event listener mappings for the application\.$/     * アプリケーションにマップされるイベントリスナ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $listen = \[$/    protected $listen = [/
s/^        'Illuminate\\Notifications\\Events\\NotificationSent' => \[$/        'Illuminate\\Notifications\\Events\\NotificationSent' => [/
s/^        \],$/        ],/
s/^    \];$/    ];/
s/^> {tip} After registering listeners in your `EventServiceProvider`, use the `event:generate` Artisan command to quickly generate listener classes\.$/> {tip} `EventServiceProvider`でリスナを登録した後に、`event:generate` Artisanコマンドを使うと、リスナクラスが素早く生成できます。/
s/^Within an event listener, you may access the `notifiable`, `notification`, and `channel` properties on the event to learn more about the notification recipient or the notification itself:$/イベントリスナの中で、通知受信者や通知自身について調べるために、そのイベントの`notifiable`、`notification`、`channel`プロパティにアクセスできます。/
s/^    \/\*\*$/    \/**/
s/^     \* Handle the event\.$/     * イベントの処理/
s/^     \*$/     */
s/^     \* @param  NotificationSent  $event$/     * @param  NotificationSent  $event/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^## Custom Channels$/## カスタムチャンネル/
s/^Laravel ships with a handful of notification channels, but you may want to write your own drivers to deliver notifications via other channels\. Laravel makes it simple\. To get started, define a class that contains a `send` method\. The method should receive two arguments: a `$notifiable` and a `$notification`:$/Laravelはいくつかの通知チャンネルを用意していますが、他のチャンネルを使用し通知を配信するために、独自のドライバーを書くこともあるでしょう。Laravelでは、これも簡単です。手始めに、`send`メソッドを含むクラスを定義しましょう。このメソッドは`$notifiable`と `$notification`の、２引数を受け取ります。/
s/^        \/\*\*$/        \/**/
s/^         \* Send the given notification\.$/         * 指定された通知の送信/
s/^         \*$/         */
s/^         \* @param  mixed  $notifiable$/         * @param  mixed  $notifiable/
s/^         \* @param  \\Illuminate\\Notifications\\Notification  $notification$/         * @param  \\Illuminate\\Notifications\\Notification  $notification/
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            \/\/ Send notification to the $notifiable instance\.\.\.$/            \/\/ 通知を$notifiableインスタンスへ送信する…/
s/^Once your notification channel class has been defined, you may return the class name from the `via` method of any of your notifications:$/通知チャンネルクラスが定義できたら、通知の`via`メソッドから、クラス名を返します。/
s/^        \/\*\*$/        \/**/
s/^         \* Get the notification channels\.$/         * 通知チャンネルの取得/
s/^         \*$/         */
s/^         \* @param  mixed  $notifiable$/         * @param  mixed  $notifiable/
s/^         \* @return array|string$/         * @return array|string/
s/^         \*\/$/         *\//
s/^            return \[VoiceChannel::class\];$/            return [VoiceChannel::class];/
s/^        \/\*\*$/        \/**/
s/^         \* Get the voice representation of the notification\.$/         * 通知の音声プレゼンテーションを取得/
s/^         \*$/         */
s/^         \* @param  mixed  $notifiable$/         * @param  mixed  $notifiable/
s/^         \* @return VoiceMessage$/         * @return VoiceMessage/
s/^         \*\/$/         *\//
s/^            \/\/ \.\.\.$/            \/\/ .../
