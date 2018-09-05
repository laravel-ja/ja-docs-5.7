s/^# Installation$/# インストール/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Server Requirements\](#server-requirements)$/    - [サーバ要件](#server-requirements)/
s/^    - \[Installing Laravel\](#installing-laravel)$/    - [Laravelのインストール](#installing-laravel)/
s/^    - \[Configuration\](#configuration)$/    - [設定](#configuration)/
s/^- \[Web Server Configuration\](#web-server-configuration)$/- [Webサーバ設定](#web-server-configuration)/
s/^    - \[Pretty URLs\](#pretty-urls)$/    - [きれいなURL](#pretty-urls)/
s/^## Installation$/## インストール/
s/^> {video} Laracasts provides a \[free, thorough introduction to Laravel\](http:\/\/laravelfromscratch\.com) for newcomers to the framework\. It's a great place to start your journey\.$/> {video} Laracastsはフレームワーク初心者のために、[無料でLaravelの全体に渡るイントロダクション](http:\/\/laravelfromscratch.com)を提供しています。学習を始めるには最適の場所です。/
s/^### Server Requirements$/### サーバ要件/
s/^The Laravel framework has a few system requirements\. Of course, all of these requirements are satisfied by the \[Laravel Homestead\](\/docs\/{{version}}\/homestead) virtual machine, so it's highly recommended that you use Homestead as your local Laravel development environment\.$/Laravelフレームワークを動作させるには多少のシステム要件があります。もちろん、[Laravel Homestead](\/docs\/{{version}}\/homestead)仮想マシンでは、要求が全て満たされています。ですから、Laravelのローカル開発環境としてHomesteadを活用されることを強くおすすめします。/
s/^However, if you are not using Homestead, you will need to make sure your server meets the following requirements:$/しかし、Homesteadを使用しない場合は、以下の要件を満たす必要があります。/
s/^- PHP >= 7\.1\.3$/- PHP >= 7.1.3/
s/^- OpenSSL PHP Extension$/- OpenSSL PHP拡張/
s/^- PDO PHP Extension$/- PDO PHP拡張/
s/^- Mbstring PHP Extension$/- Mbstring PHP拡張/
s/^- Tokenizer PHP Extension$/- Tokenizer PHP拡張/
s/^- XML PHP Extension$/- XML PHP拡張/
s/^### Installing Laravel$/### Laravelのインストール/
s/^Laravel utilizes \[Composer\](https:\/\/getcomposer\.org) to manage its dependencies\. So, before using Laravel, make sure you have Composer installed on your machine\.$/Laravelは[Composer](https:\/\/getcomposer.org)を依存パッケージの管理に使用しています。ですから、Laravelを始める前に、自分の開発機にComposerを確実にインストールしておいてください。/
s/^#### Via Laravel Installer$/#### Laravelインストーラ/
s/^First, download the Laravel installer using Composer:$/最初にComposerを使用し、Laravelインストーラをダウンロードします。/
s/^Make sure to place composer's system-wide vendor bin directory in your `$PATH` so the laravel executable can be located by your system\. This directory exists in different locations based on your operating system; however, some common locations include:$/皆さんのシステムの、どこへlaravel実行ファイルが設置されても動作するように、グローバルなComposerのbinディレクトリを`$PATH`へ登録してください。このディレクトリはオペレーティングシステムにより場所が異なります。通常は、以下の場所です。/
s/^- macOS: `$HOME\/\.composer\/vendor\/bin`$/- macOS: `$HOME\/.composer\/vendor\/bin`/
s/^- GNU \/ Linux Distributions: `$HOME\/\.config\/composer\/vendor\/bin`$/- GNU \/ Linux Distributions: `$HOME\/.config\/composer\/vendor\/bin`/
s/^Once installed, the `laravel new` command will create a fresh Laravel installation in the directory you specify\. For instance, `laravel new blog` will create a directory named `blog` containing a fresh Laravel installation with all of Laravel's dependencies already installed:$/インストールし終えたら、`laravel new`コマンドにより、指定したディレクトリに真新しいLaravelプロジェクトを作成できます。例えば、`laravel new blog`を実行すると、`blog`という名前のディレクトへ、必要とするパッケージが全部揃った、真新しいLaravelがインストールされます。/
s/^#### Via Composer Create-Project$/#### Composer Create-Project/
s/^Alternatively, you may also install Laravel by issuing the Composer `create-project` command in your terminal:$/ターミナルでComposerの`create-project`コマンドを実行し、Laravelをインストールする方法もあります。/
s/^    composer create-project --prefer-dist laravel\/laravel blog "5\.6\.\*"$/    composer create-project --prefer-dist laravel\/laravel blog "5.6.*"/
s/^#### Local Development Server$/#### ローカル開発サーバ/
s/^If you have PHP installed locally and you would like to use PHP's built-in development server to serve your application, you may use the `serve` Artisan command\. This command will start a development server at `http:\/\/localhost:8000`:$/PHPがローカルにインストール済みで、PHPの組込み開発サーバをアプリケーションサーバとして使いたい場合は、`serve` Artisanコマンドを使用します。このコマンドは、開発サーバを`http:\/\/localhost:8000`として起動します。/
s/^Of course, more robust local development options are available via \[Homestead\](\/docs\/{{version}}\/homestead) and \[Valet\](\/docs\/{{version}}\/valet)\.$/もちろん、より堅牢なローカル開発の選択肢として、[Homestead](\/docs\/{{version}}\/homestead)と[Valet](\/docs\/{{version}}\/valet)も利用できます。/
s/^### Configuration$/### 設定/
s/^#### Public Directory$/#### Publicディレクトリ/
s/^After installing Laravel, you should configure your web server's document \/ web root to be the `public` directory\. The `index\.php` in this directory serves as the front controller for all HTTP requests entering your application\.$/Laravelをインストールできたら、Webサーバのドキュメント／Webルートが`public`ディレクトリになるように設定してください。このディレクトリの`index.php`は、アプリケーションへ送信された、全HTTPリクエストを始めに処理するフロントコントローラとして動作します。/
s/^#### Configuration Files$/#### 設定ファイル/
s/^All of the configuration files for the Laravel framework are stored in the `config` directory\. Each option is documented, so feel free to look through the files and get familiar with the options available to you\.$/フレームワークで使用する設定ファイルは全て`config`ディレクトリ下に設置しています。それぞれのオプションにコメントがついていますので、使用可能なオプションを理解するため、ファイル全体に目を通しておくのが良いでしょう。/
s/^#### Directory Permissions$/#### ディレクトリパーミッション/
s/^After installing Laravel, you may need to configure some permissions\. Directories within the `storage` and the `bootstrap\/cache` directories should be writable by your web server or Laravel will not run\. If you are using the \[Homestead\](\/docs\/{{version}}\/homestead) virtual machine, these permissions should already be set\.$/Laravelをインストールした後に、多少のパーミッションの設定が必要です。`storage`下と`bootstrap\/cache`ディレクトリをWebサーバから書き込み可能にしてください。設定しないとLaravelは正しく実行されません。[Homestead](\/docs\/{{version}}\/homestead)仮想マシンを使用する場合は、あらかじめ設定されています。/
s/^#### Application Key$/#### アプリケーションキー/
s/^The next thing you should do after installing Laravel is set your application key to a random string\. If you installed Laravel via Composer or the Laravel installer, this key has already been set for you by the `php artisan key:generate` command\.$/次にインストール後に行うべきなのは、アプリケーションキーにランダムな文字列を設定することです。ComposerかLaravelインストーラを使ってインストールしていれば、`php artisan key:generate`コマンドにより、既に設定されています。/
s/^Typically, this string should be 32 characters long\. The key can be set in the `\.env` environment file\. If you have not renamed the `\.env\.example` file to `\.env`, you should do that now\. \*\*If the application key is not set, your user sessions and other encrypted data will not be secure!\*\*$/通常、この文字列は３２文字にすべきです。キーは`.env`環境ファイルに設定されます。もし、`.env.example`ファイルをまだ`.env`にリネームしていなければ、今すぐ行ってください。**アプリケーションキーが設定されていなければ、ユーザーセッションや他の暗号化済みデーターは安全ではありません！**/
s/^#### Additional Configuration$/#### その他の設定/
s/^Laravel needs almost no other configuration out of the box\. You are free to get started developing! However, you may wish to review the `config\/app\.php` file and its documentation\. It contains several options such as `timezone` and `locale` that you may wish to change according to your application\.$/Laravelのその他の設定は、最初に指定する必要がありません。すぐに開発を開始しても大丈夫です！　しかし、`config\/app.php`ファイルと、その中の記述を確認しておいたほうが良いでしょう。アプリケーションに合わせ変更したい、`timezone`や`local`のような多くのオプションが含まれています。/
s/^You may also want to configure a few additional components of Laravel, such as:$/以下のようなLaravelのコンポーネントについても、設定しておいたほうが良いでしょう。/
s/^- \[Cache\](\/docs\/{{version}}\/cache#configuration)$/- [キャッシュ](\/docs\/{{version}}\/cache#configuration)/
s/^- \[Database\](\/docs\/{{version}}\/database#configuration)$/- [データベース](\/docs\/{{version}}\/database#configuration)/
s/^- \[Session\](\/docs\/{{version}}\/session#configuration)$/- [セッション](\/docs\/{{version}}\/session#configuration)/
s/^## Web Server Configuration$/## Webサーバ設定/
s/^### Pretty URLs$/### きれいなURL/
s/^Laravel includes a `public\/\.htaccess` file that is used to provide URLs without the `index\.php` front controller in the path\. Before serving Laravel with Apache, be sure to enable the `mod_rewrite` module so the `\.htaccess` file will be honored by the server\.$/URLパスにフロントコントローラの`index.php`を付けなくても良いように、Laravelは`public\/.htaccess`ファイルを用意しています。LaravelをApache上で動作させるときは、確実に`mod_rewrite`モジュールを有効に設定し、そのサーバで`.htaccess`ファイルを動作させます。/
s/^If the `\.htaccess` file that ships with Laravel does not work with your Apache installation, try this alternative:$/Laravelに用意されている`.htaccess`ファイルが、インストールしたApacheで動作しない場合は、以下の代替設定を試してください。/
s/^    Options \+FollowSymLinks -Indexes$/    Options +FollowSymLinks -Indexes/
s/^    RewriteRule ^ index\.php \[L\]$/    RewriteRule ^ index.php [L]/
s/^If you are using Nginx, the following directive in your site configuration will direct all requests to the `index\.php` front controller:$/Nginxを使用する場合は、全てのリクエストが`index.php`フロントコントローラへ集まるように、サイト設定に以下のディレクティブを使用します。/
s/^        try_files $uri $uri\/ \/index\.php?$query_string;$/        try_files $uri $uri\/ \/index.php?$query_string;/
s/^Of course, when using \[Homestead\](\/docs\/{{version}}\/homestead) or \[Valet\](\/docs\/{{version}}\/valet), pretty URLs will be automatically configured\.$/もちろん、[Homestead](\/docs\/{{version}}\/homestead)か[Valet](\/docs\/{{version}}\/valet)を使用する場合は、きれいなURLの設定は自動的に行われます。/
