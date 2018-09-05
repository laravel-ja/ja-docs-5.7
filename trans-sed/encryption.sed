s/^# Encryption$/# 暗号化/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Configuration\](#configuration)$/- [設定](#configuration)/
s/^- \[Using The Encrypter\](#using-the-encrypter)$/- [エンクリプタの使用](#using-the-encrypter)/
s/^## Introduction$/## イントロダクション/
s/^Laravel's encrypter uses OpenSSL to provide AES-256 and AES-128 encryption\. You are strongly encouraged to use Laravel's built-in encryption facilities and not attempt to roll your own "home grown" encryption algorithms\. All of Laravel's encrypted values are signed using a message authentication code (MAC) so that their underlying value can not be modified once encrypted\.$/Laravelのエンクリプタ(encrypter)はOpenSSLを使い、AES-256とAES-128暗号化を提供しています。Laravelに組み込まれている暗号化機能を使用し、「自前」の暗号化アルゴリズムに走らないことを強くおすすめします。Laravelの全暗号化済み値は、メッセージ認証コード(MAC)を使用し署名され、一度暗号化されると値を変更できません。/
s/^## Configuration$/## 設定/
s/^Before using Laravel's encrypter, you must set a `key` option in your `config\/app\.php` configuration file\. You should use the `php artisan key:generate` command to generate this key since this Artisan command will use PHP's secure random bytes generator to build your key\. If this value is not properly set, all values encrypted by Laravel will be insecure\.$/Laravelのエンクリプタを使用する準備として、`config\/app.php`設定ファイルの`key`オプションをセットしてください。`php artisan key:generate`コマンドを使用し、このキーを生成すべきです。このArtisanコマンドはPHPの安全なランダムバイトジェネレータを使用し、キーを作成します。この値が確実に指定されていないと、Laravelにより暗号化された値は、すべて安全ではありません。/
s/^## Using The Encrypter$/## エンクリプタの使用/
s/^#### Encrypting A Value$/#### 値の暗号化/
s/^You may encrypt a value using the `encrypt` helper\. All encrypted values are encrypted using OpenSSL and the `AES-256-CBC` cipher\. Furthermore, all encrypted values are signed with a message authentication code (MAC) to detect any modifications to the encrypted string:$/`encrypt`ヘルパを使用し、値を暗号化できます。OpenSSLと`AES-256-CBC`アルゴリズムが使用され、全ての値は暗号化されます。さらに、全暗号化済み値はメッセージ認証コード(MAC)を使用し署名されますので、暗号化済み値の変更は感知されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Store a secret message for the user\.$/         * ユーザーの秘密のメッセージを保存/
s/^         \*$/         */
s/^         \* @param  Request  $request$/         * @param  Request  $request/
s/^         \* @param  int  $id$/         * @param  int  $id/
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^            $user->fill(\[$/            $user->fill([/
s/^            \])->save();$/            ])->save();/
s/^#### Encrypting Without Serialization$/#### シリアライズしない暗号化/
s/^Encrypted values are passed through `serialize` during encryption, which allows for encryption of objects and arrays\. Thus, non-PHP clients receiving encrypted values will need to `unserialize` the data\. If you would like to encrypt and decrypt values without serialization, you may use the `encryptString` and `decryptString` methods of the `Crypt` facade:$/暗号化の過程で暗号化する値は「シリアライズ(`serialize`)」されます。これにより、オブジェクトや配列の暗号化が可能になります。そのため、PHPではないクライアントで暗号化された値を受け取る場合、データを「非シリアライズ(`unserialize`)」する必要が起きるでしょう。もし、シリアライズせずに値を暗号化／復号したい場合は、`Crypt`ファサードの`encryptString`と`decryptString`を使用してください。/
s/^    $encrypted = Crypt::encryptString('Hello world\.');$/    $encrypted = Crypt::encryptString('Hello world.');/
s/^#### Decrypting A Value$/#### 値の復号/
s/^You may decrypt values using the `decrypt` helper\. If the value can not be properly decrypted, such as when the MAC is invalid, an `Illuminate\\Contracts\\Encryption\\DecryptException` will be thrown:$/`decrypt`ヘルパにより、値を復号することができます。MACが無効な場合など、その値が正しくない時は`Illuminate\\Contracts\\Encryption\\DecryptException`が投げられます。/
