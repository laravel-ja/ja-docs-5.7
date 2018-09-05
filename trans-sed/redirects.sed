s/^# HTTP Redirects$/# HTTPリダイレクト/
s/^- \[Creating Redirects\](#creating-redirects)$/- [リダイレクトの作成](#creating-redirects)/
s/^- \[Redirecting To Named Routes\](#redirecting-named-routes)$/- [名前付きルートへのリダイレクト](#redirecting-named-routes)/
s/^- \[Redirecting To Controller Actions\](#redirecting-controller-actions)$/- [コントローラアクションへのリダイレクト](#redirecting-controller-actions)/
s/^- \[Redirecting With Flashed Session Data\](#redirecting-with-flashed-session-data)$/- [フラッシュセッションデータを伴うリダイレクト](#redirecting-with-flashed-session-data)/
s/^## Creating Redirects$/## リダイレクトの作成/
s/^Redirect responses are instances of the `Illuminate\\Http\\RedirectResponse` class, and contain the proper headers needed to redirect the user to another URL\. There are several ways to generate a `RedirectResponse` instance\. The simplest method is to use the global `redirect` helper:$/リダイレクトレスポンスは、`Illuminate\\Http\\RedirectResponse`クラスのインスタンスで、ユーザーを他のURLへリダイレクトするために必要なしっかりとしたヘッダを含んでいる必要があります。`RedirectResponse`インスタンスを生成する方法はいくつかあります。一番簡単なのは、グローバルな`redirect`ヘルパを使用する方法です。/
s/^Sometimes you may wish to redirect the user to their previous location, such as when a submitted form is invalid\. You may do so by using the global `back` helper function\. Since this feature utilizes the \[session\](\/docs\/{{version}}\/session), make sure the route calling the `back` function is using the `web` middleware group or has all of the session middleware applied:$/無効なフォームが送信された場合など、まれにユーザーを直前のページへリダイレクトする必要が起きます。グローバルな`back`ヘルパ関数を使用することで行なえます。この機能は[セッション](\/docs\/{{version}}\/session)を利用しているため、`back`関数を呼び出すルートが`web`ミドルウェアグループを使用しているか、全セッションミドルウェアを確実に適用してください。/
s/^        \/\/ Validate the request\.\.\.$/        \/\/ リクエスのバリデート処理…/
s/^## Redirecting To Named Routes$/## 名前付きルートへのリダイレクト/
s/^When you call the `redirect` helper with no parameters, an instance of `Illuminate\\Routing\\Redirector` is returned, allowing you to call any method on the `Redirector` instance\. For example, to generate a `RedirectResponse` to a named route, you may use the `route` method:$/`redirect`ヘルパを引数なしで呼び出すと、`Illuminate\\Routing\\Redirector`インスタンスが返されるため、`Redirector`インスタンスの全メソッドを呼び出せます。たとえば、名前付きルートへの`RedirectResponse`を生成する場合は、`route`メソッドを使用できます。/
s/^If your route has parameters, you may pass them as the second argument to the `route` method:$/ルートにパラメータが必要な場合は、`route`メソッドの第２引数として渡してください。/
s/^    \/\/ For a route with the following URI: profile\/{id}$/    \/\/ profile\/{id}ルートへのリダイレクト/
s/^    return redirect()->route('profile', \['id' => 1\]);$/    return redirect()->route('profile', ['id' => 1]);/
s/^#### Populating Parameters Via Eloquent Models$/#### Eloquentモデルを使用したパラメータの埋め込み/
s/^If you are redirecting to a route with an "ID" parameter that is being populated from an Eloquent model, you may pass the model itself\. The ID will be extracted automatically:$/あるEloquentモデルの"ID"パラメータを含むルートへリダイレクトする場合は、そのモデル自身を渡してください。IDは自動的に取り出されます。/
s/^    \/\/ For a route with the following URI: profile\/{id}$/    \/\/ profile\/{id}ルートへのリダイレクト/
s/^    return redirect()->route('profile', \[$user\]);$/    return redirect()->route('profile', [$user]);/
s/^If you would like to customize the value that is placed in the route parameter, you should override the `getRouteKey` method on your Eloquent model:$/ルートパラメータへ含める値をカスタマイズしたい場合は、Eloquentモデルの`getRouteKey`メソッドをオーバーライドしてください。/
s/^    \/\*\*$/    \/**/
s/^     \* Get the value of the model's route key\.$/     * モデルのルートキー値の取得/
s/^     \*$/     */
s/^     \* @return mixed$/     * @return mixed/
s/^     \*\/$/     *\//
s/^## Redirecting To Controller Actions$/## コントローラアクションへのリダイレクト/
s/^You may also generate redirects to \[controller actions\](\/docs\/{{version}}\/controllers)\. To do so, pass the controller and action name to the `action` method\. Remember, you do not need to specify the full namespace to the controller since Laravel's `RouteServiceProvider` will automatically set the base controller namespace:$/[コントローラアクション](\/docs\/{{version}}\/controllers)へのリダイレクトを生成することもできます。そのためには、`action`メソッドへコントローラとアクションの名前を渡してください。Laravelの`RouteServiceProvider`でベースのコントローラ名前空間が指定されているため、コントローラへの完全な空間名を指定する必要はないことを覚えておきましょう。/
s/^If your controller route requires parameters, you may pass them as the second argument to the `action` method:$/コントローラルートがパラメータを必要としている場合、`action`メソッドの第２引数として渡してください。/
s/^        'UserController@profile', \['id' => 1\]$/        'UserController@profile', ['id' => 1]/
s/^## Redirecting With Flashed Session Data$/## フラッシュセッションデータを伴うリダイレクト/
s/^Redirecting to a new URL and \[flashing data to the session\](\/docs\/{{version}}\/session#flash-data) are usually done at the same time\. Typically, this is done after successfully performing an action when you flash a success message to the session\. For convenience, you may create a `RedirectResponse` instance and flash data to the session in a single, fluent method chain:$/新しいURLへリダイレクトし、[セッションへデータを保持する](\/docs\/{{version}}\/session#flash-data)のは、通常同時に行います。あるアクションが正しく実行された後に、セッションへ成功メッセージをフラッシュデータとして保存するのが典型的なケースでしょう。便利なように、`RedirectResponse`インスタンスを生成し、データをセッションへフラッシュデータとして保存するには、記述的なチェーン一つで行なえます。/
s/^        \/\/ Update the user's profile\.\.\.$/        \/\/ ユーザープロフィールの更新処理…/
s/^        return redirect('dashboard')->with('status', 'Profile updated!');$/        return redirect('dashboard')->with('status', 'プロフィールを更新しました！');/
s/^After the user is redirected, you may display the flashed message from the \[session\](\/docs\/{{version}}\/session)\. For example, using \[Blade syntax\](\/docs\/{{version}}\/blade):$/ユーザーをリダイレクトしたあと、[セッション](\/docs\/{{version}}\/session)のフラッシュデータとして保存したメッセージを表示できます。例として[Blade記法](\/docs\/{{version}}\/blade)を使ってみます。/
