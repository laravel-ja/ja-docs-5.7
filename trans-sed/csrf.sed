s/^# CSRF Protection$/# CSRF保護/
s/^- \[Introduction\](#csrf-introduction)$/- [イントロダクション](#csrf-introduction)/
s/^- \[Excluding URIs\](#csrf-excluding-uris)$/- [URIの除外](#csrf-excluding-uris)/
s/^- \[X-CSRF-Token\](#csrf-x-csrf-token)$/- [X-CSRF-Token](#csrf-x-csrf-token)/
s/^- \[X-XSRF-Token\](#csrf-x-xsrf-token)$/- [X-XSRF-Token](#csrf-x-xsrf-token)/
s/^## Introduction$/## イントロダクション/
s/^Laravel makes it easy to protect your application from \[cross-site request forgery\](https:\/\/en\.wikipedia\.org\/wiki\/Cross-site_request_forgery) (CSRF) attacks\. Cross-site request forgeries are a type of malicious exploit whereby unauthorized commands are performed on behalf of an authenticated user\.$/Laravelでは、[クロス・サイト・リクエスト・フォージェリ](https:\/\/en.wikipedia.org\/wiki\/Cross-site_request_forgery)(CSRF)からアプリケーションを簡単に守れます。クロス・サイト・リクエスト・フォージェリは悪意のあるエクスプロイトの一種であり、信頼できるユーザーになり代わり、認められていないコマンドを実行します。/
s/^Laravel automatically generates a CSRF "token" for each active user session managed by the application\. This token is used to verify that the authenticated user is the one actually making the requests to the application\.$/Laravelは、アプリケーションにより管理されているアクティブなユーザーの各セッションごとに、CSRF「トークン」を自動的に生成しています。このトークンを認証済みのユーザーが、実装にアプリケーションに対してリクエストを送信しているのかを確認するために利用します。/
s/^Anytime you define a HTML form in your application, you should include a hidden CSRF token field in the form so that the CSRF protection middleware can validate the request\. You may use the `@csrf` Blade directive to generate the token field:$/アプリケーションでHTMLフォームを定義する場合は常に、CSRF保護ミドルウェアがリクエストを検証できるように、隠しCSRFトークンフィールドをそのフォームへ含める必要があります。トークンを生成するには、`@csrf` Bladeディレクティブが使用できます。/
s/^        \.\.\.$/        .../
s/^The `VerifyCsrfToken` \[middleware\](\/docs\/{{version}}\/middleware), which is included in the `web` middleware group, will automatically verify that the token in the request input matches the token stored in the session\.$/`web`ミドルウェアグループに含まれている、`VerifyCsrfToken` [ミドルウェア](\/docs\/{{version}}\/middleware)が、リクエスト中のトークンとセッションに保存されているトークンが一致するか、確認しています。/
s/^#### CSRF Tokens & JavaScript$/#### CSRFトークンとJavaScript/
s/^When building JavaScript driven applications, it is convenient to have your JavaScript HTTP library automatically attach the CSRF token to every outgoing request\. By default, the `resources\/assets\/js\/bootstrap\.js` file registers the value of the `csrf-token` meta tag with the Axios HTTP library\. If you are not using this library, you will need to manually configure this behavior for your application\.$/JacaScriptで駆動するアプリケーションを構築する場合、JavaScript HTTPライブラリーに対し、全ての送信リクエストへCSRFトークンを自動的に追加させると便利です。デフォルトでAxios HTTPライブラリにより、`csrf-token`メタタグの値が、`resources\/assets\/js\/bootstrap.js`ファイルに登録されます。このライブラリを使用しない場合、自身のアプリケーションでこの振る舞いを用意する必要があります。/
s/^## Excluding URIs From CSRF Protection$/## URIの除外/
s/^Sometimes you may wish to exclude a set of URIs from CSRF protection\. For example, if you are using \[Stripe\](https:\/\/stripe\.com) to process payments and are utilizing their webhook system, you will need to exclude your Stripe webhook handler route from CSRF protection since Stripe will not know what CSRF token to send to your routes\.$/一連のURIをCSRF保護より除外したい場合もあります。たとえば、[Stripe](https:\/\/stripe.com)を課金処理に採用しており、そのWebフックシステムを利用している時、LaravelのCSRF保護よりWebフック処理ルートを除外する必要があるでしょう。なぜならルートに送るべきCSRFトークンがどんなものか、Stripeは知らないからです。/
s/^Typically, you should place these kinds of routes outside of the `web` middleware group that the `RouteServiceProvider` applies to all routes in the `routes\/web\.php` file\. However, you may also exclude the routes by adding their URIs to the `$except` property of the `VerifyCsrfToken` middleware:$/通常、この種のルートは`RouteServiceProvider`が`routes\/web.php`ファイル中の全ルートへ適用する、`web`ミドルウェアから外しておくべきです。しかし、`VerifyCsrfToken`ミドルウェアの`$except`プロパティへ、そうしたURIを追加することによっても、ルートを除外することができます。/
s/^        \/\*\*$/        \/**/
s/^         \* The URIs that should be excluded from CSRF verification\.$/         * CSRFバリデーションから除外するURI/
s/^         \*$/         */
s/^         \* @var array$/         * @var array/
s/^         \*\/$/         *\//
s/^        protected $except = \[$/        protected $except = [/
s/^            'stripe\/\*',$/            'stripe\/*',/
s/^            'http:\/\/example\.com\/foo\/bar',$/            'http:\/\/example.com\/foo\/bar',/
s/^            'http:\/\/example\.com\/foo\/\*',$/            'http:\/\/example.com\/foo\/*',/
s/^        \];$/        ];/
s/^> {tip} The CSRF middleware is automatically disabled when \[running tests\](\/docs\/{{version}}\/testing)\.$/> {tip} [テスト実行時](\/docs\/{{version}}\/testing)には、自動的にCSRFミドルウェアは無効になります。/
s/^In addition to checking for the CSRF token as a POST parameter, the `VerifyCsrfToken` middleware will also check for the `X-CSRF-TOKEN` request header\. You could, for example, store the token in a HTML `meta` tag:$/更に追加でPOSTパラメーターとしてCSRFトークンを確認したい場合は、Laravelの`VerifyCsrfToken`ミドルウェアが`X-CSRF-TOKEN`リクエストヘッダもチェックします。たとえば、HTML中の`meta`タグにトークンを保存します。/
s/^Then, once you have created the `meta` tag, you can instruct a library like jQuery to automatically add the token to all request headers\. This provides simple, convenient CSRF protection for your AJAX based applications:$/`meta`タグを作成したら、jQueryのようなライブラリーで、全リクエストヘッダにトークンを追加できます。この手法によりAJAXベースのアプリケーションにシンプルで便利なCSRF保護を提供できます。/
s/^    $\.ajaxSetup({$/    $.ajaxSetup({/
s/^            'X-CSRF-TOKEN': $('meta\[name="csrf-token"\]')\.attr('content')$/            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')/
s/^> {tip} By default, the `resources\/assets\/js\/bootstrap\.js` file registers the value of the `csrf-token` meta tag with the Axios HTTP library\. If you are not using this library, you will need to manually configure this behavior for your application\.$/> {tip} デフォルトでAxios HTTPライブラリにより、`csrf-token`メタタグの値が、`resources\/assets\/js\/bootstrap.js`へ保持されます。このライブラリを使用しない場合、自分のアプリケーションでこの振る舞いを実現する必要があります。/
s/^Laravel stores the current CSRF token in a `XSRF-TOKEN` cookie that is included with each response generated by the framework\. You can use the cookie value to set the `X-XSRF-TOKEN` request header\.$/LaravelはCSRFトークンをフレームワークにより生成されるリクエストに含まれる、`XSRF-TOKEN`クッキーの中に保存します。このクッキーの値を`X-XSRF-TOKEN`リクエストヘッダにセットすることが可能です。/
s/^This cookie is primarily sent as a convenience since some JavaScript frameworks and libraries, like Angular and Axios, automatically place its value in the `X-XSRF-TOKEN` header\.$/いくつかのJavaScriptフレームワークや、AngularとAxiosのようなライブラリーでは、自動的に値を`X-XSRF-TOKEN`ヘッダに設定するため、利便性を主な目的としてこのクッキーを送ります。/
