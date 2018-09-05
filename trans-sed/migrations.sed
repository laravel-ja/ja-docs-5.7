s/^# Database: Migrations$/# データベース：マイグレーション/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Generating Migrations\](#generating-migrations)$/- [マイグレーション生成](#generating-migrations)/
s/^- \[Migration Structure\](#migration-structure)$/- [マイグレーション構造](#migration-structure)/
s/^- \[Running Migrations\](#running-migrations)$/- [マイグレーション実行](#running-migrations)/
s/^    - \[Rolling Back Migrations\](#rolling-back-migrations)$/    - [ロールバック](#rolling-back-migrations)/
s/^- \[Tables\](#tables)$/- [テーブル](#tables)/
s/^    - \[Creating Tables\](#creating-tables)$/    - [テーブル作成](#creating-tables)/
s/^    - \[Renaming \/ Dropping Tables\](#renaming-and-dropping-tables)$/    - [テーブルリネーム／削除](#renaming-and-dropping-tables)/
s/^- \[Columns\](#columns)$/- [カラム](#columns)/
s/^    - \[Creating Columns\](#creating-columns)$/    - [カラム作成](#creating-columns)/
s/^    - \[Column Modifiers\](#column-modifiers)$/    - [カラム修飾子](#column-modifiers)/
s/^    - \[Modifying Columns\](#modifying-columns)$/    - [カラム変更](#modifying-columns)/
s/^    - \[Dropping Columns\](#dropping-columns)$/    - [カラム削除](#dropping-columns)/
s/^- \[Indexes\](#indexes)$/- [インデックス](#indexes)/
s/^    - \[Creating Indexes\](#creating-indexes)$/    - [インデックス作成](#creating-indexes)/
s/^    - \[Renaming Indexes\](#renaming-indexes)$/    - [インデックス名変更](#renaming-indexes)/
s/^    - \[Dropping Indexes\](#dropping-indexes)$/    - [インデックス削除](#dropping-indexes)/
s/^    - \[Foreign Key Constraints\](#foreign-key-constraints)$/    - [外部キー制約](#foreign-key-constraints)/
s/^## Introduction$/## イントロダクション/
s/^Migrations are like version control for your database, allowing your team to easily modify and share the application's database schema\. Migrations are typically paired with Laravel's schema builder to easily build your application's database schema\. If you have ever had to tell a teammate to manually add a column to their local database schema, you've faced the problem that database migrations solve\.$/マイグレーションとはデータベースのバージョンコントロールのような機能です。アプリケーションデータベースのスキーマの更新をチームで簡単に共有できるようにしてくれます。マイグレーションは基本的にLaravelのスキーマビルダとペアで使い、アプリケーションのデータベーススキーマの作成を楽にしてくれます。もしあなたが今まで、チームメイトに彼らのローカルデータベーススキーマに手作業でカラムを追加するよう依頼したことがあるなら、データベースマイグレーションは、そうした問題を解決してくれます。/
s/^The Laravel `Schema` \[facade\](\/docs\/{{version}}\/facades) provides database agnostic support for creating and manipulating tables across all of Laravel's supported database systems\.$/Laravelの`Schema`[ファサード](\/docs\/{{version}}\/facades)は、テーブルの作成や操作をサポートしてるデータベースシステム全部に対しサポートします。/
s/^## Generating Migrations$/## マイグレーション生成/
s/^To create a migration, use the `make:migration` \[Artisan command\](\/docs\/{{version}}\/artisan):$/`make:migration` [Artisanコマンド](\/docs\/{{version}}\/artisan)を使いマイグレーションを生成できます。/
s/^The new migration will be placed in your `database\/migrations` directory\. Each migration file name contains a timestamp which allows Laravel to determine the order of the migrations\.$/マイグレーションは`database\/migrations`フォルダに設置されます。マイグレーションの実行順をフレームワークに知らせるため、名前にタイムスタンプが含まれています。/
s/^The `--table` and `--create` options may also be used to indicate the name of the table and whether the migration will be creating a new table\. These options pre-fill the generated migration stub file with the specified table:$/`--table`と`--create`オプションも、テーブル名とマイグレーションで新しいテーブルを生成するかを指定するために使用できます。これらのオプションは生成するマイグレーションスタブの中へ指定したテーブルを予め埋め込みます。/
s/^If you would like to specify a custom output path for the generated migration, you may use the `--path` option when executing the `make:migration` command\. The given path should be relative to your application's base path\.$/マイグレーションの生成出力先のパスを指定したい場合は、`make:migrate`コマンドの実行時に`--path`オプションを付けてください。パスはアプリケーションのベースパスからの相対位置です。/
s/^## Migration Structure$/## マイグレーション構造/
s/^A migration class contains two methods: `up` and `down`\. The `up` method is used to add new tables, columns, or indexes to your database, while the `down` method should reverse the operations performed by the `up` method\.$/マイグレーションは`up`と`down`の２メソッドを含んでいます。`up`メソッドは新しいテーブル、カラム、インデックスをデータベースに追加するために使用し、一方の`down`メソッドは`up`メソッドが行った操作を元に戻します。/
s/^Within both of these methods you may use the Laravel schema builder to expressively create and modify tables\. To learn about all of the methods available on the `Schema` builder, \[check out its documentation\](#creating-tables)\. For example, this migration example creates a `flights` table:$/両方のメソッドでは、記述的にテーブルを作成したり、変更したりできるLaravelスキーマビルダが使えます。`Schema`ビルダで使用できる全メソッドは、[このドキュメント後半](#creating-tables)で確認してください。例として`flights`テーブルを作成するマイグレーションを見てください。/
s/^        \/\*\*$/        \/**/
s/^         \* Run the migrations\.$/         * マイグレーション実行/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^        \/\*\*$/        \/**/
s/^         \* Reverse the migrations\.$/         * マイグレーションを元に戻す/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^## Running Migrations$/## マイグレーション実行/
s/^To run all of your outstanding migrations, execute the `migrate` Artisan command:$/アプリケーションで用意したマイグレーションを全部実行するには、`migrate` Artisanコマンドを使用します。/
s/^> {note} If you are using the \[Homestead virtual machine\](\/docs\/{{version}}\/homestead), you should run this command from within your virtual machine\.$/> {note} [Homestead仮想マシン](\/docs\/{{version}}\/homestead)を使用している場合、このコマンドは仮想マシン内で実行してください。/
s/^#### Forcing Migrations To Run In Production$/#### 実働環境でのマイグレーション強制/
s/^Some migration operations are destructive, which means they may cause you to lose data\. In order to protect you from running these commands against your production database, you will be prompted for confirmation before the commands are executed\. To force the commands to run without a prompt, use the `--force` flag:$/いくつかのマイグレーション操作は破壊的です。つまりデーターを失う可能性があります。実働環境(production)のデータベースに対し、こうしたコマンドが実行されることから保護するために、コマンド実行前に確認のプロンプトが表示されます。コマンド実行時のプロンプトを出さないためには、`--force`フラグを指定してください。/
s/^### Rolling Back Migrations$/### ロールバック/
s/^To rollback the latest migration operation, you may use the `rollback` command\. This command rolls back the last "batch" of migrations, which may include multiple migration files:$/最後のマイグレーション操作をロールバックしたい場合は、`rollback`コマンドを使います。このロールバックは、最後に「一度に」実行したマイグレーションをまとめて元に戻します。/
s/^You may rollback a limited number of migrations by providing the `step` option to the `rollback` command\. For example, the following command will rollback the last five migrations:$/`rollback`コマンドに`step`オプションを付けると、巻き戻す数を限定できます。たとえば、次のコマンドは最後の5マイグレーションをロールバックします。/
s/^The `migrate:reset` command will roll back all of your application's migrations:$/`migrate:reset`コマンドはアプリケーション全部のマイグレーションをロールバックします。/
s/^#### Rollback & Migrate In Single Command$/#### rollbackとmigrateの１コマンド実行/
s/^The `migrate:refresh` command will roll back all of your migrations and then execute the `migrate` command\. This command effectively re-creates your entire database:$/`migrate:refresh`コマンドは全部のデータベースマイグレーションを最初にロールバックし、それから`migrate`コマンドを実行します。このコマンドはデータベース全体を作り直すために便利です。/
s/^    \/\/ Refresh the database and run all database seeds\.\.\.$/    \/\/ データベースをリフレッシュし、全データベースシードを実行/
s/^You may rollback & re-migrate a limited number of migrations by providing the `step` option to the `refresh` command\. For example, the following command will rollback & re-migrate the last five migrations:$/`refresh`コマンドに`step`オプションを付けると、巻き戻してからマイグレーションを再実行する数を限定できます。たとえば、次のコマンドは最後の5マイグレーションをロールバック後にマイグレートします。/
s/^#### Drop All Tables & Migrate$/#### 全テーブル削除後のマイグレーション/
s/^The `migrate:fresh` command will drop all tables from the database and then execute the `migrate` command:$/`migrate:fresh`コマンドは、データベースから全テーブルをドロップします。次に、`migrate`コマンドを実行してください。/
s/^## Tables$/## テーブル/
s/^### Creating Tables$/### テーブル作成/
s/^To create a new database table, use the `create` method on the `Schema` facade\. The `create` method accepts two arguments\. The first is the name of the table, while the second is a `Closure` which receives a `Blueprint` object that may be used to define the new table:$/新しいデータベーステーブルを作成するには、`Schema`ファサードの`create`メソッドを使用します。`create`メソッドは引数を２つ取ります。最初はテーブルの名前で、２つ目は新しいテーブルを定義するために使用する`Blueprint`オブジェクトを受け取る「クロージャ」です。/
s/^Of course, when creating the table, you may use any of the schema builder's \[column methods\](#creating-columns) to define the table's columns\.$/もちろんテーブル作成時には、テーブルのカラムを定義するためにスキーマビルダの[カラムメソッド](#creating-columns)をどれでも利用できます。/
s/^#### Checking For Table \/ Column Existence$/#### テーブル／カラムの存在チェック/
s/^You may easily check for the existence of a table or column using the `hasTable` and `hasColumn` methods:$/`hasTable`や`hasColumn`メソッドを使えば、テーブルやカラムの存在を簡単にチェックできます。/
s/^#### Database Connection & Table Options$/#### データベース接続とテーブル操作/
s/^If you want to perform a schema operation on a database connection that is not your default connection, use the `connection` method:$/デフォルト接続以外のデータベース接続でスキーマ操作を行いたい場合は、`connection`メソッドを使ってください。/
s/^You may use the following commands on the schema builder to define the table's options:$/テーブルのオプションを定義するため、以下のコマンドがスキーマビルダで使用できます。/
s/^Command  |  Description$/コマンド  |  説明/
s/^`$table->engine = 'InnoDB';`  |  Specify the table storage engine (MySQL)\.$/`$table->engine = 'InnoDB';`  |  テーブルストレージエンジンの指定(MySQL)/
s/^`$table->charset = 'utf8';`  |  Specify a default character set for the table (MySQL)\.$/`$table->charset = 'utf8';`  |  テーブルのデフォルトキャラクターセットの指定(MySQL)/
s/^`$table->collation = 'utf8_unicode_ci';`  |  Specify a default collation for the table (MySQL)\.$/`$table->collation = 'utf8_unicode_ci';`  |  テーブルのデフォルトコロケーションの指定(MySQL)/
s/^`$table->temporary();`  |  Create a temporary table (except SQL Server)\.$/`$table->temporary();`  |  一時テーブルの作成(SQL Server以外)/
s/^### Renaming \/ Dropping Tables$/### テーブルリネーム／削除/
s/^To rename an existing database table, use the `rename` method:$/既存のデータベーステーブルの名前を変えたい場合は、`rename`メソッドを使います。/
s/^To drop an existing table, you may use the `drop` or `dropIfExists` methods:$/存在するテーブルを削除する場合は、`drop`か`dropIfExists`メソッドを使います。/
s/^#### Renaming Tables With Foreign Keys$/#### 外部キーを持つテーブルのリネーム/
s/^Before renaming a table, you should verify that any foreign key constraints on the table have an explicit name in your migration files instead of letting Laravel assign a convention based name\. Otherwise, the foreign key constraint name will refer to the old table name\.$/テーブルのリネームを行う前に、Laravelの規約に基づいた名前の代わりに、マイグレーションファイル中で独自の名前付けた外部キー制約が存在していないか確認してください。そうしないと、外部キー制約名は古いテーブル名を参照してしまいます。/
s/^## Columns$/## カラム/
s/^### Creating Columns$/### カラム作成/
s/^The `table` method on the `Schema` facade may be used to update existing tables\. Like the `create` method, the `table` method accepts two arguments: the name of the table and a `Closure` that receives a `Blueprint` instance you may use to add columns to the table:$/存在するテーブルを更新するには、`Schema`ファサードの`table`メソッドを使います。`create`メソッドと同様に、`table`メソッドは２つの引数を取ります。テーブルの名前と、テーブルにカラムを追加するために使用する`Blueprint`インスタンスを受け取る「クロージャ」です。/
s/^#### Available Column Types$/#### 使用できるカラムタイプ/
s/^Of course, the schema builder contains a variety of column types that you may specify when building your tables:$/当然ながらスキーマビルダは、テーブルを構築する時に使用する様々なカラムタイプを持っています。/
s/^Command  |  Description$/コマンド  |  説明/
s/^`$table->bigIncrements('id');`  |  Auto-incrementing UNSIGNED BIGINT (primary key) equivalent column\.$/`$table->bigIncrements('id');`  |  符号なしBIGINTを使用した自動増分ID（主キー）/
s/^`$table->bigInteger('votes');`  |  BIGINT equivalent column\.$/`$table->bigInteger('votes');`  |  BIGINTカラム/
s/^`$table->binary('data');`  |  BLOB equivalent column\.$/`$table->binary('data');`  |  BLOBカラム/
s/^`$table->boolean('confirmed');`  |  BOOLEAN equivalent column\.$/`$table->boolean('confirmed');`  |  BOOLEANカラム/
s/^`$table->char('name', 100);`  |  CHAR equivalent column with an optional length\.$/`$table->char('name', 100);`  |  オプションの文字長を指定するCHARカラム/
s/^`$table->date('created_at');`  |  DATE equivalent column\.$/`$table->date('created_at');`  |  DATEカラム/
s/^`$table->dateTime('created_at');`  |  DATETIME equivalent column\.$/`$table->dateTime('created_at');`  |  DATETIMEカラム/
s/^`$table->dateTimeTz('created_at');`  |  DATETIME (with timezone) equivalent column\.$/`$table->dateTimeTz('created_at');`  |  タイムゾーン付きDATETIMEカラム/
s/^`$table->decimal('amount', 8, 2);`  |  DECIMAL equivalent column with a precision (total digits) and scale (decimal digits)\.$/`$table->decimal('amount', 8, 2);`  |  有効（全体桁数）／小数点以下桁数指定のDECIMALカラム/
s/^`$table->double('amount', 8, 2);`  |  DOUBLE equivalent column with a precision (total digits) and scale (decimal digits)\.$/`$table->double('amount', 8, 2);`  |  有効（全体桁数）／小数点以下桁数指定のDOUBLEカラム/
s/^`$table->enum('level', \['easy', 'hard'\]);`  |  ENUM equivalent column\.$/`$table->enum('level', ['easy', 'hard']);`  |  ENUMカラム/
s/^`$table->float('amount', 8, 2);`  |  FLOAT equivalent column with a precision (total digits) and scale (decimal digits)\.$/`$table->float('amount', 8, 2);`  |  有効（全体桁数）／小数点以下桁数指定のFLOATカラム/
s/^`$table->geometry('positions');`  |  GEOMETRY equivalent column\.$/`$table->geometry('positions');`  |  GEOMETRYカラム/
s/^`$table->geometryCollection('positions');`  |  GEOMETRYCOLLECTION equivalent column\.$/`$table->geometryCollection('positions');`  |  GEOMETRYCOLLECTIONカラム/
s/^`$table->increments('id');`  |  Auto-incrementing UNSIGNED INTEGER (primary key) equivalent column\.$/`$table->increments('id');`  |  符号なしINTを使用した自動増分ID（主キー）/
s/^`$table->integer('votes');`  |  INTEGER equivalent column\.$/`$table->integer('votes');`  |  INTEGERカラム/
s/^`$table->ipAddress('visitor');`  |  IP address equivalent column\.$/`$table->ipAddress('visitor');`  |  IPアドレスカラム/
s/^`$table->json('options');`  |  JSON equivalent column\.$/`$table->json('options');`  |  JSONフィールド/
s/^`$table->jsonb('options');`  |  JSONB equivalent column\.$/`$table->jsonb('options');`  |  JSONBフィールド/
s/^`$table->lineString('positions');`  |  LINESTRING equivalent column\.$/`$table->lineString('positions');`  |  LINESTRINGカラム/
s/^`$table->longText('description');`  |  LONGTEXT equivalent column\.$/`$table->longText('description');`  |  LONGTEXTカラム/
s/^`$table->macAddress('device');`  |  MAC address equivalent column\.$/`$table->macAddress('device');`  |  MACアドレスカラム/
s/^`$table->mediumIncrements('id');`  |  Auto-incrementing UNSIGNED MEDIUMINT (primary key) equivalent column\.$/`$table->mediumIncrements('id');`  |  符号なしMEDIUMINTを使用した自動増分ID（主キー）/
s/^`$table->mediumInteger('votes');`  |  MEDIUMINT equivalent column\.$/`$table->mediumInteger('votes');`  |  MEDIUMINTカラム/
s/^`$table->mediumText('description');`  |  MEDIUMTEXT equivalent column\.$/`$table->mediumText('description');`  |  MEDIUMTEXTカラム/
s/^`$table->morphs('taggable');`  |  Adds `taggable_id` UNSIGNED BIGINT and `taggable_type` VARCHAR equivalent columns\.$/`$table->morphs('taggable');`  |  符号なしBIGINTの`taggable_id`と文字列の`taggable_type`を追加/
s/^`$table->multiLineString('positions');`  |  MULTILINESTRING equivalent column\.$/`$table->multiLineString('positions');`  |  MULTILINESTRINGカラム/
s/^`$table->multiPoint('positions');`  |  MULTIPOINT equivalent column\.$/`$table->multiPoint('positions');`  |  MULTIPOINTカラム/
s/^`$table->multiPolygon('positions');`  |  MULTIPOLYGON equivalent column\.$/`$table->multiPolygon('positions');`  |  MULTIPOLYGONカラム/
s/^`$table->nullableMorphs('taggable');`  |  Adds nullable versions of `morphs()` columns\.$/`$table->nullableMorphs('taggable');`  |  NULL値可能な`morphs()`カラム/
s/^`$table->nullableTimestamps();`  |  Alias of `timestamps()` method\.$/`$table->nullableTimestamps();`  |  `timestamps()`メソッドの別名/
s/^`$table->point('position');`  |  POINT equivalent column\.$/`$table->point('position');`  |  POINTカラム/
s/^`$table->polygon('positions');`  |  POLYGON equivalent column\.$/`$table->polygon('positions');`  |  POLYGONカラム/
s/^`$table->rememberToken();`  |  Adds a nullable `remember_token` VARCHAR(100) equivalent column\.$/`$table->rememberToken();`  |  VARCHAR(100)でNULL値可能な`remember_token`を追加/
s/^`$table->smallIncrements('id');`  |  Auto-incrementing UNSIGNED SMALLINT (primary key) equivalent column\.$/`$table->smallIncrements('id');`  |  符号なしSMALLINTを使用した自動増分ID（主キー）/
s/^`$table->smallInteger('votes');`  |  SMALLINT equivalent column\.$/`$table->smallInteger('votes');`  |  SMALLINTカラム/
s/^`$table->softDeletes();`  |  Adds a nullable `deleted_at` TIMESTAMP equivalent column for soft deletes\.$/`$table->softDeletes();`  |  ソフトデリートのためにNULL値可能な`deleted_at` TIMESTAMPカラム追加/
s/^`$table->softDeletesTz();`  |  Adds a nullable `deleted_at` TIMESTAMP (with timezone) equivalent column for soft deletes\.$/`$table->softDeletesTz();`  |  ソフトデリートのためにNULL値可能な`deleted_at`タイムゾーン付きTIMESTAMPカラム追加/
s/^`$table->string('name', 100);`  |  VARCHAR equivalent column with a optional length\.$/`$table->string('name', 100);`  |  オプションの文字長を指定したVARCHARカラム/
s/^`$table->text('description');`  |  TEXT equivalent column\.$/`$table->text('description');`  |  TEXTカラム/
s/^`$table->time('sunrise');`  |  TIME equivalent column\.$/`$table->time('sunrise');`  |  TIMEカラム/
s/^`$table->timeTz('sunrise');`  |  TIME (with timezone) equivalent column\.$/`$table->timeTz('sunrise');`  |  タイムゾーン付きTIMEカラム/
s/^`$table->timestamp('added_on');`  |  TIMESTAMP equivalent column\.$/`$table->timestamp('added_on');`  |  TIMESTAMPカラム/
s/^`$table->timestampTz('added_on');`  |  TIMESTAMP (with timezone) equivalent column\.$/`$table->timestampTz('added_on');`  |  タイムゾーン付きTIMESTAMPカラム/
s/^`$table->timestamps();`  |  Adds nullable `created_at` and `updated_at` TIMESTAMP equivalent columns\.$/`$table->timestamps();`  |  NULL値可能な`created_at`と`updated_at`カラム追加/
s/^`$table->timestampsTz();`  |  Adds nullable `created_at` and `updated_at` TIMESTAMP (with timezone) equivalent columns\.$/`$table->timestampsTz();`  |  タイムゾーン付きのNULL値可能な`created_at`と`updated_at`カラム追加/
s/^`$table->tinyIncrements('id');`  |  Auto-incrementing UNSIGNED TINYINT (primary key) equivalent column\.$/`$table->tinyIncrements('id');`  |  符号なしTINYINTを使用した自動増分ID（主キー）/
s/^`$table->tinyInteger('votes');`  |  TINYINT equivalent column\.$/`$table->tinyInteger('votes');`  |  TINYINTカラム/
s/^`$table->unsignedBigInteger('votes');`  |  UNSIGNED BIGINT equivalent column\.$/`$table->unsignedBigInteger('votes');`  |  符号なしBIGINTカラム/
s/^`$table->unsignedDecimal('amount', 8, 2);`  |  UNSIGNED DECIMAL equivalent column with a precision (total digits) and scale (decimal digits)\.$/`$table->unsignedDecimal('amount', 8, 2);`  |  有効（全体桁数）／小数点以下桁数指定の符号なしDECIMALカラム/
s/^`$table->unsignedInteger('votes');`  |  UNSIGNED INTEGER equivalent column\.$/`$table->unsignedInteger('votes');`  |  符号なしINTカラム/
s/^`$table->unsignedMediumInteger('votes');`  |  UNSIGNED MEDIUMINT equivalent column\.$/`$table->unsignedMediumInteger('votes');`  |  符号なしMEDIUMINTカラム/
s/^`$table->unsignedSmallInteger('votes');`  |  UNSIGNED SMALLINT equivalent column\.$/`$table->unsignedSmallInteger('votes');`  |  符号なしSMALLINTカラム/
s/^`$table->unsignedTinyInteger('votes');`  |  UNSIGNED TINYINT equivalent column\.$/`$table->unsignedTinyInteger('votes');`  |  符号なしTINYINTカラム/
s/^`$table->uuid('id');`  |  UUID equivalent column\.$/`$table->uuid('id');`  |  UUIDカラム/
s/^`$table->year('birth_year');`  |  YEAR equivalent column\.$/`$table->year('birth_year');`  |  YEARカラム/
s/^### Column Modifiers$/### カラム修飾子/
s/^In addition to the column types listed above, there are several column "modifiers" you may use while adding a column to a database table\. For example, to make the column "nullable", you may use the `nullable` method:$/上記のカラムタイプに付け加え、カラムを追加するときに使用できる様々な修飾子もあります。たとえばカラムを「NULL値設定可能(nullable)」にしたい場合は、`nullable`メソッドを使います。/
s/^Below is a list of all the available column modifiers\. This list does not include the \[index modifiers\](#creating-indexes):$/下表が使用可能なカラム修飾子の一覧です。[インデックス修飾子](#creating-indexes)は含まれていません。/
s/^Modifier  |  Description$/修飾子  |  説明/
s/^`->after('column')`  |  Place the column "after" another column (MySQL)$/`->after('column')`  |  指定カラムの次に他のカラムを設置(MySQLのみ)/
s/^`->autoIncrement()`  |  Set INTEGER columns as auto-increment (primary key)$/`->autoIncrement()`  |  整数カラムを自動増分ID（主キー）へ設定/
s/^`->charset('utf8')`  |  Specify a character set for the column (MySQL)$/`->charset('utf8')`  |  カラムへキャラクタセットを指定(MySQLのみ)/
s/^`->collation('utf8_unicode_ci')`  |  Specify a collation for the column (MySQL\/SQL Server)$/`->collation('utf8_unicode_ci')`  |  カラムへコロケーションを指定(MySQL\/SQL Serverのみ)/
s/^`->comment('my comment')`  |  Add a comment to a column (MySQL)$/`->comment('my comment')`  |  カラムにコメント追加(MySQLのみ)/
s/^`->default($value)`  |  Specify a "default" value for the column$/`->default($value)`  |  カラムのデフォルト(default)値設定/
s/^`->first()`  |  Place the column "first" in the table (MySQL)$/`->first()`  |  カラムをテーブルの最初(first)に設置する(MySQLのみ)/
s/^`->nullable($value = true)`  |  Allows (by default) NULL values to be inserted into the column$/`->nullable($value = true)`  |  （デフォルトで）NULL値をカラムに挿入する/
s/^`->storedAs($expression)`  |  Create a stored generated column (MySQL)$/`->storedAs($expression)`  |  stored generatedカラムを生成(MySQLのみ)/
s/^`->unsigned()`  |  Set INTEGER columns as UNSIGNED (MySQL)$/`->unsigned()`  |  整数カラムを符号なしに設定(MySQLのみ)/
s/^`->useCurrent()`  |  Set TIMESTAMP columns to use CURRENT_TIMESTAMP as default value$/`->useCurrent()`  |  TIMESTAMPカラムのデフォルト値をCURRENT_TIMESTAMPに指定/
s/^`->virtualAs($expression)`  |  Create a virtual generated column (MySQL)$/`->virtualAs($expression)`  |  virtual generatedカラムを生成(MySQLのみ)/
s/^### Modifying Columns$/### カラム変更/
s/^#### Prerequisites$/#### 動作要件/
s/^Before modifying a column, be sure to add the `doctrine\/dbal` dependency to your `composer\.json` file\. The Doctrine DBAL library is used to determine the current state of the column and create the SQL queries needed to make the specified adjustments to the column:$/カラムを変更する前に、`composer.json`ファイルで`doctrine\/dbal`を確実に追加してください。Doctrine DBALライブラリーは現在のカラムの状態を決め、指定されたカラムに対する修正を行うSQLクエリを生成するために、使用しています。/
s/^#### Updating Column Attributes$/#### カラム属性の変更/
s/^The `change` method allows you to modify some existing column types to a new type or modify the column's attributes\. For example, you may wish to increase the size of a string column\. To see the `change` method in action, let's increase the size of the `name` column from 25 to 50:$/`change`メソッドは存在するカラムを新しいタイプへ変更するか、カラムの属性を変えます。たとえば文字列の長さを増やしたい場合です。`change`の実例を見てもらうため、`name`カラムのサイズを25から50へ増やしてみます。/
s/^We could also modify a column to be nullable:$/さらにカラムをNULL値設定可能にしてみましょう。/
s/^> {note} Only the following column types can be "changed": bigInteger, binary, boolean, date, dateTime, dateTimeTz, decimal, integer, json, longText, mediumText, smallInteger, string, text, time, unsignedBigInteger, unsignedInteger and unsignedSmallInteger\.$/> {note} 以降のカラムタイプのみ変更可能です：bigInteger、binary、boolean、date、dateTime、dateTimeTz、decimal、integer、json、longText、mediumText、smallInteger、string、text、time、unsignedBigInteger、unsignedInteger and unsignedSmallInteger/
s/^#### Renaming Columns$/#### カラム名変更/
s/^To rename a column, you may use the `renameColumn` method on the Schema builder\. Before renaming a column, be sure to add the `doctrine\/dbal` dependency to your `composer\.json` file:$/カラム名を変更するには、`renameColumn`メソッドをスキーマビルダで使用してください。カラム名を変更する前に、`composer.json`ファイルで`doctrine\/dbal`を依存パッケージとして追加してください。/
s/^> {note} Renaming any column in a table that also has a column of type `enum` is not currently supported\.$/> {note} カラムタイプが`enum`のテーブル中のカラム名変更は、現在サポートしていません。/
s/^### Dropping Columns$/### カラム削除/
s/^To drop a column, use the `dropColumn` method on the Schema builder\. Before dropping columns from a SQLite database, you will need to add the `doctrine\/dbal` dependency to your `composer\.json` file and run the `composer update` command in your terminal to install the library:$/カラムをドロップするには、スキーマビルダの`dropColumn`メソッドを使用します。SQLiteデータベースからカラムをドロップする場合は、事前に`composer.json`ファイルへ`doctrine\/dbal`依存パッケージを追加してください。その後にライブラリーをインストールするため、ターミナルで`composer update`を実行してください。/
s/^You may drop multiple columns from a table by passing an array of column names to the `dropColumn` method:$/`dropColumn`メソッドにカラム名の配列を渡せば、テーブルから複数のカラムをドロップできます。/
s/^        $table->dropColumn(\['votes', 'avatar', 'location'\]);$/        $table->dropColumn(['votes', 'avatar', 'location']);/
s/^> {note} Dropping or modifying multiple columns within a single migration while using a SQLite database is not supported\.$/> {note} SQLite使用時に、一つのマイグレーションによる複数カラム削除／変更はサポートされていません。/
s/^#### Available Command Aliases$/#### 利用可能な別名コマンド/
s/^Command  |  Description$/コマンド  |  説明/
s/^`$table->dropRememberToken();`  |  Drop the `remember_token` column\.$/`$table->dropRememberToken();`  |  `remember_token`カラムのドロップ/
s/^`$table->dropSoftDeletes();`  |  Drop the `deleted_at` column\.$/`$table->dropSoftDeletes();`  |  `deleted_at`カラムのドロップ/
s/^`$table->dropSoftDeletesTz();`  |  Alias of `dropSoftDeletes()` method\.$/`$table->dropSoftDeletesTz();`  |  `dropSoftDeletes()`メソッドの別名/
s/^`$table->dropTimestamps();`  |  Drop the `created_at` and `updated_at` columns\.$/`$table->dropTimestamps();`  |  `created_at`と`updated_at`カラムのドロップ/
s/^`$table->dropTimestampsTz();` |  Alias of `dropTimestamps()` method\.$/`$table->dropTimestampsTz();` |  `dropTimestamps()`メソッドの別名/
s/^## Indexes$/## インデックス/
s/^### Creating Indexes$/### インデックス作成/
s/^The schema builder supports several types of indexes\. First, let's look at an example that specifies a column's values should be unique\. To create the index, we can chain the `unique` method onto the column definition:$/スキーマビルダは様々なインデックスタイプをサポートしています。まず指定したカラムの値を一意にする例を見てください。インデックスを作成するには、カラム定義に`unique`メソッドをチェーンで付け加えます。/
s/^Alternatively, you may create the index after defining the column\. For example:$/もしくはカラム定義の後でインデックスを作成することも可能です。例を見てください。/
s/^You may even pass an array of columns to an index method to create a compound (or composite) index:$/インデックスメソッドにカラムの配列を渡し、複合インデックスを作成することもできます。/
s/^    $table->index(\['account_id', 'created_at'\]);$/    $table->index(['account_id', 'created_at']);/
s/^Laravel will automatically generate a reasonable index name, but you may pass a second argument to the method to specify the name yourself:$/Laravelは自動的に、わかりやすいインデックス名を付けます。しかしメソッドの第２引数で、名前を指定することもできます。/
s/^#### Available Index Types$/#### 使用可能なインデックスタイプ/
s/^Each index method accepts an optional second argument to specify the name of the index\. If omitted, the name will be derived from the names of the table and column(s)\.$/各インデックスメソッドは、オプションとして第２引数に、インデックス名を指定できます。省略した場合、テーブルとカラムの名前から指定されます。/
s/^Command  |  Description$/コマンド  |  説明/
s/^`$table->primary('id');`  |  Adds a primary key\.$/`$table->primary('id');`  |  主キー追加/
s/^`$table->primary(\['id', 'parent_id'\]);`  |  Adds composite keys\.$/`$table->primary(['id', 'parent_id']);`  |  複合キー追加/
s/^`$table->unique('email');`  |  Adds a unique index\.$/`$table->unique('email');`  |  uniqueキー追加/
s/^`$table->index('state');`  |  Adds a plain index\.$/`$table->index('state');`  |  基本的なインデックス追加/
s/^`$table->spatialIndex('location');`  |  Adds a spatial index\. (except SQLite)$/`$table->spatialIndex('location');`  |  空間インデックス追加(SQLite以外)/
s/^#### Index Lengths & MySQL \/ MariaDB$/#### インデックス長とMySQL／MariaDB/
s/^Laravel uses the `utf8mb4` character set by default, which includes support for storing "emojis" in the database\. If you are running a version of MySQL older than the 5\.7\.7 release or MariaDB older than the 10\.2\.2 release, you may need to manually configure the default string length generated by migrations in order for MySQL to create indexes for them\. You may configure this by calling the `Schema::defaultStringLength` method within your `AppServiceProvider`:$/Laravelはデータベース中への「絵文字」保存をサポートするため、デフォルトで`utf8mb4`文字セットを使っています。バージョン5.7.7より古いMySQLや、バージョン10.2.2より古いMariaDBを使用している場合、マイグレーションにより生成されるデフォルトのインデックス用文字列長を明示的に設定する必要があります。`AppServiceProvider`中で`Schema::defaultStringLength`を呼び出してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Bootstrap any application services\.$/     * 全アプリケーションサービスの初期起動処理/
s/^     \*$/     */
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Alternatively, you may enable the `innodb_large_prefix` option for your database\. Refer to your database's documentation for instructions on how to properly enable this option\.$/もしくは、データベースの`innodb_large_prefix`オプションを有効にする方法もあります。このオプションを各自に有効にする方法は、使用するデータベースのドキュメントを参照してください。/
s/^### Renaming Indexes$/### インデックス名変更/
s/^To rename an index, you may use the `renameIndex` method\. This method accepts the current index name as its first argument and the desired name as its second argument:$/インデックス名を変更するためには、`renameIndex`メソッドを使用します。このメソッドは最初の引数として現在のインデックス名を受け取り、２つ目の引数として変更後の名前を受け取ります。/
s/^### Dropping Indexes$/### インデックス削除/
s/^To drop an index, you must specify the index's name\. By default, Laravel automatically assigns a reasonable name to the indexes\. Concatenate the table name, the name of the indexed column, and the index type\. Here are some examples:$/インデックスを削除する場合はインデックスの名前を指定します。Laravelはデフォルトで意味が通る名前をインデックスに付けます。テーブル名、インデックスしたカラム名、インデックスタイプをつなげたものです。いくつか例をご覧ください。/
s/^Command  |  Description$/コマンド  |  説明/
s/^`$table->dropPrimary('users_id_primary');`  |  Drop a primary key from the "users" table\.$/`$table->dropPrimary('users_id_primary');`  |  "users"テーブルから主キーを削除/
s/^`$table->dropUnique('users_email_unique');`  |  Drop a unique index from the "users" table\.$/`$table->dropUnique('users_email_unique');`  |  "users"テーブルからユニークキーを削除/
s/^`$table->dropIndex('geo_state_index');`  |  Drop a basic index from the "geo" table\.$/`$table->dropIndex('geo_state_index');`  |  "geo"テーブルから基本インデックスを削除/
s/^`$table->dropSpatialIndex('geo_location_spatialindex');`  |  Drop a spatial index from the "geo" table  (except SQLite)\.$/`$table->dropSpatialIndex('geo_location_spatialindex');`  |  "geo"テーブルから空間インデックスを削除(SQLite以外)/
s/^If you pass an array of columns into a method that drops indexes, the conventional index name will be generated based on the table name, columns and key type:$/カラムの配列をインデックス削除メソッドに渡すと、テーブル、カラム、キータイプに基づき、命名規則に従ったインデックス名が生成されます。/
s/^        $table->dropIndex(\['state'\]); \/\/ Drops index 'geo_state_index'$/        $table->dropIndex(['state']); \/\/ 'geo_state_index'インデックスを削除/
s/^### Foreign Key Constraints$/### 外部キー制約/
s/^Laravel also provides support for creating foreign key constraints, which are used to force referential integrity at the database level\. For example, let's define a `user_id` column on the `posts` table that references the `id` column on a `users` table:$/Laravelはデータベースレベルの整合性を強制するために、テーブルに対する外部キー束縛の追加も提供しています。たとえば`users`テーブルの`id`カラムを参照する、`posts`テーブルの`user_id`カラムを定義してみましょう。/
s/^You may also specify the desired action for the "on delete" and "on update" properties of the constraint:$/さらに束縛に対して「デリート時(on delete)」と「更新時(on update)」に対する処理をオプションとして指定できます。/
s/^To drop a foreign key, you may use the `dropForeign` method\. Foreign key constraints use the same naming convention as indexes\. So, we will concatenate the table name and the columns in the constraint then suffix the name with "_foreign":$/外部キーを削除するには、`dropForeign`メソッドを使用します。他のインデックスで使用されるものと似た命名規則が、外部キーにも使用されています。つまりテーブル名とカラム名をつなげ、"_foreign"を最後につけた名前になります。/
s/^Or, you may pass an array value which will automatically use the conventional constraint name when dropping:$/もしくは配列値を渡せば、削除時に自動的に命名規則に従った名前が使用されます。/
s/^    $table->dropForeign(\['user_id'\]);$/    $table->dropForeign(['user_id']);/
s/^You may enable or disable foreign key constraints within your migrations by using the following methods:$/以下のメソッドにより、マイグレーション中の外部キー制約の有効／無効を変更できます。/
