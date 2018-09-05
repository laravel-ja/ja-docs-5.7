s/^# File Storage$/# ファイルストレージ/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^    - \[The Public Disk\](#the-public-disk)$/    - [パブリックディスク](#the-public-disk)/
s/^    - \[The Local Driver\](#the-local-driver)$/    - [ローカルディスク](#the-local-driver)/
s/^    - \[Driver Prerequisites\](#driver-prerequisites)$/    - [ドライバ要件](#driver-prerequisites)/
s/^    - \[Caching\](#caching)$/    - [キャッシュ](#caching)/
s/^- \[Obtaining Disk Instances\](#obtaining-disk-instances)$/- [ディスクインスタンス取得](#obtaining-disk-instances)/
s/^- \[Retrieving Files\](#retrieving-files)$/- [ファイル取得](#retrieving-files)/
s/^    - \[Downloading Files\](#downloading-files)$/    - [ファイルのダウンロード](#downloading-files)/
s/^    - \[File URLs\](#file-urls)$/    - [ファイルURL](#file-urls)/
s/^    - \[File Metadata\](#file-metadata)$/    - [ファイルメタ情報](#file-metadata)/
s/^- \[Storing Files\](#storing-files)$/- [ファイル保存](#storing-files)/
s/^    - \[File Uploads\](#file-uploads)$/    - [ファイルアップロード](#file-uploads)/
s/^    - \[File Visibility\](#file-visibility)$/    - [ファイル視認性](#file-visibility)/
s/^- \[Deleting Files\](#deleting-files)$/- [ファイル削除](#deleting-files)/
s/^- \[Directories\](#directories)$/- [ディレクトリ](#directories)/
s/^- \[Custom Filesystems\](#custom-filesystems)$/- [カスタムファイルシステム](#custom-filesystems)/
s/^## Introduction$/## イントロダクション/
s/^Laravel provides a powerful filesystem abstraction thanks to the wonderful \[Flysystem\](https:\/\/github\.com\/thephpleague\/flysystem) PHP package by Frank de Jonge\. The Laravel Flysystem integration provides simple to use drivers for working with local filesystems, Amazon S3, and Rackspace Cloud Storage\. Even better, it's amazingly simple to switch between these storage options as the API remains the same for each system\.$/LaravelはFrank de Jongeさんが作成した拝みたいほど素晴らしい、抽象ファイルシステムである[Flysystem](https:\/\/github.com\/thephpleague\/flysystem) PHPパッケージを提供しています。LaravelとFlysystemの統合によりローカルのファイルシステム、Amazon S3、Rackspaceクラウドストレージを操作できる、シンプルなドライバが提供できました。更に素晴らしいことにそれぞれのシステムに対し同じAPIを使用しているため、ストレージをとても簡単に変更できるのです。/
s/^## Configuration$/## 設定/
s/^The filesystem configuration file is located at `config\/filesystems\.php`\. Within this file you may configure all of your "disks"\. Each disk represents a particular storage driver and storage location\. Example configurations for each supported driver are included in the configuration file\. So, modify the configuration to reflect your storage preferences and credentials\.$/ファイルシステムの設定ファイルは、`config\/filesystems.php`です。このファイルの中に全「ディスク」の設定があります。それぞれのディスクは特定のストレージドライバと保存場所を表します。設定ファイルにはサポート済みのドライバそれぞれの設定例を用意しています。ですからストレージの設定と認証情報を反映するように、設定オプションを簡単に修正できます。/
s/^Of course, you may configure as many disks as you like, and may even have multiple disks that use the same driver\.$/もちろん好きなだけディスクを設定できますし、同じドライバに対し複数のディスクを持つことも可能です。/
s/^### The Public Disk$/### パブリックディスク/
s/^The `public` disk is intended for files that are going to be publicly accessible\. By default, the `public` disk uses the `local` driver and stores these files in `storage\/app\/public`\. To make them accessible from the web, you should create a symbolic link from `public\/storage` to `storage\/app\/public`\. This convention will keep your publicly accessible files in one directory that can be easily shared across deployments when using zero down-time deployment systems like \[Envoyer\](https:\/\/envoyer\.io)\.$/`public`ディスクは一般公開へのアクセスを許すファイルを意味しています。デフォルトの`public`ディスクは、`local`ドライバを使用しており、`storage\/app\/public`下に存在しているファイルです。Webからのアクセスを許すには、`public\/storage`から`storage\/app\/public`へシンボリックリンクを張る必要があります。この手法により、公開ファイルを一つのディレクトリへ留め、[Envoyer](https:\/\/envoyer.io)のようなリリース時のダウンタイムが起きない開発システムを使っている場合、各リリース間でファイルを簡単に共有できます。/
s/^To create the symbolic link, you may use the `storage:link` Artisan command:$/シンボリックリンクを張るには、`storage:link` Artisanコマンドを使用します。/
s/^Of course, once a file has been stored and the symbolic link has been created, you can create a URL to the files using the `asset` helper:$/もちろん、ファイルを保存し、シンボリックリンクが張られたら、`asset`ヘルパを使いファイルへのURLを生成できます。/
s/^    echo asset('storage\/file\.txt');$/    echo asset('storage\/file.txt');/
s/^### The Local Driver$/### ローカルディスク/
s/^When using the `local` driver, all file operations are relative to the `root` directory defined in your configuration file\. By default, this value is set to the `storage\/app` directory\. Therefore, the following method would store a file in `storage\/app\/file\.txt`:$/`local`ドライバを使う場合、設定ファイルで指定した`root`ディレクトリからの相対位置で全ファイル操作が行われることに注意してください。デフォルトでこの値は`storage\/app`ディレクトリに設定されています。そのため次のメソッドでファイルは`storage\/app\/file.txt`として保存されます。/
s/^    Storage::disk('local')->put('file\.txt', 'Contents');$/    Storage::disk('local')->put('file.txt', 'Contents');/
s/^### Driver Prerequisites$/### ドライバ要件/
s/^#### Composer Packages$/#### Composerパッケージ/
s/^Before using the SFTP, S3, or Rackspace drivers, you will need to install the appropriate package via Composer:$/SFTPやS3、Rackspaceドライバを使用する場合は、それに適合するパッケージをComposerでインストールする必要があります。/
s/^- SFTP: `league\/flysystem-sftp ~1\.0`$/- SFTP: `league\/flysystem-sftp ~1.0`/
s/^- Amazon S3: `league\/flysystem-aws-s3-v3 ~1\.0`$/- Amazon S3: `league\/flysystem-aws-s3-v3 ~1.0`/
s/^- Rackspace: `league\/flysystem-rackspace ~1\.0`$/- Rackspace: `league\/flysystem-rackspace ~1.0`/
s/^An absolute must for performance is to use a cached adapter\. You will need an additional package for this:$/パフォーマンスを上げるため、絶対に必要なのはキャッシュアダプタです。そのためには、追加のパッケージが必要です。/
s/^- CachedAdapter: `league\/flysystem-cached-adapter ~1\.0`$/- CachedAdapter: `league\/flysystem-cached-adapter ~1.0`/
s/^#### S3 Driver Configuration$/#### S3ドライバ設定/
s/^The S3 driver configuration information is located in your `config\/filesystems\.php` configuration file\. This file contains an example configuration array for an S3 driver\. You are free to modify this array with your own S3 configuration and credentials\. For convenience, these environment variables match the naming convention used by the AWS CLI\.$/S3ドライバの設定情報は、`config\/filesystems.php`設定ファイルにあります。このファイルはS3ドライバの設定配列のサンプルを含んでいます。この配列を自由に、自分のS3設定と認証情報に合わせて、変更してください。使いやすいように、環境変数はAWSで使用されている命名規約に合わせてあります。/
s/^#### FTP Driver Configuration$/#### FTPドライバ設定/
s/^Laravel's Flysystem integrations works great with FTP; however, a sample configuration is not included with the framework's default `filesystems\.php` configuration file\. If you need to configure a FTP filesystem, you may use the example configuration below:$/Laravelのファイルシステム統合はFTPでも動作します。しかし、デフォルトでは、フレームワークの`filesystems.php`設定ファイルに、サンプルの設定を含めていません。FTPファイルシステムを設定する必要がある場合は、以下の設定例を利用してください。/
s/^    'ftp' => \[$/    'ftp' => [/
s/^        'host'     => 'ftp\.example\.com',$/        'host'     => 'ftp.example.com',/
s/^        \/\/ Optional FTP Settings\.\.\.$/        \/\/ FTP設定のオプション/
s/^    \],$/    ],/
s/^#### SFTP Driver Configuration$/#### SFTPドライバ設定/
s/^Laravel's Flysystem integrations works great with SFTP; however, a sample configuration is not included with the framework's default `filesystems\.php` configuration file\. If you need to configure a SFTP filesystem, you may use the example configuration below:$/Laravelのファイルシステム統合はSFTPできちんと動作します。しかし、デフォルトでは、フレームワークの`filesystems.php`設定ファイルに、サンプルの設定を含めていません。SFTPファイルシステムを設定する必要がある場合は、以下の設定例を利用してください。/
s/^    'sftp' => \[$/    'sftp' => [/
s/^        'host' => 'example\.com',$/        'host' => 'example.com',/
s/^        \/\/ Settings for SSH key based authentication\.\.\.$/        \/\/ SSH keyベースの認証の設定/
s/^        \/\/ Optional SFTP Settings\.\.\.$/        \/\/ FTP設定のオプション/
s/^    \],$/    ],/
s/^#### Rackspace Driver Configuration$/#### Rackspaceドライバ設定/
s/^Laravel's Flysystem integrations works great with Rackspace; however, a sample configuration is not included with the framework's default `filesystems\.php` configuration file\. If you need to configure a Rackspace filesystem, you may use the example configuration below:$/Laravelのファイルシステム統合はRackspaceでも動作します。しかし、デフォルトでは、フレームワークの`filesystems.php`設定ファイルに、サンプルの設定を含めていません。Rackspaceファイルシステムを設定する必要がある場合は、以下の設定例を利用してください。/
s/^    'rackspace' => \[$/    'rackspace' => [/
s/^        'endpoint'  => 'https:\/\/identity\.api\.rackspacecloud\.com\/v2\.0\/',$/        'endpoint'  => 'https:\/\/identity.api.rackspacecloud.com\/v2.0\/',/
s/^    \],$/    ],/
s/^### Caching$/### キャッシュ/
s/^To enable caching for a given disk, you may add a `cache` directive to the disk's configuration options\. The `cache` option should be an array of caching options containing the `disk` name, the `expire` time in seconds, and the cache `prefix`:$/特定のディスクでキャッシュを有効にするには、ディスクの設定オプションに、`cache`ディレクティブを追加してください。`cache`オプションは、`disk`名、`expire`期間を秒数、キャッシュの`prefix`を含むオプションの配列です。/
s/^    's3' => \[$/    's3' => [/
s/^        \/\/ Other Disk Options\.\.\.$/        \/\/ Other Disk Options.../
s/^        'cache' => \[$/        'cache' => [/
s/^        \],$/        ],/
s/^    \],$/    ],/
s/^## Obtaining Disk Instances$/## ディスクインスタンス取得/
s/^The `Storage` facade may be used to interact with any of your configured disks\. For example, you may use the `put` method on the facade to store an avatar on the default disk\. If you call methods on the `Storage` facade without first calling the `disk` method, the method call will automatically be passed to the default disk:$/`Storage`ファサードを使い設定済みのディスクへの操作ができます。たとえばこのファサードの`put`メソッドを使用し、デフォルトディスクにアバターを保存できます。`Storage`ファサードのメソッド呼び出しで最初に`disk`メソッドを呼び出さない場合、そのメソッドの呼び出しは自動的にデフォルトディスクに対し実行されます。/
s/^If your applications interacts with multiple disks, you may use the `disk` method on the `Storage` facade to work with files on a particular disk:$/複数ディスクを使用する場合、`Storage`ファサードの`disk`メソッドを使用し特定のディスクへアクセスできます。/
s/^## Retrieving Files$/## ファイル取得/
s/^The `get` method may be used to retrieve the contents of a file\. The raw string contents of the file will be returned by the method\. Remember, all file paths should be specified relative to the "root" location configured for the disk:$/`get`メソッドは指定したファイルの内容を取得するために使用します。ファイル内容がそのまま、メソッドより返されます。ファイルパスはすべて、ディスクに設定した「ルート(root)」からの相対位置で指定することを思い出してください。/
s/^    $contents = Storage::get('file\.jpg');$/    $contents = Storage::get('file.jpg');/
s/^The `exists` method may be used to determine if a file exists on the disk:$/`exists`メソッドは指定したディスクにファイルが存在しているかを判定するために使用します。/
s/^    $exists = Storage::disk('s3')->exists('file\.jpg');$/    $exists = Storage::disk('s3')->exists('file.jpg');/
s/^### Downloading Files$/### ファイルのダウンロード/
s/^The `download` method may be used to generate a response that forces the user's browser to download the file at the given path\. The `download` method accepts a file name as the second argument to the method, which will determine the file name that is seen by the user downloading the file\. Finally, you may pass an array of HTTP headers as the third argument to the method:$/`download`メソッドは、指定したパスへファイルをダウンロードするように、ユーザーのブラウザへ強制するレスポンスを生成するために使用します。`download`メソッドはファイル名を第２引数として受け取り、ダウンロード先のファイル名を指定します。最後に第３引数として、HTTPヘッダの配列を渡せます。/
s/^    return Storage::download('file\.jpg');$/    return Storage::download('file.jpg');/
s/^    return Storage::download('file\.jpg', $name, $headers);$/    return Storage::download('file.jpg', $name, $headers);/
s/^### File URLs$/### ファイルURL/
s/^You may use the `url` method to get the URL for the given file\. If you are using the `local` driver, this will typically just prepend `\/storage` to the given path and return a relative URL to the file\. If you are using the `s3` or `rackspace` driver, the fully qualified remote URL will be returned:$/指定したファイルのURLを取得するには、`url`メソッドを使います。`local`ドライバを使用している場合、通常このメソッドは指定したパスの先頭に`\/strorage`を付け、そのファイルへの相対パスを返します。`s3`、もしくは`rackspace`ドライバを使用している場合、完全なリモートURLを返します。/
s/^    $url = Storage::url('file\.jpg');$/    $url = Storage::url('file.jpg');/
s/^> {note} Remember, if you are using the `local` driver, all files that should be publicly accessible should be placed in the `storage\/app\/public` directory\. Furthermore, you should \[create a symbolic link\](#the-public-disk) at `public\/storage` which points to the `storage\/app\/public` directory\.$/> {note} `local`ドライバを使用する場合、一般公開するファイルはすべて、`storage\/app\/public`ディレクトリへ設置する必要があることを忘れないでください。さらに、`public\/storage`から`storage\/app\/public`ディレクトリへ[シンボリックリンクを張る](#the-public-disk)必要もあります。/
s/^#### Temporary URLs$/#### 一時的なURL/
s/^For files stored using the `s3` or `rackspace` driver, you may create a temporary URL to a given file using the `temporaryUrl` method\. This methods accepts a path and a `DateTime` instance specifying when the URL should expire:$/`s3`、もしくは`rackspace`ドライバを使用して保存したファイルに対し、指定ファイルの一時的なURLを作成する場合は、`temporaryUrl`メソッドを使用します。このメソッドはパスと、URLの有効期限を指定する`DateTime`インスタンスを引数に取ります。/
s/^        'file\.jpg', now()->addMinutes(5)$/        'file.jpg', now()->addMinutes(5)/
s/^#### Local URL Host Customization$/#### ローカルURLホストカスタマイズ/
s/^If you would like to pre-define the host for files stored on a disk using the `local` driver, you may add a `url` option to the disk's configuration array:$/`local`ドライバを使用し、ディスク上に保存されるファイルのホストを事前定義したい場合は、ディスク設定配列へ`url`オプションを追加してください。/
s/^    'public' => \[$/    'public' => [/
s/^        'url' => env('APP_URL')\.'\/storage',$/        'url' => env('APP_URL').'\/storage',/
s/^    \],$/    ],/
s/^### File Metadata$/### ファイルメタ情報/
s/^In addition to reading and writing files, Laravel can also provide information about the files themselves\. For example, the `size` method may be used to get the size of the file in bytes:$/ファイルの読み書きに加え、Laravelはファイル自体に関する情報も提供します。たとえば、`size`メソッドはファイルサイズをバイトで取得するために、使用します。/
s/^    $size = Storage::size('file\.jpg');$/    $size = Storage::size('file.jpg');/
s/^The `lastModified` method returns the UNIX timestamp of the last time the file was modified:$/`lastModified`メソッドは最後にファイルが更新された時のUnixタイムスタンプを返します。/
s/^    $time = Storage::lastModified('file\.jpg');$/    $time = Storage::lastModified('file.jpg');/
s/^## Storing Files$/## ファイル保存/
s/^The `put` method may be used to store raw file contents on a disk\. You may also pass a PHP `resource` to the `put` method, which will use Flysystem's underlying stream support\. Using streams is greatly recommended when dealing with large files:$/`put`メソッドはファイル内容をディスクに保存するために使用します。`put`メソッドにはPHPの`resource`も渡すことができ、Flysystemの裏で動いているストリームサポートを使用します。大きなファイルを取り扱う場合は、ストリームの使用を強く推奨します。/
s/^    Storage::put('file\.jpg', $contents);$/    Storage::put('file.jpg', $contents);/
s/^    Storage::put('file\.jpg', $resource);$/    Storage::put('file.jpg', $resource);/
s/^#### Automatic Streaming$/#### 自動ストリーミング/
s/^If you would like Laravel to automatically manage streaming a given file to your storage location, you may use the `putFile` or `putFileAs` method\. This method accepts either a `Illuminate\\Http\\File` or `Illuminate\\Http\\UploadedFile` instance and will automatically stream the file to your desired location:$/指定したファイル位置のファイルのストリーミングを自動的にLaravelに管理させたい場合は、`putFile`か`putFileAs`メソッドを使います。このメソッドは、`Illuminate\\Http\\File`か`Illuminate\\Http\\UploadedFile`のインスタンスを引数に取り、希望する場所へファイルを自動的にストリームします。/
s/^    \/\/ Automatically generate a unique ID for file name\.\.\.$/    \/\/ 自動的に一意のIDがファイル名として指定される/
s/^    \/\/ Manually specify a file name\.\.\.$/    \/\/ ファイル名を指定する/
s/^    Storage::putFileAs('photos', new File('\/path\/to\/photo'), 'photo\.jpg');$/    Storage::putFileAs('photos', new File('\/path\/to\/photo'), 'photo.jpg');/
s/^There are a few important things to note about the `putFile` method\. Note that we only specified a directory name, not a file name\. By default, the `putFile` method will generate a unique ID to serve as the file name\. The file's extension will be determined by examining the file's MIME type\. The path to the file will be returned by the `putFile` method so you can store the path, including the generated file name, in your database\.$/`putFile`メソッドにはいくつか重要な注意点があります。ファイル名ではなく、ディレクトリ名を指定することに注意してください。`putFile`メソッドは一意のIDを保存ファイル名として生成します。ファイルの拡張子は、MIMEタイプの検査により決まります。`putFile`メソッドからファイルへのパスが返されますので、生成されたファイル名も含めたパスをデータベースへ保存することができます。/
s/^The `putFile` and `putFileAs` methods also accept an argument to specify the "visibility" of the stored file\. This is particularly useful if you are storing the file on a cloud disk such as S3 and would like the file to be publicly accessible:$/`putFile`と`putFileAs`メソッドはさらに、保存ファイルの「視認性」を指定する引数も受け付けます。これは特にS3などのクラウドディスクにファイルを保存し、一般公開の視認性を設定したい場合に便利です。/
s/^#### Prepending & Appending To Files$/#### ファイルの先頭／末尾への追加/
s/^The `prepend` and `append` methods allow you to write to the beginning or end of a file:$/`prepend`と`append`メソッドで、ファイルの初めと終わりに内容を追加できます。/
s/^    Storage::prepend('file\.log', 'Prepended Text');$/    Storage::prepend('file.log', 'Prepended Text');/
s/^    Storage::append('file\.log', 'Appended Text');$/    Storage::append('file.log', 'Appended Text');/
s/^#### Copying & Moving Files$/#### ファイルコピーと移動/
s/^The `copy` method may be used to copy an existing file to a new location on the disk, while the `move` method may be used to rename or move an existing file to a new location:$/`copy`メソッドは、存在するファイルをディスク上の新しい場所へコピーするために使用します。一方の`move`メソッドはリネームや存在するファイルを新しい場所へ移動するために使用します。/
s/^    Storage::copy('old\/file\.jpg', 'new\/file\.jpg');$/    Storage::copy('old\/file.jpg', 'new\/file.jpg');/
s/^    Storage::move('old\/file\.jpg', 'new\/file\.jpg');$/    Storage::move('old\/file.jpg', 'new\/file.jpg');/
s/^### File Uploads$/### ファイルアップロード/
s/^In web applications, one of the most common use-cases for storing files is storing user uploaded files such as profile pictures, photos, and documents\. Laravel makes it very easy to store uploaded files using the `store` method on an uploaded file instance\. Call the `store` method with the path at which you wish to store the uploaded file:$/Webアプリケーションで、ファイルを保存する一般的なケースは、ユーザーがプロファイル画像や写真、ドキュメントをアップロードする場合でしょう。アップロードファイルインスタンスに`store`メソッドを使えば、アップロードファイルの保存はLaravelで簡単に行なえます。アップロードファイルを保存したいパスを指定し、`store`メソッドを呼び出してください。/
s/^        \/\*\*$/        \/**/
s/^         \* Update the avatar for the user\.$/         * ユーザーのアバターの更新/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^There are a few important things to note about this example\. Note that we only specified a directory name, not a file name\. By default, the `store` method will generate a unique ID to serve as the file name\. The file's extension will be determined by examining the file's MIME type\. The path to the file will be returned by the `store` method so you can store the path, including the generated file name, in your database\.$/この例には重要な点が含まれています。ファイル名ではなく、ディレクトリ名を指定している点に注目です。デフォルトで`store`メソッドは、一意のIDをファイル名として生成します。ファイルの拡張子は、MIMEタイプの検査により決まります。`store`メソッドからファイルパスが返されますので、生成されたファイル名を含めた、そのファイルパスをデータベースに保存できます。/
s/^You may also call the `putFile` method on the `Storage` facade to perform the same file manipulation as the example above:$/上の例と同じ操作を行うため、`Strorage`ファサードの`putFile`メソッドを呼び出すこともできます。/
s/^#### Specifying A File Name$/#### ファイル名の指定/
s/^If you would not like a file name to be automatically assigned to your stored file, you may use the `storeAs` method, which receives the path, the file name, and the (optional) disk as its arguments:$/保存ファイルが自動的に命名されたくなければ、ファイルパスとファイル名、（任意で）ディスクを引数に持つ`storeAs`メソッドを使ってください。/
s/^Of course, you may also use the `putFileAs` method on the `Storage` facade, which will perform the same file manipulation as the example above:$/もちろん、上記の例と同じファイル操作を行う、`Storage`ファサードの`putFileAs`メソッドも使用できます。/
s/^#### Specifying A Disk$/#### ディスクの指定/
s/^By default, this method will use your default disk\. If you would like to specify another disk, pass the disk name as the second argument to the `store` method:$/デフォルトで、`store`メソッドはデフォルトディスクを使用します。他のディスクを指定したい場合は第２引数として、ディスク名を渡してください。/
s/^        'avatars\/'\.$request->user()->id, 's3'$/        'avatars\/'.$request->user()->id, 's3'/
s/^### File Visibility$/### ファイル視認性/
s/^In Laravel's Flysystem integration, "visibility" is an abstraction of file permissions across multiple platforms\. Files may either be declared `public` or `private`\. When a file is declared `public`, you are indicating that the file should generally be accessible to others\. For example, when using the S3 driver, you may retrieve URLs for `public` files\.$/LaravelのFlysystem統合では、複数のプラットフォームにおけるファイルパーミッションを「視認性」として抽象化しています。ファイルは`public`か`private`のどちらかとして宣言します。ファイルを`public`として宣言するのは、他からのアクセスを全般的に許可することを表明することです。たとえば、S3ドライバ使用時には、`public`ファイルのURLを取得することになります。/
s/^You can set the visibility when setting the file via the `put` method:$/`put`メソッドでファイルをセットする時に、視認性を設定できます。/
s/^    Storage::put('file\.jpg', $contents, 'public');$/    Storage::put('file.jpg', $contents, 'public');/
s/^If the file has already been stored, its visibility can be retrieved and set via the `getVisibility` and `setVisibility` methods:$/もし、ファイルが既に保存済みであるなら、`getVisibility`と`setVisibility`により、視認性を取得／設定できます。/
s/^    $visibility = Storage::getVisibility('file\.jpg');$/    $visibility = Storage::getVisibility('file.jpg');/
s/^    Storage::setVisibility('file\.jpg', 'public')$/    Storage::setVisibility('file.jpg', 'public')/
s/^## Deleting Files$/## ファイル削除/
s/^The `delete` method accepts a single filename or an array of files to remove from the disk:$/`delete`メソッドはディスクから削除するファイルを単独、もしくは配列で受け付けます。/
s/^    Storage::delete('file\.jpg');$/    Storage::delete('file.jpg');/
s/^    Storage::delete(\['file\.jpg', 'file2\.jpg'\]);$/    Storage::delete(['file.jpg', 'file2.jpg']);/
s/^If necessary, you may specify the disk that the file should be deleted from:$/必要であれば、削除先のディスクを指定できます。/
s/^    Storage::disk('s3')->delete('folder_path\/file_name\.jpg');$/    Storage::disk('s3')->delete('folder_path\/file_name.jpg');/
s/^## Directories$/## ディレクトリ/
s/^#### Get All Files Within A Directory$/#### ディレクトリの全ファイル取得/
s/^The `files` method returns an array of all of the files in a given directory\. If you would like to retrieve a list of all files within a given directory including all sub-directories, you may use the `allFiles` method:$/`files`メソッドは指定したディレクトリの全ファイルの配列を返します。指定したディレクトリのサブディレクトリにある全ファイルのリストも取得したい場合は、`allFiles`メソッドを使ってください。/
s/^#### Get All Directories Within A Directory$/#### ディレクトリの全ディレクトリ取得/
s/^The `directories` method returns an array of all the directories within a given directory\. Additionally, you may use the `allDirectories` method to get a list of all directories within a given directory and all of its sub-directories:$/`directories`メソッドは指定したディレクトリの全ディレクトリの配列を返します。指定したディレクトリ下の全ディレクトリと、サブディレクトリ下の全ディレクトリも取得したい場合は、`allDirectories`メソッドを使ってください。/
s/^    \/\/ Recursive\.\.\.$/    \/\/ 再帰的/
s/^#### Create A Directory$/#### ディレクトリ作成/
s/^The `makeDirectory` method will create the given directory, including any needed sub-directories:$/`makeDirectory`メソッドは必要なサブディレクトリを含め、指定したディレクトリを作成します。/
s/^#### Delete A Directory$/#### ディレクトリ削除/
s/^Finally, the `deleteDirectory` may be used to remove a directory and all of its files:$/最後の`deleteDirectory`は、ディレクトリと中に含まれている全ファイルを削除するために使用されます。/
s/^## Custom Filesystems$/## カスタムファイルシステム/
s/^Laravel's Flysystem integration provides drivers for several "drivers" out of the box; however, Flysystem is not limited to these and has adapters for many other storage systems\. You can create a custom driver if you want to use one of these additional adapters in your Laravel application\.$/LaravelのFlysystem統合には、最初から様々な「ドライバ」が含まれています。しかしFlysystemはこれらのドライバに限定されず、他の保存領域システムにも適用できます。皆さんのLaravelアプリケーションに適合した保存システムのカスタムドライバを作成することができます。/
s/^In order to set up the custom filesystem you will need a Flysystem adapter\. Let's add a community maintained Dropbox adapter to our project:$/カスタムファイルシステムを準備するには、Flysystemアダプタが必要です。プロジェクトへコミュニティによりメンテナンスされているDropboxアダプタを追加してみましょう。/
s/^Next, you should create a \[service provider\](\/docs\/{{version}}\/providers) such as `DropboxServiceProvider`\. In the provider's `boot` method, you may use the `Storage` facade's `extend` method to define the custom driver:$/次に、たとえば`DropboxServiceProvider`のような、[サービスプロバイダ](\/docs\/{{version}}\/providers)を用意してください。プロバイダの`boot`メソッドの中で`Storage`ファサードの`extend`メソッドを使い、カスタムドライバを定義できます。/
s/^        \/\*\*$/        \/**/
s/^         \* Perform post-registration booting of services\.$/         * サービスの初期処理登録後に実行/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^                    $config\['authorization_token'\]$/                    $config['authorization_token']/
s/^        \/\*\*$/        \/**/
s/^         \* Register bindings in the container\.$/         * コンテナで結合の登録/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^The first argument of the `extend` method is the name of the driver and the second is a Closure that receives the `$app` and `$config` variables\. The resolver Closure must return an instance of `League\\Flysystem\\Filesystem`\. The `$config` variable contains the values defined in `config\/filesystems\.php` for the specified disk\.$/`extend`メソッドの最初の引数はドライバの名前で、２つ目は`$app`と`$config`変数を受け取るクロージャです。このリゾルバークロージャは`League\\Flysystem\\Filesystem`のインスタンスを返す必要があります。`$config`変数は`config\/filesystems.php`で定義したディスクの値を含んでいます。/
s/^Once you have created the service provider to register the extension, you may use the `dropbox` driver in your `config\/filesystems\.php` configuration file\.$/拡張を登録するサービスプロバイダを作成したら、`config\/filesystems.php`設定ファイルで`dropbox`ドライバを使用できます。/
