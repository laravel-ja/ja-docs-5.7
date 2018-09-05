s/^# Mocking$/# モック/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#イントロダクション)/
s/^- \[Bus Fake\](#bus-fake)$/- [Bus Fake](#bus-fake)/
s/^- \[Event Fake\](#event-fake)$/- [Event Fake](#event-fake)/
s/^    - \[Scoped Event Fakes\](#scoped-event-fakes)$/    - [限定的なEvent Fakes](#scoped-event-fakes)/
s/^- \[Mail Fake\](#mail-fake)$/- [Mail Fake](#mail-fake)/
s/^- \[Notification Fake\](#notification-fake)$/- [Notification Fake](#notification-fake)/
s/^- \[Queue Fake\](#queue-fake)$/- [Queue Fake](#queue-fake)/
s/^- \[Storage Fake\](#storage-fake)$/- [Storage Fake](#storage-fake)/
s/^- \[Facades\](#mocking-facades)$/- [ファサード](#mocking-facades)/
s/^<a name="introduction"><\/a>$/<a name="イントロダクション"><\/a>/
s/^## Introduction$/## イントロダクション/
s/^When testing Laravel applications, you may wish to "mock" certain aspects of your application so they are not actually executed during a given test\. For example, when testing a controller that dispatches an event, you may wish to mock the event listeners so they are not actually executed during the test\. This allows you to only test the controller's HTTP response without worrying about the execution of the event listeners, since the event listeners can be tested in their own test case\.$/Laravelアプリケーションをテストするとき、アプリケーションの一部分を「モック」し、特定のテストを行う間は実際のコードを実行したくない場合があります。たとえば、イベントを発行するコントローラをテストする時は、実際に実行したくないイベントリスナをモックしたいと思うことでしょう。これにより、コントローラのHTTPレスポンスだけをテストでき、イベントリスナの実行は心配しなくて済みます。なぜなら、イベントリスナは自身のテストケースにおいて、テストできるからです。/
s/^Laravel provides helpers for mocking events, jobs, and facades out of the box\. These helpers primarily provide a convenience layer over Mockery so you do not have to manually make complicated Mockery method calls\. Of course, you are free to use \[Mockery\](http:\/\/docs\.mockery\.io\/en\/latest\/) or PHPUnit to create your own mocks or spies\.$/Laravelにはイベント、ジョブ、ファサードを最初からモックできるヘルパが準備されています。これらのヘルパは主に[Mockery](http:\/\/docs.mockery.io\/en\/latest\/)上で動作する便利なレイヤーを提供しているので、複雑なMockeryのメソッドコールを自分で作成する必要はありません。もちろん、MockeryやPHPUnitを使用し、自身のモックやスパイを自由に作成してください。/
s/^As an alternative to mocking, you may use the `Bus` facade's `fake` method to prevent jobs from being dispatched\. When using fakes, assertions are made after the code under test is executed:$/モックの別の方法は、`Bus`ファサードの`fake`メソッドを使用し、ジョブがディスパッチされないようにすることです。fakeを使用する場合、アサートはテスト下のコードが終了した時点で行われます。/
s/^            \/\/ Perform order shipping\.\.\.$/            \/\/ 注文の実行コード…/
s/^            \/\/ Assert a job was not dispatched\.\.\.$/            \/\/ ジョブがディスパッチされないことを宣言/
s/^As an alternative to mocking, you may use the `Event` facade's `fake` method to prevent all event listeners from executing\. You may then assert that events were dispatched and even inspect the data they received\. When using fakes, assertions are made after the code under test is executed:$/モックの別の方法は、`Event`ファサードの`fake`メソッドを使用し、全イベントリスナが実行されないようにすることです。その後で、イベントがディスパッチされたことをアサートし、さらに受け取ったデータの検査もできます。fakeを使用する場合、アサートはテストを実施したコードの後に実行されます。/
s/^        \/\*\*$/        \/**/
s/^         \* Test order shipping\.$/         * 注文発送のテスト/
s/^         \*\/$/         *\//
s/^            \/\/ Perform order shipping\.\.\.$/            \/\/ 注文の実行コード…/
s/^            \/\/ Assert an event was dispatched twice\.\.\.$/            \/\/ イベントが２回ディスパッチされることをアサート/
s/^            \/\/ Assert an event was not dispatched\.\.\.$/            \/\/ イベントがディスパッチされないことをアサート/
s/^> {note} After calling `Event::fake()`, no event listeners will be executed\. So, if your tests use model factories that rely on events, such as creating a UUID during a model's `creating` event, you should call `Event::fake()` \*\*after\*\* using your factories\.$/> {note} `Event::fake()`を呼び出したあとは、イベントリスナは実行されなくなります。そのため例えば、モデルの`creating`イベントでUUIDを生成するなど、イベントに結びつけたモデルファクトリの使用をテストする場合は、ファクトリを呼び出した**後に**、`Event::fake()`を呼び出す必要があります。/
s/^### Scoped Event Fakes$/### 限定的なEvent Fakes/
s/^If you only want to fake event listeners for a portion of your test, you may use the `fakeFor` method:$/テストの一部分だけでイベントをフェイクしたい場合は、`fakeFor`メソッドを使用します。/
s/^        \/\*\*$/        \/**/
s/^         \* Test order process\.$/         * 注文発送のテスト/
s/^         \*\/$/         *\//
s/^            \/\/ Events are dispatched as normal and observers will run \.\.\.$/            \/\/ イベントは通常通りにディスパッチされ、オブザーバが実行される/
s/^            $order->update(\[\.\.\.\]);$/            $order->update([...]);/
s/^You may use the `Mail` facade's `fake` method to prevent mail from being sent\. You may then assert that \[mailables\](\/docs\/{{version}}\/mail) were sent to users and even inspect the data they received\. When using fakes, assertions are made after the code under test is executed:$/`Mail`ファサードの`fake`メソッドを使い、メールが送信されるのを防ぐことができます。その後で、[Mailable](\/docs\/{{version}}\/mail)がユーザーへ送信されたかをアサートし、受け取ったデータを調べることさえできます。Fakeを使用する場合、テスト対象のコードが実行された後で、アサートしてください。/
s/^            \/\/ Perform order shipping\.\.\.$/            \/\/ 注文の実行コード…/
s/^            \/\/ Assert a message was sent to the given users\.\.\.$/            \/\/ メッセージが指定したユーザーに届いたことをアサート/
s/^                return $mail->hasTo($user->email) &&$/                return $mail->hasTo($user->email) \&\&/
s/^                       $mail->hasCc('\.\.\.') &&$/                       $mail->hasCc('...') \&\&/
s/^                       $mail->hasBcc('\.\.\.');$/                       $mail->hasBcc('...');/
s/^            \/\/ Assert a mailable was sent twice\.\.\.$/            \/\/ mailableが２回送信されたことをアサート/
s/^            \/\/ Assert a mailable was not sent\.\.\.$/            \/\/ mailableが送られなかったことをアサート/
s/^If you are queueing mailables for delivery in the background, you should use the `assertQueued` method instead of `assertSent`:$/バックグランドで送信するために、mailableをキュー投入している場合は、`assertSent`の代わりに`assertQueued`メソッドを使用してください。/
s/^    Mail::assertQueued(\.\.\.);$/    Mail::assertQueued(...);/
s/^    Mail::assertNotQueued(\.\.\.);$/    Mail::assertNotQueued(...);/
s/^You may use the `Notification` facade's `fake` method to prevent notifications from being sent\. You may then assert that \[notifications\](\/docs\/{{version}}\/notifications) were sent to users and even inspect the data they received\. When using fakes, assertions are made after the code under test is executed:$/`Notification`ファサードの`fake`メソッドを使用し、[通知](\/docs\/{{version}}\/notifications)が送られるのを防ぐことができます。その後で、通知がユーザーへ送られたことをアサートし、受け取ったデータを調べることさえできます。Fakeを使用するときは、テスト対象のコードが実行された後で、アサートを作成してください。/
s/^            \/\/ Perform order shipping\.\.\.$/            \/\/ 注文の実行コード…/
s/^            \/\/ Assert a notification was sent to the given users\.\.\.$/            \/\/ 通知が指定したユーザーへ送られたことをアサート/
s/^                \[$user\], OrderShipped::class$/                [$user], OrderShipped::class/
s/^            \/\/ Assert a notification was not sent\.\.\.$/            \/\/ 通知が送られなかったことをアサート/
s/^                \[$user\], AnotherNotification::class$/                [$user], AnotherNotification::class/
s/^As an alternative to mocking, you may use the `Queue` facade's `fake` method to prevent jobs from being queued\. You may then assert that jobs were pushed to the queue and even inspect the data they received\. When using fakes, assertions are made after the code under test is executed:$/モックの代替として、`Queue`ファサードの`fake`メソッドを使い、ジョブがキューされるのを防ぐことができます。その後で、ジョブがキューへ投入されたことをアサートし、受け取ったデータの内容を調べることもできます。Fakeを使う場合は、テスト対象のコードを実行した後で、アサートしてください。/
s/^            \/\/ Perform order shipping\.\.\.$/            \/\/ 注文の実行コード…/
s/^            \/\/ Assert a job was pushed to a given queue\.\.\.$/            \/\/ 特定のキューへジョブが投入されたことをアサート/
s/^            \/\/ Assert a job was pushed twice\.\.\.$/            \/\/ ジョブが２回投入されたことをアサート/
s/^            \/\/ Assert a job was not pushed\.\.\.$/            \/\/ ジョブが投入されなかったことをアサート/
s/^The `Storage` facade's `fake` method allows you to easily generate a fake disk that, combined with the file generation utilities of the `UploadedFile` class, greatly simplifies the testing of file uploads\. For example:$/とてもシンプルにファイルアップロードのテストを行うため、`Strorage`ファサードの`fake`メソッドにより、`UploadedFile`クラスのファイル生成ユーティリティと組み合わされたフェイクディスクを簡単に生成できます。/
s/^            $response = $this->json('POST', '\/avatar', \[$/            $response = $this->json('POST', '\/avatar', [/
s/^                'avatar' => UploadedFile::fake()->image('avatar\.jpg')$/                'avatar' => UploadedFile::fake()->image('avatar.jpg')/
s/^            \]);$/            ]);/
s/^            \/\/ Assert the file was stored\.\.\.$/            \/\/ ファイルが保存されたことをアサート/
s/^            Storage::disk('avatars')->assertExists('avatar\.jpg');$/            Storage::disk('avatars')->assertExists('avatar.jpg');/
s/^            \/\/ Assert a file does not exist\.\.\.$/            \/\/ ファイルが存在しないことをアサート/
s/^            Storage::disk('avatars')->assertMissing('missing\.jpg');$/            Storage::disk('avatars')->assertMissing('missing.jpg');/
s/^> {tip} By default, the `fake` method will delete all files in its temporary directory\. If you would like to keep these files, you may use the "persistentFake" method instead\.$/> {tip} `fake`メソッドはデフォルトとして、一時ディレクトリ内の全ファイルを削除します。ファイルを残しておきたい場合は、代わりに`persistentFake`メソッドを使用してください。/
s/^## Facades$/## ファサード/
s/^Unlike traditional static method calls, \[facades\](\/docs\/{{version}}\/facades) may be mocked\. This provides a great advantage over traditional static methods and grants you the same testability you would have if you were using dependency injection\. When testing, you may often want to mock a call to a Laravel facade in one of your controllers\. For example, consider the following controller action:$/伝統的な静的メソッドの呼び出しと異なり、[ファサード](\/docs\/{{version}}\/facades)はモックできます。これにより伝統的な静的メソッドより遥かなアドバンテージを得られ、依存注入を使用する場合と同じテスタビリティを持てます。テスト時は、コントローラのLaravelファサード呼び出しを頻繁にモックしたくなります。例として、以下のようなコントローラアクションを考えてください。/
s/^        \/\*\*$/        \/**/
s/^         \* Show a list of all users of the application\.$/         * アプリケーションの全ユーザーリストの表示/
s/^         \*$/         */
s/^         \* @return Response$/         * @return Response/
s/^         \*\/$/         *\//
s/^We can mock the call to the `Cache` facade by using the `shouldReceive` method, which will return an instance of a \[Mockery\](https:\/\/github\.com\/padraic\/mockery) mock\. Since facades are actually resolved and managed by the Laravel \[service container\](\/docs\/{{version}}\/container), they have much more testability than a typical static class\. For example, let's mock our call to the `Cache` facade's `get` method:$/`shouldReceive`メソッドを使用し、`Cache`ファサードへの呼び出しをモックできます。これは[Mockery](https:\/\/github.com\/padraic\/mockery)インスタンスを返します。ファサードはLaravelの[サービスコンテナ](\/docs\/{{version}}\/container)により管理され、依存解決されていますので、典型的な静的クラスよりもかなり高いテスタビリティーを持っています。例として`Cache`ファサードへの`get`メソッド呼び出しをモックしてみましょう。/
s/^            \/\/ \.\.\.$/            \/\/ .../
s/^> {note} You should not mock the `Request` facade\. Instead, pass the input you desire into the HTTP helper methods such as `get` and `post` when running your test\. Likewise, instead of mocking the `Config` facade, call the `Config::set` method in your tests\.$/> {note} `Request`ファサードをモックしてはいけません。代わりに、テスト実行時は`get`や`post`のようなHTTPヘルパメソッドへ、望む入力を引数として渡してください。同様に、`Config`ファサードはモックを使う代わりに、テストでは`Config::set`メソッドを呼び出してください。/
