s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Installation & Setup\](#installation-and-setup)$/- [インストールと設定](#installation-and-setup)/
s/^    - \[First Steps\](#first-steps)$/    - [最初の段階](#first-steps)/
s/^    - \[Configuring Homestead\](#configuring-homestead)$/    - [Homestead設定](#configuring-homestead)/
s/^    - \[Launching The Vagrant Box\](#launching-the-vagrant-box)$/    - [Vagrant Boxの実行](#launching-the-vagrant-box)/
s/^    - \[Per Project Installation\](#per-project-installation)$/    - [プロジェクトごとのインストール](#per-project-installation)/
s/^    - \[Installing MariaDB\](#installing-mariadb)$/    - [MariaDBのインストール](#installing-mariadb)/
s/^    - \[Installing MongoDB\](#installing-mongodb)$/    - [MongoDBのインストール](#installing-mongodb)/
s/^    - \[Installing Elasticsearch\](#installing-elasticsearch)$/    - [Elasticsearchのインストール](#installing-elasticsearch)/
s/^    - \[Installing Neo4j\](#installing-neo4j)$/    - [Neo4jのインストール](#installing-neo4j)/
s/^    - \[Aliases\](#aliases)$/    - [エイリアス](#aliases)/
s/^- \[Daily Usage\](#daily-usage)$/- [使用方法](#daily-usage)/
s/^    - \[Accessing Homestead Globally\](#accessing-homestead-globally)$/    - [Homesteadへのグローバルアクセス](#accessing-homestead-globally)/
s/^    - \[Connecting Via SSH\](#connecting-via-ssh)$/    - [SSH接続](#connecting-via-ssh)/
s/^    - \[Connecting To Databases\](#connecting-to-databases)$/    - [データベース接続](#connecting-to-databases)/
s/^    - \[Database Backups\](#database-backups)$/    - [データベースのバックアップ](#database-backups)/
s/^    - \[Adding Additional Sites\](#adding-additional-sites)$/    - [サイトの追加](#adding-additional-sites)/
s/^    - \[Environment Variables\](#environment-variables)$/    - [環境変数](#environment-variables)/
s/^    - \[Configuring Cron Schedules\](#configuring-cron-schedules)$/    - [Cronスケジュール設定](#configuring-cron-schedules)/
s/^    - \[Configuring Mailhog\](#configuring-mailhog)$/    - [Mailhogの設定](#configuring-mailhog)/
s/^    - \[Configuring Minio\](#configuring-minio)$/    - [Minioの設定](#configuring-minio)/
s/^    - \[Ports\](#ports)$/    - [ポート](#ports)/
s/^    - \[Sharing Your Environment\](#sharing-your-environment)$/    - [環境の共有](#sharing-your-environment)/
s/^    - \[Multiple PHP Versions\](#multiple-php-versions)$/    - [複数のPHPバージョン](#multiple-php-versions)/
s/^    - \[Web Servers\](#web-servers)$/    - [Webサービス](#web-servers)/
s/^    - \[Mail\](#mail)$/    - [メール](#mail)/
s/^- \[Network Interfaces\](#network-interfaces)$/- [ネットワークインターフェイス](#network-interfaces)/
s/^- \[Updating Homestead\](#updating-homestead)$/- [Homesteadの更新](#updating-homestead)/
s/^- \[Provider Specific Settings\](#provider-specific-settings)$/- [プロパイダ固有の設定](#provider-specific-settings)/
s/^    - \[VirtualBox\](#provider-specific-virtualbox)$/    - [VirtualBox](#provider-specific-virtualbox)/
s/^## Introduction$/## イントロダクション/
s/^Laravel strives to make the entire PHP development experience delightful, including your local development environment\. \[Vagrant\](https:\/\/www\.vagrantup\.com) provides a simple, elegant way to manage and provision Virtual Machines\.$/ローカル開発環境を含め、PHP開発全体を愉快なものにしようとLaravelは努力しています。[Vagrant](https:\/\/vagrantup.com)は、仮想マシンの管理と事前設定を行う、簡単でエレガントな手段を提供しています。/
s/^Laravel Homestead is an official, pre-packaged Vagrant box that provides you a wonderful development environment without requiring you to install PHP, a web server, and any other server software on your local machine\. No more worrying about messing up your operating system! Vagrant boxes are completely disposable\. If something goes wrong, you can destroy and re-create the box in minutes!$/Laravel Homestead（入植農地、「ホームステード」）はパッケージを事前に済ませた、Laravel公式の"box"で、PHPやWebサーバ、その他のサーバソフトウェアをローカルマシンにインストールする必要なく、素晴らしい開発環境を準備できます。オペレーティングシステムでごちゃごちゃになる心配はもうありません！　Vagrant boxは完全に使い捨てできます。何かの調子が悪くなれば壊して、数分のうちにそのboxを再生成できます！/
s/^Homestead runs on any Windows, Mac, or Linux system, and includes the Nginx web server, PHP 7\.2, PHP 7\.1, PHP 7\.0, PHP 5\.6, MySQL, PostgreSQL, Redis, Memcached, Node, and all of the other goodies you need to develop amazing Laravel applications\.$/HomesteadはWindowsやMac、Linuxシステム上で実行でき、Nginx WebサーバとPHP7.2、PHP7.1、PHP7.0、PHP5.6、MySQL、PostgreSQL、Redis、Memcached、Node、他にも素晴らしいLaravelアプリケーションを開発するために必要となるものすべてを含んでいます。/
s/^> {note} If you are using Windows, you may need to enable hardware virtualization (VT-x)\. It can usually be enabled via your BIOS\. If you are using Hyper-V on a UEFI system you may additionally need to disable Hyper-V in order to access VT-x\.$/> {note} Windowsを使用している場合は、ハードウェア仮想化(VT-x)を有効にする必要があります。通常、BIOSにより有効にできます。UEFI system上のHyper-Vを使用している場合は、VT-xへアクセスするため、さらにHyper-Vを無効にする必要があります。/
s/^### Included Software$/### 含まれるソフトウェア/
s/^- Ubuntu 18\.04$/- Ubuntu 18.04/
s/^- PHP 7\.2$/- PHP 7.2/
s/^- PHP 7\.1$/- PHP 7.1/
s/^- PHP 7\.0$/- PHP 7.0/
s/^- PHP 5\.6$/- PHP 5.6/
s/^- Apache (Optional)$/- Apache (オプション)/
s/^- MariaDB (Optional)$/- MariaDB (オプション)/
s/^- Node (With Yarn, Bower, Grunt, and Gulp)$/- Node (Yarn、Bower、Bower、Grunt、Gulpを含む)/
s/^- Elasticsearch (Optional)$/- Elasticsearch (オプション)/
s/^## Installation & Setup$/## インストールと設定/
s/^### First Steps$/### 最初の段階/
s/^Before launching your Homestead environment, you must install \[VirtualBox 5\.2\](https:\/\/www\.virtualbox\.org\/wiki\/Downloads), \[VMWare\](https:\/\/www\.vmware\.com), \[Parallels\](https:\/\/www\.parallels\.com\/products\/desktop\/) or \[Hyper-V\](https:\/\/docs\.microsoft\.com\/en-us\/virtualization\/hyper-v-on-windows\/quick-start\/enable-hyper-v) as well as \[Vagrant\](https:\/\/www\.vagrantup\.com\/downloads\.html)\. All of these software packages provide easy-to-use visual installers for all popular operating systems\.$/Homestead環境を起動する前に[Vagrant](https:\/\/www.vagrantup.com\/downloads.html)と共に、[VirtualBox 5.2](https:\/\/www.virtualbox.org\/wiki\/Downloads)か、[VMWare](https:\/\/www.vmware.com)、[Parallels](https:\/\/www.parallels.com\/products\/desktop\/)、[Hyper-V](https:\/\/docs.microsoft.com\/en-us\/virtualization\/hyper-v-on-windows\/quick-start\/enable-hyper-v)をインストールする必要があります。全ソフトウェア共に簡単に使用できるビジュアルインストーラが、人気のあるオペレーティングシステム全てに用意されています。/
s/^To use the VMware provider, you will need to purchase both VMware Fusion \/ Workstation and the \[VMware Vagrant plug-in\](https:\/\/www\.vagrantup\.com\/vmware)\. Though it is not free, VMware can provide faster shared folder performance out of the box\.$/VMwareプロバイダを使用するには、VMware Fusion\/Workstationと[VMware Vagrantプラグイン](https:\/\/www.vagrantup.com\/vmware)を購入する必要があります。無料ではありませんが、VMwareが提供する共有フォルダは最初からよりスピーディーです。/
s/^To use the Parallels provider, you will need to install \[Parallels Vagrant plug-in\](https:\/\/github\.com\/Parallels\/vagrant-parallels)\. It is free of charge\.$/Parallelsプロバイダを使用するには、[Parallels Vagrantプラグイン](https:\/\/github.com\/Parallels\/vagrant-parallels)をインストールする必要があります。これは無料です。/
s/^Because of \[Vagrant limitations\](https:\/\/www\.vagrantup\.com\/docs\/hyperv\/limitations\.html), The Hyper-V provider ignores all networking settings\.$/[Vagrantの制限](https:\/\/www.vagrantup.com\/docs\/hyperv\/limitations.html)のため、Hyper-Vプロバイダはすべてのネットワーク設定を無視します。/
s/^#### Installing The Homestead Vagrant Box$/#### Homestead Vagrant Boxのインストール/
s/^Once VirtualBox \/ VMware and Vagrant have been installed, you should add the `laravel\/homestead` box to your Vagrant installation using the following command in your terminal\. It will take a few minutes to download the box, depending on your Internet connection speed:$/VirtualBox\/VMwareとVagrantをインストールし終えたら、`laravel\/homestead` boxをVagrantへ追加するため次のコマンドを端末で実行する必要があります。boxをダウンロードし終えるまで、接続速度にもよりますが数分かかるでしょう。/
s/^If this command fails, make sure your Vagrant installation is up to date\.$/このコマンドが失敗する場合、Vagrantを更新する必要があります。/
s/^#### Installing Homestead$/#### Homesteadのインストール/
s/^You may install Homestead by cloning the repository\. Consider cloning the repository into a `Homestead` folder within your "home" directory, as the Homestead box will serve as the host to all of your Laravel projects:$/リポジトリをクローンし、Homesteadをインストールできます。自分の「ホーム」ディレクトリの中の`Homestead`フォルダへリポジトリをクローンするのことは、自分のLaravel（とPHP）の全プロジェクトをホストしておくHomestead Boxを用意するのだと考えてください。/
s/^    git clone https:\/\/github\.com\/laravel\/homestead\.git ~\/Homestead$/    git clone https:\/\/github.com\/laravel\/homestead.git ~\/Homestead/
s/^You should check out a tagged version of Homestead since the `master` branch may not always be stable\. You can find the latest stable version on the \[GitHub Release Page\](https:\/\/github\.com\/laravel\/homestead\/releases):$/`master`ブランチは常に安定しているわけではないため、バージョンタグがついたHomesteadをチェックアウトすべきでしょう。最新の安定バージョンは、[GitHubのリリースページ](https:\/\/github.com\/laravel\/homestead\/releases)で見つかります。/
s/^    \/\/ Clone the desired release\.\.\.$/    \/\/ クローンしたいリリースバージョン/
s/^    git checkout v7\.14\.2$/    git checkout v7.14.2/
s/^Once you have cloned the Homestead repository, run the `bash init\.sh` command from the Homestead directory to create the `Homestead\.yaml` configuration file\. The `Homestead\.yaml` file will be placed in the Homestead directory:$/Homesteadリポジトリをクローンしたら、`Homestead.yaml`設定ファイルを生成するために、`bash init.sh`コマンドをHomesteadディレクトリで実行します。/
s/^    \/\/ Mac \/ Linux\.\.\.$/    \/\/ Mac \/ Linux.../
s/^    bash init\.sh$/    bash init.sh/
s/^    \/\/ Windows\.\.\.$/    \/\/ Windows.../
s/^    init\.bat$/    init.bat/
s/^### Configuring Homestead$/### Homestead設定/
s/^#### Setting Your Provider$/#### プロバイダの設定/
s/^The `provider` key in your `Homestead\.yaml` file indicates which Vagrant provider should be used: `virtualbox`, `vmware_fusion`, `vmware_workstation`, `parallels` or `hyperv`\. You may set this to the provider you prefer:$/`Homestead.yaml`ファイル中の`provider`キーは、Vagrantのプロバイダとして、`virtualbox`、`vmware_fusion`、`vmware_workstation`、`parallels`、`hyperv`のどれを使用するかを指定します。使用するプロバイダの値を指定してください。/
s/^#### Configuring Shared Folders$/#### 共有フォルダの設定/
s/^The `folders` property of the `Homestead\.yaml` file lists all of the folders you wish to share with your Homestead environment\. As files within these folders are changed, they will be kept in sync between your local machine and the Homestead environment\. You may configure as many shared folders as necessary:$/`Homestead.yaml`ファイルの`folders`プロパティには、Homestead環境と共有したい全フォルダがリストされています。これらのフォルダの中のファイルが変更されると、ローカルマシンとHomestead環境との間で同期されます。必要なだけ共有フォルダを設定してください！/
s/^If you are only creating a few sites, this generic mapping will work just fine\. However, as the number of sites continue to grow, you may begin to experience performance problems\. This problem can be painfully apparent on low-end machines or projects that contain a very large number of files\. If you are experiencing this issue, try mapping every project to its own Vagrant folder:$/少数のサイトを作るだけなら、この包括的なマッピングは上手く動作します。しかし、多くのサイトが継続的に成長していくに連れ、パフォーマンスの問題が発生してきます。この問題はとても大きいファイルを含むローエンドのマシンやプロジェクトで、悲痛なほど顕著に現れます。この問題が起きたら、全プロジェクトを自身のVagrantフォルダにマップしてください。/
s/^To enable \[NFS\](https:\/\/www\.vagrantup\.com\/docs\/synced-folders\/nfs\.html), you only need to add a simple flag to your synced folder configuration:$/[NFS](https:\/\/www.vagrantup.com\/v2\/synced-folders\/nfs.html)を有効にするには、同期するフォルダにフラグを指定するだけです。/
s/^> {note} When using NFS, you should consider installing the \[vagrant-bindfs\](https:\/\/github\.com\/gael-ian\/vagrant-bindfs) plug-in\. This plug-in will maintain the correct user \/ group permissions for files and directories within the Homestead box\.$/> {note} NFSを使用する場合は、[vagrant-bindfs](https:\/\/github.com\/gael-ian\/vagrant-bindfs)プラグインのインストールを考慮してください。このプラグインは、Homestead下のファイルとディレクトリのユーザー／グループパーミッションを正しく維持します。/
s/^You may also pass any options supported by Vagrant's \[Synced Folders\](https:\/\/www\.vagrantup\.com\/docs\/synced-folders\/basic_usage\.html) by listing them under the `options` key:$/さらに、Vagrantの[同期フォルダ](https:\/\/www.vagrantup.com\/docs\/synced-folders\/basic_usage.html)でサポートされている任意のオプションを、`options`キーの下に列挙して渡すことができます。/
s/^              rsync__args: \["--verbose", "--archive", "--delete", "-zz"\]$/              rsync__args: ["--verbose", "--archive", "--delete", "-zz"]/
s/^              rsync__exclude: \["node_modules"\]$/              rsync__exclude: ["node_modules"]/
s/^#### Configuring Nginx Sites$/#### Nginxサイトの設定/
s/^Not familiar with Nginx? No problem\. The `sites` property allows you to easily map a "domain" to a folder on your Homestead environment\. A sample site configuration is included in the `Homestead\.yaml` file\. Again, you may add as many sites to your Homestead environment as necessary\. Homestead can serve as a convenient, virtualized environment for every Laravel project you are working on:$/Nginxには詳しくない？　問題ありません。`sites`プロパティでHomestead環境上のフォルダと「ドメイン」を簡単にマップできます。サイト設定のサンプルは、`Homestead.yaml`ファイルに含まれています。これも必要に応じ、Homestead環境へサイトを好きなだけ追加してください。便利に使えるように、Homesteadは皆さんが作業する全てのLaravelプロジェクトの仮想環境を提供します。/
s/^        - map: homestead\.test$/        - map: homestead.test/
s/^If you change the `sites` property after provisioning the Homestead box, you should re-run `vagrant reload --provision`  to update the Nginx configuration on the virtual machine\.$/`sites`プロパティをHomestead boxのプロビジョニング後に変更した場合、仮想マシンのNginx設定を更新するため、`vagrant reload --provision`を再実行する必要があります。/
s/^#### The Hosts File$/#### hostsファイル/
s/^You must add the "domains" for your Nginx sites to the `hosts` file on your machine\. The `hosts` file will redirect requests for your Homestead sites into your Homestead machine\. On Mac and Linux, this file is located at `\/etc\/hosts`\. On Windows, it is located at `C:\\Windows\\System32\\drivers\\etc\\hosts`\. The lines you add to this file will look like the following:$/Nginxサイトの"domains"に追加したサイトをあなたのコンピューターの`hosts`ファイルにも追加してください。`hosts`ファイルはローカルドメインへのリクエストをHomestead環境へ転送してくれます。MacとLinuxでは、`\/etc\/hosts`にこのファイルがあります。Windows環境では、`C:\\Windows\\System32\\drivers\\etc\\hosts`です。次の行のように追加してください。/
s/^    192\.168\.10\.10  homestead\.test$/    192.168.10.10  homestead.test/
s/^Make sure the IP address listed is the one set in your `Homestead\.yaml` file\. Once you have added the domain to your `hosts` file and launched the Vagrant box you will be able to access the site via your web browser:$/設定するIPアドレスには`Homestead.yaml`ファイルの中の値を確実に指定してください。ドメインを`hosts`ファイルへ追加したら、Webブラウザーでサイトにアクセスできます。/
s/^    http:\/\/homestead\.test$/    http:\/\/homestead.test/
s/^### Launching The Vagrant Box$/### Vagrant Boxの実行/
s/^Once you have edited the `Homestead\.yaml` to your liking, run the `vagrant up` command from your Homestead directory\. Vagrant will boot the virtual machine and automatically configure your shared folders and Nginx sites\.$/`Homestead.yaml`のリンクを編集終えたら、Homesteadディレクトリで`vagrant up`コマンドを実行してください。Vagrantは仮想マシンを起動し、共有フォルダとNginxサイトを自動的に設定します。/
s/^To destroy the machine, you may use the `vagrant destroy --force` command\.$/仮想マシンを破壊するには、`vagrant destroy --force`コマンドを使用します。/
s/^### Per Project Installation$/### プロジェクトごとにインストール/
s/^Instead of installing Homestead globally and sharing the same Homestead box across all of your projects, you may instead configure a Homestead instance for each project you manage\. Installing Homestead per project may be beneficial if you wish to ship a `Vagrantfile` with your project, allowing others working on the project to `vagrant up`\.$/Homesteadをグローバルにインストールし、全プロジェクトで同じHomestead Boxを共有する代わりに、Homesteadインスタンスを管理下のプロジェクトごとに設定することもできます。プロジェクトごとにHomesteadをインストールする利点は、`Vagrantfile`をプロジェクトに用意すれば、プロジェクトに参加している他の人達も、`vagrant up`で仕事にとりかかれることです。/
s/^To install Homestead directly into your project, require it using Composer:$/Homesteadをプロジェクトに直接インストールするには、Composerを使います。/
s/^Once Homestead has been installed, use the `make` command to generate the `Vagrantfile` and `Homestead\.yaml` file in your project root\. The `make` command will automatically configure the `sites` and `folders` directives in the `Homestead\.yaml` file\.$/Homesteadがインストールできたら、`Vagrantfile`と`Homestead.yaml`ファイルをプロジェクトルートへ生成するために`make`コマンドを使ってください。`make`コマンドは`Homestead.yaml`ファイルの`sites`と`folders`ディレクティブを自動的に設定します。/
s/^    vendor\\\\bin\\\\homestead make$/    vendor\\bin\\homestead make/
s/^Next, run the `vagrant up` command in your terminal and access your project at `http:\/\/homestead\.test` in your browser\. Remember, you will still need to add an `\/etc\/hosts` file entry for `homestead\.test` or the domain of your choice\.$/次に`vagrant up`コマンドを端末で実行し、ブラウザで`http:\/\/homestead.test`のプロジェクトへアクセスしてください。`\/etc\/hosts`ファイルに`homestead.test`か、自分で選んだドメインのエントリーを追加する必要があることを忘れないでください。/
s/^### Installing MariaDB$/### MariaDBのインストール/
s/^If you prefer to use MariaDB instead of MySQL, you may add the `mariadb` option to your `Homestead\.yaml` file\. This option will remove MySQL and install MariaDB\. MariaDB serves as a drop-in replacement for MySQL so you should still use the `mysql` database driver in your application's database configuration:$/MySQLの代わりにMariaDBを使用したい場合は、`mariadb`オプションを`Homestead.yaml`ファイルへ追加してください。このオプションはMySQLを削除し、MariaDBをインストールします。MariaDBはMySQLとそのまま置き換えられる代用ソフトウェアですので、`mysql`データベースドライバをそのままアプリケーションで使用できます。/
s/^    ip: "192\.168\.10\.10"$/    ip: "192.168.10.10"/
s/^To install MongoDB Community Edition, update your `Homestead\.yaml` file with the following configuration option:$/MongoDBのコミュニティエディションをインストールするには、以下のように`Homestead.yaml`ファイルを変更してください。/
s/^The default MongoDB installation will set the database username to `homestead` and the corresponding password to `secret`\.$/デフォルト状態のMongoDBでは、データベースのユーザー名を`homestead`、パスワードを`secret`に設定します。/
s/^### Installing Elasticsearch$/### Elasticsearchのインストール/
s/^To install Elasticsearch, add the `elasticsearch` option to your `Homestead\.yaml` file and specify a supported version, which may be a major version or an exact version number (major\.minor\.patch)\. The default installation will create a cluster named 'homestead'\. You should never give Elasticsearch more than half of the operating system's memory, so make sure your Homestead machine has at least twice the Elasticsearch allocation:$/Elasticsearchをインストールするには、`Homestead.yaml`ファイルへ`elasticsearch`オプションを追加し、メジャーバージョンか、major.minor.patch形式で厳密なバージョンを指定してください。デフォルトのインストールでは、`homestead`という名前のクラスタが作成されます。Elasticsearchにオペレーティングシステムのメモリの半分以上を割り当ててはいけません。つまり、Elasticsearchに割り当てる量の最低でも２倍以上のメモリをHomesteadマシンに割り当てます。/
s/^    ip: "192\.168\.10\.10"$/    ip: "192.168.10.10"/
s/^> {tip} Check out the \[Elasticsearch documentation\](https:\/\/www\.elastic\.co\/guide\/en\/elasticsearch\/reference\/current) to learn how to customize your configuration\.$/> {tip} 設定のカスタマイズについては、[Elasticsearchのドキュメント](https:\/\/www.elastic.co\/guide\/en\/elasticsearch\/reference\/current)を確認してください。/
s/^### Installing Neo4j$/### Neo4jのインストール/
s/^\[Neo4j\](https:\/\/neo4j\.com\/) is a graph database management system\. To install Neo4j Community Edition, update your `Homestead\.yaml` file with the following configuration option:$/[Neo4j](https:\/\/neo4j.com\/)はグラフデータベース管理システムです。Neo4jコミュニティエディションをインストールするには、`Homestead.yaml`で以下の設定オプションを指定してください。/
s/^The default Neo4j installation will set the database username to `homestead` and corresponding password to `secret`\. To access the Neo4j browser, visit `http:\/\/homestead\.test:7474` via your web browser\. The ports `7687` (Bolt), `7474` (HTTP), and `7473` (HTTPS) are ready to serve requests from the Neo4j client\.$/デフォルト状態のNeo4jでは、データベースのユーザー名を`homestead`、パスワードを`secret`として設定します。Neo4jブラウザにアクセスするには、Webブラウザで`http:\/\/homestead.test:7474`にアクセスしてください。Neo4jクライアントのために、`7687` (Bolt)、`7474` (HTTP)、`7473` (HTTPS)ポートが用意されています。/
s/^### Aliases$/### エイリアス/
s/^You may add Bash aliases to your Homestead machine by modifying the `aliases` file within your Homestead directory:$/HomesteadでBashのエイリアスを指定するには、Homesteadディレクトリにある `aliases` ファイルを編集します。/
s/^    alias \.\.='cd \.\.'$/    alias ..='cd ..'/
s/^After you have updated the `aliases` file, you should re-provision the Homestead machine using the `vagrant reload --provision` command\. This will ensure that your new aliases are available on the machine\.$/`aliases`ファイルを更新した後に、`vagrant reload --provision`コマンドを使い、Homesteadを再度プロヴィジョニングする必要があります。これにより新しいエイリアスを使うことができます。/
s/^## Daily Usage$/## 使用方法/
s/^### Accessing Homestead Globally$/### Homesteadへグローバルにアクセスする/
s/^Sometimes you may want to `vagrant up` your Homestead machine from anywhere on your filesystem\. You can do this on Mac \/ Linux systems by adding a Bash function to your Bash profile\. On Windows, you may accomplish this by adding a "batch" file to your `PATH`\. These scripts will allow you to run any Vagrant command from anywhere on your system and will automatically point that command to your Homestead installation:$/MacとLinuxシステムでは、Bashプロファイルへ簡単なBash関数を追加すれば実現できます。Windowsでは、`PATH`に「バッチ」ファイルを追加すれば、行えます。以下のスクリプトはシステムのどこからでも、どんなVagrantコマンドでも実行できるようにし、自動的にHomesteadをインストール済みのディレクトリで実行します。/
s/^        ( cd ~\/Homestead && vagrant $\* )$/        ( cd ~\/Homestead \&\& vagrant $* )/
s/^Make sure to tweak the `~\/Homestead` path in the function to the location of your actual Homestead installation\. Once the function is installed, you may run commands like `homestead up` or `homestead ssh` from anywhere on your system\.$/エイリアス中の`~\/Homestead`パスを実際のHomesteadインストール場所を示すように調整してください。関数がインストールできたら、システムのどこからでも`homestead up`や`homestead ssh`のように実行できます。/
s/^Create a `homestead\.bat` batch file anywhere on your machine with the following contents:$/以下の内容の`homestead.bat`バッチファイルを、マシン上に作成してください。/
s/^    cd \/d %homesteadVagrant% && vagrant %\*$/    cd \/d %homesteadVagrant% \&\& vagrant %*/
s/^Make sure to tweak the example `C:\\Homestead` path in the script to the actual location of your Homestead installation\. After creating the file, add the file location to your `PATH`\. You may then run commands like `homestead up` or `homestead ssh` from anywhere on your system\.$/スクリプト例中の`C:\\Homestead`パスは、実際にHomesteadをインストールした場所を指すように調整してください。ファイルを作成したら、`PATH`へファイルの場所を追加します。これで`homestead up`や`homestead ssh`のようなコマンドをシステムのどこからでも実行できます。/
s/^### Connecting Via SSH$/### SSH接続/
s/^You can SSH into your virtual machine by issuing the `vagrant ssh` terminal command from your Homestead directory\.$/Homesteadディレクトリで`vagrant ssh`端末コマンドを実行すれば、仮想マシンにSSHで接続できます。/
s/^But, since you will probably need to SSH into your Homestead machine frequently, consider adding the "function" described above to your host machine to quickly SSH into the Homestead box\.$/しかし、Homesteadマシンには頻繁にSSHでアクセスする必要があると思いますから、ホストマシンから素早くHomestead boxへSSH接続できるように、上記の「関数」を追加することを検討してください。/
s/^### Connecting To Databases$/### データベースへの接続/
s/^A `homestead` database is configured for both MySQL and PostgreSQL out of the box\. For even more convenience, Laravel's `\.env` file configures the framework to use this database out of the box\.$/`homestead`のデータベースは、初めからMySQLとPostgreSQLの両方を設定できます。更に便利なように、Laravelの`.env`ファイルは、Laravelでこれらのデータベースが最初から利用できるように設定されています。/
s/^To connect to your MySQL or PostgreSQL database from your host machine's database client, you should connect to `127\.0\.0\.1` and port `33060` (MySQL) or `54320` (PostgreSQL)\. The username and password for both databases is `homestead` \/ `secret`\.$/ホストマシンのデータベースクライアントから、MySQLかPostgreSQLデータベースへ接続するには、`127.0.0.1`のポート`33060`(MySQL)か、ポート`54320`(PostgreSQL)へ接続する必要があります。ユーザー名は`homestead`、パスワードは`secret`です。/
s/^> {note} You should only use these non-standard ports when connecting to the databases from your host machine\. You will use the default 3306 and 5432 ports in your Laravel database configuration file since Laravel is running _within_ the virtual machine\.$/> {note} ホストマシンからデータベースへ接続するには、標準的ではないポートだけを使用してください。Laravelのデータベース設定ファイル中では、デフォルトの3306と5432ポートを使用することができます。Laravelは仮想マシンの内部で動作しているからです。/
s/^### Database Backups$/### データベースのバックアップ/
s/^Homestead can automatically backup your database when your Vagrant box is destroyed\. To utilize this feature, you must be using Vagrant 2\.1\.0 or greater\. Or, if you are using an older version of Vagrant, you must install the `vagrant-triggers` plug-in\. To enable automatic database backups, add the following line to your `Homestead\.yaml` file:$/Homesteadでは、Vagrant boxを壊した時点で、自動的にデータベースをバックアップできます。この機能を利用するには、Vagrant2.1.0以上を使用しなくてはなりません。もしくは、古いバージョンのVagrantを使用している場合は、`vagrant-triggers`プラグインをインストールしてください。自動データベースバックアップを有効にするには、`Homestead.yaml`ファイルに以下の行を追加してください。/
s/^Once configured, Homestead will export your databases to `mysql_backup` and `postgres_backup` directories when the `vagrant destroy` command is executed\. These directories can be found in the folder where you cloned Homestead or in the root of your project if you are using the \[per project installation\](#per-project-installation) method\.$/一度設定すれば、Homesteadは`vagrant destroy`コマンドが実行されると、データベースを`mysql_backup`、`postgres_backup`ディレクトリへエクスポートします。これらのディレクトリは、Homesteadをクローンしたフォルダ中、もしくは[プロジェクトごとのインストール](#per-project-installation)を利用している場合は、プロジェクトルートの中で見つけられます。/
s/^### Adding Additional Sites$/### サイトの追加/
s/^Once your Homestead environment is provisioned and running, you may want to add additional Nginx sites for your Laravel applications\. You can run as many Laravel installations as you wish on a single Homestead environment\. To add an additional site, add the site to your `Homestead\.yaml` file:$/Homestead環境をプロビジョニングし、実働した後に、LaravelアプリケーションをNginxサイトへ追加したいこともあるでしょう。希望するだけのLaravelアプリケーションを一つのHomestead環境上で実行することができます。新しいサイトを追加するには、`Homestead.yaml`ファイルへ追加します。/
s/^        - map: homestead\.test$/        - map: homestead.test/
s/^        - map: another\.test$/        - map: another.test/
s/^If Vagrant is not automatically managing your "hosts" file, you may need to add the new site to that file as well:$/Vagrantが"hosts"ファイルを自動的に管理しない場合は、新しいサイトを追加する必要があります。/
s/^    192\.168\.10\.10  homestead\.test$/    192.168.10.10  homestead.test/
s/^    192\.168\.10\.10  another\.test$/    192.168.10.10  another.test/
s/^Once the site has been added, run the `vagrant reload --provision` command from your Homestead directory\.$/サイトを追加したら、`vagrant reload --provision`コマンドをHomesteadディレクトリで実行します。/
s/^#### Site Types$/#### サイトタイプ/
s/^Homestead supports several types of sites which allow you to easily run projects that are not based on Laravel\. For example, we may easily add a Symfony application to Homestead using the `symfony2` site type:$/Laravelベースではないプロジェクトも簡単に実行できるようにするため、Homesteadは様々なタイプのサイトをサポートしています。たとえば、`symfony2`サイトタイプを使えば、HomesteadにSymfonyアプリケーションを簡単に追加できます。/
s/^        - map: symfony2\.test$/        - map: symfony2.test/
s/^The available site types are: `apache`, `apigility`, `expressive`, `laravel` (the default), `proxy`, `silverstripe`, `statamic`, `symfony2`, `symfony4`, and `zf`\.$/指定できるサイトタイプは`apache`、`apigility`、`expressive`、`laravel`（デフォルト）、`proxy`、`silverstripe`、`statamic`、`symfony2`、`symfony4`、`zf`です。/
s/^#### Site Parameters$/#### サイトパラメータ/
s/^You may add additional Nginx `fastcgi_param` values to your site via the `params` site directive\. For example, we'll add a `FOO` parameter with a value of `BAR`:$/`params`サイトディレクティブを使用し、Nginxの`fastcgi_param`値を追加できます。例として、値に`BAR`を持つ`FOO`パラメータを追加してみましょう。/
s/^        - map: homestead\.test$/        - map: homestead.test/
s/^### Environment Variables$/### 環境変数/
s/^You can set global environment variables by adding them to your `Homestead\.yaml` file:$/グローバルな環境変数は、`Homestead.yaml`ファイルで追加指定できます。/
s/^After updating the `Homestead\.yaml`, be sure to re-provision the machine by running `vagrant reload --provision`\. This will update the PHP-FPM configuration for all of the installed PHP versions and also update the environment for the `vagrant` user\.$/`Homestead.yaml`を変更したら、`vagrant reload --provision`を実行し、再プロビジョンするのを忘れないでください。これにより全インストール済みPHPバージョンに対するPHP-FPM設定と、`vagrant`ユーザーの環境も更新されます。/
s/^### Configuring Cron Schedules$/### Cronスケジュール設定/
s/^Laravel provides a convenient way to \[schedule Cron jobs\](\/docs\/{{version}}\/scheduling) by scheduling a single `schedule:run` Artisan command to be run every minute\. The `schedule:run` command will examine the job schedule defined in your `App\\Console\\Kernel` class to determine which jobs should be run\.$/`schedule:run` Artisanコマンドだけを毎分実行することにより、[Cronジョブのスケジュール](\/docs\/{{version}}\/scheduling)を簡単に行う方法をLaravelは提供しています。`schedule:run`コマンドは`App\\Console\\Kernel`クラスの定義を調べ、どのジョブを実行すべきかを決定します。/
s/^If you would like the `schedule:run` command to be run for a Homestead site, you may set the `schedule` option to `true` when defining the site:$/Homesteadサイトで`schedule:run`コマンドを実行したい場合は、サイトを定義するときに`schedule`オプションを`true`に設定してください。/
s/^        - map: homestead\.test$/        - map: homestead.test/
s/^The Cron job for the site will be defined in the `\/etc\/cron\.d` folder of the virtual machine\.$/こうしたサイト用のCronジョブは、仮想マシンの`\/etc\/cron.d`フォルダの中に定義されます。/
s/^### Configuring Mailhog$/### Mailhogの設定/
s/^Mailhog allows you to easily catch your outgoing email and examine it without actually sending the mail to its recipients\. To get started, update your `\.env` file to use the following mail settings:$/Mailhogを使用すると、簡単に送信するメールを捉えることができ、受信者に実際に届けなくとも内容を調べることができます。これを使用するには、`.env`ファイルのメール設定を以下のように更新します。/
s/^### Configuring Minio$/### Minioの設定/
s/^Minio is an open source object storage server with an Amazon S3 compatible API\. To install Minio, update your `Homestead\.yaml` file with the following configuration option:$/MinioはAmazon S3と互換性のあるAPIを持つ、オープンソースなオブジェクトストレージサーバです。Minioをインストールするには、`Homestead.yaml`に以下の設定オプションを加えてください。/
s/^By default, Minio is available on port 9600\. You may access the Minio control panel by visiting `http:\/\/homestead:9600\/`\. The default access key is `homestead`, while the default secret key is `secretkey`\. When accessing Minio, you should always use region `us-east-1`\.$/デフォルトのMinioは、9600ポートで使用します。`http:\/\/homestead:9600\/`を閲覧すると、Minioのコントロールパネルへアクセスできます。デフォルトアクセスキーは`homestead`、デフォルトのシークレットキーは`secretkey`です。Minioへアクセスする場合、常にリージョン`us-east-1`を使用する必要があります。/
s/^In order to use Minio you will need to adjust the S3 disk configuration in your `config\/filesystems\.php` configuration file\. You will need to add the `use_path_style_endpoint` option to the disk configuration, as well as change the `url` key to `endpoint`:$/Minioを使用するために、`config\/filesystems.php`設定ファイルの中の、S3ディスク設定を調整する必要があります。ディスク設定へ、`use_path_style_endpoint`オプションを追加し、同時に`url`キーを`endpoint`へ変更する必要があります。/
s/^    's3' => \[$/    's3' => [/
s/^    \]$/    ]/
s/^Finally, ensure your `\.env` file has the following options:$/最後に、`.env`ファイルへ以下のオプションを確実に用意してください。/
s/^### Ports$/### ポート/
s/^By default, the following ports are forwarded to your Homestead environment:$/以下のポートが、Homestead環境へポートフォワードされています。/
s/^- \*\*SSH:\*\* 2222 &rarr; Forwards To 22$/- **SSH:** 2222 \&rarr;  フォワード先 22/
s/^- \*\*ngrok UI:\*\* 4040 &rarr; Forwards To 4040$/- **ngrok UI:** 4040 \&rarr; フォワード先 4040/
s/^- \*\*HTTP:\*\* 8000 &rarr; Forwards To 80$/- **HTTP:** 8000 \&rarr; フォワード先 80/
s/^- \*\*HTTPS:\*\* 44300 &rarr; Forwards To 443$/- **HTTPS:** 44300 \&rarr; フォワード先 443/
s/^- \*\*MySQL:\*\* 33060 &rarr; Forwards To 3306$/- **MySQL:** 33060 \&rarr; フォワード先 3306/
s/^- \*\*PostgreSQL:\*\* 54320 &rarr; Forwards To 5432$/- **PostgreSQL:** 54320 \&rarr; フォワード先 5432/
s/^- \*\*MongoDB:\*\* 27017 &rarr; Forwards To 27017$/- **MongoDB:** 27017 \&rarr; フォワード先 27017/
s/^- \*\*Mailhog:\*\* 8025 &rarr; Forwards To 8025$/- **Mailhog:** 8025 \&rarr; フォワード先 8025/
s/^- \*\*Minio:\*\* 9600 &rarr; Forwards To 9600$/- **Minio:** 9600 \&rarr; フォワード先 9600/
s/^#### Forwarding Additional Ports$/#### 追加のフォワードポート/
s/^If you wish, you may forward additional ports to the Vagrant box, as well as specify their protocol:$/ご希望ならば追加のポートをVagrant Boxへフォワードすることもできます。プロトコルを指定することもできます。/
s/^### Sharing Your Environment$/### 環境の共有/
s/^Sometimes you may wish to share what you're currently working on with coworkers or a  client\. Vagrant has a built-in way to support this via `vagrant share`; however, this will not work if you have multiple sites configured in your `Homestead\.yaml` file\.$/共同作業者やクライアントと、現在作業中の内容を共有したい場合もあるでしょう。Vagrantには、`vagrant share`により、これをサポートする方法が組み込み済みです。しかし、この方法は`Homestead.yaml`ファイルに複数サイトを設定している場合には動作しません。/
s/^To solve this problem, Homestead includes its own `share` command\. To get started, SSH into your Homestead machine via `vagrant ssh` and run `share homestead\.test`\. This will share the `homestead\.test` site from your `Homestead\.yaml` configuration file\. Of course, you may substitute any of your other configured sites for `homestead\.test`:$/この問題を解決するため、Homesteadは独自の`share`コマンドを持っています。使用を開始するには、`vagrant ssh`によりHomesteadマシンとSSH接続し、`share homestead.test`を実行してください。これにより、`Homestead.yaml`設定ファイルの`homestead.test`サイトが共有されます。もちろん、`homestead.test`の代わりに他の設定済みサイトを指定できます。/
s/^    share homestead\.test$/    share homestead.test/
s/^After running the command, you will see an Ngrok screen appear which contains the activity log and the publicly accessible URLs for the shared site\. If you would like to specify a custom region, subdomain, or other Ngrok runtime option, you may add them to your `share` command:$/コマンド実行後、ログと共有サイトへアクセスするURLを含んだ、Ngrokスクリーンが現れます。カスタムリージョン、サブドメイン、その他のNgrok実行オプションをカスタマイズしたい場合は、`share`コマンドへ追加してください。/
s/^    share homestead\.test -region=eu -subdomain=laravel$/    share homestead.test -region=eu -subdomain=laravel/
s/^> {note} Remember, Vagrant is inherently insecure and you are exposing your virtual machine to the Internet when running the `share` command\.$/> {note} Vagrantは本質的に安全なものではなく、`share`コマンドによりインターネット上に自分の仮想マシンを晒すことになることを覚えておいてください。/
s/^### Multiple PHP Versions$/### 複数のPHPバージョン/
s/^> {note} This feature is only compatible with Nginx\.$/> {note} この機能は、Nginx使用時のみ利用できます。/
s/^Homestead 6 introduced support for multiple versions of PHP on the same virtual machine\. You may specify which version of PHP to use for a given site within your `Homestead\.yaml` file\. The available PHP versions are: "5\.6", "7\.0", "7\.1" and "7\.2" (the default):$/Homestead6から、同一仮想マシン上での複数PHPバージョンをサポートを開始しました。`Homestead.yaml`ファイルで、特定のサイトでどのバージョンのPHPを使用するのかを指定できます。利用できるPHPバージョンは、"5.6"、"7.0"、"7.1"、"7.2（デフォルト）"です。/
s/^        - map: homestead\.test$/        - map: homestead.test/
s/^          php: "5\.6"$/          php: "5.6"/
s/^In addition, you may use any of the supported PHP versions via the CLI:$/さらに、コマンドラインではサポート済みPHPバージョンをすべて利用できます。/
s/^    php5\.6 artisan list$/    php5.6 artisan list/
s/^    php7\.0 artisan list$/    php7.0 artisan list/
s/^    php7\.1 artisan list$/    php7.1 artisan list/
s/^    php7\.2 artisan list$/    php7.2 artisan list/
s/^### Web Servers$/### Webサービス/
s/^Homestead uses the Nginx web server by default\. However, it can install Apache if `apache` is specified as a site type\. While both web servers can be installed at the same time, they cannot both be \*running\* at the same time\. The `flip` shell command is available to ease the process of switching between web servers\. The `flip` command automatically determines which web server is running, shuts it off, and then starts the other server\. To use this command, SSH into your Homestead machine and run the command in your terminal:$/HomesteadはNginxをデフォルトのWebサーバとして利用しています。しかし、サイトタイプとして`apache`が指定されると、Apacheをインストールします。両方のWebサーバを一度にインストールすることもできますが、同時に両方を**実行**することはできません。`flip`シェルコマンドがWebサーバを切り替えるために用意されています。`flip`コマンドはどちらのWebサーバが実行中かを自動的に判断し、シャットダウンし、もう一方のWebサーバを起動します。このコマンドを実行するには、HomesteadへSSH接続し、コマンドをターミナルで実行してください。/
s/^Homestead includes the Postfix mail transfer agent, which is listening on port `1025` by default\. So, you may instruct your application to use the `smtp` mail driver on `localhost` port `1025`\. Then, all sent mail will be handled by Postfix and caught by Mailhog\. To view your sent emails, open \[http:\/\/localhost:8025\](http:\/\/localhost:8025) in your web browser\.$/Homesteadは、デフォルトで`1025`ポートをリッスンする、Postfixメールトランスファーエージェントを用意しています。そのため、`localhost`の`1025`ポートに対して、`smtp`メールドライバーを使用するように、アプリケーションへ指示できます。その結果、すべての送信メールはPostfixにより処理され、Mailhogにより補足されます。送信済みメールを確認するには、Webブラウザで[http:\/\/localhost:8025](http:\/\/localhost:8025)を開いてください。/
s/^## Network Interfaces$/## ネットワークインターフェイス/
s/^The `networks` property of the `Homestead\.yaml` configures network interfaces for your Homestead environment\. You may configure as many interfaces as necessary:$/`Homestead.yaml`ファイルの`network`プロパティは、Homestead環境のネットワークインターフェイスを設定します。多くのインターフェイスを必要に応じ設定可能です。/
s/^          ip: "192\.168\.10\.20"$/          ip: "192.168.10.20"/
s/^To enable a \[bridged\](https:\/\/www\.vagrantup\.com\/docs\/networking\/public_network\.html) interface, configure a `bridge` setting and change the network type to `public_network`:$/[ブリッジ](https:\/\/www.vagrantup.com\/docs\/networking\/public_network.html)インターフェイスを有効にするには、`bridge`項目を設定し、ネットワークタイプを`public_network`へ変更します。/
s/^          ip: "192\.168\.10\.20"$/          ip: "192.168.10.20"/
s/^To enable \[DHCP\](https:\/\/www\.vagrantup\.com\/docs\/networking\/public_network\.html), just remove the `ip` option from your configuration:$/[DHCP](https:\/\/www.vagrantup.com\/docs\/networking\/public_network.html)を有効にするには、設定から`ip`オプションを取り除いてください。/
s/^## Updating Homestead$/## Homesteadの更新/
s/^You can update Homestead in two simple steps\. First, you should update the Vagrant box using the `vagrant box update` command:$/２つの簡単な手順で、Homesteadをアップデートできます。最初に`vagrant box update`コマンドを使い、Vagrant boxを更新してください。/
s/^Next, you need to update the Homestead source code\. If you cloned the repository you can `git pull origin master` at the location you originally cloned the repository\.$/次に、Homesteadのソースコードを更新する必要があります。リポジトリをクローンしている場合は、リポジトリをクローンした元の場所で、`git pull origin master`を実行するだけです。/
s/^If you have installed Homestead via your project's `composer\.json` file, you should ensure your `composer\.json` file contains `"laravel\/homestead": "^7"` and update your dependencies:$/プロジェクトの`composer.json`ファイルによりHomesteadをインストールしている場合は、`composer.json`ファイルに`"laravel\/homestead": "^7"`が含まれていることを確認し、依存コンポーネントをアップデートしてください。/
s/^## Provider Specific Settings$/## プロパイダ固有の設定/
s/^By default, Homestead configures the `natdnshostresolver` setting to `on`\. This allows Homestead to use your host operating system's DNS settings\. If you would like to override this behavior, add the following lines to your `Homestead\.yaml` file:$/デフォルトのHomestead設定は、`natdnshostresolver`設定を`on`にしています。これにより、HomesteadはホストのオペレーティングシステムのDNS設定を利用します。この動作をオーバーライドしたい場合は、`Homestead.yaml`へ以下の行を追加してください。/
s/^#### Symbolic Links On Windows$/#### Windowsでのシンボリックリンク/
s/^If symbolic links are not working properly on your Windows machine, you may need to add the following block to your `Vagrantfile`:$/Windowsマシンでシンボリックリンクが正しく動かない場合は、`Vagrantfile`に以下のコードブロックを追加する必要があります。/
s/^    config\.vm\.provider "virtualbox" do |v|$/    config.vm.provider "virtualbox" do |v|/
s/^        v\.customize \["setextradata", :id, "VBoxInternal2\/SharedFoldersEnableSymlinksCreate\/v-root", "1"\]$/        v.customize ["setextradata", :id, "VBoxInternal2\/SharedFoldersEnableSymlinksCreate\/v-root", "1"]/
