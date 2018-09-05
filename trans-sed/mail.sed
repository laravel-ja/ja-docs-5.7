s/^# Mail$/# メール/
s/^$//
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバの動作要件](#driver-prerequisites)/
s/^- \[Generating Mailables\](#generating-mailables)$/- [Mailable概論](#generating-mailables)/
s/^- \[Writing Mailables\](#writing-mailables)$/- [Mailableプログラミング](#writing-mailables)/
s/^    - \[Configuring The Sender\](#configuring-the-sender)$/    - [Senderの設定](#configuring-the-sender)/
s/^    - \[Configuring The View\](#configuring-the-view)$/    - [ビューの設定](#configuring-the-view)/
s/^    - \[View Data\](#view-data)$/    - [ビューデータ](#view-data)/
s/^    - \[Attachments\](#attachments)$/    - [添付](#attachments)/
s/^    - \[Inline Attachments\](#inline-attachments)$/    - [インライン添付](#inline-attachments)/
s/^    - \[Customizing The SwiftMailer Message\](#customizing-the-swiftmailer-message)$/    - [SwiftMailerメッセージのカスタマイズ](#customizing-the-swiftmailer-message)/
s/^- \[Markdown Mailables\](#markdown-mailables)$/- [Markdown Mailable](#markdown-mailables)/
s/^    - \[Generating Markdown Mailables\](#generating-markdown-mailables)$/    - [Markdown Mailableの生成](#generating-markdown-mailables)/
s/^    - \[Writing Markdown Messages\](#writing-markdown-messages)$/    - [Markdownメッセージの記述](#writing-markdown-messages)/
s/^    - \[Customizing The Components\](#customizing-the-components)$/    - [コンポーネントのカスタマイズ](#customizing-the-components)/
s/^- \[Sending Mail\](#sending-mail)$/- [メール送信](#sending-mail)/
s/^    - \[Queueing Mail\](#queueing-mail)$/    - [キュー使用メール](#queueing-mail)/
s/^- \[Rendering Mailables\](#rendering-mailables)$/- [Mailableのレンダリング](#rendering-mailables)/
s/^    - \[Previewing Mailables In The Browser\](#previewing-mailables-in-the-browser)$/    - [Previewing Mailables In The Browser](#previewing-mailables-in-the-browser)/
s/^- \[Mail & Local Development\](#mail-and-local-development)$/- [メールとローカル開発](#mail-and-local-development)/
s/^- \[Events\](#events)$/- [イベント](#events)/
s/^$//
s/^<a name="introduction"><\/a>$/<a name="introduction"><\/a>/
s/^## Introduction$/## イントロダクション/
s/^$//
s/^Laravel provides a clean, simple API over the popular \[SwiftMailer\](https:\/\/swiftmailer\.symfony\.com\/) library with drivers for SMTP, Mailgun, SparkPost, Amazon SES, PHP's `mail` function, and `sendmail`, allowing you to quickly get started sending mail through a local or cloud based service of your choice\.$/Laravelは人気の高い[SwiftMailer](https:\/\/swiftmailer.symfony.com\/)ライブラリーのクリーンでシンプルなAPIを提供しています。SMTP、Mailgun、SparkPost、Amazon SES、PHPの`mail`機能、`sendmail`ドライバーを提供しており、選択したローカルやクラウドベースのサービスを使い、素早くメール送信が開始できるようにしています。/
s/^$//
s/^<a name="driver-prerequisites"><\/a>$/<a name="driver-prerequisites"><\/a>/
s/^### Driver Prerequisites$/### ドライバの動作要件/
s/^$//
s/^The API based drivers such as Mailgun and SparkPost are often simpler and faster than SMTP servers\. If possible, you should use one of these drivers\. All of the API drivers require the Guzzle HTTP library, which may be installed via the Composer package manager:$/MailgunとSparkPostなどAPIベースドライバはシンプルでSMTPサーバよりも高速です。可能であれば、こうしたドライバを使用しましょう。APIドライバはすべて、Guzzle HTTPライブラリを必要としますので、Composerパッケージマネージャでインストールしてください。/
s/^$//
s/^    composer require guzzlehttp\/guzzle$/    composer require guzzlehttp\/guzzle/
s/^$//
s/^#### Mailgun Driver$/#### Mailgunドライバ/
s/^$//
s/^To use the Mailgun driver, first install Guzzle, then set the `driver` option in your `config\/mail\.php` configuration file to `mailgun`\. Next, verify that your `config\/services\.php` configuration file contains the following options:$/Mailgunドライバを使用する場合、最初にGuzzleをインストールしてください。それから`config\/mail.php`設定ファイル中の`driver`オプションを`mailgun`に設定してください。次に`config\/services.php`設定ファイルが以下のオプションを含んでいるか確認してください。/
s/^$//
s/^    'mailgun' => \[$/    'mailgun' => [/
s/^        'domain' => 'your-mailgun-domain',$/        'domain' => 'your-mailgun-domain',/
s/^        'secret' => 'your-mailgun-key',$/        'secret' => 'your-mailgun-key',/
s/^    \],$/    ],/
s/^$//
s/^#### SparkPost Driver$/#### SparkPostドライバ/
s/^$//
s/^To use the SparkPost driver, first install Guzzle, then set the `driver` option in your `config\/mail\.php` configuration file to `sparkpost`\. Next, verify that your `config\/services\.php` configuration file contains the following options:$/SparkPostドライバを使用するには、最初にGuzzleをインストールし、次に`config\/mail.php`設定ファイル中の`driver`オプションを`sparkpost`に設定してください。`config\/services.php`設定ファイルに以下のオプションが含まれているか確認してください。/
s/^$//
s/^    'sparkpost' => \[$/    'sparkpost' => [/
s/^        'secret' => 'your-sparkpost-key',$/        'secret' => 'your-sparkpost-key',/
s/^    \],$/    ],/
s/^$//
s/^If necessary, you may also configure which \[API endpoint\](https:\/\/developers\.sparkpost\.com\/api\/#header-endpoints) should be used:$/必要であれば、利用されるべき[APIエンドポイント](https:\/\/developers.sparkpost.com\/api\/#header-endpoints)を設定することもできます。/
s/^$//
s/^    'sparkpost' => \[$/    'sparkpost' => [/
s/^        'secret' => 'your-sparkpost-key',$/        'secret' => 'your-sparkpost-key',/
s/^        'options' => \[$/        'options' => [/
s/^            'endpoint' => 'https:\/\/api\.eu\.sparkpost\.com\/api\/v1\/transmissions',$/            'endpoint' => 'https:\/\/api.eu.sparkpost.com\/api\/v1\/transmissions',/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^$//
s/^#### SES Driver$/#### SESドライバ/
s/^$//
s/^To use the Amazon SES driver you must first install the Amazon AWS SDK for PHP\. You may install this library by adding the following line to your `composer\.json` file's `require` section and running the `composer update` command:$/Amazon SESドライバを使う場合、Amazon AWS SDK for PHPをインストールしてください。`composer.json`ファイルの`require`セクションに以下の行を追加し、`composer update`コマンドを実行します。/
s/^$//
s/^    "aws\/aws-sdk-php": "~3\.0"$/    "aws\/aws-sdk-php": "~3.0"/
s/^$//
s/^Next, set the `driver` option in your `config\/mail\.php` configuration file to `ses` and verify that your `config\/services\.php` configuration file contains the following options:$/次に`config\/mail.php`設定ファイルの`driver`オプションを`ses`に設定します。それから`config\/services.php`設定ファイルが以下の内容になっているか確認してください。/
s/^$//
s/^    'ses' => \[$/    'ses' => [/
s/^        'key' => 'your-ses-key',$/        'key' => 'your-ses-key',/
s/^        'secret' => 'your-ses-secret',$/        'secret' => 'your-ses-secret',/
s/^        'region' => 'ses-region',  \/\/ e\.g\. us-east-1$/        'region' => 'ses-region',  \/\/ e.g. us-east-1/
s/^    \],$/    ],/
s/^$//
s/^<a name="generating-mailables"><\/a>$/<a name="generating-mailables"><\/a>/
s/^## Generating Mailables$/## Mailable概論/
s/^$//
s/^In Laravel, each type of email sent by your application is represented as a "mailable" class\. These classes are stored in the `app\/Mail` directory\. Don't worry if you don't see this directory in your application, since it will be generated for you when you create your first mailable class using the `make:mail` command:$/Laravelではアプリケーションが送信する、各種メールタイプを"mailable"クラスとして表します。これらのクラスは、`app\/Mail`ディレクトリに保存します。アプリケーションにこのディレクトリが存在していなくても、心配ありません。`make:mail`コマンドを使用して、最初にmailableクラスを生成する時に、作成されます。/
s/^$//
s/^    php artisan make:mail OrderShipped$/    php artisan make:mail OrderShipped/
s/^$//
s/^<a name="writing-mailables"><\/a>$/<a name="writing-mailables"><\/a>/
s/^## Writing Mailables$/## Mailableプログラミング/
s/^$//
s/^All of a mailable class' configuration is done in the `build` method\. Within this method, you may call various methods such as `from`, `subject`, `view`, and `attach` to configure the email's presentation and delivery\.$/全mailableクラスの設定は、`build`メソッド中で行います。このメソッド中でメールのプレゼンテーションとデリバリーを設定する、`from`、`subject`、`view`、`attach`など様々なメソッドを呼び出します。/
s/^$//
s/^<a name="configuring-the-sender"><\/a>$/<a name="configuring-the-sender"><\/a>/
s/^### Configuring The Sender$/### Senderの設定/
s/^$//
s/^#### Using The `from` Method$/#### `from`メソッドの使用/
s/^$//
s/^First, let's explore configuring the sender of the email\. Or, in other words, who the email is going to be "from"\. There are two ways to configure the sender\. First, you may use the `from` method within your mailable class' `build` method:$/最初に、メールの送信者の設定を見てみましょう。言い換えれば、"from"により、メールを送信する人を指定します。送信者の設定には２つの方法があります。最初にmailableクラスの`build`メソッドの中で、`from`メソッドを使う方法です。/
s/^$//
s/^    \/\*\*$/    \/**/
s/^     \* Build the message\.$/     * メッセージの生成/
s/^     \*$/     */
s/^     \* @return $this$/     * @return $this/
s/^     \*\/$/     *\//
s/^    public function build()$/    public function build()/
s/^    {$/    {/
s/^        return $this->from('example@example\.com')$/        return $this->from('example@example.com')/
s/^                    ->view('emails\.orders\.shipped');$/                    ->view('emails.orders.shipped');/
s/^    }$/    }/
s/^$//
s/^#### Using A Global `from` Address$/#### グローバル`from`アドレスの使用/
s/^$//
s/^However, if your application uses the same "from" address for all of its emails, it can become cumbersome to call the `from` method in each mailable class you generate\. Instead, you may specify a global "from" address in your `config\/mail\.php` configuration file\. This address will be used if no other "from" address is specified within the mailable class:$/もし、アプリケーションで同じ"from"アドレスを全メールで使用するのであれば、生成する全mailableクラスで`from`メソッドを呼び出すのは面倒です。代わりに、グローバルな"from"アドレスを`config\/mail.php`設定ファイルで指定しましょう。このアドレスは、mailableクラスの中で、"from"アドレスが指定されなかった場合に使用されます。/
s/^$//
s/^    'from' => \['address' => 'example@example\.com', 'name' => 'App Name'\],$/    'from' => ['address' => 'example@example.com', 'name' => 'App Name'],/
s/^$//
s/^<a name="configuring-the-view"><\/a>$/<a name="configuring-the-view"><\/a>/
s/^### Configuring The View$/### ビューの設定/
s/^$//
s/^Within a mailable class' `build` method, you may use the `view` method to specify which template should be used when rendering the email's contents\. Since each email typically uses a \[Blade template\](\/docs\/{{version}}\/blade) to render its contents, you have the full power and convenience of the Blade templating engine when building your email's HTML:$/mailableクラスの`build`メソッドの中で、メールの中身をレンダーする時に使用するテンプレートを`view`メソッドにより指定できます。各メールでは内容をレンダーするのに[Blade テンプレート](\/docs\/{{version}}\/blade)を通常使用しますので、メールのHTMLを構築する時にBladeテンプレートエンジンのパワーと利便性をフルに利用できます。/
s/^$//
s/^    \/\*\*$/    \/**/
s/^     \* Build the message\.$/     * メッセージの生成/
s/^     \*$/     */
s/^     \* @return $this$/     * @return $this/
s/^     \*\/$/     *\//
s/^    public function build()$/    public function build()/
s/^    {$/    {/
s/^        return $this->view('emails\.orders\.shipped');$/        return $this->view('emails.orders.shipped');/
s/^    }$/    }/
s/^$//
s/^> {tip} You may wish to create a `resources\/views\/emails` directory to house all of your email templates; however, you are free to place them wherever you wish within your `resources\/views` directory\.$/> {tip} メール用テンプレートをすべて設置する、`resources\/views\/emails`ディレクトリを作成することができます。しかし、`resources\/views`ディレクトリの中であれば、好きな場所へ自由に設置できます。/
s/^$//
s/^#### Plain Text Emails$/#### 平文テキストメール/
s/^$//
s/^If you would like to define a plain-text version of your email, you may use the `text` method\. Like the `view` method, the `text` method accepts a template name which will be used to render the contents of the email\. You are free to define both a HTML and plain-text version of your message:$/平文テキスト版のメールを定義したいときは、`text`メソッドを使います。`view`メソッドと同様に、`text`メソッドは、メールの内容をレンダーするために使用する、テンプレート名を引数に取ります。メッセージのHTML版と平文テキスト版の両方を定義することも可能です。/
s/^$//
s/^    \/\*\*$/    \/**/
s/^     \* Build the message\.$/     * メッセージの生成/
s/^     \*$/     */
s/^     \* @return $this$/     * @return $this/
s/^     \*\/$/     *\//
s/^    public function build()$/    public function build()/
s/^    {$/    {/
s/^        return $this->view('emails\.orders\.shipped')$/        return $this->view('emails.orders.shipped')/
s/^                    ->text('emails\.orders\.shipped_plain');$/                    ->text('emails.orders.shipped_plain');/
s/^    }$/    }/
s/^$//
s/^<a name="view-data"><\/a>$/<a name="view-data"><\/a>/
s/^### View Data$/### ビューデータ/
s/^$//
s/^#### Via Public Properties$/#### publicプロパティ使用/
s/^$//
s/^Typically, you will want to pass some data to your view that you can utilize when rendering the email's HTML\. There are two ways you may make data available to your view\. First, any public property defined on your mailable class will automatically be made available to the view\. So, for example, you may pass data into your mailable class' constructor and set that data to public properties defined on the class:$/通常、メールのHTMLをレンダーする時には、ビューへ使用するデータを渡します。ビューでデータを使用できるようにするには、２つの方法があります。まず、mailableクラスで定義したpublicプロパティは、ビューで自動的に利用できます。そのため、たとえばmailableクラスのコンストラクタへデータを渡し、そのデータをクラス上のプロパティとして定義できます。/
s/^$//
s/^    <?php$/    <?php/
s/^$//
s/^    namespace App\\Mail;$/    namespace App\\Mail;/
s/^$//
s/^    use App\\Order;$/    use App\\Order;/
s/^    use Illuminate\\Bus\\Queueable;$/    use Illuminate\\Bus\\Queueable;/
s/^    use Illuminate\\Mail\\Mailable;$/    use Illuminate\\Mail\\Mailable;/
s/^    use Illuminate\\Queue\\SerializesModels;$/    use Illuminate\\Queue\\SerializesModels;/
s/^$//
s/^    class OrderShipped extends Mailable$/    class OrderShipped extends Mailable/
s/^    {$/    {/
s/^        use Queueable, SerializesModels;$/        use Queueable, SerializesModels;/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* The order instance\.$/         * 注文インスタンス/
s/^         \*$/         */
s/^         \* @var Order$/         * @var Order/
s/^         \*\/$/         *\//
s/^        public $order;$/        public $order;/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new message instance\.$/         * 新しいメッセージインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        public function __construct(Order $order)$/        public function __construct(Order $order)/
s/^        {$/        {/
s/^            $this->order = $order;$/            $this->order = $order;/
s/^        }$/        }/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            return $this->view('emails\.orders\.shipped');$/            return $this->view('emails.orders.shipped');/
s/^        }$/        }/
s/^    }$/    }/
s/^$//
s/^Once the data has been set to a public property, it will automatically be available in your view, so you may access it like you would access any other data in your Blade templates:$/データをpublicプロパティにセットしたら、自動的にビューで使用できるようになり、Bladeテンプレート中で、他のデータと同様にアクセスできます。/
s/^$//
s/^    <div>$/    <div>/
s/^        Price: {{ $order->price }}$/        Price: {{ $order->price }}/
s/^    <\/div>$/    <\/div>/
s/^$//
s/^#### Via The `with` Method:$/#### `with`メソッド使用/
s/^$//
s/^If you would like to customize the format of your email's data before it is sent to the template, you may manually pass your data to the view via the `with` method\. Typically, you will still pass data via the mailable class' constructor; however, you should set this data to `protected` or `private` properties so the data is not automatically made available to the template\. Then, when calling the `with` method, pass an array of data that you wish to make available to the template:$/メールのデータフォーマットをテンプレートへ渡す前にカスタマイズしたい場合は、`with`メソッドを使いデータをビューへ渡すことができます。通常、この場合もデータをmailableクラスのコンストラクタで渡すことになるでしょう。しかし、自動的にテンプレートで使用可能にならないように、`protected`か`private`プロパティへデータをセットしてください。それから、テンプレートで使用したいデータの配列を引数として、`with`メソッドを呼び出してください。/
s/^$//
s/^    <?php$/    <?php/
s/^$//
s/^    namespace App\\Mail;$/    namespace App\\Mail;/
s/^$//
s/^    use App\\Order;$/    use App\\Order;/
s/^    use Illuminate\\Bus\\Queueable;$/    use Illuminate\\Bus\\Queueable;/
s/^    use Illuminate\\Mail\\Mailable;$/    use Illuminate\\Mail\\Mailable;/
s/^    use Illuminate\\Queue\\SerializesModels;$/    use Illuminate\\Queue\\SerializesModels;/
s/^$//
s/^    class OrderShipped extends Mailable$/    class OrderShipped extends Mailable/
s/^    {$/    {/
s/^        use Queueable, SerializesModels;$/        use Queueable, SerializesModels;/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* The order instance\.$/         * 注文インスタンス/
s/^         \*$/         */
s/^         \* @var Order$/         * @var Order/
s/^         \*\/$/         *\//
s/^        protected $order;$/        protected $order;/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Create a new message instance\.$/         * 新しいメッセージインスタンスの生成/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        public function __construct(Order $order)$/        public function __construct(Order $order)/
s/^        {$/        {/
s/^            $this->order = $order;$/            $this->order = $order;/
s/^        }$/        }/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            return $this->view('emails\.orders\.shipped')$/            return $this->view('emails.orders.shipped')/
s/^                        ->with(\[$/                        ->with([/
s/^                            'orderName' => $this->order->name,$/                            'orderName' => $this->order->name,/
s/^                            'orderPrice' => $this->order->price,$/                            'orderPrice' => $this->order->price,/
s/^                        \]);$/                        ]);/
s/^        }$/        }/
s/^    }$/    }/
s/^$//
s/^Once the data has been passed to the `with` method, it will automatically be available in your view, so you may access it like you would access any other data in your Blade templates:$/`with`メソッドへ渡したデータは、ビューで自動的に使用可能になり、Bladeテンプレートの他のデータと同様にアクセスできます。/
s/^$//
s/^    <div>$/    <div>/
s/^        Price: {{ $orderPrice }}$/        Price: {{ $orderPrice }}/
s/^    <\/div>$/    <\/div>/
s/^$//
s/^<a name="attachments"><\/a>$/<a name="attachments"><\/a>/
s/^### Attachments$/### 添付/
s/^$//
s/^To add attachments to an email, use the `attach` method within the mailable class' `build` method\. The `attach` method accepts the full path to the file as its first argument:$/メールへ添付するには、`attach`メソッドをmailableクラスの`build`メソッド中で呼び出します。`attach`メソッドは最初の引数に、ファイルのフルパスを取ります。/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            return $this->view('emails\.orders\.shipped')$/            return $this->view('emails.orders.shipped')/
s/^                        ->attach('\/path\/to\/file');$/                        ->attach('\/path\/to\/file');/
s/^        }$/        }/
s/^$//
s/^When attaching files to a message, you may also specify the display name and \/ or MIME type by passing an `array` as the second argument to the `attach` method:$/ファイルをメッセージ添付する場合、`attach`メソッドの第２引数として配列を渡し、表示名やMIMEタイプを指定することもできます。/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            return $this->view('emails\.orders\.shipped')$/            return $this->view('emails.orders.shipped')/
s/^                        ->attach('\/path\/to\/file', \[$/                        ->attach('\/path\/to\/file', [/
s/^                            'as' => 'name\.pdf',$/                            'as' => 'name.pdf',/
s/^                            'mime' => 'application\/pdf',$/                            'mime' => 'application\/pdf',/
s/^                        \]);$/                        ]);/
s/^        }$/        }/
s/^$//
s/^#### Raw Data Attachments$/#### Rawデータ添付/
s/^$//
s/^The `attachData` method may be used to attach a raw string of bytes as an attachment\. For example, you might use this method if you have generated a PDF in memory and want to attach it to the email without writing it to disk\. The `attachData` method accepts the raw data bytes as its first argument, the name of the file as its second argument, and an array of options as its third argument:$/`attachData`メソッドは添付内容のバイト文字列をそのまま添付する場合に使用します。たとえば、メモリ中でPDFを生成し、それをディスクに書き出さずに、メールへ添付したい場合にこのメソッドを使用できます。`attachData`メソッドはrawデータバイトを最初の引数に取り、ファイル名を第２引数に、オプションの配列を第３引数に取ります。/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            return $this->view('emails\.orders\.shipped')$/            return $this->view('emails.orders.shipped')/
s/^                        ->attachData($this->pdf, 'name\.pdf', \[$/                        ->attachData($this->pdf, 'name.pdf', [/
s/^                            'mime' => 'application\/pdf',$/                            'mime' => 'application\/pdf',/
s/^                        \]);$/                        ]);/
s/^        }$/        }/
s/^$//
s/^<a name="inline-attachments"><\/a>$/<a name="inline-attachments"><\/a>/
s/^### Inline Attachments$/### インライン添付/
s/^$//
s/^Embedding inline images into your emails is typically cumbersome; however, Laravel provides a convenient way to attach images to your emails and retrieving the appropriate CID\. To embed an inline image, use the `embed` method on the `$message` variable within your email template\. Laravel automatically makes the `$message` variable available to all of your email templates, so you don't need to worry about passing it in manually:$/インライン画像をメールに埋め込むのは、通常手間がかかります。しかし、Laravelは画像をメールに付け、最適なCIDを得る便利な方法を提供しています。インラインイメージを埋め込むには、メールビューの中で`$message`変数の`embed`メソッドを使ってください。Laravelでは全メールテンプレートで、`$message`変数が使用できるようになっていますので、この変数を渡すことについては心配する必要はありません。/
s/^$//
s/^    <body>$/    <body>/
s/^        Here is an image:$/        ここに画像：/
s/^$//
s/^        <img src="{{ $message->embed($pathToFile) }}">$/        <img src="{{ $message->embed($pathToFile) }}">/
s/^    <\/body>$/    <\/body>/
s/^$//
s/^> {note} `$message` variable is not available in markdown messages\.$/> {note} Markdownメッセージでは、`$message`変数は使用できません。/
s/^$//
s/^#### Embedding Raw Data Attachments$/#### 添付Rawデータの埋め込み/
s/^$//
s/^If you already have a raw data string you wish to embed into an email template, you may use the `embedData` method on the `$message` variable:$/メールテンプレートへ埋め込むrawデータ文字列を既に用意してある場合は、`$message`変数の`embedData`メソッドを使ってください。/
s/^$//
s/^    <body>$/    <body>/
s/^        Here is an image from raw data:$/        ここにrawデータからの画像：/
s/^$//
s/^        <img src="{{ $message->embedData($data, $name) }}">$/        <img src="{{ $message->embedData($data, $name) }}">/
s/^    <\/body>$/    <\/body>/
s/^$//
s/^<a name="customizing-the-swiftmailer-message"><\/a>$/<a name="customizing-the-swiftmailer-message"><\/a>/
s/^### Customizing The SwiftMailer Message$/### SwiftMailerメッセージのカスタマイズ/
s/^$//
s/^The `withSwiftMessage` method of the `Mailable` base class allows you to register a callback which will be invoked with the raw SwiftMailer message instance before sending the message\. This gives you an opportunity to customize the message before it is delivered:$/`Mailable`ベースクラスの`withSwiftMessage`クラスにより、メッセージ送信前にSwiftMailerメッセージインスタンスを直接呼び出すコールバクを登録できます。これにより配信する前に、メッセージを送信する機会を得られます。/
s/^$//
s/^        \/\*\*$/        \/**/
s/^         \* Build the message\.$/         * メッセージの生成/
s/^         \*$/         */
s/^         \* @return $this$/         * @return $this/
s/^         \*\/$/         *\//
s/^        public function build()$/        public function build()/
s/^        {$/        {/
s/^            $this->view('emails\.orders\.shipped');$/            $this->view('emails.orders.shipped');/
s/^$//
s/^            $this->withSwiftMessage(function ($message) {$/            $this->withSwiftMessage(function ($message) {/
s/^                $message->getHeaders()$/                $message->getHeaders()/
s/^                        ->addTextHeader('Custom-Header', 'HeaderValue');$/                        ->addTextHeader('Custom-Header', 'HeaderValue');/
s/^            });$/            });/
s/^        }$/        }/
s/^$//
s/^<a name="markdown-mailables"><\/a>$/<a name="markdown-mailables"><\/a>/
s/^## Markdown Mailables$/## Markdown Mailable/
s/^$//
s/^Markdown mailable messages allow you to take advantage of the pre-built templates and components of mail notifications in your mailables\. Since the messages are written in Markdown, Laravel is able to render beautiful, responsive HTML templates for the messages while also automatically generating a plain-text counterpart\.$/Markdown mailableメッセージにより、事前に構築したテンプレートとメール通知のコンポーネントの利点をMailable中で利用できます。メッセージをMarkdownで記述すると、Laravelは美しいレスポンシブHTMLテンプレートをレンダーすると同時に、自動的に平文テキスト版も生成します。/
s/^$//
s/^<a name="generating-markdown-mailables"><\/a>$/<a name="generating-markdown-mailables"><\/a>/
s/^### Generating Markdown Mailables$/### Markdown Mailableの生成/
s/^$//
s/^To generate a mailable with a corresponding Markdown template, you may use the `--markdown` option of the `make:mail` Artisan command:$/対応するMarkdownテンプレートを指定し、Mailableを生成するには、`make:mail` Artisanコマンドを`--markdown`オプション付きで使用します。/
s/^$//
s/^    php artisan make:mail OrderShipped --markdown=emails\.orders\.shipped$/    php artisan make:mail OrderShipped --markdown=emails.orders.shipped/
s/^$//
s/^Then, when configuring the mailable within its `build` method, call the `markdown` method instead of the `view` method\. The `markdown` methods accepts the name of the Markdown template and an optional array of data to make available to the template:$/次に、`build`メソッド内で、Mailableを設定します。`view`メソッドの代わりに、`markdown`メソッドを呼び出します。`markdown`メソッドはMarkdownテンプレートの名前とテンプレートで使用するデータの配列を引数に取ります。/
s/^$//
s/^    \/\*\*$/    \/**/
s/^     \* Build the message\.$/     * メッセージの生成/
s/^     \*$/     */
s/^     \* @return $this$/     * @return $this/
s/^     \*\/$/     *\//
s/^    public function build()$/    public function build()/
s/^    {$/    {/
s/^        return $this->from('example@example\.com')$/        return $this->from('example@example.com')/
s/^                    ->markdown('emails\.orders\.shipped');$/                    ->markdown('emails.orders.shipped');/
s/^    }$/    }/
s/^$//
s/^<a name="writing-markdown-messages"><\/a>$/<a name="writing-markdown-messages"><\/a>/
s/^### Writing Markdown Messages$/### Markdown Messageの記述/
s/^$//
s/^Markdown mailables use a combination of Blade components and Markdown syntax which allow you to easily construct mail messages while leveraging Laravel's pre-crafted components:$/Markdown MailableではBladeコンポーネントとMarkdown記法が利用でき、メールメッセージを簡単に構築できると同時に、Laravelが用意しているコンポーネントも活用できます。/
s/^$//
s/^    @component('mail::message')$/    @component('mail::message')/
s/^    # Order Shipped$/    # 発送のお知らせ/
s/^$//
s/^    Your order has been shipped!$/    商品が発送されました！/
s/^$//
s/^    @component('mail::button', \['url' => $url\])$/    @component('mail::button', ['url' => $url])/
s/^    View Order$/    注文の確認/
s/^    @endcomponent$/    @endcomponent/
s/^$//
s/^    Thanks,<br>$/    ありがとうございました。<br>/
s/^    {{ config('app\.name') }}$/    {{ config('app.name') }} 様/
s/^    @endcomponent$/    @endcomponent/
s/^$//
s/^> {tip} Do not use excess indentation when writing Markdown emails\. Markdown parsers will render indented content as code blocks\.$/> {tip} Markdownメールを書く場合は、過剰なインデントを付けないでください。Markdownは段付をコードブロックとしてパースします。/
s/^$//
s/^#### Button Component$/#### Buttonコンポーネント/
s/^$//
s/^The button component renders a centered button link\. The component accepts two arguments, a `url` and an optional `color`\. Supported colors are `blue`, `green`, and `red`\. You may add as many button components to a message as you wish:$/ボタンコンポーネントは中央寄せのボタンリンクをレンダーします。このコンポーネントは引数として、`url`とオプションの`color`を受け取ります。サポートしている色は`blue`、`green`、`red`です。メッセージに好きなだけのボタンコンポーネントを追加できます。/
s/^$//
s/^    @component('mail::button', \['url' => $url, 'color' => 'green'\])$/    @component('mail::button', ['url' => $url, 'color' => 'green'])/
s/^    View Order$/    注文の確認/
s/^    @endcomponent$/    @endcomponent/
s/^$//
s/^#### Panel Component$/#### Panelコンポーネント/
s/^$//
s/^The panel component renders the given block of text in a panel that has a slightly different background color than the rest of the message\. This allows you to draw attention to a given block of text:$/パネルコンポーネントは、メッセージの他の部分とは少し異なった背景色のパネルの中に、指定されたテキストブロックをレンダーします。これにより、指定するテキストに注目を集められます。/
s/^$//
s/^    @component('mail::panel')$/    @component('mail::panel')/
s/^    This is the panel content\.$/    ここはパネルの内容です。/
s/^    @endcomponent$/    @endcomponent/
s/^$//
s/^#### Table Component$/#### Tableコンポーネント/
s/^$//
s/^The table component allows you to transform a Markdown table into an HTML table\. The component accepts the Markdown table as its content\. Table column alignment is supported using the default Markdown table alignment syntax:$/テーブルコンポーネントは、MarkdownテーブルをHTMLテーブルへ変換します。このコンポーネントはMarkdownテーブルを内容として受け入れます。デフォルトのMarkdownテーブルの記法を使った、文字寄せをサポートしています。/
s/^$//
s/^    @component('mail::table')$/    @component('mail::table')/
s/^    | Laravel       | Table         | Example  |$/    | Laravel       | テーブル      | 例       |/
s/^    | ------------- |:-------------:| --------:|$/    | ------------- |:-------------:| --------:|/
s/^    | Col 2 is      | Centered      | $10      |$/    | Col 2 is      | 中央寄せ      | $10      |/
s/^    | Col 3 is      | Right-Aligned | $20      |$/    | Col 3 is      | 右寄せ        | $20      |/
s/^    @endcomponent$/    @endcomponent/
s/^$//
s/^<a name="customizing-the-components"><\/a>$/<a name="customizing-the-components"><\/a>/
s/^### Customizing The Components$/### コンポーネントのカスタマイズ/
s/^$//
s/^You may export all of the Markdown mail components to your own application for customization\. To export the components, use the `vendor:publish` Artisan command to publish the `laravel-mail` asset tag:$/自身のアプリケーション向きにカスタマイズできるように、Markdownメールコンポーネントは全てエクスポートできます。コンポーネントをエクスポートするには、`vendor:publish` Artisanコマンドを使い、`laravel-mail`アセットを公開します。/
s/^$//
s/^    php artisan vendor:publish --tag=laravel-mail$/    php artisan vendor:publish --tag=laravel-mail/
s/^$//
s/^This command will publish the Markdown mail components to the `resources\/views\/vendor\/mail` directory\. The `mail` directory will contain a `html` and a `markdown` directory, each containing their respective representations of every available component\. The components in the `html` directory are used to generate the HTML version of your email, and their counterparts in the `markdown` directory are used to generate the plain-text version\. You are free to customize these components however you like\.$/このコマンドにより、`resources\/views\/vendor\/mail`ディレクトリ下にMarkdownメールコンポーネントが公開されます。`mail`ディレクトリ下に、`html`と`markdown`ディレクトリがあります。各ディレクトリは名前が示す形式で、利用できるコンポーネント全てのレスポンシブなプレゼンテーションを持っています。`html`ディレクトリ下のコンポーネントは、HTMLバージョンのメールを生成するために使用され、もう一方の`markdown`ディレクトリは平文テキストバージョンを生成するために使用します。これらのコンポーネントはお好きなように自由にカスタマイズしてください。/
s/^$//
s/^#### Customizing The CSS$/#### CSSのカスタマイズ/
s/^$//
s/^After exporting the components, the `resources\/views\/vendor\/mail\/html\/themes` directory will contain a `default\.css` file\. You may customize the CSS in this file and your styles will automatically be in-lined within the HTML representations of your Markdown mail messages\.$/コンポーネントをエクスポートすると、`resources\/views\/vendor\/mail\/html\/themes`ディレクトリに、`default.css`ファイルが用意されます。このファイル中のCSSをカスタマイズすれば、Markdownメールメッセージ変換後のHTML形式の中に、インラインCSSとして自動的に取り込まれます。/
s/^$//
s/^> {tip} If you would like to build an entirely new theme for the Markdown components, write a new CSS file within the `html\/themes` directory and change the `theme` option of your `mail` configuration file\.$/> {tip} Markdownコンポーネント全体の新しいテーマを作成したい場合は、`html\/themes`の中に新しいCSSファイルを記述し、`mail`設定ファイルの`theme`オプションを変更します。/
s/^$//
s/^<a name="sending-mail"><\/a>$/<a name="sending-mail"><\/a>/
s/^## Sending Mail$/## メール送信/
s/^$//
s/^To send a message, use the `to` method on the `Mail` \[facade\](\/docs\/{{version}}\/facades)\. The `to` method accepts an email address, a user instance, or a collection of users\. If you pass an object or collection of objects, the mailer will automatically use their `email` and `name` properties when setting the email recipients, so make sure these attributes are available on your objects\. Once you have specified your recipients, you may pass an instance of your mailable class to the `send` method:$/メッセージを送信するには、`Mail`[ファサード](\/docs\/{{version}}\/facades)の`to`メソッドを使います。`to`メソッドはメールアドレス、ユーザーインスタンス、もしくはユーザーのコレクションを引数に取ります。一つのオブジェクト、もしくはオブジェクトのコレクションを渡すと、メーラは自動的にそれらの`email`と`name`プロパティを使用します。そのため、オブジェクトで、その属性を確実に使用可能にしてください。送信先を指定し終えたら、mailableクラスのインスタンスを`send`メソッドへ渡してください。/
s/^$//
s/^    <?php$/    <?php/
s/^$//
s/^    namespace App\\Http\\Controllers;$/    namespace App\\Http\\Controllers;/
s/^$//
s/^    use App\\Order;$/    use App\\Order;/
s/^    use App\\Mail\\OrderShipped;$/    use App\\Mail\\OrderShipped;/
s/^    use Illuminate\\Http\\Request;$/    use Illuminate\\Http\\Request;/
s/^    use Illuminate\\Support\\Facades\\Mail;$/    use Illuminate\\Support\\Facades\\Mail;/
s/^    use App\\Http\\Controllers\\Controller;$/    use App\\Http\\Controllers\\Controller;/
s/^$//
s/^    class OrderController extends Controller$/    class OrderController extends Controller/
s/^    {$/    {/
s/^        \/\*\*$/        \/**/
s/^         \* Ship the given order\.$/         * 注文の配送/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  int  $orderId$/         * @param  int  $orderId/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^        public function ship(Request $request, $orderId)$/        public function ship(Request $request, $orderId)/
s/^        {$/        {/
s/^            $order = Order::findOrFail($orderId);$/            $order = Order::findOrFail($orderId);/
s/^$//
s/^            \/\/ Ship order\.\.\.$/            \/\/ 配送処理…/
s/^$//
s/^            Mail::to($request->user())->send(new OrderShipped($order));$/            Mail::to($request->user())->send(new OrderShipped($order));/
s/^        }$/        }/
s/^    }$/    }/
s/^$//
s/^Of course, you are not limited to just specifying the "to" recipients when sending a message\. You are free to set "to", "cc", and "bcc" recipients all within a single, chained method call:$/もちろん、メール送信時に"to"で受取人を指定するだけに限りません。"to"、"cc"、"bcc"による受取人をすべて一つのメソッドチェーンで呼び出せます。/
s/^$//
s/^    Mail::to($request->user())$/    Mail::to($request->user())/
s/^        ->cc($moreUsers)$/        ->cc($moreUsers)/
s/^        ->bcc($evenMoreUsers)$/        ->bcc($evenMoreUsers)/
s/^        ->send(new OrderShipped($order));$/        ->send(new OrderShipped($order));/
s/^$//
s/^<a name="rendering-mailables"><\/a>$/<a name="rendering-mailables"><\/a>/
s/^## Rendering Mailables$/## Mailableのレンダリング/
s/^$//
s/^Sometimes you may wish to capture the HTML content of a mailable without sending it\. To accomplish this, you may call the `render` method of the mailable\. This method will return the evaluated contents of the mailable as a string:$/Sometimes you may wish to capture the HTML content of a mailable without sending it. To accomplish this, you may call the `render` method of the mailable. This method will return the evaluated contents of the mailable as a string:/
s/^$//
s/^    $invoice = App\\Invoice::find(1);$/    $invoice = App\\Invoice::find(1);/
s/^$//
s/^    return (new App\\Mail\\InvoicePaid($invoice))->render();$/    return (new App\\Mail\\InvoicePaid($invoice))->render();/
s/^$//
s/^<a name="previewing-mailables-in-the-browser"><\/a>$/<a name="previewing-mailables-in-the-browser"><\/a>/
s/^### Previewing Mailables In The Browser$/### Previewing Mailables In The Browser/
s/^$//
s/^When designing a mailable's template, it is convenient to quickly preview the rendered mailable in your browser like a typical Blade template\. For this reason, Laravel allows you to return any mailable directly from a route Closure or controller\. When a mailable is returned, it will be rendered and displayed in the browser, allowing you to quickly preview its design without needing to send it to an actual email address:$/mailableのテンプレートをデザインしているとき、Bladeテンプレートのようにブラウザでレンダし、簡単にレビューできると便利です。そのため、Laravelでは、ルートのクロージャやコントローラから直接mailableを返すことができます。mailableが返されるとレンダされ、ブラウザに表示されますので、実際のメールアドレスへ送る必要はなく、素早くレビューできます。/
s/^$//
s/^    Route::get('\/mailable', function () {$/    Route::get('\/mailable', function () {/
s/^        $invoice = App\\Invoice::find(1);$/        $invoice = App\\Invoice::find(1);/
s/^$//
s/^        return new App\\Mail\\InvoicePaid($invoice);$/        return new App\\Mail\\InvoicePaid($invoice);/
s/^    });$/    });/
s/^$//
s/^<a name="queueing-mail"><\/a>$/<a name="queueing-mail"><\/a>/
s/^### Queueing Mail$/### キュー使用メール/
s/^$//
s/^#### Queueing A Mail Message$/#### メールメッセージのキューイング/
s/^$//
s/^Since sending email messages can drastically lengthen the response time of your application, many developers choose to queue email messages for background sending\. Laravel makes this easy using its built-in \[unified queue API\](\/docs\/{{version}}\/queues)\. To queue a mail message, use the `queue` method on the `Mail` facade after specifying the message's recipients:$/メールメッセージを送ることにより、アプリケーションのレスポンス時間が極端に長くなり得るため、多くの開発者はメールメッセージをバックグランドで送信するためにキューイングすることを選びます。Laravelの[統一されたキューAPI](\/docs\/{{version}}\/queues)を使うことで、簡単に実現できます。メールメッセージをキューへ送るには、`Mail`ファサードへ、受取人の指定の後に、`queue`メソッドを使います。/
s/^$//
s/^    Mail::to($request->user())$/    Mail::to($request->user())/
s/^        ->cc($moreUsers)$/        ->cc($moreUsers)/
s/^        ->bcc($evenMoreUsers)$/        ->bcc($evenMoreUsers)/
s/^        ->queue(new OrderShipped($order));$/        ->queue(new OrderShipped($order));/
s/^$//
s/^This method will automatically take care of pushing a job onto the queue so the message is sent in the background\. Of course, you will need to \[configure your queues\](\/docs\/{{version}}\/queues) before using this feature\.$/このメソッドはバックグラウンドでメールを送信するため、自動的にジョブをキューに投入する面倒を見ます。もちろん、この機能を使用する前に[キューの設定](\/docs\/{{version}}\/queues)を行う必要があります。/
s/^$//
s/^#### Delayed Message Queueing$/#### 遅延メッセージキュー/
s/^$//
s/^If you wish to delay the delivery of a queued email message, you may use the `later` method\. As its first argument, the `later` method accepts a `DateTime` instance indicating when the message should be sent:$/メッセージを投入するキューを指定したい場合、`laterOn`メソッドを使用します。最初の引数に、`later`メソッドは、メッセージを送信する時間を示す`DateTime`インスタンスを受け取ります。/
s/^$//
s/^    $when = now()->addMinutes(10);$/    $when = now()->addMinutes(10);/
s/^$//
s/^    Mail::to($request->user())$/    Mail::to($request->user())/
s/^        ->cc($moreUsers)$/        ->cc($moreUsers)/
s/^        ->bcc($evenMoreUsers)$/        ->bcc($evenMoreUsers)/
s/^        ->later($when, new OrderShipped($order));$/        ->later($when, new OrderShipped($order));/
s/^$//
s/^#### Pushing To Specific Queues$/#### 特定のキューに投入/
s/^$//
s/^Since all mailable classes generated using the `make:mail` command make use of the `Illuminate\\Bus\\Queueable` trait, you may call the `onQueue` and `onConnection` methods on any mailable class instance, allowing you to specify the connection and queue name for the message:$/`make:mail`コマンドにより生成されたmailableクラスにはすべて、`Illuminate\\Bus\\Queueable`トレイトが使用されています。接続とキュー名を指定する、`onQueue`と`onConnection`メソッドをすべてのmailableクラスインスタンスで呼び出せます。/
s/^$//
s/^    $message = (new OrderShipped($order))$/    $message = (new OrderShipped($order))/
s/^                    ->onConnection('sqs')$/                    ->onConnection('sqs')/
s/^                    ->onQueue('emails');$/                    ->onQueue('emails');/
s/^$//
s/^    Mail::to($request->user())$/    Mail::to($request->user())/
s/^        ->cc($moreUsers)$/        ->cc($moreUsers)/
s/^        ->bcc($evenMoreUsers)$/        ->bcc($evenMoreUsers)/
s/^        ->queue($message);$/        ->queue($message);/
s/^$//
s/^#### Queueing By Default$/#### デフォルトとしてキュー投入/
s/^$//
s/^If you have mailable classes that you want to always be queued, you may implement the `ShouldQueue` contract on the class\. Now, even if you call the `send` method when mailing, the mailable will still be queued since it implements the contract:$/いつもMailableクラスをキューへ投入したければ、クラスへ`ShouldQueue`契約を実装してください。それで、メール送信時に`send`メソッドを呼びだせば、そのMailableクラスは契約が実装されていますので、いつもキューイングされます。/
s/^$//
s/^    use Illuminate\\Contracts\\Queue\\ShouldQueue;$/    use Illuminate\\Contracts\\Queue\\ShouldQueue;/
s/^$//
s/^    class OrderShipped extends Mailable implements ShouldQueue$/    class OrderShipped extends Mailable implements ShouldQueue/
s/^    {$/    {/
s/^        \/\/$/        \/\//
s/^    }$/    }/
s/^$//
s/^<a name="mail-and-local-development"><\/a>$/<a name="mail-and-local-development"><\/a>/
s/^## Mail & Local Development$/## メールとローカル開発/
s/^$//
s/^When developing an application that sends email, you probably don't want to actually send emails to live email addresses\. Laravel provides several ways to "disable" the actual sending of emails during local development\.$/メールを送信するアプリケーションを開発している間は、実際のメールアドレスにメールを送信したくはありません。Laravelはメールメッセージを実際に送信することをローカルでの開発期間の間、「無効」にする様々な方法を用意しています。/
s/^$//
s/^#### Log Driver$/#### Logドライバ/
s/^$//
s/^Instead of sending your emails, the `log` mail driver will write all email messages to your log files for inspection\. For more information on configuring your application per environment, check out the \[configuration documentation\](\/docs\/{{version}}\/configuration#environment-configuration)\.$/メールを送信する代わりに、`log`メールドライバで、すべてのメールメッセージを確認のためにログファイルへ書き込こめます。アプリケーションの設定に関する詳細は、[設定のドキュメント](\/docs\/{{version}}\/configuration#environment-configuration)を確認してください。/
s/^$//
s/^#### Universal To$/#### 全メールの送信先指定/
s/^$//
s/^Another solution provided by Laravel is to set a universal recipient of all emails sent by the framework\. This way, all the emails generated by your application will be sent to a specific address, instead of the address actually specified when sending the message\. This can be done via the `to` option in your `config\/mail\.php` configuration file:$/Laravelが提供するもう一つの解決策は、フレームワークが送信する全メールの共通受け取り先を設定する方法です。この方法を使うと送信メッセージに指定した実際のアドレスの代わりに、アプリケーションが送る全メールを特定のアドレスに送信します。この方法を使用する場合、`config\/mail.php`設定ファイルで`to`オプションを指定します。/
s/^$//
s/^    'to' => \[$/    'to' => [/
s/^        'address' => 'example@example\.com',$/        'address' => 'example@example.com',/
s/^        'name' => 'Example'$/        'name' => 'Example'/
s/^    \],$/    ],/
s/^$//
s/^#### Mailtrap$/#### Mailtrap/
s/^$//
s/^Finally, you may use a service like \[Mailtrap\](https:\/\/mailtrap\.io) and the `smtp` driver to send your email messages to a "dummy" mailbox where you may view them in a true email client\. This approach has the benefit of allowing you to actually inspect the final emails in Mailtrap's message viewer\.$/最後の方法は[Mailtrap](https:\/\/mailtrap.io)のようなサービスを使い、`smtp`ドライバで本当のメールクライアントにより内容を確認できる「ダミー」のメールボックスへメールメッセージを送る方法です。このアプローチの利点は最終的なメールをMailtrapのメッセージビュアーで実際に確認できることです。/
s/^$//
s/^<a name="events"><\/a>$/<a name="events"><\/a>/
s/^## Events$/## イベント/
s/^$//
s/^Laravel fires two events during the process of sending mail messages\. The `MessageSending` event is fired prior to a message being sent, while the `MessageSent` event is fired after a message has been sent\. Remember, these events are fired when the mail is being \*sent\*, not when it is queued\. You may register an event listener for this event in your `EventServiceProvider`:$/Laravelはメールメッセージ送信の過程で、イベントを２つ発行します。`MessageSending`イベントは、メッセージが送信される前に発行され、一方の`MessageSent`イベントは、メッセージを送った後に発行されます。２つのイベントは、キューした時点でなく、メールが**送信された**時に発行されることを覚えておいてください。これらに対するイベントリスナは、`EventServiceProvider`で定義できます。/
s/^$//
s/^    \/\*\*$/    \/**/
s/^     \* The event listener mappings for the application\.$/     * アプリケーションへマッピングするイベントリスナ/
s/^     \*$/     */
s/^     \* @var array$/     * @var array/
s/^     \*\/$/     *\//
s/^    protected $listen = \[$/    protected $listen = [/
s/^        'Illuminate\\Mail\\Events\\MessageSending' => \[$/        'Illuminate\\Mail\\Events\\MessageSending' => [/
s/^            'App\\Listeners\\LogSendingMessage',$/            'App\\Listeners\\LogSendingMessage',/
s/^        \],$/        ],/
s/^        'Illuminate\\Mail\\Events\\MessageSent' => \[$/        'Illuminate\\Mail\\Events\\MessageSent' => [/
s/^            'App\\Listeners\\LogSentMessage',$/            'App\\Listeners\\LogSentMessage',/
s/^        \],$/        ],/
s/^    \];$/    ];/
