s/^# Localization$/# 多言語化/
s/^- \[Introduction\](#introduction)$/- [イントロダクション](#introduction)/
s/^- \[Defining Translation Strings\](#defining-translation-strings)$/- [翻訳文字列の定義](#defining-translation-strings)/
s/^    - \[Using Short Keys\](#using-short-keys)$/    - [短縮キーの使用](#using-short-keys)/
s/^    - \[Using Translation Strings As Keys\](#using-translation-strings-as-keys)$/    - [翻訳文字列のキー使用](#using-translation-strings-as-keys)/
s/^- \[Retrieving Translation Strings\](#retrieving-translation-strings)$/- [翻訳文字列の取得](#retrieving-translation-strings)/
s/^    - \[Replacing Parameters In Translation Strings\](#replacing-parameters-in-translation-strings)$/    - [翻訳文字列中のパラメータ置換](#replacing-parameters-in-translation-strings)/
s/^    - \[Pluralization\](#pluralization)$/    - [複数形](#pluralization)/
s/^- \[Overriding Package Language Files\](#overriding-package-language-files)$/- [パッケージの言語ファイルのオーバーライド](#overriding-package-language-files)/
s/^## Introduction$/## イントロダクション/
s/^Laravel's localization features provide a convenient way to retrieve strings in various languages, allowing you to easily support multiple languages within your application\. Language strings are stored in files within the `resources\/lang` directory\. Within this directory there should be a subdirectory for each language supported by the application:$/Laravelのローカリゼーション機能はアプリケーションで多言語をサポートできるように、様々な言語の文字列を便利に取得できる方法を提供します。 言語の文字列は`resources\/lang`ディレクトリ下のファイルに保存します。このディレクトリの中にアプリケーションでサポートする言語のディレクトリを設置します。/
s/^                messages\.php$/                messages.php/
s/^                messages\.php$/                messages.php/
s/^All language files return an array of keyed strings\. For example:$/全ての言語ファイルはキーと文字列の配列をリターンします。例を見てください。/
s/^    return \[$/    return [/
s/^    \];$/    ];/
s/^### Configuring The Locale$/### ロケールの設定/
s/^The default language for your application is stored in the `config\/app\.php` configuration file\. Of course, you may modify this value to suit the needs of your application\. You may also change the active language at runtime using the `setLocale` method on the `App` facade:$/アプリケーションのデフォルト言語は`config\/app.php`設定ファイルで指定します。もちろんこの値はアプリケーションに合うように変更できます。さらに`App`ファサードの`setLocale`メソッドを使い、実行時にアクティブな言語を変更することもできます。/
s/^You may configure a "fallback language", which will be used when the active language does not contain a given translation string\. Like the default language, the fallback language is also configured in the `config\/app\.php` configuration file:$/現時点のロケールとして指定した言語の翻訳文字列が存在しない場合に使用される、「フォールバック言語」を設定することもできます。デフォルト言語と同様に、フォールバック言語も`config\/app.php`設定ファイルで指定されます。/
s/^#### Determining The Current Locale$/#### 現在のロケール判定/
s/^You may use the `getLocale` and `isLocale` methods on the `App` facade to determine the current locale or check if the locale is a given value:$/現在のロケールを調べたり、特定のロケールであるかを判定したりするには、`App`ファサードの`getLocale`や`isLocale`を使います。/
s/^## Defining Translation Strings$/## 翻訳文字列の定義/
s/^### Using Short Keys$/### 短縮キーの使用/
s/^Typically, translation strings are stored in files within the `resources\/lang` directory\. Within this directory there should be a subdirectory for each language supported by the application:$/通常、翻訳文字列は`resources\/lang`ディレクトリ下のファイルに保存されています。このディレクトにはアプリケーションでサポートする各言語のサブディレクトリを用意します。/
s/^                messages\.php$/                messages.php/
s/^                messages\.php$/                messages.php/
s/^All language files return an array of keyed strings\. For example:$/全ての言語ファイルはキーと文字列の配列をリターンします。例を見てください。/
s/^    \/\/ resources\/lang\/en\/messages\.php$/    \/\/ resources\/lang\/en\/messages.php/
s/^    return \[$/    return [/
s/^    \];$/    ];/
s/^### Using Translation Strings As Keys$/### 翻訳文字列のキー使用/
s/^For applications with heavy translation requirements, defining every string with a "short key" can become quickly confusing when referencing them in your views\. For this reason, Laravel also provides support for defining translation strings using the "default" translation of the string as the key\.$/たくさんの翻訳が必要なアプリケーションでは、全ての文字列に「短いキー」を付けようとすると、ビューで参照する際、すぐにこんがらがってきます。そのため、Laravelでは翻訳文字列を「デフォルト」翻訳の文字列をキーとして利用できます。/
s/^Translation files that use translation strings as keys are stored as JSON files in the `resources\/lang` directory\. For example, if your application has a Spanish translation, you should create a `resources\/lang\/es\.json` file:$/翻訳文字列をキーとして使用する翻訳ファイルは、`resources\/lang`ディレクトリ下にJSONファイルとして保存します。たとえば、アプリケーションにスペイン語の翻訳がある場合、`resources\/lang\/es.json`ファイルを作成します。/
s/^        "I love programming\.": "Me encanta programar\."$/        "I love programming.": "Me encanta programar."/
s/^## Retrieving Translation Strings$/## 翻訳文字列の取得/
s/^You may retrieve lines from language files using the `__` helper function\. The `__` method accepts the file and key of the translation string as its first argument\. For example, let's retrieve the `welcome` translation string from the `resources\/lang\/messages\.php` language file:$/言語ファイルから行を取得するには、`__`ヘルパ関数を使用します。`__`メソッドは、最初の引数として翻訳文字列のファイルとキーを受け付けます。例として、`resources\/lang\/messages.php`原語ファイルから`welcome`翻訳文字列を取得してみましょう。/
s/^    echo __('messages\.welcome');$/    echo __('messages.welcome');/
s/^    echo __('I love programming\.');$/    echo __('I love programming.');/
s/^Of course if you are using the \[Blade templating engine\](\/docs\/{{version}}\/blade), you may use the `{{ }}` syntax to echo the translation string or use the `@lang` directive:$/もちろん、[Bladeテンプレートエンジン](\/docs\/{{version}}\/blade)を使用している場合は、`{{ }}`記法で翻訳文字列をechoするか、`@lang`ディレクティブを使用します。/
s/^    {{ __('messages\.welcome') }}$/    {{ __('messages.welcome') }}/
s/^    @lang('messages\.welcome')$/    @lang('messages.welcome')/
s/^If the specified translation string does not exist, the `__` function will return the translation string key\. So, using the example above, the `__` function would return `messages\.welcome` if the translation string does not exist\.$/指定した翻訳文字列が存在しない場合、`__`関数は翻訳文字列キーをそのまま返します。そのため、上記の例で`__`関数は、翻訳文字列がない場合に`messages.welcome`を返します。/
s/^### Replacing Parameters In Translation Strings$/### 翻訳文字列中のパラメータ置換/
s/^If you wish, you may define place-holders in your translation strings\. All place-holders are prefixed with a `:`\. For example, you may define a welcome message with a place-holder name:$/お望みならば、翻訳文字列にプレースホルダを定義できます。全プレースホルダは`:`のプレフィックスを付けます。例として、welcomeメッセージにnameプレースホルダを定義してみましょう。/
s/^To replace the place-holders when retrieving a translation string, pass an array of replacements as the second argument to the `__` function:$/翻訳文字列を取得する時に、プレースホルダを置き換えるには、`__`関数の第２引数として、置換文字の配列を渡します。/
s/^    echo __('messages\.welcome', \['name' => 'dayle'\]);$/    echo __('messages.welcome', ['name' => 'dayle']);/
s/^If your place-holder contains all capital letters, or only has its first letter capitalized, the translated value will be capitalized accordingly:$/プレースホルダを全部大文字にするか、最初の一文字を大文字にすると、その方法に合わせて値が大文字に変換されます。/
s/^### Pluralization$/### 複数形化/
s/^Pluralization is a complex problem, as different languages have a variety of complex rules for pluralization\. By using a "pipe" character, you may distinguish singular and plural forms of a string:$/複数形化は複雑な問題であり、異なった言語において多種複雑な複数形化のルールが存在しています。「パイプ」記号の縦線を使うことで、単数形の文字列と複数形の文字列を分けることができます。/
s/^You may even create more complex pluralization rules which specify translation strings for multiple number ranges:$/複数の範囲を翻訳行に指定することで、もっと便利な複数形化のルールも簡単に作成できます。/
s/^    'apples' => '{0} There are none|\[1,19\] There are some|\[20,\*\] There are many',$/    'apples' => '{0} There are none|[1,19] There are some|[20,*] There are many',/
s/^After defining a translation string that has pluralization options, you may use the `trans_choice` function to retrieve the line for a given "count"\. In this example, since the count is greater than one, the plural form of the translation string is returned:$/複数形化オプションの翻訳文字列を定義したら、`trans_choice`関数に「数」を指定し、行を取得します。以下の例では数が１より大きので、複数形の翻訳行が返されます。/
s/^    echo trans_choice('messages\.apples', 10);$/    echo trans_choice('messages.apples', 10);/
s/^You may also define place-holder attributes in pluralization strings\. These place-holders may be replaced by passing an array as the third argument to the `trans_choice` function:$/複数形化の文字列の中でも、プレースホルダを定義可能です。プレースホルダは`trans_choice`関数の第３引数に配列として指定します。/
s/^    'minutes_ago' => '{1} :value minute ago|\[2,\*\] :value minutes ago',$/    'minutes_ago' => '{1} :value minute ago|[2,*] :value minutes ago',/
s/^    echo trans_choice('time\.minutes_ago', 5, \['value' => 5\]);$/    echo trans_choice('time.minutes_ago', 5, ['value' => 5]);/
s/^If you would like to display the integer value that was passed to the `trans_choice` function, you may use the `:count` placeholder:$/`trans_choice`関数に渡した整数値を表示したい場合は、`:count`プレースホルダを使用します。/
s/^    'apples' => '{0} There are none|{1} There is one|\[2,\*\] There are :count',$/    'apples' => '{0} There are none|{1} There is one|[2,*] There are :count',/
s/^## Overriding Package Language Files$/## パッケージの言語ファイルのオーバーライド/
s/^Some packages may ship with their own language files\. Instead of changing the package's core files to tweak these lines, you may override them by placing files in the `resources\/lang\/vendor\/{package}\/{locale}` directory\.$/いくつかのパッケージではそれ自身の言語ファイルが提供されています。出力される文言を調整するためパッケージのコアをハックする代わりに、`resources\/lang\/vendor\/{パッケージ}\/{ロケールコード}`ディレクトリにファイルを設置することで、オーバーライドできます。/
s/^So, for example, if you need to override the English translation strings in `messages\.php` for a package named `skyrim\/hearthfire`, you should place a language file at: `resources\/lang\/vendor\/hearthfire\/en\/messages\.php`\. Within this file, you should only define the translation strings you wish to override\. Any translation strings you don't override will still be loaded from the package's original language files\.$/たとえば`skyrim\/hearthfire`という名前のパッケージが持っている`messages.php`の英語の翻訳行をオーバーライドする必要があるなら、`resources\/lang\/vendor\/hearthfire\/en\/messages.php`に言語ファイルを設置します。このファイルには置き換えたい翻訳行の定義だけを設置することができます。オーバーライドしなかった翻訳行は、パッケージのオリジナルな言語ファイル中の定義のままロードされます。/
