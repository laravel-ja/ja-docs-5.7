s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Valet Or Homestead\](#valet-or-homestead)$/    - [ValetとHomestead](#valet-or-homestead)/
s/^- \[Installation\](#installation)$/- [インストール](#installation)/
s/^    - \[Upgrading\](#upgrading)$/    - [アップグレード](#upgrading)/
s/^- \[Serving Sites\](#serving-sites)$/- [サイト動作](#serving-sites)/
s/^    - \[The "Park" Command\](#the-park-command)$/    - ["Park"コマンド](#the-park-command)/
s/^    - \[The "Link" Command\](#the-link-command)$/    - ["Link"コマンド](#the-link-command)/
s/^    - \[Securing Sites With TLS\](#securing-sites)$/    - [TLSによる安全なサイト](#securing-sites)/
s/^- \[Sharing Sites\](#sharing-sites)$/- [サイトの共有](#sharing-sites)/
s/^- \[Custom Valet Drivers\](#custom-valet-drivers)$/- [カスタムValetドライバ](#custom-valet-drivers)/
s/^    - \[Local Drivers\](#local-drivers)$/    - [ローカルドライバ](#local-drivers)/
s/^- \[Other Valet Commands\](#other-valet-commands)$/- [その他のValetコマンド](#other-valet-commands)/
s/^## Introduction$/## イントロダクション/
s/^Valet is a Laravel development environment for Mac minimalists\. No Vagrant, no `\/etc\/hosts` file\. You can even share your sites publicly using local tunnels\. _Yeah, we like it too\._$/Valet（ベレット：従者）はMacミニマニストのためのLaravel開発環境です。Vagrantも不要、`\/etc\/hosts`ファイルも不要です。更に、ローカルトンネルを使って、サイトを公開し、シェアすることもできます。*ええ、私達はこういうのも好きなんですよね。*/
s/^Laravel Valet configures your Mac to always run \[Nginx\](https:\/\/www\.nginx\.com\/) in the background when your machine starts\. Then, using \[DnsMasq\](https:\/\/en\.wikipedia\.org\/wiki\/Dnsmasq), Valet proxies all requests on the `\*\.test` domain to point to sites installed on your local machine\.$/Laravel Valetはマシン起動時にバックグランドで[Nginx](https:\/\/www.nginx.com\/)がいつも実行されるように、Macを設定します。そのため、[DnsMasq](https:\/\/en.wikipedia.org\/wiki\/Dnsmasq)を使用し、Valetは`*.test`ドメインへの全リクエストを、ローカルマシンへインストールしたサイトへ向けるようにプロキシ動作します。/
s/^In other words, a blazing fast Laravel development environment that uses roughly 7 MB of RAM\. Valet isn't a complete replacement for Vagrant or Homestead, but provides a great alternative if you want flexible basics, prefer extreme speed, or are working on a machine with a limited amount of RAM\.$/言い換えれば、大体7MBのRAMを使う、とても早いLaravelの開発環境です。ValetはVagrantやHomesteadを完全に置き換えるものではありませんが、柔軟な基礎、特にスピード重視であるか、RAMが限られているマシンで動作させるのには、素晴らしい代替になります。/
s/^Out of the box, Valet support includes, but is not limited to:$/Valetは以下をサポートしていますが、これらに限定されません。/
s/^- \[Laravel\](https:\/\/laravel\.com)$/- [Laravel](https:\/\/laravel.com)/
s/^- \[Lumen\](https:\/\/lumen\.laravel\.com)$/- [Lumen](https:\/\/lumen.laravel.com)/
s/^- \[Bedrock\](https:\/\/roots\.io\/bedrock\/)$/- [Bedrock](https:\/\/roots.io\/bedrock\/)/
s/^- \[CakePHP 3\](https:\/\/cakephp\.org)$/- [CakePHP 3](https:\/\/cakephp.org)/
s/^- \[Concrete5\](https:\/\/www\.concrete5\.org\/)$/- [Concrete5](https:\/\/www.concrete5.org\/)/
s/^- \[Contao\](https:\/\/contao\.org\/en\/)$/- [Contao](https:\/\/contao.org\/en\/)/
s/^- \[Craft\](https:\/\/craftcms\.com)$/- [Craft](https:\/\/craftcms.com)/
s/^- \[Drupal\](https:\/\/www\.drupal\.org\/)$/- [Drupal](https:\/\/www.drupal.org\/)/
s/^- \[Jigsaw\](http:\/\/jigsaw\.tighten\.co)$/- [Jigsaw](http:\/\/jigsaw.tighten.co)/
s/^- \[Joomla\](https:\/\/www\.joomla\.org\/)$/- [Joomla](https:\/\/www.joomla.org\/)/
s/^- \[Katana\](https:\/\/github\.com\/themsaid\/katana)$/- [Katana](https:\/\/github.com\/themsaid\/katana)/
s/^- \[Kirby\](https:\/\/getkirby\.com\/)$/- [Kirby](https:\/\/getkirby.com\/)/
s/^- \[Magento\](https:\/\/magento\.com\/)$/- [Magento](https:\/\/magento.com\/)/
s/^- \[OctoberCMS\](https:\/\/octobercms\.com\/)$/- [OctoberCMS](https:\/\/octobercms.com\/)/
s/^- \[Sculpin\](https:\/\/sculpin\.io\/)$/- [Sculpin](https:\/\/sculpin.io\/)/
s/^- \[Slim\](https:\/\/www\.slimframework\.com)$/- [Slim](https:\/\/www.slimframework.com)/
s/^- \[Statamic\](https:\/\/statamic\.com)$/- [Statamic](https:\/\/statamic.com)/
s/^- \[Symfony\](https:\/\/symfony\.com)$/- [Symfony](https:\/\/symfony.com)/
s/^- \[WordPress\](https:\/\/wordpress\.org)$/- [WordPress](https:\/\/wordpress.org)/
s/^- \[Zend\](https:\/\/framework\.zend\.com)$/- [Zend](https:\/\/framework.zend.com)/
s/^However, you may extend Valet with your own \[custom drivers\](#custom-valet-drivers)\.$/独自の[カスタムドライバ](#custom-valet-drivers)でValetを拡張できます。/
s/^### Valet Or Homestead$/### ValetとHomestead/
s/^As you may know, Laravel offers \[Homestead\](\/docs\/{{version}}\/homestead), another local Laravel development environment\. Homestead and Valet differ in regards to their intended audience and their approach to local development\. Homestead offers an entire Ubuntu virtual machine with automated Nginx configuration\. Homestead is a wonderful choice if you want a fully virtualized Linux development environment or are on Windows \/ Linux\.$/ご存知のように、ローカルのLaravel開発環境として[Homestead](\/docs\/{{version}}\/homestead)も用意しています。HomesteadとValetは利用者の目的とローカルの開発についてのアプローチが異なります。Homesteadは自動的にNginx設定を行うUbuntuの完全な仮想マシンを提供しています。HomesteadはLinux開発環境の完全な仮想化を行いたい、もしくはWindows／Linux上で動作させたい場合、素晴らしい選択肢になります。/
s/^Valet only supports Mac, and requires you to install PHP and a database server directly onto your local machine\. This is easily achieved by using \[Homebrew\](http:\/\/brew\.sh\/) with commands like `brew install php` and `brew install mysql`\. Valet provides a blazing fast local development environment with minimal resource consumption, so it's great for developers who only require PHP \/ MySQL and do not need a fully virtualized development environment\.$/ValetはMac上でのみサポートされ、PHPとデータベースサーバを直接ローカルマシンへインストールする必要があります。[Homebrew](http:\/\/brew.sh\/)を利用し、`brew install php`と`brew install mysql`のようなコマンドを実行すれば、簡単にインストールできます。Valetは最低限度のリソースを使い、とても早いローカル開発環境を提供します。そのため、PHPとMySQLだけが必要で、完全な仮想開発環境は必要ない場合にぴったりです。/
s/^Both Valet and Homestead are great choices for configuring your Laravel development environment\. Which one you choose will depend on your personal taste and your team's needs\.$/ValetとHomesteadのどちらを選んでも、Laravelの開発環境に向け設定されており、良い選択になるでしょう。どちらを選ぶかは、自分の好みとチームの必要により決まるでしょう。/
s/^## Installation$/## インストール/
s/^\*\*Valet requires macOS and \[Homebrew\](http:\/\/brew\.sh\/)\. Before installation, you should make sure that no other programs such as Apache or Nginx are binding to your local machine's port 80\.\*\*$/**ValetにはMacオペレーティングシステムと[Homebrew](http:\/\/brew.sh\/)が必要です。インストールする前に、ApacheやNginxのようなローカルマシンの８０番ポートへバインドするプログラムがないことを確認してください。**/
s/^- Install or update \[Homebrew\](http:\/\/brew\.sh\/) to the latest version using `brew update`\.$/- `brew update`で最新バージョンの[Homebrew](http:\/\/brew.sh\/)をインストール、もしくはアップデートしてください。/
s/^- Install PHP 7\.2 using Homebrew via `brew install php@7\.2`\.$/- Homebrewを使い、`brew install php@7.2`でPHP7.2をインストールしてください。/
s/^- Install Valet with Composer via `composer global require laravel\/valet`\. Make sure the `~\/\.composer\/vendor\/bin` directory is in your system's "PATH"\.$/- `composer global require laravel\/valet`でValetをインストールしてください。`~\/.composer\/vendor\/bin`ディレクトリが実行パスに含まれていることを確認してください。/
s/^- Run the `valet install` command\. This will configure and install Valet and DnsMasq, and register Valet's daemon to launch when your system starts\.$/- `valet install`コマンドを実行してください。これによりValetとDnsMasqがインストール／設定され、システム起動時に起動されるValetのデーモンが登録されます。/
s/^Once Valet is installed, try pinging any `\*\.test` domain on your terminal using a command such as `ping foobar\.test`\. If Valet is installed correctly you should see this domain responding on `127\.0\.0\.1`\.$/Valetがインストールできたら、`ping foobar.test`のようなコマンドで、ターミナルから`*.test`ドメインに対してpingを実行してください。Valetが正しくインストールされていれば、このドメインは`127.0.0.1`へ対応していることが分かるでしょう。/
s/^Valet will automatically start its daemon each time your machine boots\. There is no need to run `valet start` or `valet install` ever again once the initial Valet installation is complete\.$/Valetはマシンが起動されると、毎回デーモンを自動的に起動します。Valetが完全にインストールされていれば、`valet start`や`valet install`を再び実行する必要は永久にありません。/
s/^#### Using Another Domain$/#### 他のドメインの使用/
s/^By default, Valet serves your projects using the `\.test` TLD\. If you'd like to use another domain, you can do so using the `valet domain tld-name` command\.$/デフォルトではValetは`.test` TLDをプロジェクトのドメインとして処理します。他のドメインを使いたい場合、`valet domain tld-name`コマンドを使ってください。/
s/^For example, if you'd like to use `\.app` instead of `\.test`, run `valet domain app` and Valet will start serving your projects at `\*\.app` automatically\.$/たとえば、`.test`の代わりに`.app`を使用したければ、`valet domain app`と実行します。Valetは`*.app`をプロジェクトのために自動的に使い始めます。/
s/^#### Database$/#### データベース/
s/^If you need a database, try MySQL by running `brew install mysql@5\.7` on your command line\. Once MySQL has been installed, you may start it using the `brew services start mysql` command\. You can then connect to the database at `127\.0\.0\.1` using the `root` username and an empty string for the password\.$/データベースを使いたい場合、コマンドラインで`brew install mysql@5.7`を実行し、MySQLを試してください。MySQLがインストールできたら、`brew services start mysql`コマンドを使い、起動します。`127.0.0.1`でデータベースに接続し、ユーザー名は`root`、パスワードは空文字列です。/
s/^### Upgrading$/### アップグレード/
s/^You may update your Valet installation using the `composer global update` command in your terminal\. After upgrading, it is good practice to run the `valet install` command so Valet can make additional upgrades to your configuration files if necessary\.$/Valetインストールをアップデートするには、ターミナルで`composer global update`コマンドを実行します。アップグレードできたら、`valet install`コマンドを実行し、必要な設定ファイルの追加アップグレードを行うのは、グッドプラクティスです。/
s/^#### Upgrading To Valet 2\.0$/#### アップグレード To Valet 2.0/
s/^Valet 2\.0 transitions Valet's underlying web server from Caddy to Nginx\. Before upgrading to this version you should run the following commands to stop and uninstall the existing Caddy daemon:$/Valet 2.0では、Valetの裏で動作するWebサーバをCaddyからNginxへ移動しました。このバージョン並行するは、以下のコマンドを実行し、既存のCaddyデーモンを停止し、アンインストールしてください。/
s/^Next, you should upgrade to the latest version of Valet\. Depending on how you installed Valet, this is typically done through Git or Composer\. If you installed Valet via Composer, you should use the following command to update to the latest major version:$/次に、Valetの最新バージョンへアップグレードします。Valetをどのようにインストールしたかにより、通常GitかComposerを使用して行います。ValetをComposerによりインストールしている場合は、最新のメジャーバージョンにアップデートするために、以下のコマンドを実行してください。/
s/^Once the fresh Valet source code has been downloaded, you should run the `install` command:$/真新しいValetのソースコードがダウンロードできたら、`install`コマンドを実行します。/
s/^After upgrading, it may be necessary to re-park or re-link your sites\.$/アップグレードできたら、`park`と`link`をやり直してください。/
s/^## Serving Sites$/## サイト動作/
s/^Once Valet is installed, you're ready to start serving sites\. Valet provides two commands to help you serve your Laravel sites: `park` and `link`\.$/Valetがインストールできたら、サイトを動作させる準備ができました。Laravelサイトを動作させるために役立つ、`park`と`link`の２コマンドを用意しています。/
s/^\*\*The `park` Command\*\*$/**`park`コマンド**/
s/^- Create a new directory on your Mac by running something like `mkdir ~\/Sites`\. Next, `cd ~\/Sites` and run `valet park`\. This command will register your current working directory as a path that Valet should search for sites\.$/- `mkdir ~\/Sites`のように、Mac上に新しいディレクトリを作成ししてください。次に`cd ~\/Sites`し、`valet park`を実行します。このコマンドはカレントワーキングディレクトリをValetがサイトを探す親パスとして登録します。/
s/^- Next, create a new Laravel site within this directory: `laravel new blog`\.$/- 次に、このディレクトリ内で、新しいLaravelサイトを作成します。`laravel new blog`/
s/^- Open `http:\/\/blog\.test` in your browser\.$/- `http:\/\/blog.test`をブラウザで開きます。/
s/^\*\*That's all there is to it\.\*\* Now, any Laravel project you create within your "parked" directory will automatically be served using the `http:\/\/folder-name\.test` convention\.$/**必要なのはこれだけです。** これで"parked"ディレクトリ内で作成されたLaravelプロジェクトは、`http:\/\/フォルダ名.test`規約に従い、自動的に動作します。/
s/^\*\*The `link` Command\*\*$/**`link`コマンド**/
s/^The `link` command may also be used to serve your Laravel sites\. This command is useful if you want to serve a single site in a directory and not the entire directory\.$/`link`コマンドは`park`のように親ディレクトリを指定するのではなく、各ディレクトリ中で一つのサイトを動作させるのに便利です。/
s/^- To use the command, navigate to one of your projects and run `valet link app-name` in your terminal\. Valet will create a symbolic link in `~\/\.valet\/Sites` which points to your current working directory\.$/- ターミナルでプロジェクトのディレクトリへ移動し、`valet link アプリケーション名`を実行します。Valetはカレントワーキングディレクトリから`~\/.valet\/Sites`内へシンボリックリンクを張ります。/
s/^- After running the `link` command, you can access the site in your browser at `http:\/\/app-name\.test`\.$/- `link`コマンド実行後、ブラウザで`http:\/\/アプリケーション名.test`にアクセスできます。/
s/^To see a listing of all of your linked directories, run the `valet links` command\. You may use `valet unlink app-name` to destroy the symbolic link\.$/リンクされた全ディレクトリをリストするには、`valet links`コマンドを実行してください。シンボリックリンクを外すときは、`valet unlink app-name`を使います。/
s/^> {tip} You can use `valet link` to serve the same project from multiple (sub)domains\. To add a subdomain or another domain to your project run `valet link subdomain\.app-name` from the project folder\.$/> {tip} 複数の（サブ）ドメインで同じプロジェクトを動かすために、`valet link`を使用できます。サブドメインや他のドメインをプロジェクトに追加するためには、プロジェクトフォルダから`valet link subdomain.app-name`を実行します。/
s/^\*\*Securing Sites With TLS\*\*$/**TLSによる安全なサイト**/
s/^By default, Valet serves sites over plain HTTP\. However, if you would like to serve a site over encrypted TLS using HTTP\/2, use the `secure` command\. For example, if your site is being served by Valet on the `laravel\.test` domain, you should run the following command to secure it:$/Valetはデフォルトで通常のHTTP通信で接続します。しかし、HTTP\/2を使った暗号化されたTLSで通信したい場合は、`secure`コマンドを使ってください。たとえば、`laravel.test`ドメインでValetによりサイトが動作している場合、以下のコマンドを実行することで安全な通信を行います。/
s/^To "unsecure" a site and revert back to serving its traffic over plain HTTP, use the `unsecure` command\. Like the `secure` command, this command accepts the host name that you wish to unsecure:$/サイトを「安全でない」状態へ戻し、通常のHTTP通信を使いたい場合は、`unsecure`コマンドです。`secure`コマンドと同様に、セキュアな通信を辞めたいホスト名を指定します。/
s/^## Sharing Sites$/## サイトの共有/
s/^Valet even includes a command to share your local sites with the world\. No additional software installation is required once Valet is installed\.$/Valetはローカルサイトを世界と共有するコマンドも用意しています。Valetがインストールしてあれば、他のソフトウェアは必要ありません。/
s/^To share a site, navigate to the site's directory in your terminal and run the `valet share` command\. A publicly accessible URL will be inserted into your clipboard and is ready to paste directly into your browser\. That's it\.$/サイトを共有するには、ターミナルでサイトのディレクトリに移動し、`valet share`コマンドを実行します。公開用のURLはクリップボードにコピーされますので、ブラウザに直接ペーストしてください。これだけです。/
s/^To stop sharing your site, hit `Control \+ C` to cancel the process\.$/サイトの共有を止めるには、`Control + C`を押してプロセスをキャンセルしてください。/
s/^> {note} `valet share` does not currently support sharing sites that have been secured using the `valet secure` command\.$/> {note} `valet secure`コマンドを使用してセキュアにしたサイトの共有は、現在`valet share`はサポートしていません。/
s/^## Custom Valet Drivers$/## カスタムValetドライバ/
s/^You can write your own Valet "driver" to serve PHP applications running on another framework or CMS that is not natively supported by Valet\. When you install Valet, a `~\/\.valet\/Drivers` directory is created which contains a `SampleValetDriver\.php` file\. This file contains a sample driver implementation to demonstrate how to write a custom driver\. Writing a driver only requires you to implement three methods: `serves`, `isStaticFile`, and `frontControllerPath`\.$/Valetでサポートされていない、他のフレームワークやCMSでPHPアプリケーションを実行するには、独自のValet「ドライバ」を書く必要があります。Valetをインストールすると作成される、`~\/.valet\/Drivers`ディレクトリに`SampleValetDriver.php`ファイルが存在しています。このファイルは、カスタムドライバーをどのように書いたら良いかをデモンストレートするサンプルドライバの実装コードです。ドライバを書くために必要な`serves`、`isStaticFile`、`frontControllerPath`の３メソッドを実装するだけです。/
s/^All three methods receive the `$sitePath`, `$siteName`, and `$uri` values as their arguments\. The `$sitePath` is the fully qualified path to the site being served on your machine, such as `\/Users\/Lisa\/Sites\/my-project`\. The `$siteName` is the "host" \/ "site name" portion of the domain (`my-project`)\. The `$uri` is the incoming request URI (`\/foo\/bar`)\.$/全３メソッドは`$sitePath`、`$siteName`、`$uri`を引数で受け取ります。`$sitePath`は、`\/Users\/Lisa\/Sites\/my-project`のように、サイトプロジェクトへのフルパスです。`$siteName`は"ホスト" \/ "サイト名"記法のドメイン(`my-project`)です。`$uri`はやって来たリクエストのURI(`\/foo\/bar`)です。/
s/^Once you have completed your custom Valet driver, place it in the `~\/\.valet\/Drivers` directory using the `FrameworkValetDriver\.php` naming convention\. For example, if you are writing a custom valet driver for WordPress, your file name should be `WordPressValetDriver\.php`\.$/カスタムValetドライバを書き上げたら、`フレームワークValetDriver.php`命名規則をつかい、`~\/.valet\/Drivers`ディレクトリ下に設置してください。たとえば、WordPress用にカスタムValetドライバを書いたら、ファイル名は`WordPressValetDriver.php`になります。/
s/^Let's take a look at a sample implementation of each method your custom Valet driver should implement\.$/カスタムValetドライバで実装する各メソッドのサンプルコードを見ていきましょう。/
s/^#### The `serves` Method$/#### `serves`メソッド/
s/^The `serves` method should return `true` if your driver should handle the incoming request\. Otherwise, the method should return `false`\. So, within this method you should attempt to determine if the given `$sitePath` contains a project of the type you are trying to serve\.$/`serves`メソッドは、そのドライバがやって来たリクエストを処理すべき場合に、`true`を返してください。それ以外の場合は`false`を返してください。そのためには、メソッドの中で、渡された`$sitePath`の内容が、動作させようとするプロジェクトタイプを含んでいるかを判定します。/
s/^For example, let's pretend we are writing a `WordPressValetDriver`\. Our `serves` method might look something like this:$/では擬似サンプルとして、`WordPressValetDriver`を書いてみましょう。`serves`メソッドは以下のようになります。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if the driver serves the request\.$/     * このドライバでリクエストを処理するか決める/
s/^     \*$/     */
s/^     \* @param  string  $sitePath$/     * @param  string  $sitePath/
s/^     \* @param  string  $siteName$/     * @param  string  $siteName/
s/^     \* @param  string  $uri$/     * @param  string  $uri/
s/^     \* @return bool$/     * @return bool/
s/^     \*\/$/     *\//
s/^        return is_dir($sitePath\.'\/wp-admin');$/        return is_dir($sitePath.'\/wp-admin');/
s/^#### The `isStaticFile` Method$/#### `isStaticFile`メソッド/
s/^The `isStaticFile` should determine if the incoming request is for a file that is "static", such as an image or a stylesheet\. If the file is static, the method should return the fully qualified path to the static file on disk\. If the incoming request is not for a static file, the method should return `false`:$/`isStaticFile`はリクエストが画像やスタイルシートのような「静的」なファイルであるかを判定します。ファイルが静的なものであれば、そのファイルが存在するディスク上のフルパスを返します。リクエストが静的ファイルでない場合は、`false`を返します。/
s/^    \/\*\*$/    \/**/
s/^     \* Determine if the incoming request is for a static file\.$/     * リクエストが静的なファイルであるかを判定する/
s/^     \*$/     */
s/^     \* @param  string  $sitePath$/     * @param  string  $sitePath/
s/^     \* @param  string  $siteName$/     * @param  string  $siteName/
s/^     \* @param  string  $uri$/     * @param  string  $uri/
s/^     \* @return string|false$/     * @return string|false/
s/^     \*\/$/     *\//
s/^        if (file_exists($staticFilePath = $sitePath\.'\/public\/'\.$uri)) {$/        if (file_exists($staticFilePath = $sitePath.'\/public\/'.$uri)) {/
s/^> {note} The `isStaticFile` method will only be called if the `serves` method returns `true` for the incoming request and the request URI is not `\/`\.$/> {note} `isStaticFile`メソッドは、リクエストのURIが`\/`ではなく、`serves`メソッドで`true`が返された場合のみ呼びだされます。/
s/^#### The `frontControllerPath` Method$/#### `frontControllerPath`メソッド/
s/^The `frontControllerPath` method should return the fully qualified path to your application's "front controller", which is typically your "index\.php" file or equivalent:$/`frontControllerPath`メソッドは、アプリケーションの「フロントコントローラ」への絶対パスを返します。通常は"index.php`ファイルか、似たようなファイルでしょう。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the fully resolved path to the application's front controller\.$/     * アプリケーションのフロントコントローラへの絶対パスの取得/
s/^     \*$/     */
s/^     \* @param  string  $sitePath$/     * @param  string  $sitePath/
s/^     \* @param  string  $siteName$/     * @param  string  $siteName/
s/^     \* @param  string  $uri$/     * @param  string  $uri/
s/^     \* @return string$/     * @return string/
s/^     \*\/$/     *\//
s/^        return $sitePath\.'\/public\/index\.php';$/        return $sitePath.'\/public\/index.php';/
s/^### Local Drivers$/### ローカルドライバ/
s/^If you would like to define a custom Valet driver for a single application, create a `LocalValetDriver\.php` in the application's root directory\. Your custom driver may extend the base `ValetDriver` class or extend an existing application specific driver such as the `LaravelValetDriver`:$/一つのアプリケーションに対して、Valetのカスタムドライバを定義する場合は、アプリケーションのルートディレクトリに`LocalValetDriver.php`を作成してください。カスタムドライバは、ベースの`ValetDriver`クラスか、`LaravelValetDriver`のような、既存のアプリケーション専用のドライバを拡張します。/
s/^        \/\*\*$/        \/**/
s/^         \* Determine if the driver serves the request\.$/         * リクエストに対し、このドライバを動作させるかを決める/
s/^         \*$/         */
s/^         \* @param  string  $sitePath$/         * @param  string  $sitePath/
s/^         \* @param  string  $siteName$/         * @param  string  $siteName/
s/^         \* @param  string  $uri$/         * @param  string  $uri/
s/^         \* @return bool$/         * @return bool/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Get the fully resolved path to the application's front controller\.$/         * アプリケーションのフロントコントローラに対する完全な解決済みパスを取得する/
s/^         \*$/         */
s/^         \* @param  string  $sitePath$/         * @param  string  $sitePath/
s/^         \* @param  string  $siteName$/         * @param  string  $siteName/
s/^         \* @param  string  $uri$/         * @param  string  $uri/
s/^         \* @return string$/         * @return string/
s/^         \*\/$/         *\//
s/^            return $sitePath\.'\/public_html\/index\.php';$/            return $sitePath.'\/public_html\/index.php';/
s/^## Other Valet Commands$/## その他のValetコマンド/
s/^Command  | Description$/コマンド |  説明/
s/^------------- | -------------$/-----------|--------------------/
s/^`valet forget` | Run this command from a "parked" directory to remove it from the parked directory list\.$/`valet forget` | "park"された（サイト検索の親ディレクトリとして登録されたJ)ディレクトリでこのコマンドを実行し、サイト検索対象のディレクトリリストから外します。/
s/^`valet paths` | View all of your "parked" paths\.$/`valet paths` | "park"されたすべてのパスを表示します。/
s/^`valet restart` | Restart the Valet daemon\.$/`valet restart` | Valetデーモンをリスタートします。/
s/^`valet start` | Start the Valet daemon\.$/`valet start` | Valetデーモンをスタートします。/
s/^`valet stop` | Stop the Valet daemon\.$/`valet stop` | Valetデーモンを停止します。/
s/^`valet uninstall` | Uninstall the Valet daemon entirely\.$/`valet uninstall` | Valetデーモンを完全にアンインストールします。/
