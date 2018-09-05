s/^# Compiling Assets (Laravel Mix)$/# アセットのコンパイル(Laravel Mix)/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation & Setup\](#installation)$/- [インストールと準備](#installation)/
s/^- \[Running Mix\](#running-mix)$/- [Mixの実行](#running-mix)/
s/^- \[Working With Stylesheets\](#working-with-stylesheets)$/- [スタイルシートの操作](#working-with-stylesheets)/
s/^    - \[Less\](#less)$/    - [Less](#less)/
s/^    - \[Sass\](#sass)$/    - [Sass](#sass)/
s/^    - \[Stylus\](#stylus)$/    - [Stylus](#stylus)/
s/^    - \[PostCSS\](#postcss)$/    - [PostCSS](#postcss)/
s/^    - \[Plain CSS\](#plain-css)$/    - [平文CSS](#plain-css)/
s/^    - \[URL Processing\](#url-processing)$/    - [URL処理](#url-processing)/
s/^    - \[Source Maps\](#css-source-maps)$/    - [ソースマップ](#css-source-maps)/
s/^- \[Working With JavaScript\](#working-with-scripts)$/- [JavaScriptの操作](#working-with-scripts)/
s/^    - \[Vendor Extraction\](#vendor-extraction)$/    - [ベンダの抽出](#vendor-extraction)/
s/^    - \[React\](#react)$/    - [React](#react)/
s/^    - \[Vanilla JS\](#vanilla-js)$/    - [バニラJS](#vanilla-js)/
s/^    - \[Custom Webpack Configuration\](#custom-webpack-configuration)$/    - [Webpackカスタム設定](#custom-webpack-configuration)/
s/^- \[Copying Files & Directories\](#copying-files-and-directories)$/- [ファイル／ディレクトリコピー](#copying-files-and-directories)/
s/^- \[Versioning \/ Cache Busting\](#versioning-and-cache-busting)$/- [バージョン付け／キャッシュ対策](#versioning-and-cache-busting)/
s/^- \[Browsersync Reloading\](#browsersync-reloading)$/- [Browsersyncリロード](#browsersync-reloading)/
s/^- \[Environment Variables\](#environment-variables)$/- [環境変数](#environment-variables)/
s/^- \[Notifications\](#notifications)$/- [通知](#notifications)/
s/^## Introduction$/## イントロダクション/
s/^\[Laravel Mix\](https:\/\/github\.com\/JeffreyWay\/laravel-mix) provides a fluent API for defining Webpack build steps for your Laravel application using several common CSS and JavaScript pre-processors\. Through simple method chaining, you can fluently define your asset pipeline\. For example:$/[Laravel Mix](https:\/\/github.com\/JeffreyWay\/laravel-mix)は多くの一般的なCSSとJavaScriptのプリプロセッサを使用し、Laravelアプリケーションために、構築過程をWebpackでスラスラと定義できるAPIを提供しています。シンプルなメソッドチェーンを使用しているため、アセットパイプラインを流暢に定義できます。例を見てください。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js')$/    mix.js('resources\/assets\/js\/app.js', 'public\/js')/
s/^       \.sass('resources\/assets\/sass\/app\.scss', 'public\/css');$/       .sass('resources\/assets\/sass\/app.scss', 'public\/css');/
s/^If you've ever been confused and overwhelmed about getting started with Webpack and asset compilation, you will love Laravel Mix\. However, you are not required to use it while developing your application\. Of course, you are free to use any asset pipeline tool you wish, or even none at all\.$/Webpackやアセットのコンパイルを始めようとして、混乱と圧倒を感じているならLaravel Mixを気に入ってもらえるでしょう。しかし、アプリケーションの開発時に必要だというわけではありません。どんなアセットパイプラインツールを使用してもかまいませんし、使わなくても良いのです。/
s/^## Installation & Setup$/## インストールと準備/
s/^#### Installing Node$/#### Nodeのインストール/
s/^Before triggering Mix, you must first ensure that Node\.js and NPM are installed on your machine\.$/Mixを始める前、最初にNode.jsとNPMを開発機へ確実にインストールしてください。/
s/^By default, Laravel Homestead includes everything you need; however, if you aren't using Vagrant, then you can easily install the latest version of Node and NPM using simple graphical installers from \[their download page\](https:\/\/nodejs\.org\/en\/download\/)\.$/Laravel Homesteadならデフォルトのままでも必要なものが全部そろっています。しかし、Vagrantを使っていなくても、[ダウンロードページ](https:\/\/nodejs.org\/ja\/download\/)を読めば、NodeとNPMは簡単にインストールできます。/
s/^The only remaining step is to install Laravel Mix\. Within a fresh installation of Laravel, you'll find a `package\.json` file in the root of your directory structure\. The default `package\.json` file includes everything you need to get started\. Think of this like your `composer\.json` file, except it defines Node dependencies instead of PHP\. You may install the dependencies it references by running:$/残っているステップはLaravel Mixのインストールだけです。新しくLaravelをインストールすると、ルートディレクトリに`package.json`があることに気づくでしょう。PHPの代わりにNodeの依存パッケージが定義されている所が異なりますが、`composer.json`ファイルと同じようなものだと考えてください。以下のコマンドで、依存パッケージをインストールしてください。/
s/^## Running Mix$/## Mixの実行/
s/^Mix is a configuration layer on top of \[Webpack\](https:\/\/webpack\.js\.org), so to run your Mix tasks you only need to execute one of the NPM scripts that is included with the default Laravel `package\.json` file:$/Mixは[Webpack](https:\/\/webpack.js.org)上の設定レイヤーですから、Laravelに含まれる`package.json`ファイル上のNPMスクリプトの一つをMixの実行で起動してください。/
s/^    \/\/ Run all Mix tasks\.\.\.$/    \/\/ 全タスク実行/
s/^    \/\/ Run all Mix tasks and minify output\.\.\.$/    \/\/ 全タスク実行を実行し、出力を圧縮/
s/^#### Watching Assets For Changes$/#### アセット変更の監視/
s/^The `npm run watch` command will continue running in your terminal and watch all relevant files for changes\. Webpack will then automatically recompile your assets when it detects a change:$/`npm run watch`コマンドはターミナルで実行し続け、関連ファイル全部の変更を監視します。Webpackは変更を感知すると、アセットを自動的に再コンパイルします。/
s/^You may find that in certain environments Webpack isn't updating when your files change\. If this is the case on your system, consider using the `watch-poll` command:$/特定の環境のWebpackでは、ファイル変更時に更新されないことがあります。自分のシステムでこれが起きた場合は、`watch-poll`コマンドを使用してください。/
s/^## Working With Stylesheets$/## スタイルシートの操作/
s/^The `webpack\.mix\.js` file is your entry point for all asset compilation\. Think of it as a light configuration wrapper around Webpack\. Mix tasks can be chained together to define exactly how your assets should be compiled\.$/`webpack.mix.js`ファイルは全アセットコンパイルのエントリポイントです。Webpackの軽い設定ラッパーだと考えてください。Mixタスクはアセットをどのようにコンパイルすべきかを正確に定義するため、チェーンでつなげます。/
s/^The `less` method may be used to compile \[Less\](http:\/\/lesscss\.org\/) into CSS\. Let's compile our primary `app\.less` file to `public\/css\/app\.css`\.$/[Less](http:\/\/lesscss.org\/)をCSSへコンパイルするには`less`メソッドを使用します。最も主要な`app.less`ファイルを`public\/css\/app.css`としてコンパイルしてみましょう。/
s/^    mix\.less('resources\/assets\/less\/app\.less', 'public\/css');$/    mix.less('resources\/assets\/less\/app.less', 'public\/css');/
s/^Multiple calls to the `less` method may be used to compile multiple files:$/複数のファイルをコンパイルするには、`less`メソッドを複数回呼び出します。/
s/^    mix\.less('resources\/assets\/less\/app\.less', 'public\/css')$/    mix.less('resources\/assets\/less\/app.less', 'public\/css')/
s/^       \.less('resources\/assets\/less\/admin\.less', 'public\/css');$/       .less('resources\/assets\/less\/admin.less', 'public\/css');/
s/^If you wish to customize the file name of the compiled CSS, you may pass a full file path as the second argument to the `less` method:$/コンパイル済みのCSSのファイル名をカスタマイズしたい場合は、`less`の第２引数にファイルのフルパスを指定してください。/
s/^    mix\.less('resources\/assets\/less\/app\.less', 'public\/stylesheets\/styles\.css');$/    mix.less('resources\/assets\/less\/app.less', 'public\/stylesheets\/styles.css');/
s/^If you need to override the \[underlying Less plug-in options\](https:\/\/github\.com\/webpack-contrib\/less-loader#options), you may pass an object as the third argument to `mix\.less()`:$/[裏で動作しているLessプラグインのオプション](https:\/\/github.com\/webpack-contrib\/less-loader#options)をオーバーライドする必要が起きたら、`mix.less()`の第３引数にオブジェクトを渡してください。/
s/^    mix\.less('resources\/assets\/less\/app\.less', 'public\/css', {$/    mix.less('resources\/assets\/less\/app.less', 'public\/css', {/
s/^The `sass` method allows you to compile \[Sass\](http:\/\/sass-lang\.com\/) into CSS\. You may use the method like so:$/`sass`メソッドは、[Sass](http:\/\/sass-lang.com\/)をCSSへコンパイルします。次のように使用します。/
s/^    mix\.sass('resources\/assets\/sass\/app\.scss', 'public\/css');$/    mix.sass('resources\/assets\/sass\/app.scss', 'public\/css');/
s/^Again, like the `less` method, you may compile multiple Sass files into their own respective CSS files and even customize the output directory of the resulting CSS:$/`less`メソッドでも、複数のSassファイルを別々のCSSファイルへコンパイルできますし、結果のCSSの出力ディレクトリをカスタマイズ可能です。/
s/^    mix\.sass('resources\/assets\/sass\/app\.sass', 'public\/css')$/    mix.sass('resources\/assets\/sass\/app.sass', 'public\/css')/
s/^       \.sass('resources\/assets\/sass\/admin\.sass', 'public\/css\/admin');$/       .sass('resources\/assets\/sass\/admin.sass', 'public\/css\/admin');/
s/^Additional \[Node-Sass plug-in options\](https:\/\/github\.com\/sass\/node-sass#options) may be provided as the third argument:$/さらに、[Node-Sassプラグインオプション](https:\/\/github.com\/sass\/node-sass#options)を第３引数に指定できます。/
s/^    mix\.sass('resources\/assets\/sass\/app\.sass', 'public\/css', {$/    mix.sass('resources\/assets\/sass\/app.sass', 'public\/css', {/
s/^Similar to Less and Sass, the `stylus` method allows you to compile \[Stylus\](http:\/\/stylus-lang\.com\/) into CSS:$/LessやSassと同様に、`stylus`メソッドにより、[Stylus](http:\/\/stylus-lang.com\/)をCSSへコンパイルできます。/
s/^    mix\.stylus('resources\/assets\/stylus\/app\.styl', 'public\/css');$/    mix.stylus('resources\/assets\/stylus\/app.styl', 'public\/css');/
s/^You may also install additional Stylus plug-ins, such as \[Rupture\](https:\/\/github\.com\/jescalan\/rupture)\. First, install the plug-in in question through NPM (`npm install rupture`) and then require it in your call to `mix\.stylus()`:$/さらに、[Rupture](https:\/\/github.com\/jescalan\/rupture)のような、追加のStylusプラグインをインストールすることもできます。最初に、NPM （`npm install rupture`）による質問でプラグインをインストールし、それから`mix.stylus()`の中で呼び出してください。/
s/^    mix\.stylus('resources\/assets\/stylus\/app\.styl', 'public\/css', {$/    mix.stylus('resources\/assets\/stylus\/app.styl', 'public\/css', {/
s/^        use: \[$/        use: [/
s/^        \]$/        ]/
s/^\[PostCSS\](http:\/\/postcss\.org\/), a powerful tool for transforming your CSS, is included with Laravel Mix out of the box\. By default, Mix leverages the popular \[Autoprefixer\](https:\/\/github\.com\/postcss\/autoprefixer) plug-in to automatically apply all necessary CSS3 vendor prefixes\. However, you're free to add any additional plug-ins that are appropriate for your application\. First, install the desired plug-in through NPM and then reference it in your `webpack\.mix\.js` file:$/強力なCSS加工ツールである[PostCSS](http:\/\/postcss.org\/)も、Laravel Mixには最初から含まれています。デフォルトでは、自動的に必要なCSS3ベンダープレフィックスを適用する、人気の[Autoprefixer](https:\/\/github.com\/postcss\/autoprefixer)プラグインを利用します。しかし、アプリケーションに適したプラグインを自由に追加できます。最初に、NPMにより希望のプラグインをインストールし、それから`webpack.mix.js`の中から参照してください。/
s/^    mix\.sass('resources\/assets\/sass\/app\.scss', 'public\/css')$/    mix.sass('resources\/assets\/sass\/app.scss', 'public\/css')/
s/^       \.options({$/       .options({/
s/^            postCss: \[$/            postCss: [/
s/^            \]$/            ]/
s/^### Plain CSS$/### 平文CSS/
s/^If you would just like to concatenate some plain CSS stylesheets into a single file, you may use the `styles` method\.$/平文のCSSスタイルシートを一つのファイルへ結合したい場合は、`styles`メソッドを使って下さい。/
s/^    mix\.styles(\[$/    mix.styles([/
s/^        'public\/css\/vendor\/normalize\.css',$/        'public\/css\/vendor\/normalize.css',/
s/^        'public\/css\/vendor\/videojs\.css'$/        'public\/css\/vendor\/videojs.css'/
s/^    \], 'public\/css\/all\.css');$/    ], 'public\/css\/all.css');/
s/^### URL Processing$/### URL処理/
s/^Because Laravel Mix is built on top of Webpack, it's important to understand a few Webpack concepts\. For CSS compilation, Webpack will rewrite and optimize any `url()` calls within your stylesheets\. While this might initially sound strange, it's an incredibly powerful piece of functionality\. Imagine that we want to compile Sass that includes a relative URL to an image:$/Laravel MixはWebpack上に構築されているため、Webpackのコンセプトを理解することが重要です。CSSコンパイルのため、Webpackはスタイルシート中の`url()`呼び出しをリライトし、最適化します。最初は奇妙に聴こえるかもしれませんが、これは非常に強力な機能の一部です。画像への相対URLを含んだSassをコンパイルするのを想像してください。/
s/^    \.example {$/    .example {/
s/^        background: url('\.\.\/images\/example\.png');$/        background: url('..\/images\/example.png');/
s/^> {note} Absolute paths for any given `url()` will be excluded from URL-rewriting\. For example, `url('\/images\/thing\.png')` or `url('http:\/\/example\.com\/images\/thing\.png')` won't be modified\.$/> {note} 絶対パスを`url()`へ指定しても、URL書き換えの対象外になります。たとえば、`url('\/images\/thing.png')`や、`url('http:\/\/example.com\/images\/thing.png')`は変更されません。/
s/^By default, Laravel Mix and Webpack will find `example\.png`, copy it to your `public\/images` folder, and then rewrite the `url()` within your generated stylesheet\. As such, your compiled CSS will be:$/デフォルト動作として、Laravel MixとWebpackが`example.png`を見つけると、それを`public\/images`フォルダへコピーします。それから、生成したスタイルシート中の`url()`を書き換えます。/
s/^    \.example {$/    .example {/
s/^      background: url(\/images\/example\.png?d41d8cd98f00b204e9800998ecf8427e);$/      background: url(\/images\/example.png?d41d8cd98f00b204e9800998ecf8427e);/
s/^As useful as this feature may be, it's possible that your existing folder structure is already configured in a way you like\. If this is the case, you may disable `url()` rewriting like so:$/この機能は便利ですが、好きなようにフォルダ構造を設定することもできます。その場合、以下のように`url()`リライトを停止してください。/
s/^    mix\.sass('resources\/assets\/app\/app\.scss', 'public\/css')$/    mix.sass('resources\/assets\/app\/app.scss', 'public\/css')/
s/^       \.options({$/       .options({/
s/^With this addition to your `webpack\.mix\.js` file, Mix will no longer match any `url()` or copy assets to your public directory\. In other words, the compiled CSS will look just like how you originally typed it:$/これを`webpack.mix.js`ファイルへ追加することで、Mixはどんな`url()`に一致することも、publicディレクトリへアセットをコピーすることもしなくなります。言い換えれば、コンパイル済みのCSSは、みなさんがタイプした内容そのままに見えるでしょう。/
s/^    \.example {$/    .example {/
s/^        background: url("\.\.\/images\/thing\.png");$/        background: url("..\/images\/thing.png");/
s/^### Source Maps$/### ソースマップ/
s/^Though disabled by default, source maps may be activated by calling the `mix\.sourceMaps()` method in your `webpack\.mix\.js` file\. Though it comes with a compile\/performance cost, this will provide extra debugging information to your browser's developer tools when using compiled assets\.$/デフォルトでは無効になっているため、`webpack.mix.js`ファイルで`mix.sourceMaps()`を呼び出すことで、ソースマップは有効になります。コンパイルコストと実行パフォーマンスコストはかかりますが、これによりコンパイル済みアセットを使用する時に、ブラウザの開発ツール向けの追加デバッグ情報が提供されます。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js')$/    mix.js('resources\/assets\/js\/app.js', 'public\/js')/
s/^       \.sourceMaps();$/       .sourceMaps();/
s/^## Working With JavaScript$/## JavaScriptの操作/
s/^Mix provides several features to help you work with your JavaScript files, such as compiling ECMAScript 2015, module bundling, minification, and concatenating plain JavaScript files\. Even better, this all works seamlessly, without requiring an ounce of custom configuration:$/MixはECMAScript 2015のコンパイル、モジュール結合、圧縮やJavaScriptファイルの結合などの操作を手助けする、多くの機能を提供しています。それだけでなく、設定をカスタマイズする必要は全く無く、全てがシームレスに動作します。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js');$/    mix.js('resources\/assets\/js\/app.js', 'public\/js');/
s/^With this single line of code, you may now take advantage of:$/このコード一行で、以下の利点を享受できます。/
s/^- ES2015 syntax\.$/- ES2015記法/
s/^- Modules$/- モジュール/
s/^- Compilation of `\.vue` files\.$/- `.vue`ファイルのコンパイル/
s/^- Minification for production environments\.$/- 開発環境向けに圧縮/
s/^### Vendor Extraction$/### ベンダの抽出/
s/^One potential downside to bundling all application-specific JavaScript with your vendor libraries is that it makes long-term caching more difficult\. For example, a single update to your application code will force the browser to re-download all of your vendor libraries even if they haven't changed\.$/全てのアプリケーション固有のJavaScriptとベンダーライブラリを結合することにより、発生する可能性がある欠点は、長期間のキャッシュが効きづらくなることです。たとえば、アプリケーションコードの一箇所を更新すれば、変更のないベンダーライブラリーの全てを再度ダウンロードするように、ブラウザに共用することになります。/
s/^If you intend to make frequent updates to your application's JavaScript, you should consider extracting all of your vendor libraries into their own file\. This way, a change to your application code will not affect the caching of your large `vendor\.js` file\. Mix's `extract` method makes this a breeze:$/アプリケーションのJavaScriptを頻繁に更新したい場合は、全ベンダーライブラリを専用のファイルへ分ける方法を考慮する必要があります。これにより、アプリケーションコードの変更は、大きな`vendor.js`ファイルのキャッシュへ影響しなくなります。Mixの`extract`メソッドで簡単に実現できます。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js')$/    mix.js('resources\/assets\/js\/app.js', 'public\/js')/
s/^       \.extract(\['vue'\])$/       .extract(['vue'])/
s/^The `extract` method accepts an array of all libraries or modules that you wish to extract into a `vendor\.js` file\. Using the above snippet as an example, Mix will generate the following files:$/`extract`メソッドは全ライブラリとモジュールの配列を受け取り、`vendor.js`へ別にまとめます。上記のコードを例にすると、Mix配下のファイルを生成します。/
s/^- `public\/js\/manifest\.js`: \*The Webpack manifest runtime\*$/- `public\/js\/manifest.js`: **Webpackマニフェストランタイム**/
s/^- `public\/js\/vendor\.js`: \*Your vendor libraries\*$/- `public\/js\/vendor.js`: **ベンダーライブラリ**/
s/^- `public\/js\/app\.js`: \*Your application code\*$/- `public\/js\/app.js`: **アプリケーションコード**/
s/^To avoid JavaScript errors, be sure to load these files in the proper order:$/JavaScriptエラーを起こさないために、以下のファイルは順番通りにロードしてください。/
s/^    <script src="\/js\/manifest\.js"><\/script>$/    <script src="\/js\/manifest.js"><\/script>/
s/^    <script src="\/js\/vendor\.js"><\/script>$/    <script src="\/js\/vendor.js"><\/script>/
s/^    <script src="\/js\/app\.js"><\/script>$/    <script src="\/js\/app.js"><\/script>/
s/^Mix can automatically install the Babel plug-ins necessary for React support\. To get started, replace your `mix\.js()` call with `mix\.react()`:$/MixはReactをサポートするために、Babelプラグインを自動的にインストールします。使用開始するためには、`mix.js()`の呼び出しを`mix.react()`に置換してください。/
s/^    mix\.react('resources\/assets\/js\/app\.jsx', 'public\/js');$/    mix.react('resources\/assets\/js\/app.jsx', 'public\/js');/
s/^Behind the scenes, Mix will download and include the appropriate `babel-preset-react` Babel plug-in\.$/実際には、Mixは最適なBabelプラグインとして`babel-preset-react`をダウンロードし、取り込んでいます。/
s/^### Vanilla JS$/### バニラJS/
s/^Similar to combining stylesheets with `mix\.styles()`, you may also combine and minify any number of JavaScript files with the `scripts()` method:$/スタイルシートを`mix.styles()`により結合するのと同様に、多くのJavaScriptファイルを`scripts()`メソッドで結合し、圧縮できます。/
s/^    mix\.scripts(\[$/    mix.scripts([/
s/^        'public\/js\/admin\.js',$/        'public\/js\/admin.js',/
s/^        'public\/js\/dashboard\.js'$/        'public\/js\/dashboard.js'/
s/^    \], 'public\/js\/all\.js');$/    ], 'public\/js\/all.js');/
s/^This option is particularly useful for legacy projects where you don't require Webpack compilation for your JavaScript\.$/この選択肢は特にWebpackによる操作を必要としないレガシープロジェクトに便利です。/
s/^> {tip} A slight variation of `mix\.scripts()` is `mix\.babel()`\. Its method signature is identical to `scripts`; however, the concatenated file will receive Babel compilation, which translates any ES2015 code to vanilla JavaScript that all browsers will understand\.$/> {tip} `mix.scripts()`のちょっとしたバリエーションとして`mix.babel()`があります。このメソッドは`scripts`と同じ使い方です。しかし、結合したファイルはBabelにより編集され、ES2015コードを全てのブラウザーが理解できるバニラJavaScriptへ変換します。/
s/^### Custom Webpack Configuration$/### Webpackカスタム設定/
s/^Behind the scenes, Laravel Mix references a pre-configured `webpack\.config\.js` file to get you up and running as quickly as possible\. Occasionally, you may need to manually modify this file\. You might have a special loader or plug-in that needs to be referenced, or maybe you prefer to use Stylus instead of Sass\. In such instances, you have two choices:$/Laravel Mixはできるだけ素早く実行できるように、裏で事前に設定済みの`webpack.config.js`ファイルを参照しています。時々、このファイルを変更する必要が起きるでしょう。参照する必要がある特別なローダやプラグインがあったり、Sassの代わりにStylusを使うのが好みであるかもしれません。そうした場合、２つの選択肢があります。/
s/^#### Merging Custom Configuration$/#### カスタム設定のマージ/
s/^Mix provides a useful `webpackConfig` method that allows you to merge any short Webpack configuration overrides\. This is a particularly appealing choice, as it doesn't require you to copy and maintain your own copy of the `webpack\.config\.js` file\. The `webpackConfig` method accepts an object, which should contain any \[Webpack-specific configuration\](https:\/\/webpack\.js\.org\/configuration\/) that you wish to apply\.$/Mixはオーバーライドする短いWebpack設定をマージできるように、便利な`webpackConfig`メソッドを提供しています。これは、`webpack.config.js`ファイルをコピーし、独自バージョンをメンテナンスする必要がないため、やや魅力的な選択しです。`webpackConfig`メソッドは、適用したい[Webpack限定設定](https:\/\/webpack.js.org\/configuration\/)を含むオブジェクトを引数に取ります。/
s/^    mix\.webpackConfig({$/    mix.webpackConfig({/
s/^            modules: \[$/            modules: [/
s/^                path\.resolve(__dirname, 'vendor\/laravel\/spark\/resources\/assets\/js')$/                path.resolve(__dirname, 'vendor\/laravel\/spark\/resources\/assets\/js')/
s/^            \]$/            ]/
s/^#### Custom Configuration Files$/#### カスタム設定ファイル/
s/^If you would like to completely customize your Webpack configuration, copy the `node_modules\/laravel-mix\/setup\/webpack\.config\.js` file to your project's root directory\. Next, point all of the `--config` references in your `package\.json` file to the newly copied configuration file\. If you choose to take this approach to customization, any future upstream updates to Mix's `webpack\.config\.js` must be manually merged into your customized file\.$/Webpack設定をすべてカスタマイズしたい場合は、`node_modules\/laravel-mix\/setup\/webpack.config.js`をプロジェクトのルートディレクトリへコピーしてください。次に、`package.json`ファイル中の`--config`参照を全て新しくコピーした設定ファイルに変更します。カスタマイズにこのアプローチを取る場合は、Mixの`webpack.config.js`に対するアップストリームの機能変更を自分でカスタマイズするファイルへマージする必要があります。/
s/^## Copying Files & Directories$/## ファイル／ディレクトリコピー/
s/^The `copy` method may be used to copy files and directories to new locations\. This can be useful when a particular asset within your `node_modules` directory needs to be relocated to your `public` folder\.$/`copy`メソッドは、ファイルやディレクトリを新しい場所へコピーします。これは`node_modules`ディレクトリ中の特定のアセットを`public`フォルダへ再配置する必要がある場合に便利です。/
s/^    mix\.copy('node_modules\/foo\/bar\.css', 'public\/css\/bar\.css');$/    mix.copy('node_modules\/foo\/bar.css', 'public\/css\/bar.css');/
s/^When copying a directory, the `copy` method will flatten the directory's structure\. To maintain the directory's original structure, you should use the `copyDirectory` method instead:$/ディレクトリのコピー時は、`copy`メソッドはディレクトリ構造をフラットにします。元の構造を保持したい場合は、`copyDirectory`メソッドを代わりに使用してください。/
s/^    mix\.copyDirectory('assets\/img', 'public\/img');$/    mix.copyDirectory('assets\/img', 'public\/img');/
s/^## Versioning \/ Cache Busting$/## バージョン付け／キャッシュ対策/
s/^Many developers suffix their compiled assets with a timestamp or unique token to force browsers to load the fresh assets instead of serving stale copies of the code\. Mix can handle this for you using the `version` method\.$/多くの開発者は古いコードが提供され続けないように、新しいアセットがブラウザにロードされるよう、タイムスタンプやユニークなトークンをコンパイル済みのアセットへサフィックスとして付加しています。Mixでは、`version`メソッドを使用し、これを処理できます。/
s/^The `version` method will generate unique hashes for all of your compiled files and use this hash when including the file from your templates\. In other words, this provides a convenient, built-in "cache busting" mechanism:$/`version`メソッドは、全コンパイル済みファイルへ一意のハッシュを生成し、テンプレートからファイルを取り込む場合にこのハッシュを使用します。言い換えれば、これは組み込み済みの便利な「キャッシュ破壊」メカニズムです。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js')$/    mix.js('resources\/assets\/js\/app.js', 'public\/js')/
s/^       \.sass('resources\/assets\/sass\/app\.scss', 'public\/css')$/       .sass('resources\/assets\/sass\/app.scss', 'public\/css')/
s/^       \.version();$/       .version();/
s/^After generating the versioned file, you should use Laravel's global `mix` function within your \[views\](\/docs\/{{version}}\/views) to generate the appropriately versioned asset URL:$/バージョン付されたファイルを生成した後は、適切にバージョン付けされたアセットのURLを生成するため、Laravelのグローバル`mix`関数を[ビュー](\/docs\/{{version}}\/views)の中で使用してください。/
s/^    <link rel="stylesheet" href="{{ mix('\/css\/app\.css') }}">$/    <link rel="stylesheet" href="{{ mix('\/css\/app.css') }}">/
s/^    <script src="{{ mix('\/js\/app\.js') }}"><\/script>$/    <script src="{{ mix('\/js\/app.js') }}"><\/script>/
s/^Because versioned files are usually unnecessary in development, you may instruct the versioning process to only run during `npm run production`:$/バージョン付けしたファイルは、通常開発に必要ないため、`npm run production`を実行するときのみ、バージョン付けするように指示したいと思うでしょう。/
s/^    mix\.js('resources\/assets\/js\/app\.js', 'public\/js');$/    mix.js('resources\/assets\/js\/app.js', 'public\/js');/
s/^    if (mix\.inProduction()) {$/    if (mix.inProduction()) {/
s/^        mix\.version();$/        mix.version();/
s/^## Browsersync Reloading$/## Browsersyncリロード/
s/^\[BrowserSync\](https:\/\/browsersync\.io\/) can automatically monitor your files for changes, and inject your changes into the browser without requiring a manual refresh\. You may enable support by calling the `mix\.browserSync()` method:$/[BrowserSync](https:\/\/browsersync.io\/)は自動的にファイルの変更を監視し、手動で再読込しなくても変更をブラウザに反映してくれます。`mix.browserSync()`メソッドを呼び出し、有効にします。/
s/^    mix\.browserSync('my-domain\.test');$/    mix.browserSync('my-domain.test');/
s/^    \/\/ Or\.\.\.$/    \/\/ もしくは/
s/^    \/\/ https:\/\/browsersync\.io\/docs\/options$/    \/\/ https:\/\/browsersync.io\/docs\/options/
s/^    mix\.browserSync({$/    mix.browserSync({/
s/^        proxy: 'my-domain\.test'$/        proxy: 'my-domain.test'/
s/^You may pass either a string (proxy) or object (BrowserSync settings) to this method\. Next, start Webpack's dev server using the `npm run watch` command\. Now, when you modify a script or PHP file, watch as the browser instantly refreshes the page to reflect your changes\.$/このメソッドには文字列（プロキシ）かオブジェクト（BrowserSync設定）のどちらかを渡します。次に、`npm run watch`コマンドにより、Webpackの開発サーバを起動します。これでスクリプトかPHPファイルを変更すると、すぐにページが再読込され、変更が反映されるのを目にするでしょう。/
s/^## Environment Variables$/## 環境変数/
s/^You may inject environment variables into Mix by prefixing a key in your `\.env` file with `MIX_`:$/`.env`ファイルの中でキーに`MIX_`をプリフィックスとしてつけることで、環境変数をMixへ注入できます。/
s/^    MIX_SENTRY_DSN_PUBLIC=http:\/\/example\.com$/    MIX_SENTRY_DSN_PUBLIC=http:\/\/example.com/
s/^After the variable has been defined in your `\.env` file, you may access via the `process\.env` object\. If the value changes while you are running a `watch` task, you will need to restart the task:$/`.env`ファイルで定義すると、`process.env`オブジェクトを通じてアクセスできるようになります。`watch`タスク実行中に、その値が変化した場合は、タスクを再起動する必要があります。/
s/^    process\.env\.MIX_SENTRY_DSN_PUBLIC$/    process.env.MIX_SENTRY_DSN_PUBLIC/
s/^## Notifications$/## 通知/
s/^When available, Mix will automatically display OS notifications for each bundle\. This will give you instant feedback, as to whether the compilation was successful or not\. However, there may be instances when you'd prefer to disable these notifications\. One such example might be triggering Mix on your production server\. Notifications may be deactivated, via the `disableNotifications` method\.$/可能な場合、Mixは自動的に各バンドルをＯＳ通知で表示します。これにより、コンパイルが成功したのか、失敗したのか、即座にフィードバックが得られます。しかし、こうした通知を無効にしたい場合もあるでしょう。一例は、実働サーバでMixを起動する場合です。`disableNotifications`メソッドにより、通知を無効にできます。/
s/^    mix\.disableNotifications();$/    mix.disableNotifications();/
