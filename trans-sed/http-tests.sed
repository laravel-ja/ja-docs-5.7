s/^# HTTP Tests$/# HTTPテスト/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^    - \[Customizing Request Headers\](#customizing-request-headers)$/    - [リクエストヘッダのカスタマイズ](#customizing-request-headers)/
s/^- \[Session \/ Authentication\](#session-and-authentication)$/- [セッション／認証](#session-and-authentication)/
s/^- \[Testing JSON APIs\](#testing-json-apis)$/- [JSON APIのテスト](#testing-json-apis)/
s/^- \[Testing File Uploads\](#testing-file-uploads)$/- [ファイルアップロードのテスト](#testing-file-uploads)/
s/^- \[Available Assertions\](#available-assertions)$/- [利用可能なアサート](#available-assertions)/
s/^    - \[Response Assertions\](#response-assertions)$/    - [レスポンスのアサート](#response-assertions)/
s/^    - \[Authentication Assertions\](#authentication-assertions)$/    - [認証のアサート](#authentication-assertions)/
s/^## Introduction$/## イントロダクション/
s/^Laravel provides a very fluent API for making HTTP requests to your application and examining the output\. For example, take a look at the test defined below:$/Laravelはアプリケーションに対するHTTPリクエストを作成し、出力を検査するためのとても記述的なAPIを用意しています。例として、以下のテストをご覧ください。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic test example\.$/         * 基本的な機能テストの例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^The `get` method makes a `GET` request into the application, while the `assertStatus` method asserts that the returned response should have the given HTTP status code\. In addition to this simple assertion, Laravel also contains a variety of assertions for inspecting the response headers, content, JSON structure, and more\.$/`get`メソッドはアプリケーションに対して、`GET`リクエストを作成します。`assertStatus`メソッドは返されたレスポンスが指定したHTTPステータスコードを持っていることをアサートします。このシンプルな例に加え、レスポンスヘッダ、コンテンツ、JSON構造などを検査する様々なアサートをLaravelは用意しています。/
s/^### Customizing Request Headers$/### リクエストヘッダのカスタマイズ/
s/^You may use the `withHeaders` method to customize the request's headers before it is sent to the application\. This allows you to add any custom headers you would like to the request:$/アプリーケーションへ送り返す前に、リクエストヘッダをカスタマイズするには、`withHeaders`メソッドを使います。これにより任意のカスタムヘッダをリクエストに追加することができます。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic functional test example\.$/         * 基本的な機能テストの例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            $response = $this->withHeaders(\[$/            $response = $this->withHeaders([/
s/^            \])->json('POST', '\/user', \['name' => 'Sally'\]);$/            ])->json('POST', '\/user', ['name' => 'Sally']);/
s/^                ->assertJson(\[$/                ->assertJson([/
s/^                \]);$/                ]);/
s/^> {tip} The CSRF middleware is automatically disabled when running tests\.$/> {tip} テスト実行時、CSRFミドルウェアは自動的に無効になります。/
s/^## Session \/ Authentication$/## セッション／認証/
s/^Laravel provides several helpers for working with the session during HTTP testing\. First, you may set the session data to a given array using the `withSession` method\. This is useful for loading the session with data before issuing a request to your application:$/Laravelはテスト時にセッションを操作するたくさんのヘルパも提供しています。１つ目は指定した配列をセッションに保存する`withSession`メソッドです。これはアプリケーションのリクエストをテストする前に、データをセッションにロードしたい場合に便利です。/
s/^            $response = $this->withSession(\['foo' => 'bar'\])$/            $response = $this->withSession(['foo' => 'bar'])/
s/^Of course, one common use of the session is for maintaining state for the authenticated user\. The `actingAs` helper method provides a simple way to authenticate a given user as the current user\. For example, we may use a \[model factory\](\/docs\/{{version}}\/database-testing#writing-factories) to generate and authenticate a user:$/もちろん認証済みのユーザーのようなユーザー状態をセッションへ保持するのは一般的です。`actingAs`ヘルパメソッドは現在認証済みのユーザーを指定する簡単な手段を提供します。例として、[モデルファクトリ](\/docs\/{{version}}\/database-testing#writing-factories)でユーザーを生成し、認証してみましょう。/
s/^                             ->withSession(\['foo' => 'bar'\])$/                             ->withSession(['foo' => 'bar'])/
s/^You may also specify which guard should be used to authenticate the given user by passing the guard name as the second argument to the `actingAs` method:$/ユーザーの認証にどのガードを使用するかを指定したい場合、`actingAs`メソッドの第２引数にガード名を渡します。/
s/^## Testing JSON APIs$/## JSON APIのテスト/
s/^Laravel also provides several helpers for testing JSON APIs and their responses\. For example, the `json`, `get`, `post`, `put`, `patch`, and `delete` methods may be used to issue requests with various HTTP verbs\. You may also easily pass data and headers to these methods\. To get started, let's write a test to make a `POST` request to `\/user` and assert that the expected data was returned:$/LaravelはJSON APIとレスポンスをテストする数多くのヘルパを用意しています。たとえば、`json`、`get`、`post`、`put`、`patch`、`delete`メソッドはそれぞれのHTTP動詞のリクエストを発生させるために使用します。これらのメソッドには簡単にデータやヘッダを渡せます。手始めに、`\/user`に対する`POST`リクエストを作成し、期待したデータが返されることをアサートするテストを書いてみましょう。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic functional test example\.$/         * 基本的な機能テストの例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            $response = $this->json('POST', '\/user', \['name' => 'Sally'\]);$/            $response = $this->json('POST', '\/user', ['name' => 'Sally']);/
s/^                ->assertJson(\[$/                ->assertJson([/
s/^                \]);$/                ]);/
s/^> {tip} The `assertJson` method converts the response to an array and utilizes `PHPUnit::assertArraySubset` to verify that the given array exists within the JSON response returned by the application\. So, if there are other properties in the JSON response, this test will still pass as long as the given fragment is present\.$/> {tip} The `assertJson`メソッドはレスポンスを配列へ変換し、`PHPUnit::assertArraySubset`を使用しアプリケーションへ戻ってきたJSONレスポンスの中に、指定された配列が含まれているかを確認します。そのため、JSONレスポンスの中に他のプロパティが存在していても、このテストは指定した一部が残っている限り、テストはパスし続けます。/
s/^### Verifying An Exact JSON Match$/### JSONとの完全一致を検証/
s/^If you would like to verify that the given array is an \*\*exact\*\* match for the JSON returned by the application, you should use the `assertExactJson` method:$/アプリケーションから返されるJSONが、指定した配列と**完全に**一致することを検証したい場合は、`assertExactJson`メソッドを使用します。/
s/^        \/\*\*$/        \/**/
s/^         \* A basic functional test example\.$/         * 基本的な機能テストの例/
s/^         \*$/         */
s/^         \* @return void$/         * @return void/
s/^         \*\/$/         *\//
s/^            $response = $this->json('POST', '\/user', \['name' => 'Sally'\]);$/            $response = $this->json('POST', '\/user', ['name' => 'Sally']);/
s/^                ->assertExactJson(\[$/                ->assertExactJson([/
s/^                \]);$/                ]);/
s/^## Testing File Uploads$/## ファイルアップロードのテスト/
s/^The `Illuminate\\Http\\UploadedFile` class provides a `fake` method which may be used to generate dummy files or images for testing\. This, combined with the `Storage` facade's `fake` method greatly simplifies the testing of file uploads\. For example, you may combine these two features to easily test an avatar upload form:$/`Illuminate\\Http\\UploadedFile`クラスは、テストのためにファイルやイメージのダミーを生成するための`fake`メソッドを用意しています。これを`Storage`ファサードの`fake`メソッドと組み合わせることで、ファイルアップロードのテストがとてもシンプルになります。例として、２つの機能を組み合わせて、アバターのアップロードをテストしてみましょう。/
s/^            $file = UploadedFile::fake()->image('avatar\.jpg');$/            $file = UploadedFile::fake()->image('avatar.jpg');/
s/^            $response = $this->json('POST', '\/avatar', \[$/            $response = $this->json('POST', '\/avatar', [/
s/^            \]);$/            ]);/
s/^            \/\/ Assert the file was stored\.\.\.$/            \/\/ ファイルが保存されたことをアサートする/
s/^            \/\/ Assert a file does not exist\.\.\.$/            \/\/ ファイルが存在しないことをアサートする/
s/^            Storage::disk('avatars')->assertMissing('missing\.jpg');$/            Storage::disk('avatars')->assertMissing('missing.jpg');/
s/^#### Fake File Customization$/#### ダミーファイルのカスタマイズ/
s/^When creating files using the `fake` method, you may specify the width, height, and size of the image in order to better test your validation rules:$/`fake`メソッドでファイルを生成するときには、バリデーションルールをより便利にテストできるように、画像の幅、高さ、サイズを指定できます。/
s/^    UploadedFile::fake()->image('avatar\.jpg', $width, $height)->size(100);$/    UploadedFile::fake()->image('avatar.jpg', $width, $height)->size(100);/
s/^In addition to creating images, you may create files of any other type using the `create` method:$/画像の生成に付け加え、`create`メソッドで他のタイプのファイルも生成できます。/
s/^    UploadedFile::fake()->create('document\.pdf', $sizeInKilobytes);$/    UploadedFile::fake()->create('document.pdf', $sizeInKilobytes);/
s/^## Available Assertions$/## 利用可能なアサート/
s/^### Response Assertions$/### レスポンスのアサート/
s/^Laravel provides a variety of custom assertion methods for your \[PHPUnit\](https:\/\/phpunit\.de\/) tests\. These assertions may be accessed on the response that is returned from the `json`, `get`, `post`, `put`, and `delete` test methods:$/[PHPUnit](https:\/\/phpunit.de\/)テスト用に、数多くの追加アサートメソッドをLaravelは提供しています。以下のアサートで、`json`、`get`、`post`、`put`、`delete`テストメソッドから返されたレスポンスへアクセスしてください。/
s/^    \.collection-method-list > p {$/    .collection-method-list > p {/
s/^    \.collection-method-list a {$/    .collection-method-list a {/
s/^\[assertCookie\](#assert-cookie)$/[assertCookie](#assert-cookie)/
s/^\[assertCookieExpired\](#assert-cookie-expired)$/[assertCookieExpired](#assert-cookie-expired)/
s/^\[assertCookieNotExpired\](#assert-cookie-not-expired)$/[assertCookieNotExpired](#assert-cookie-not-expired)/
s/^\[assertCookieMissing\](#assert-cookie-missing)$/[assertCookieMissing](#assert-cookie-missing)/
s/^\[assertDontSee\](#assert-dont-see)$/[assertDontSee](#assert-dont-see)/
s/^\[assertDontSeeText\](#assert-dont-see-text)$/[assertDontSeeText](#assert-dont-see-text)/
s/^\[assertExactJson\](#assert-exact-json)$/[assertExactJson](#assert-exact-json)/
s/^\[assertForbidden\](#assert-forbidden)$/[assertForbidden](#assert-forbidden)/
s/^\[assertHeader\](#assert-header)$/[assertHeader](#assert-header)/
s/^\[assertHeaderMissing\](#assert-header-missing)$/[assertHeaderMissing](#assert-header-missing)/
s/^\[assertJson\](#assert-json)$/[assertJson](#assert-json)/
s/^\[assertJsonCount\](#assert-json-count)$/[assertJsonCount](#assert-json-count)/
s/^\[assertJsonFragment\](#assert-json-fragment)$/[assertJsonFragment](#assert-json-fragment)/
s/^\[assertJsonMissing\](#assert-json-missing)$/[assertJsonMissing](#assert-json-missing)/
s/^\[assertJsonMissingExact\](#assert-json-missing-exact)$/[assertJsonMissingExact](#assert-json-missing-exact)/
s/^\[assertJsonStructure\](#assert-json-structure)$/[assertJsonStructure](#assert-json-structure)/
s/^\[assertJsonValidationErrors\](#assert-json-validation-errors)$/[assertJsonValidationErrors](#assert-json-validation-errors)/
s/^\[assertLocation\](#assert-location)$/[assertLocation](#assert-location)/
s/^\[assertNotFound\](#assert-not-found)$/[assertNotFound](#assert-not-found)/
s/^\[assertOk\](#assert-ok)$/[assertOk](#assert-ok)/
s/^\[assertPlainCookie\](#assert-plain-cookie)$/[assertPlainCookie](#assert-plain-cookie)/
s/^\[assertRedirect\](#assert-redirect)$/[assertRedirect](#assert-redirect)/
s/^\[assertSee\](#assert-see)$/[assertSee](#assert-see)/
s/^\[assertSeeInOrder\](#assert-see-in-order)$/[assertSeeInOrder](#assert-see-in-order)/
s/^\[assertSeeText\](#assert-see-text)$/[assertSeeText](#assert-see-text)/
s/^\[assertSeeTextInOrder\](#assert-see-text-in-order)$/[assertSeeTextInOrder](#assert-see-text-in-order)/
s/^\[assertSessionHas\](#assert-session-has)$/[assertSessionHas](#assert-session-has)/
s/^\[assertSessionHasAll\](#assert-session-has-all)$/[assertSessionHasAll](#assert-session-has-all)/
s/^\[assertSessionHasErrors\](#assert-session-has-errors)$/[assertSessionHasErrors](#assert-session-has-errors)/
s/^\[assertSessionHasErrorsIn\](#assert-session-has-errors-in)$/[assertSessionHasErrorsIn](#assert-session-has-errors-in)/
s/^\[assertSessionHasNoErrors\](#assert-session-has-no-errors)$/[assertSessionHasNoErrors](#assert-session-has-no-errors)/
s/^\[assertSessionMissing\](#assert-session-missing)$/[assertSessionMissing](#assert-session-missing)/
s/^\[assertStatus\](#assert-status)$/[assertStatus](#assert-status)/
s/^\[assertSuccessful\](#assert-successful)$/[assertSuccessful](#assert-successful)/
s/^\[assertViewHas\](#assert-view-has)$/[assertViewHas](#assert-view-has)/
s/^\[assertViewHasAll\](#assert-view-has-all)$/[assertViewHasAll](#assert-view-has-all)/
s/^\[assertViewIs\](#assert-view-is)$/[assertViewIs](#assert-view-is)/
s/^\[assertViewMissing\](#assert-view-missing)$/[assertViewMissing](#assert-view-missing)/
s/^Assert that the response contains the given cookie:$/レスポンスが指定したクッキーを持っていることを宣言。/
s/^Assert that the response contains the given cookie and it is expired:$/レスポンスが指定したクッキーを持っており、期限切れであることを宣言。/
s/^Assert that the response contains the given cookie and it is not expired:$/レスポンスが指定したクッキーを持っており、期限切れでないことを宣言。/
s/^Assert that the response does not contains the given cookie:$/レスポンスが指定したクッキーを持っていないことを宣言。/
s/^Assert that the given string is not contained within the response:$/指定した文字列がレスポンスに含まれていないことを宣言。/
s/^Assert that the given string is not contained within the response text:$/指定した文字列がレスポンステキストに含まれていないことを宣言。/
s/^Assert that the response contains an exact match of the given JSON data:$/レスポンスが指定したJSONデータと完全に一致するデータを持っていることを宣言。/
s/^Assert that the response has a forbidden status code:$/レスポンスがforbiddenステータスコードを持っていることを宣言。/
s/^Assert that the given header is present on the response:$/レスポンスに指定したヘッダが存在していることを宣言。/
s/^Assert that the given header is not present on the response:$/レスポンスに指定したヘッダが存在していないことを宣言。/
s/^Assert that the response contains the given JSON data:$/レスポンスが指定したJSONデータを持っていることを宣言。/
s/^Assert that the response JSON has an array with the expected number of items at the given key:$/レスポンスJSONが、指定したキーのアイテムを、期待値分持っていることを宣言。/
s/^Assert that the response contains the given JSON fragment:$/レスポンスが指定したJSONの一部を含んでいることを宣言。/
s/^Assert that the response does not contain the given JSON fragment:$/レスポンスが指定したJSONの一部を含んでいないことを宣言。/
s/^Assert that the response does not contain the exact JSON fragment:$/レスポンスがJSONの一部をそのまま含んでいないことを宣言。/
s/^Assert that the response has a given JSON structure:$/レスポンスが指定したJSONの構造を持っていることを宣言。/
s/^Assert that the response has the given JSON validation errors for the given keys:$/レスポンスが指定したキーの、指定したJSONバリデーションエラーを持っていることを宣言。/
s/^Assert that the response has the given URI value in the `Location` header:$/レスポンスの`Location`ヘッダが、指定したURIを持つことを宣言。/
s/^Assert that the response has a not found status code:$/レスポンスがnot foundのステータスコードを持っていることを宣言。/
s/^Assert that the response has a 200 status code:$/レスポンスが200のステータスコードを持っていることを宣言。/
s/^Assert that the response contains the given cookie (unencrypted):$/レスポンスが指定した暗号化されていないクッキーを持っていることを宣言。/
s/^Assert that the response is a redirect to a given URI:$/クライアントが指定したURIへリダイレクトすることを宣言。/
s/^Assert that the given string is contained within the response:$/指定した文字列がレスポンスに含まれていることを宣言。/
s/^Assert that the given strings are contained in order within the response:$/指定した文字列が、順番通りにレスポンスに含まれていることを宣言。/
s/^Assert that the given string is contained within the response text:$/指定した文字列がレスポンステキストに含まれていることを宣言。/
s/^Assert that the given strings are contained in order within the response text:$/指定した文字列が、順番通りにレンスポンステキストへ含まれていることを宣言。/
s/^Assert that the session contains the given piece of data:$/セッションが指定したデータを持っていることを宣言。/
s/^Assert that the session has a given list of values:$/セッションが指定したリストの値を持っていることを宣言。/
s/^Assert that the session contains an error for the given field:$/セッションが指定したフィールドに対するエラーを含んでいることを宣言。/
s/^Assert that the session has the given errors:$/セッションが指定したエラーを持っていることを宣言。/
s/^    $response->assertSessionHasErrorsIn($errorBag, $keys = \[\], $format = null);$/    $response->assertSessionHasErrorsIn($errorBag, $keys = [], $format = null);/
s/^Assert that the session has no errors:$/セッションがエラーを持っていないことを宣言。/
s/^Assert that the session does not contain the given key:$/セッションが指定したキーを持っていないことを宣言。/
s/^Assert that the response has a given code:$/クライアントのレスポンスが指定したコードであることを宣言。/
s/^Assert that the response has a successful status code:$/レスポンスが成功のステータスコードであることを宣言。/
s/^Assert that the response view was given a piece of data:$/レスポンスビューが指定したデータを持っていることを宣言。/
s/^Assert that the response view has a given list of data:$/レスポンスビューが指定したリストのデータを持っていることを宣言。/
s/^Assert that the given view was returned by the route:$/ルートにより、指定したビューが返されたことを宣言。/
s/^Assert that the response view is missing a piece of bound data:$/レスポンスビューが指定したデータを持っていないことを宣言。/
s/^### Authentication Assertions$/### 認証のアサート/
s/^Laravel also provides a variety of authentication related assertions for your \[PHPUnit\](https:\/\/phpunit\.de\/) tests:$/Laravelは、[PHPUnit](https:\/\/phpunit.de\/)テストのために認証関連の様々なアサーションも提供しています。/
s/^Method  | Description$/メソッド           |                 説明/
s/^------------- | -------------$/------------------------------------------ | --------------------------------------------/
s/^`$this->assertAuthenticated($guard = null);`  |  Assert that the user is authenticated\.$/`$this->assertAuthenticated($guard = null);`  |  ユーザーが認証されていることを宣言。/
s/^`$this->assertGuest($guard = null);`  |  Assert that the user is not authenticated\.$/`$this->assertGuest($guard = null);`  |  ユーザーが認証されていないことを宣言。/
s/^`$this->assertAuthenticatedAs($user, $guard = null);`  |  Assert that the given user is authenticated\.$/`$this->assertAuthenticatedAs($user, $guard = null);`  |  指定したユーザーが認証されていることを宣言。/
s/^`$this->assertCredentials(array $credentials, $guard = null);`  |  Assert that the given credentials are valid\.$/`$this->assertCredentials(array $credentials, $guard = null);`  |  指定した認証情報が有効であることを宣言。/
s/^`$this->assertInvalidCredentials(array $credentials, $guard = null);`  |  Assert that the given credentials are invalid\.$/`$this->assertInvalidCredentials(array $credentials, $guard = null);`  |  指定した認証情報が無効であることを宣言。/
