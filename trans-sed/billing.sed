s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[Stripe\](#stripe-configuration)$/    - [Stripe](#stripe-configuration)/
s/^    - \[Braintree\](#braintree-configuration)$/    - [Braintree](#braintree-configuration)/
s/^    - \[Currency Configuration\](#currency-configuration)$/    - [通貨設定](#currency-configuration)/
s/^- \[Subscriptions\](#subscriptions)$/- [定期サブスクリプション](#subscriptions)/
s/^    - \[Creating Subscriptions\](#creating-subscriptions)$/    - [サブスクリプション作成](#creating-subscriptions)/
s/^    - \[Checking Subscription Status\](#checking-subscription-status)$/    - [サブスクリプション状態の確認](#checking-subscription-status)/
s/^    - \[Changing Plans\](#changing-plans)$/    - [プラン変更](#changing-plans)/
s/^    - \[Subscription Quantity\](#subscription-quantity)$/    - [サブスクリプション数](#subscription-quantity)/
s/^    - \[Subscription Taxes\](#subscription-taxes)$/    - [サブスクリプションの税金](#subscription-taxes)/
s/^    - \[Cancelling Subscriptions\](#cancelling-subscriptions)$/    - [サブスクリプションキャンセル](#cancelling-subscriptions)/
s/^    - \[Resuming Subscriptions\](#resuming-subscriptions)$/    - [サブスクリプション再開](#resuming-subscriptions)/
s/^    - \[Updating Credit Cards\](#updating-credit-cards)$/    - [クレジットカード変更](#updating-credit-cards)/
s/^- \[Subscription Trials\](#subscription-trials)$/- [サブスクリプションのトレイト](#subscription-trials)/
s/^    - \[With Credit Card Up Front\](#with-credit-card-up-front)$/    - [カードの事前登録あり](#with-credit-card-up-front)/
s/^    - \[Without Credit Card Up Front\](#without-credit-card-up-front)$/    - [カードの事前登録なし](#without-credit-card-up-front)/
s/^- \[Handling Stripe Webhooks\](#handling-stripe-webhooks)$/- [StripeのWebフック処理](#handling-stripe-webhooks)/
s/^    - \[Defining Webhook Event Handlers\](#defining-webhook-event-handlers)$/    - [Webフックハンドラの定義](#defining-webhook-event-handlers)/
s/^    - \[Failed Subscriptions\](#handling-failed-subscriptions)$/    - [サブスクリプション不可](#handling-failed-subscriptions)/
s/^- \[Handling Braintree Webhooks\](#handling-braintree-webhooks)$/- [BraintreeのWebフック処理](#handling-braintree-webhooks)/
s/^    - \[Defining Webhook Event Handlers\](#defining-braintree-webhook-event-handlers)$/    - [Webフックハンドラの定義](#defining-braintree-webhook-event-handlers)/
s/^    - \[Failed Subscriptions\](#handling-braintree-failed-subscriptions)$/    - [サブスクリプション不可](#handling-braintree-failed-subscriptions)/
s/^- \[Single Charges\](#single-charges)$/- [一回だけの課金](#single-charges)/
s/^- \[Invoices\](#invoices)$/- [インボイス](#invoices)/
s/^    - \[Generating Invoice PDFs\](#generating-invoice-pdfs)$/    - [インボイスPDF生成](#generating-invoice-pdfs)/
s/^## Introduction$/## イントロダクション/
s/^Laravel Cashier provides an expressive, fluent interface to \[Stripe's\](https:\/\/stripe\.com) and \[Braintree's\](https:\/\/www\.braintreepayments\.com) subscription billing services\. It handles almost all of the boilerplate subscription billing code you are dreading writing\. In addition to basic subscription management, Cashier can handle coupons, swapping subscription, subscription "quantities", cancellation grace periods, and even generate invoice PDFs\.$/Laravel Cashierは[Stripe](https:\/\/stripe.com)と[Braintree](https:\/\/www.braintreepayments.com)によるサブスクリプション（定期課金）サービスの読みやすく、スラスラと記述できるインターフェイスを提供します。これにより書くのが恐ろしくなるような、サブスクリプション支払いのための決まりきったコードのほとんどが処理できます。基本的なサブスクリプション管理に加え、Cashierはクーポン、サブスクリプションの変更、サブスクリプション数、キャンセル猶予期間、さらにインボイスのPDF発行まで行います。/
s/^> {note} If you're only performing "one-off" charges and do not offer subscriptions, you should not use Cashier\. Instead, use the Stripe and Braintree SDKs directly\.$/> {note} サブスクリプションを提供せず、「一回だけ」の支払いを取り扱う場合は、Cashierを使用してはいけません。StripeかBraintreeのSDKを直接使用してください。/
s/^## Configuration$/## 設定/
s/^First, add the Cashier package for Stripe to your dependencies:$/最初に、Stripe向けのChashierパッケージを依存パッケージへ追加します。/
s/^    composer require "laravel\/cashier":"~7\.0"$/    composer require "laravel\/cashier":"~7.0"/
s/^#### Database Migrations$/#### データベースマイグレーション/
s/^Before using Cashier, we'll also need to \[prepare the database\](\/docs\/{{version}}\/migrations)\. We need to add several columns to your `users` table and create a new `subscriptions` table to hold all of our customer's subscriptions:$/Cashierを使用する前に、[データベースを準備](\/docs\/{{version}}\/migrations)する必要があります。`users`テーブルに、いくつかのカラムを追加し、顧客のサブスクリプション情報すべてを保持する新しい`subscriptions`テーブルを作成します。/
s/^Once the migrations have been created, run the `migrate` Artisan command\.$/マイグレーションを作成したら、`migrate` Artisanコマンドを実行します。/
s/^#### Billable Model$/#### Billableモデル/
s/^Next, add the `Billable` trait to your model definition\. This trait provides various methods to allow you to perform common billing tasks, such as creating subscriptions, applying coupons, and updating credit card information:$/次に、モデル定義に`Billable`トレイトを追加します。このトレイトは、サブスクリプションの作成、クーポンの適用、クレジットカード情報の更新など、一般的な支払いタスクを実行する様々なメソッドを提供しています。/
s/^#### API Keys$/#### APIキー/
s/^Finally, you should configure your Stripe key in your `services\.php` configuration file\. You can retrieve your Stripe API keys from the Stripe control panel:$/最後に、Stripeキーを`services.php`設定ファイルへ設定します。Stripe APIキーはStripeのコントロールパネルから取得します。/
s/^    'stripe' => \[$/    'stripe' => [/
s/^    \],$/    ],/
s/^#### Braintree Caveats$/#### Braintreeの注意/
s/^For many operations, the Stripe and Braintree implementations of Cashier function the same\. Both services provide subscription billing with credit cards but Braintree also supports payments via PayPal\. However, Braintree also lacks some features that are supported by Stripe\. You should keep the following in mind when deciding to use Stripe or Braintree:$/多くの操作において、StripeとBraintreeで実装しているCashierの機能は同じものです。両方のサービスはクレジットカードでの支払いを提供していますが、BraintreeはPayPalでの支払いもサポートしています。しかしながら、Braintreeには、Stripeが提供してる機能のいくつかが欠けています。以下の点を考慮し、StripeとBraintreeのどちらを使うのか決めてください。/
s/^- Braintree supports PayPal while Stripe does not\.$/- BraintreeはPayPalをサポートしていますが、Stripeはしていません。/
s/^- Braintree does not support the `increment` and `decrement` methods on subscriptions\. This is a Braintree limitation, not a Cashier limitation\.$/- Braintreeはサブスクリプション数の`increment`（追加）と`decrement`（減少）メソッドをサポートしていません。これはCashierではなく、Braintreeの制限です。/
s/^- Braintree does not support percentage based discounts\. This is a Braintree limitation, not a Cashier limitation\.$/- Braintreeはパーセンテージをもとにしたディスカウントはサポートしていません。これはCashierではなく、Braintreeの制限です。/
s/^First, add the Cashier package for Braintree to your dependencies:$/最初に、Braintree向けのCashierパッケージを追加します。/
s/^    composer require "laravel\/cashier-braintree":"~2\.0"$/    composer require "laravel\/cashier-braintree":"~2.0"/
s/^#### Service Provider$/#### サービスプロバイダ/
s/^Next, register the `Laravel\\Cashier\\CashierServiceProvider` \[service provider\](\/docs\/{{version}}\/providers) in your `config\/app\.php` configuration file:$/次に`config\/app.php`設定ファイルへ、`Laravel\\Cashier\\CashierServiceProvider`[サービスプロバイダ](\/docs\/{{version}}\/providers)を登録します。/
s/^#### Plan Credit Coupon$/#### クレジットクーポンのプラン/
s/^Before using Cashier with Braintree, you will need to define a `plan-credit` discount in your Braintree control panel\. This discount will be used to properly prorate subscriptions that change from yearly to monthly billing, or from monthly to yearly billing\.$/CashierをBraintreeで使用する前に、`plan-credit`ディスカウントをBraintreeのコントロールパネルで定義する必要があります。このディスカウントは、年払いから月払い、もしくは月払いから年払いの変更時に代金を確実に按分するために使用されます。/
s/^The discount amount configured in the Braintree control panel can be any value you wish, as Cashier will override the defined amount with our own custom amount each time we apply the coupon\. This coupon is needed since Braintree does not natively support prorating subscriptions across subscription frequencies\.$/ディスカウント値はBraintreeコントロールパネルで好きな値に設定できます。Cashierはクーポンを毎回適用するごとに、自身の定義済みカスタム値でディスカウント値をオーバーライドします。Braintreeは繰り返されるサブスクリプションに渡る、按分をネイティブにサポートしていないため、このクーポンが必要です。/
s/^#### Database Migrations$/#### データベースマイグレーション/
s/^Before using Cashier, we'll need to \[prepare the database\](\/docs\/{{version}}\/migrations)\. We need to add several columns to your `users` table and create a new `subscriptions` table to hold all of our customer's subscriptions:$/Cashierを使用する前に、[データベースも準備](\/docs\/{{version}}\/migrations)する必要があります。`users`テーブルにカラムをいくつか追加し、顧客のサブスクリプション情報を保存するために新しい`subscriptions`テーブルを作成します。/
s/^Once the migrations have been created, run the `migrate` Artisan command\.$/マイグレーションを作成したら、`migrate` Artisanコマンドを実行します。/
s/^#### Billable Model$/#### Billableモデル/
s/^Next, add the `Billable` trait to your model definition:$/次に`Billable`トレイをモデルに追加してください。/
s/^#### API Keys$/#### APIキー/
s/^Next, you should configure the following options in your `services\.php` file:$/次に、以下のオプションを`services.php`ファイルで設定します。/
s/^    'braintree' => \[$/    'braintree' => [/
s/^    \],$/    ],/
s/^Then you should add the following Braintree SDK calls to your `AppServiceProvider` service provider's `boot` method:$/続いて以下のBraintree SDK呼び出しコードを`AppServiceProvider`サービスプロバイダの`boot`メソッドに追加します。/
s/^    \\Braintree_Configuration::environment(config('services\.braintree\.environment'));$/    \\Braintree_Configuration::environment(config('services.braintree.environment'));/
s/^    \\Braintree_Configuration::merchantId(config('services\.braintree\.merchant_id'));$/    \\Braintree_Configuration::merchantId(config('services.braintree.merchant_id'));/
s/^    \\Braintree_Configuration::publicKey(config('services\.braintree\.public_key'));$/    \\Braintree_Configuration::publicKey(config('services.braintree.public_key'));/
s/^    \\Braintree_Configuration::privateKey(config('services\.braintree\.private_key'));$/    \\Braintree_Configuration::privateKey(config('services.braintree.private_key'));/
s/^### Currency Configuration$/### 通貨設定/
s/^The default Cashier currency is United States Dollars (USD)\. You can change the default currency by calling the `Cashier::useCurrency` method from within the `boot` method of one of your service providers\. The `useCurrency` method accepts two string parameters: the currency and the currency's symbol:$/Cashierのデフォルト通貨は米ドル(USD)です。サービスプロバイダの一つで、`boot`メソッド中で`Cashier::useCurrency`メソッドを呼び出し、デフォルト通貨を変更可能です。`useCurrency`メソッドは２つの文字列を引数に取ります。通貨と通貨記号です。/
s/^## Subscriptions$/## サブスクリプション/
s/^### Creating Subscriptions$/### サブスクリプション作成/
s/^To create a subscription, first retrieve an instance of your billable model, which typically will be an instance of `App\\User`\. Once you have retrieved the model instance, you may use the `newSubscription` method to create the model's subscription:$/サブスクリプションを作成するには最初にbillableなモデルのインスタンスを取得しますが、通常は`App\\User`のインスタンスでしょう。モデルインスタンスが獲得できたら、モデルのサブスクリプションを作成するために、`newSubscription`メソッドを使います。/
s/^The first argument passed to the `newSubscription` method should be the name of the subscription\. If your application only offers a single subscription, you might call this `main` or `primary`\. The second argument is the specific Stripe \/ Braintree plan the user is subscribing to\. This value should correspond to the plan's identifier in Stripe or Braintree\.$/`newSubscription`メソッドの最初の引数は、サブスクリプションの名前です。アプリケーションでサブスクリプションを一つしか取り扱わない場合、`main`か`primary`と名づけましょう。２つ目の引数には、ユーザーが購入したStripe／Braintreeのプランを指定します。この値はStripe／Braintreeのプランの識別子です。/
s/^The `create` method, which accepts a Stripe credit card \/ source token, will begin the subscription as well as update your database with the customer ID and other relevant billing information\.$/`create`メソッドはStripeクレジットカード／ソーストークンを引数にとり、サブスクリプションを開始すると同時に、カスタマーIDと関連する支払い情報をデータベースに保存します。/
s/^#### Additional User Details$/#### ユーザー詳細情報の指定/
s/^If you would like to specify additional customer details, you may do so by passing them as the second argument to the `create` method:$/ユーザーに関する詳細情報を追加したい場合は、`create`メソッドの第２引数に渡すことができます。/
s/^    $user->newSubscription('main', 'monthly')->create($stripeToken, \[$/    $user->newSubscription('main', 'monthly')->create($stripeToken, [/
s/^    \]);$/    ]);/
s/^To learn more about the additional fields supported by Stripe or Braintree, check out Stripe's \[documentation on customer creation\](https:\/\/stripe\.com\/docs\/api#create_customer) or the corresponding \[Braintree documentation\](https:\/\/developers\.braintreepayments\.com\/reference\/request\/customer\/create\/php)\.$/Stripe／Braintreeがサポートしている追加のフィールドについての更なる情報は、Stripeの[顧客の作成](https:\/\/stripe.com\/docs\/api#create_customer)ドキュメントか、[Braintreeのドキュメント](https:\/\/developers.braintreepayments.com\/reference\/request\/customer\/create\/php)を確認してください。/
s/^#### Coupons$/#### クーポン/
s/^If you would like to apply a coupon when creating the subscription, you may use the `withCoupon` method:$/サブスクリプションの作成時に、クーポンを適用したい場合は、`withCoupon`メソッドを使用してください。/
s/^### Checking Subscription Status$/### サブスクリプション状態の確認/
s/^Once a user is subscribed to your application, you may easily check their subscription status using a variety of convenient methods\. First, the `subscribed` method returns `true` if the user has an active subscription, even if the subscription is currently within its trial period:$/ユーザーがアプリケーションで何かを購入したら、バラエティー豊かで便利なメソッドでサブスクリプション状況を簡単にチェックできます。まず初めに`subscribed`メソッドが`true`を返したら、サブスクリプションが現在試用期間であるにしても、そのユーザーはアクティブなサブスクリプションを持っています。/
s/^The `subscribed` method also makes a great candidate for a \[route middleware\](\/docs\/{{version}}\/middleware), allowing you to filter access to routes and controllers based on the user's subscription status:$/`subscribed`メソッドは[ルートミドルウェア](\/docs\/{{version}}\/middleware)で使用しても大変役に立つでしょう。ユーザーのサブスクリプション状況に基づいてルートやコントローラへのアクセスをフィルタリングできます。/
s/^        if ($request->user() && ! $request->user()->subscribed('main')) {$/        if ($request->user() \&\& ! $request->user()->subscribed('main')) {/
s/^            \/\/ This user is not a paying customer\.\.\.$/            \/\/ このユーザーは支払っていない顧客/
s/^If you would like to determine if a user is still within their trial period, you may use the `onTrial` method\. This method can be useful for displaying a warning to the user that they are still on their trial period:$/ユーザーがまだ試用期間であるかを調べるには、`onTrial`メソッドを使用します。このメソッドはまだ使用期間中であるとユーザーに警告を表示するために便利です。/
s/^The `subscribedToPlan` method may be used to determine if the user is subscribed to a given plan based on a given Stripe \/ Braintree plan ID\. In this example, we will determine if the user's `main` subscription is actively subscribed to the `monthly` plan:$/`subscribedToPlan`メソッドは、そのユーザーがStripe／BraintreeのプランIDで指定したプランを購入しているかを確認します。以下の例では、ユーザーの`main`サブスクリプションが、購入され有効な`monthly`プランであるかを確認しています。/
s/^#### Cancelled Subscription Status$/#### キャンセルしたサブスクリプションの状態/
s/^To determine if the user was once an active subscriber, but has cancelled their subscription, you may use the `cancelled` method:$/ユーザーが一度アクティブな購入者になってから、サブスクリプションをキャンセルしたことを調べるには、`cancelled`メソッドを使用します。/
s/^You may also determine if a user has cancelled their subscription, but are still on their "grace period" until the subscription fully expires\. For example, if a user cancels a subscription on March 5th that was originally scheduled to expire on March 10th, the user is on their "grace period" until March 10th\. Note that the `subscribed` method still returns `true` during this time:$/また、ユーザーがサブスクリプションをキャンセルしているが、まだ完全に期限が切れる前の「猶予期間」中であるかを調べることもできます。例えば、ユーザーが３月５日にサブスクリプションをキャンセルし、３月１０日に無効になる場合、そのユーザーは３月１０日までは「猶予期間」中です。`subscribed`メソッドは、この期間中、まだ`true`を返すことに注目して下さい。/
s/^### Changing Plans$/### プラン変更/
s/^After a user is subscribed to your application, they may occasionally want to change to a new subscription plan\. To swap a user to a new subscription, pass the plan's identifier to the `swap` method:$/アプリケーションの購入済みユーザーが新しいサブスクリプションプランへ変更したくなるのはよくあるでしょう。ユーザーを新しいサブスクリプションに変更するには、`swap`メソッドへプランの識別子を渡します。/
s/^If the user is on trial, the trial period will be maintained\. Also, if a "quantity" exists for the subscription, that quantity will also be maintained\.$/ユーザーが試用期間中の場合、試用期間は継続します。また、そのプランに「購入数」が存在している場合、購入個数も継続します。/
s/^If you would like to swap plans and cancel any trial period the user is currently on, you may use the `skipTrial` method:$/プランを変更し、ユーザーの現プランの試用期間をキャンセルする場合は、`skipTrial`メソッドを使用します。/
s/^### Subscription Quantity$/### 購入数/
s/^> {note} Subscription quantities are only supported by the Stripe edition of Cashier\. Braintree does not have a feature that corresponds to Stripe's "quantity"\.$/> {note} 購入数はStripe版のCashierでのみサポートしています。Braintreeには、Stripeの"quantity"（購入数）にあたる機能がありません。/
s/^Sometimes subscriptions are affected by "quantity"\. For example, your application might charge $10 per month \*\*per user\*\* on an account\. To easily increment or decrement your subscription quantity, use the `incrementQuantity` and `decrementQuantity` methods:$/購入数はサブスクリプションに影響をあたえることがあります。たとえば、あるアプリケーションで「ユーザーごと」に毎月１０ドル課金している場合です。購入数を簡単に上げ下げするには、`incrementQuantity`と`decrementQuantity`メソッドを使います。/
s/^    \/\/ Add five to the subscription's current quantity\.\.\.$/    \/\/ 現在の購入数を５個増やす/
s/^    \/\/ Subtract five to the subscription's current quantity\.\.\.$/    \/\/ 現在の購入数を５個減らす/
s/^Alternatively, you may set a specific quantity using the `updateQuantity` method:$/もしくは特定の数量を設置するには、`updateQuantity`メソッドを使ってください。/
s/^The `noProrate` method may be used to update the subscription's quantity without pro-rating the charges:$/使用期間による支払いの按分を行わずに、サブスクリプション数を変更する場合は、`noProrate`メソッドを使ってください。/
s/^For more information on subscription quantities, consult the \[Stripe documentation\](https:\/\/stripe\.com\/docs\/subscriptions\/quantities)\.$/サブスクリプション数の詳細については、[Stripeドキュメント](https:\/\/stripe.com\/docs\/subscriptions\/quantities)を読んでください。/
s/^### Subscription Taxes$/### サブスクリプションの税金/
s/^To specify the tax percentage a user pays on a subscription, implement the `taxPercentage` method on your billable model, and return a numeric value between 0 and 100, with no more than 2 decimal places\.$/ユーザーが支払うサブスクリプションに対する税率を指定するには、Billableモデルへ`taxPercentage`メソッドを実装し、小数点以下が１桁以内で、0から１００までの数値を返します。/
s/^The `taxPercentage` method enables you to apply a tax rate on a model-by-model basis, which may be helpful for a user base that spans multiple countries and tax rates\.$/`taxPercentage`メソッドにより、モデルごとに税率を適用できるため、多くの州や国に渡るユーザーベースで税率を決める場合に便利です。/
s/^> {note} The `taxPercentage` method only applies to subscription charges\. If you use Cashier to make "one off" charges, you will need to manually specify the tax rate at that time\.$/> {note} `taxPercentage`メソッドは、サブスクリプションの課金時のみに適用されます。Cashierで「一回のみ」の支払いを行う場合は、税率を自分で適用する必要があります。/
s/^### Cancelling Subscriptions$/### サブスクリプションキャンセル/
s/^To cancel a subscription, call the `cancel` method on the user's subscription:$/サブスクリプションをキャンセルするには`cancel`メソッドをユーザーのサブスクリプションに対して使ってください。/
s/^When a subscription is cancelled, Cashier will automatically set the `ends_at` column in your database\. This column is used to know when the `subscribed` method should begin returning `false`\. For example, if a customer cancels a subscription on March 1st, but the subscription was not scheduled to end until March 5th, the `subscribed` method will continue to return `true` until March 5th\.$/サブスクリプションがキャンセルされるとCashierは自動的に、データベースの`ends_at`カラムをセットします。このカラムはいつから`subscribed`メソッドが`false`を返し始めればよいのか、判定するために使用されています。例えば、顧客が３月１日にキャンセルしたが、そのサブスクリプションが３月５日に終了するようにスケジュールされていれば、`subscribed`メソッドは３月５日になるまで`true`を返し続けます。/
s/^You may determine if a user has cancelled their subscription but are still on their "grace period" using the `onGracePeriod` method:$/ユーザーがサブスクリプションをキャンセルしたが、まだ「猶予期間」が残っているかどうかを調べるには`onGracePeriod`メソッドを使います。/
s/^If you wish to cancel a subscription immediately, call the `cancelNow` method on the user's subscription:$/サブスクリプションを即時キャンセルしたい場合は、ユーザーのサブスクリプションに対し、`cancelNow`メソッドを呼び出してください。/
s/^### Resuming Subscriptions$/### サブスクリプション再開/
s/^If a user has cancelled their subscription and you wish to resume it, use the `resume` method\. The user \*\*must\*\* still be on their grace period in order to resume a subscription:$/ユーザーがキャンセルしたサブスクリプションを、再開したいときには、`resume`メソッドを使用してください。サブスクリプションを再開するには、そのユーザーに有効期間が残っている**必要があります**。/
s/^If the user cancels a subscription and then resumes that subscription before the subscription has fully expired, they will not be billed immediately\. Instead, their subscription will be re-activated, and they will be billed on the original billing cycle\.$/ユーザーがサブスクリプションをキャンセルし、それからそのサブスクリプションを再開する場合、そのサブスクリプションの有効期日が完全に切れていなければすぐに課金されません。そのサブスクリプションはシンプルに再度有効になり、元々の支払いサイクルにより課金されます。/
s/^### Updating Credit Cards$/### クレジットカード変更/
s/^The `updateCard` method may be used to update a customer's credit card information\. This method accepts a Stripe token and will assign the new credit card as the default billing source:$/顧客のクレジットカード情報を更新する場合は、`updateCard`メソッドを使います。このメソッドは、Stripeトークンを受け付け、新しいクレジットカードをデフォルトの支払先として登録します。/
s/^## Subscription Trials$/## サブスクリプションのトレイト/
s/^### With Credit Card Up Front$/### カードの事前登録あり/
s/^If you would like to offer trial periods to your customers while still collecting payment method information up front, you should use the `trialDays` method when creating your subscriptions:$/顧客へ試用期間を提供し、支払情報を事前に登録してもらう場合、サブスクリプションを作成するときに`trialDays`メソッドを使ってください。/
s/^This method will set the trial period ending date on the subscription record within the database, as well as instruct Stripe \/ Braintree to not begin billing the customer until after this date\.$/このメソッドはデータベースのサブスクリプションレコードへ、試用期間の終了日を設定すると同時に、Stripe／Braintreeへこの期日が過ぎるまで、顧客へ課金を始めないように指示します。/
s/^> {note} If the customer's subscription is not cancelled before the trial ending date they will be charged as soon as the trial expires, so you should be sure to notify your users of their trial ending date\.$/> {note} 顧客のサブスクリプションが試用期間の最後の日までにキャンセルされないと、期限が切れると同時に課金されます。そのため、ユーザーに試用期間の終了日を通知しておくべきでしょう。/
s/^The `trialUntil` method allows you to provide a `DateTime` instance to specify when the trial period should end:$/`trialUntil`メソッドにより、使用期間の終了時を指定する、`DateTime`インスタンスを渡せます。/
s/^You may determine if the user is within their trial period using either the `onTrial` method of the user instance, or the `onTrial` method of the subscription instance\. The two examples below are identical:$/ユーザーが使用期間中であるかを判定するには、ユーザーインスタンスに対し`onTrial`メソッドを使うか、サブスクリプションインスタンスに対して`onTrial`を使用してください。次の２つの例は、同じ目的を達します。/
s/^### Without Credit Card Up Front$/### カードの事前登録なし/
s/^If you would like to offer trial periods without collecting the user's payment method information up front, you may set the `trial_ends_at` column on the user record to your desired trial ending date\. This is typically done during user registration:$/事前にユーザーの支払い方法の情報を登録してもらうことなく、試用期間を提供する場合は、そのユーザーのレコードの`trial_ends_at`に、試用の最終日を設定するだけです。典型的な使い方は、ユーザー登録時に設定する方法でしょう。/
s/^    $user = User::create(\[$/    $user = User::create([/
s/^        \/\/ Populate other user properties\.\.\.$/        \/\/ 他のユーザープロパティの設定…/
s/^    \]);$/    ]);/
s/^> {note}  Be sure to add a \[date mutator\](\/docs\/{{version}}\/eloquent-mutators#date-mutators) for `trial_ends_at` to your model definition\.$/> {note} モデル定義の`trial_ends_at`に対する、[日付ミューテタ](\/docs\/{{version}}\/eloquent-mutators#date-mutators)を付け加えるのを忘れないでください。/
s/^Cashier refers to this type of trial as a "generic trial", since it is not attached to any existing subscription\. The `onTrial` method on the `User` instance will return `true` if the current date is not past the value of `trial_ends_at`:$/既存のサブスクリプションと関連付けが行われていないので、Cashierでは、このタイプの試用を「包括的な試用(generic trial)」と呼んでいます。`User`インスタンスに対し、`onTrial`メソッドが`true`を返す場合、現在の日付は`trial_ends_at`の値を過ぎていません。/
s/^        \/\/ User is within their trial period\.\.\.$/        \/\/ ユーザーは試用期間中/
s/^You may also use the `onGenericTrial` method if you wish to know specifically that the user is within their "generic" trial period and has not created an actual subscription yet:$/特に、ユーザーが「包括的な試用」期間中であり、まだサブスクリプションが作成されていないことを調べたい場合は、`onGenericTrial`メソッドが使用できます。/
s/^        \/\/ User is within their "generic" trial period\.\.\.$/        \/\/ ユーザーは「包括的」な試用期間中/
s/^Once you are ready to create an actual subscription for the user, you may use the `newSubscription` method as usual:$/ユーザーに実際のサブスクリプションを作成する準備ができたら、通常は`newSubscription`メソッドを使います。/
s/^## Handling Stripe Webhooks$/## StripeのWebフック処理/
s/^Both Stripe and Braintree can notify your application of a variety of events via webhooks\. To handle Stripe webhooks, define a route that points to Cashier's webhook controller\. This controller will handle all incoming webhook requests and dispatch them to the proper controller method:$/StripeとBraintree、両方共にWebフックによりアプリケーションへ様々なイベントを通知できます。StripeのWebフックを処理するには、CashierのWebフックコントローラへのルートを定義する必要があります。このコントローラは通知されるWebフックリクエストをすべて処理し、正しいコントローラメソッドをディスパッチします。/
s/^> {note} Once you have registered your route, be sure to configure the webhook URL in your Stripe control panel settings\.$/> {note} ルートを登録したら、Stripeコントロールパネル設定のWebフックURLも、合わせて設定してください。/
s/^By default, this controller will automatically handle cancelling subscriptions that have too many failed charges (as defined by your Stripe settings); however, as we'll soon discover, you can extend this controller to handle any webhook event you like\.$/このコントローラはデフォルトで、（Stripeの設定により決まる）課金の失敗が多すぎる場合、サブスクリプションを自動的にキャンセル処理します。しかしながら、処理したいWebフックイベントをどれでも処理できるようにするために、このコントローラを拡張する方法を以降で学びます。/
s/^#### Webhooks & CSRF Protection$/#### WebフックとCSRF保護/
s/^Since Stripe webhooks need to bypass Laravel's \[CSRF protection\](\/docs\/{{version}}\/csrf), be sure to list the URI as an exception in your `VerifyCsrfToken` middleware or list the route outside of the `web` middleware group:$/StripeのWebフックでは、Laravelの [CSRFバリデーション](\/docs\/{{version}}\/csrf)をバイパスする必要があるため、`VerifyCsrfToken`ミドルウェアのURIを例外としてリストしておくか、ルート定義を`web`ミドルウェアグループのリストから外しておきましょう。/
s/^    protected $except = \[$/    protected $except = [/
s/^        'stripe\/\*',$/        'stripe\/*',/
s/^    \];$/    ];/
s/^### Defining Webhook Event Handlers$/### Webフックハンドラの定義/
s/^Cashier automatically handles subscription cancellation on failed charges, but if you have additional Stripe webhook events you would like to handle, extend the Webhook controller\. Your method names should correspond to Cashier's expected convention, specifically, methods should be prefixed with `handle` and the "camel case" name of the Stripe webhook you wish to handle\. For example, if you wish to handle the `invoice\.payment_succeeded` webhook, you should add a `handleInvoicePaymentSucceeded` method to the controller:$/Cashierは課金の失敗時にサブスクリプションを自動的に処理しますが、他にもStripeのWebフックイベントを処理したい場合は、Webフックコントローラを拡張します。メソッド名はCashierの命名規則に沿う必要があります。メソッドは`handle`のプレフィックスで始まり、処理したいStripeのWebフックの名前を「キャメルケース」にします。たとえば、`invoice.payment_succeeded` Webフックを処理する場合は、`handleInvoicePaymentSucceeded`メソッドをコントローラに追加します。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle a Stripe webhook\.$/         * StripeのWebフック処理/
s/^         \*$/         */
s/^         \* @param  array  $payload$/         * @param  array  $payload/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Handle The Event$/            \/\/ イベントの処理/
s/^Next, define a route to your Cashier controller within your `routes\/web\.php` file:$/Next, define a route to your Cashier controller within your `routes\/web.php` file:/
s/^### Failed Subscriptions$/### サブスクリプション不可/
s/^What if a customer's credit card expires? No worries - Cashier includes a Webhook controller that can easily cancel the customer's subscription for you\. As noted above, all you need to do is point a route to the controller:$/顧客のクレジットカードが有効期限切れだったら？　心配いりません。Cashierは顧客のサブスクリプションを簡単にキャンセルできるWebフックを用意しています。前記と同じように、コントローラのルートを指定するだけです。/
s/^That's it! Failed payments will be captured and handled by the controller\. The controller will cancel the customer's subscription when Stripe determines the subscription has failed (normally after three failed payment attempts)\.$/これだけです！　課金の失敗はコントローラにより捉えられ、処理されます。コントローラはStripeによりサブスクリプションが不能だと判断されると（通常は課金に３回失敗時）、その顧客のサブスクリプションをキャンセルします。/
s/^## Handling Braintree Webhooks$/## BraintreeのWebフック処理/
s/^Both Stripe and Braintree can notify your application of a variety of events via webhooks\. To handle Braintree webhooks, define a route that points to Cashier's webhook controller\. This controller will handle all incoming webhook requests and dispatch them to the proper controller method:$/StripeとBraintree、両方共にWebフックによりアプリケーションへ様々なイベントを通知できます。BraintreeのWebフックを処理するには、CashierのWebフックコントローラへのルートを定義する必要があります。このコントローラは通知されるWebフックリクエストをすべて処理し、正しいコントローラメソッドをディスパッチします。/
s/^> {note} Once you have registered your route, be sure to configure the webhook URL in your Braintree control panel settings\.$/> {note} ルートを登録したら、Braintreeコントロールパネル設定のWebフックURLも、合わせて設定してください。/
s/^By default, this controller will automatically handle cancelling subscriptions that have too many failed charges (as defined by your Braintree settings); however, as we'll soon discover, you can extend this controller to handle any webhook event you like\.$/このコントローラはデフォルトで、（Braintreeの設定により決まる）課金の失敗が多すぎる場合、サブスクリプションを自動的にキャンセル処理します。しかしながら、処理したいWebフックイベントをどれでも処理できるようにするために、このコントローラを拡張する方法を以降で学びます。/
s/^#### Webhooks & CSRF Protection$/#### WebフックとCSRF保護/
s/^Since Braintree webhooks need to bypass Laravel's \[CSRF protection\](\/docs\/{{version}}\/csrf), be sure to list the URI as an exception in your `VerifyCsrfToken` middleware or list the route outside of the `web` middleware group:$/BraintreeのWebフックでは、Laravelの [CSRFバリデーション](\/docs\/{{version}}\/csrf)をバイパスする必要があるため、`VerifyCsrfToken`ミドルウェアのURIを例外としてリストしておくか、ルート定義を`web`ミドルウェアグループのリストから外しておきましょう。/
s/^    protected $except = \[$/    protected $except = [/
s/^        'braintree\/\*',$/        'braintree\/*',/
s/^    \];$/    ];/
s/^### Defining Webhook Event Handlers$/### Webフックハンドラの定義/
s/^Cashier automatically handles subscription cancellation on failed charges, but if you have additional Braintree webhook events you would like to handle, extend the Webhook controller\. Your method names should correspond to Cashier's expected convention, specifically, methods should be prefixed with `handle` and the "camel case" name of the Braintree webhook you wish to handle\. For example, if you wish to handle the `dispute_opened` webhook, you should add a `handleDisputeOpened` method to the controller:$/Cashierは課金の失敗時にサブスクリプションを自動的に処理しますが、他にもBraintreeのWebフックイベントを処理したい場合は、Webフックコントローラを拡張します。メソッド名はCashierの命名規則に沿う必要があります。メソッドは`handle`のプレフィックスで始まり、処理したいBraintreeのWebフックの名前を「キャメルケース」にします。たとえば、`dispute_opened` Webフックを処理する場合は、`handleDisputeOpened`メソッドをコントローラに追加します。/
s/^        \/\*\*$/        \/**/
s/^         \* Handle a Braintree webhook\.$/         * Braintree Webフックの処理/
s/^         \*$/         */
s/^         \* @param  WebhookNotification  $webhook$/         * @param  WebhookNotification  $webhook/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            \/\/ Handle The Event$/            \/\/ イベントの処理/
s/^### Failed Subscriptions$/### サブスクリプション不可/
s/^What if a customer's credit card expires? No worries - Cashier includes a Webhook controller that can easily cancel the customer's subscription for you\. Just point a route to the controller:$/顧客のクレジットカードが有効期限切れだったら？　心配いりません。Cashierは顧客のサブスクリプションを簡単にキャンセルできるWebフックコントローラを含んでいます。コントローラのルートを指定するだけです。/
s/^That's it! Failed payments will be captured and handled by the controller\. The controller will cancel the customer's subscription when Braintree determines the subscription has failed (normally after three failed payment attempts)\. Don't forget: you will need to configure the webhook URI in your Braintree control panel settings\.$/これだけです。支払いが失敗すると、コントローラにより捉えられ、処理されます。Braintreeが購入に失敗したと判断すると（通常は支払いに３回失敗した場合）、その顧客のサブスクリプションはキャンセルされます。BraintreeのコントロールパネルでWebフックのURIを設定する必要があることを忘れないで下さい。/
s/^## Single Charges$/## 一回だけの課金/
s/^### Simple Charge$/### 課金のみ/
s/^> {note} When using Stripe, the `charge` method accepts the amount you would like to charge in the \*\*lowest denominator of the currency used by your application\*\*\. However, when using Braintree, you should pass the full dollar amount to the `charge` method:$/> {note} Stripeを使用している場合、`charge`メソッドには**アプリケーションで使用している通貨の最低単位**で金額を指定しますが、Braintreeの`charge`メソッドには、ドル単位の金額を指定します。/
s/^If you would like to make a "one off" charge against a subscribed customer's credit card, you may use the `charge` method on a billable model instance\.$/すでに何かを購入している顧客のクレジットカードに、「一回だけ」の課金をしたい場合は、billableモデルのインスタンスに対し、`charge`メソッドを使います。/
s/^    \/\/ Stripe Accepts Charges In Cents\.\.\.$/    \/\/ Stripeはセント単位で課金する/
s/^    \/\/ Braintree Accepts Charges In Dollars\.\.\.$/    \/\/ Braintreeはドル単位で課金する/
s/^The `charge` method accepts an array as its second argument, allowing you to pass any options you wish to the underlying Stripe \/ Braintree charge creation\. Consult the Stripe or Braintree documentation regarding the options available to you when creating charges:$/`charge`メソッドは第２引数に配列を受け付け、裏で作成されるStripe／Braintreeの課金作成に対するオプションを指定できます。StripeとBraintreeの課金作成時に使用できるオプションについては、ドキュメントを参照してください。/
s/^    $user->charge(100, \[$/    $user->charge(100, [/
s/^    \]);$/    ]);/
s/^The `charge` method will throw an exception if the charge fails\. If the charge is successful, the full Stripe \/ Braintree response will be returned from the method:$/`charge`メソッドは、課金に失敗した場合に例外を投げます。課金に成功すると、メソッドはtripe／Braintreeレスポンスをそのまま返します。/
s/^### Charge With Invoice$/### インボイス付き課金/
s/^Sometimes you may need to make a one-time charge but also generate an invoice for the charge so that you may offer a PDF receipt to your customer\. The `invoiceFor` method lets you do just that\. For example, let's invoice the customer $5\.00 for a "One Time Fee":$/一回だけ課金をしつつ、顧客へ発行するPDFのレシートとしてインボイスも生成したいことがあります。`invoiceFor`メソッドは、まさにそのために存在しています。例として、「一回だけ」の料金を５ドル課金してみましょう。/
s/^    \/\/ Stripe Accepts Charges In Cents\.\.\.$/    \/\/ Stripeはセント単位で課金する/
s/^    \/\/ Braintree Accepts Charges In Dollars\.\.\.$/    \/\/ Braintreeはドル単位で課金する/
s/^The invoice will be charged immediately against the user's credit card\. The `invoiceFor` method also accepts an array as its third argument, allowing you to pass any options you wish to the underlying Stripe \/ Braintree charge creation:$/金額は即時にユーザーのクレジットカードへ課金されます。`invoiceFor`メソッドは第３引数として配列を受け付け、裏で作成されるStripe／Braintreeの課金オプションを指定できます。/
s/^    $user->invoiceFor('One Time Fee', 500, \[$/    $user->invoiceFor('One Time Fee', 500, [/
s/^    \]);$/    ]);/
s/^If you are using Braintree as your billing provider, you must include a `description` option when calling the `invoiceFor` method:$/Braintreeを課金プロバイダに使用している場合、`invoiceFor` の呼び出し時に`description`オプションを含める必要があります。/
s/^    $user->invoiceFor('One Time Fee', 500, \[$/    $user->invoiceFor('One Time Fee', 500, [/
s/^    \]);$/    ]);/
s/^> {note} The `invoiceFor` method will create a Stripe invoice which will retry failed billing attempts\. If you do not want invoices to retry failed charges, you will need to close them using the Stripe API after the first failed charge\.$/> {note} `invoiceFor`メソッドは、課金失敗時にリトライするStripeインボイスを生成します。リトライをしてほしくない場合は、最初に課金に失敗した時点で、Stripe APIを使用し、生成したインボイスを閉じる必要があります。/
s/^## Invoices$/## インボイス/
s/^You may easily retrieve an array of a billable model's invoices using the `invoices` method:$/`invoices`メソッドにより、billableモデルのインボイスの配列を簡単に取得できます。/
s/^    \/\/ Include pending invoices in the results\.\.\.$/    \/\/ 結果にペンディング中のインボイスも含める/
s/^When listing the invoices for the customer, you may use the invoice's helper methods to display the relevant invoice information\. For example, you may wish to list every invoice in a table, allowing the user to easily download any of them:$/顧客へインボイスを一覧表示するとき、そのインボイスに関連する情報を表示するために、インボイスのヘルパメソッドを表示に利用できます。ユーザーが簡単にダウンロードできるように、テーブルで全インボイスを一覧表示する例を見てください。/
s/^### Generating Invoice PDFs$/### インボイスPDF生成/
s/^From within a route or controller, use the `downloadInvoice` method to generate a PDF download of the invoice\. This method will automatically generate the proper HTTP response to send the download to the browser:$/ルートやコントローラの中で`downloadInvoice`メソッドを使うと、そのインボイスのPDFダウンロードを生成できます。このメソッドはブラウザへダウンロードのHTTPレスポンスを正しく行うHTTPレスポンスを生成します。/
s/^        return $request->user()->downloadInvoice($invoiceId, \[$/        return $request->user()->downloadInvoice($invoiceId, [/
s/^        \]);$/        ]);/
