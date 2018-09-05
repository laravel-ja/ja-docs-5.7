s/^# Contribution Guide$/# 貢献ガイド/
s/^- \[Bug Reports\](#bug-reports)$/- [バグレポート](#bug-reports)/
s/^- \[Core Development Discussion\](#core-development-discussion)$/- [コア開発の議論](#core-development-discussion)/
s/^- \[Which Branch?\](#which-branch)$/- [どのブランチ？](#which-branch)/
s/^- \[Security Vulnerabilities\](#security-vulnerabilities)$/- [セキュリティ脆弱性](#security-vulnerabilities)/
s/^- \[Coding Style\](#coding-style)$/- [コーディングスタイル](#coding-style)/
s/^    - \[PHPDoc\](#phpdoc)$/    - [PHPDoc](#phpdoc)/
s/^    - \[StyleCI\](#styleci)$/    - [StyleCI](#styleci)/
s/^## Bug Reports$/## バグレポート/
s/^To encourage active collaboration, Laravel strongly encourages pull requests, not just bug reports\. "Bug reports" may also be sent in the form of a pull request containing a failing test\.$/より積極的に援助して頂きたいため、Laravelではただのバグレポートでなく、プルリクエストしてくれることを強く推奨しています。「バグレポート」は、失敗するテストを含めた、プルリクエストの形式で送ってください。/
s/^However, if you file a bug report, your issue should contain a title and a clear description of the issue\. You should also include as much relevant information as possible and a code sample that demonstrates the issue\. The goal of a bug report is to make it easy for yourself - and others - to replicate the bug and develop a fix\.$/しかし、バグレポートを提出する場合には、その問題をタイトルに含め、明確に内容を記述してください。できる限り関連する情報や、その問題をデモするコードも含めてください。バグレポートの目的はあなた自身、そして他の人でも、簡単にバグが再現でき、修正されるようにすることです。/
s/^Remember, bug reports are created in the hope that others with the same problem will be able to collaborate with you on solving it\. Do not expect that the bug report will automatically see any activity or that others will jump to fix it\. Creating a bug report serves to help yourself and others start on the path of fixing the problem\.$/バグレポートは同じ問題にあった他の人達と、解決するために協力できる望みを生み出すのだということを覚えておいてください。バグレポートにより、自動的に何かが起きたり、誰かがすぐ修正したりすることを期待しないでください。バグレポートの提出は、あなた自身と他の人が、問題を解決する道筋を開始するきっかけなのです。/
s/^The Laravel source code is managed on GitHub, and there are repositories for each of the Laravel projects:$/LaravelのソースコードはGitHubで管理され、各Laravelプロジェクトのリポジトリが存在しています。/
s/^- \[Laravel Application\](https:\/\/github\.com\/laravel\/laravel)$/- [Laravel Application](https:\/\/github.com\/laravel\/laravel)/
s/^- \[Laravel Art\](https:\/\/github\.com\/laravel\/art)$/- [Laravel Art](https:\/\/github.com\/laravel\/art)/
s/^- \[Laravel Documentation\](https:\/\/github\.com\/laravel\/docs)$/- [Laravel Documentation](https:\/\/github.com\/laravel\/docs)/
s/^- \[Laravel Cashier\](https:\/\/github\.com\/laravel\/cashier)$/- [Laravel Cashier](https:\/\/github.com\/laravel\/cashier)/
s/^- \[Laravel Cashier for Braintree\](https:\/\/github\.com\/laravel\/cashier-braintree)$/- [Laravel Cashier for Braintree](https:\/\/github.com\/laravel\/cashier-braintree)/
s/^- \[Laravel Envoy\](https:\/\/github\.com\/laravel\/envoy)$/- [Laravel Envoy](https:\/\/github.com\/laravel\/envoy)/
s/^- \[Laravel Framework\](https:\/\/github\.com\/laravel\/framework)$/- [Laravel Framework](https:\/\/github.com\/laravel\/framework)/
s/^- \[Laravel Homestead\](https:\/\/github\.com\/laravel\/homestead)$/- [Laravel Homestead](https:\/\/github.com\/laravel\/homestead)/
s/^- \[Laravel Homestead Build Scripts\](https:\/\/github\.com\/laravel\/settler)$/- [Laravel Homestead Build Scripts](https:\/\/github.com\/laravel\/settler)/
s/^- \[Laravel Horizon\](https:\/\/github\.com\/laravel\/horizon)$/- [Laravel Horizon](https:\/\/github.com\/laravel\/horizon)/
s/^- \[Laravel Nova\](https:\/\/github\.com\/laravel\/nova-issues)$/- [Laravel Nova](https:\/\/github.com\/laravel\/nova-issues)/
s/^- \[Laravel Passport\](https:\/\/github\.com\/laravel\/passport)$/- [Laravel Passport](https:\/\/github.com\/laravel\/passport)/
s/^- \[Laravel Scout\](https:\/\/github\.com\/laravel\/scout)$/- [Laravel Scout](https:\/\/github.com\/laravel\/scout)/
s/^- \[Laravel Socialite\](https:\/\/github\.com\/laravel\/socialite)$/- [Laravel Socialite](https:\/\/github.com\/laravel\/socialite)/
s/^- \[Laravel Website\](https:\/\/github\.com\/laravel\/laravel\.com)$/- [Laravel Website](https:\/\/github.com\/laravel\/laravel.com)/
s/^## Core Development Discussion$/## コア開発の議論/
s/^You may propose new features or improvements of existing Laravel behavior in the Laravel Ideas \[issue board\](https:\/\/github\.com\/laravel\/ideas\/issues)\. If you propose a new feature, please be willing to implement at least some of the code that would be needed to complete the feature\.$/新機能や、現存のLaravelの振る舞いについて改善を提言したい場合は、Laravelアイデア[issueボード](https:\/\/github.com\/laravel\/ideas\/issues)へおねがいします。新機能を提言する場合は自発的に、それを完動させるのに必要な、コードを最低限でも実装してください。/
s/^Informal discussion regarding bugs, new features, and implementation of existing features takes place in the `#internals` channel of the \[LaraChat\](https:\/\/larachat\.co) Slack team\. Taylor Otwell, the maintainer of Laravel, is typically present in the channel on weekdays from 8am-5pm (UTC-06:00 or America\/Chicago), and sporadically present in the channel at other times\.$/バグ、新機能、既存機能の実装についてのざっくばらんな議論は、Slackの[LaraChat](https:\/\/larachat.co)チームにある`#internals`チャンネルで行っています。LaravelのメンテナーであるTaylor Otwellは、通常ウイークエンドの午前８時から５時まで（America\/Chicago標準時、UTC-6:00）接続しています。他の時間帯では、時々接続しています。/
s/^## Which Branch?$/## どのブランチ？/
s/^\*\*All\*\* bug fixes should be sent to the latest stable branch or to the current LTS branch (5\.5)\. Bug fixes should \*\*never\*\* be sent to the `master` branch unless they fix features that exist only in the upcoming release\.$/**全ての**バグフィックスは、最新の安定ブランチ,もしくは現在のLTSブランチ(5.5)へ送ってください。次のリリースの中にだけ存在している機能に対する修正でない限り、決してバグフィックスを`master`ブランチに送っては**いけません**。/
s/^\*\*Minor\*\* features that are \*\*fully backwards compatible\*\* with the current Laravel release may be sent to the latest stable branch\.$/現在のLaravelリリースと**完全な後方コンパティビリティ**を持っている**マイナー**な機能は、最新の安定ブランチへ送ってください。/
s/^\*\*Major\*\* new features should always be sent to the `master` branch, which contains the upcoming Laravel release\.$/次のLaravelリリースに含めるべき、**メジャー**な新機能は、常に`master`ブランチへ送ってください。/
s/^If you are unsure if your feature qualifies as a major or minor, please ask Taylor Otwell in the `#internals` channel of the \[LaraChat\](https:\/\/larachat\.co) Slack team\.$/もし、あなたの新機能がメジャーなのか、マイナーなのかはっきりしなければ、[LaraChat](https:\/\/larachat.co) Slackチームの`#internals`チャンネルでTaylor Otwellに尋ねてください。/
s/^## Security Vulnerabilities$/## セキュリティ脆弱性/
s/^If you discover a security vulnerability within Laravel, please send an email to Taylor Otwell at <a href="mailto:taylor@laravel\.com">taylor@laravel\.com<\/a>\. All security vulnerabilities will be promptly addressed\.$/Laravelにセキュリティー脆弱性を見つけたときは、メールで[Taylor Otwell(taylorotwell@laravel.com)](mailto:taylor@laravel.com)に連絡してください。全セキュリティー脆弱性は、速やかに対応されるでしょう。/
s/^## Coding Style$/## コーディングスタイル/
s/^Laravel follows the \[PSR-2\](https:\/\/github\.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-2-coding-style-guide\.md) coding standard and the \[PSR-4\](https:\/\/github\.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-4-autoloader\.md) autoloading standard\.$/Laravelは[PSR-2](https:\/\/github.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-2-coding-style-guide.md)コーディング規約と[PSR-4](https:\/\/github.com\/php-fig\/fig-standards\/blob\/master\/accepted\/PSR-4-autoloader.md)オートローディング規約に準拠しています。/
s/^Below is an example of a valid Laravel documentation block\. Note that the `@param` attribute is followed by two spaces, the argument type, two more spaces, and finally the variable name:$/次に正しいLaravelのドキュメントブロックの例を示します。`@param`属性に続け２スペース、引数タイプ、２スペース、最後に変数名となっていることに注意してください。/
s/^    \/\*\*$/    \/**/
s/^     \* Register a binding with the container\.$/     * Register a binding with the container./
s/^     \*$/     */
s/^     \* @param  string|array  $abstract$/     * @param  string|array  $abstract/
s/^     \* @param  \\Closure|string|null  $concrete$/     * @param  \\Closure|string|null  $concrete/
s/^     \* @param  bool  $shared$/     * @param  bool  $shared/
s/^     \* @return void$/     * @return void/
s/^     \*\/$/     *\//
s/^Don't worry if your code styling isn't perfect! \[StyleCI\](https:\/\/styleci\.io\/) will automatically merge any style fixes into the Laravel repository after pull requests are merged\. This allows us to focus on the content of the contribution and not the code style\.$/コードのスタイルが完璧でなくても心配ありません。プルリクエストがマージされたあとで、[StyleCI](https:\/\/styleci.io\/)が自動的にスタイルを修正し、Laravelリポジトリへマージします。これにより、コードスタイルではなく、貢献の内容へ集中することができます。/
