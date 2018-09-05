s/^# Deployment$/# デプロイ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Server Configuration\](#server-configuration)$/- [サーバ設定](#server-configuration)/
s/^    - \[Nginx\](#nginx)$/    - [Nginx](#nginx)/
s/^- \[Optimization\](#optimization)$/- [最適化](#optimization)/
s/^    - \[Autoloader Optimization\](#autoloader-optimization)$/    - [オートローダー最適化](#autoloader-optimization)/
s/^    - \[Optimizing Configuration Loading\](#optimizing-configuration-loading)$/    - [設定ロードの最適化](#optimizing-configuration-loading)/
s/^    - \[Optimizing Route Loading\](#optimizing-route-loading)$/    - [ルートロードの最適化](#optimizing-route-loading)/
s/^- \[Deploying With Forge\](#deploying-with-forge)$/- [Forgeによるデプロイ](#deploying-with-forge)/
s/^## Introduction$/## イントロダクション/
s/^When you're ready to deploy your Laravel application to production, there are some important things you can do to make sure your application is running as efficiently as possible\. In this document, we'll cover some great starting points for making sure your Laravel application is deployed properly\.$/Laravelアプリケーションをプロダクションとしてデプロイする準備ができたら、アプリケーションをできるだけ確実かつ、効率的な実行を行うには、いくつか重要な手順を行う必要があります。このドキュメントでは、アプリケーションを確実にデプロイするため、重要なポイントを説明します。/
s/^## Server Configuration$/## サーバ設定/
s/^If you are deploying your application to a server that is running Nginx, you may use the following configuration file as a starting point for configuring your web server\. Most likely, this file will need to be customized depending on your server's configuration\. If you would like assistance in managing your server, consider using a service such as \[Laravel Forge\](https:\/\/forge\.laravel\.com):$/Nginxを実行しているサーバにアプリケーションをデプロイするには、Webサーバの設定として以下の設定ファイルが最初の参考となるでしょう。ほとんどの設定と同様に、このファイルはサーバの設定に合わせてカスタマイズする必要が起きるでしょう。サーバ管理のアシスタントが欲しい場合は、[Laravel Forge](https:\/\/forge.laravel.com)のようなサービスの使用を考慮してください。/
s/^        server_name example\.com;$/        server_name example.com;/
s/^        root \/example\.com\/public;$/        root \/example.com\/public;/
s/^        index index\.html index\.htm index\.php;$/        index index.html index.htm index.php;/
s/^            try_files $uri $uri\/ \/index\.php?$query_string;$/            try_files $uri $uri\/ \/index.php?$query_string;/
s/^        location = \/favicon\.ico { access_log off; log_not_found off; }$/        location = \/favicon.ico { access_log off; log_not_found off; }/
s/^        location = \/robots\.txt  { access_log off; log_not_found off; }$/        location = \/robots.txt  { access_log off; log_not_found off; }/
s/^        error_page 404 \/index\.php;$/        error_page 404 \/index.php;/
s/^        location ~ \\\.php$ {$/        location ~ \\.php$ {/
s/^            fastcgi_split_path_info ^(\.\+\\\.php)(\/\.\+)$;$/            fastcgi_split_path_info ^(.+\\.php)(\/.+)$;/
s/^            fastcgi_pass unix:\/var\/run\/php\/php7\.1-fpm\.sock;$/            fastcgi_pass unix:\/var\/run\/php\/php7.1-fpm.sock;/
s/^            fastcgi_index index\.php;$/            fastcgi_index index.php;/
s/^        location ~ \/\\\.(?!well-known)\.\* {$/        location ~ \/\\.(?!well-known).* {/
s/^## Optimization$/## 最適化/
s/^### Autoloader Optimization$/### オートローダー最適化/
s/^When deploying to production, make sure that you are optimizing Composer's class autoloader map so Composer can quickly find the proper file to load for a given class:$/プロダクションへデプロイする場合、Composerのクラスオートローダマップを最適し、Composerが素早く指定されたクラスのファイルを確実に見つけ、ロードできるようにします。/
s/^> {tip} In addition to optimizing the autoloader, you should always be sure to include a `composer\.lock` file in your project's source control repository\. Your project's dependencies can be installed much faster when a `composer\.lock` file is present\.$/> {tip} オートローダを最適化することに加え、プロジェクトのソースコントロールリポジトリへ、`composer.lock`ファイルをいつも確実に含めましょう。`composer.lock`ファイルが存在すると、プロジェクトの依存パッケージのインストールが、より早くなります。/
s/^### Optimizing Configuration Loading$/### 設定ローディングの最適化/
s/^When deploying your application to production, you should make sure that you run the `config:cache` Artisan command during your deployment process:$/アプリケーションをプロダクションへデプロイする場合、デプロイプロセスの中で、確実に`config:cache` Artisanコマンドを実行してください。/
s/^This command will combine all of Laravel's configuration files into a single, cached file, which greatly reduces the number of trips the framework must make to the filesystem when loading your configuration values\.$/このコマンドは、Laravelの全設定ファイルをキャッシュされる一つのファイルへまとめるため、設定値をロードする場合に、フレームワークがファイルシステムを数多くアクセスする手間を大いに減らします。/
s/^> {note} If you execute the `config:cache` command during your deployment process, you should be sure that you are only calling the `env` function from within your configuration files\. Once the configuration has been cached, the `\.env` file will not be loaded and all calls to the `env` function will return `null`\.$/> {note} 開発時に`config:cache`コマンドを実行する場合は、設定ファイルの中だけで、`env`関数を呼び出していることを確認してください。設定ファイルがキャッシュされてしまうと、`.env`ファイルはロードされなくなり、`env`関数の呼び出し結果は全て`null`になります。/
s/^### Optimizing Route Loading$/### ルートロードの最適化/
s/^If you are building a large application with many routes, you should make sure that you are running the `route:cache` Artisan command during your deployment process:$/多くのルートを持つ大きなアプリケーションを構築した場合、デプロイプロセス中に、`route:cache` Artisanコマンドを確実に実行すべきでしょう。/
s/^This command reduces all of your route registrations into a single method call within a cached file, improving the performance of route registration when registering hundreds of routes\.$/このコマンドはキャッシュファイルの中の、一つのメソッド呼び出しへ全ルート登録をまとめるため、数百のルートを登録する場合、ルート登録のパフォーマンスを向上します。/
s/^> {note} Since this feature uses PHP serialization, you may only cache the routes for applications that exclusively use controller based routes\. PHP is not able to serialize Closures\.$/> {note} この機能はPHPのシリアライゼーション機能を使用するため、アプリケーションの全ルートをキャッシュするには、コントローラベースのルート定義だけを使用してください。PHPはクロージャをシリアライズできません。/
s/^## Deploying With Forge$/## Forgeによるデプロイ/
s/^If you aren't quite ready to manage your own server configuration or aren't comfortable configuring all of the various services needed to run a robust Laravel application, \[Laravel Forge\](https:\/\/forge\.laravel\.com) is a wonderful alternative\.$/自分のサーバ設定管理に準備不足であったり、堅牢なLaravelアプリケーション実行に必要な数多くのサービス全ての設定について慣れていなければ、[Laravel Forge](https:\/\/forge.laravel.com)は素晴らしい代替案です。/
s/^Laravel Forge can create servers on various infrastructure providers such as DigitalOcean, Linode, AWS, and more\. In addition, Forge installs and manages all of the tools needed to build robust Laravel applications, such as Nginx, MySQL, Redis, Memcached, Beanstalk, and more\.$/Laravel ForgeはDigitalOcean、Linode、AWSなど数多くのインフラプロバイダー上に、サーバを作成できます。それに加え、ForgeはNginx、MySQL、Redis、Memcached、Beanstalkなどのような、堅牢なLaravelアプリケーションを構築するために必要なツールを全てインストールし、管理します。/
