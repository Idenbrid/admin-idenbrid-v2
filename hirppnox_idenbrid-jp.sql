-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2022 at 12:37 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hirppnox_idenbrid-jp`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `date`, `description`, `created_at`, `updated_at`) VALUES
(3, '1652359394.png', 'サイトマップとは何か？', '2022年04月06日', '<h2><strong>サイトマップとは何か？</strong></h2>\r\n\r\n<p>ブログ記事による執筆を考えているなら、サイト作りのポイントを確認しておく必要があ ります。そして、サイトづくりで重要なのはサイトマップの設定です。「サイトマップと は？」と疑問を感じる人もいるでしょう。サイトマップとブログ記事作成の内容について 紹介しましょう。</p>\r\n\r\n<h2>サイトマップとは？</h2>\r\n\r\n<p>サイトマップはユーザーと検索エンジンに関係があります。ユーザーはサイトマップがあ ることで目的のページに早く辿り着くことができます。そして、検索エンジニアはサイト 内のページを知らせることが可能です。つまり、サイトマップがあることでユーザーが必 要としているブログを検索することができます。</p>\r\n\r\n<p>さらに、サイトマップがあることで重複しているコンテンツを認識しないようにすること ができ、サイトのコンテンツを最適化することも可能です。サイトマップがあることで有 益なコンテンツ作りを行うことができます。</p>\r\n\r\n<h2>サイトマップ作り方</h2>\r\n\r\n<p>ユーザーに必要な情報を得てもらうために、サイトマップは必要です。そのため、サイト マップの作成方法を知っておくのは重要です。サイトマップを作るためには主に 2つの方 法があり、1つ目は「Sitemap.xmlEditor」を利用することです。これはXMLサイト マップの自動生成ツールであり、URLを入力することでサイトマップを作れます。</p>\r\n\r\n<p>ツールの使い方は「Sitemap.xmlEditor」にアクセスするとサイトマップを作成の欄に登 録したいURLを貼り付けます。その後にURLの更新頻度や優先度などのオプション設定 をして「サイトマップ作成」をクリックし。ダウンロードした「Sitemap.xml」のファイ ルをrootディレクトリにアップロードすれば完了です。</p>\r\n\r\n<p>2つ目はワードプレスのプラグインをインストールすることです。プラグインを利用する なら登録までが簡単に行えて便利です。方法は「Google XML Sitemap」をインストール して有効化します。その後に設定で「XML Sitemap」をクリックして設定を行うことで 作成できます。</p>\r\n\r\n<p>ただ、プラグインはワードプレスが無ければ利用できないので、先にワードプレスの作成</p>\r\n\r\n<p>をしておくようにしましょう</p>\r\n\r\n<h2>何に役立つか？</h2>\r\n\r\n<p>サイトマップを持っているなら、Webサイト全体の構成を確認することが可能です。サイ ト作成の際はページにこだわってしまい、1つ1つつながりがない状態になることもあり ます。ただ、ページのつながりが無いなら、サイト全体として何を伝えたいのかユーザー に理解してもらうことができません。</p>\r\n\r\n<p>サイトマップがあることでサイト全体を把握でき、各ページが役割を担えているのか確認 できます。また、サイトマップがあるなら、サイト全体の共通認識を持てるようになるた め、複数人が関わったプロジェクトもスムーズに進行できます。サイト全体の見直しや目 的を認識するために役に立ちます。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>サイトマップがあるなら、ブログサイトの最適化を図ることができます。ユーザーがサイ トを見やすくすることができるため集客や滞在時間も長くすることが期待できるので、サ イトマップの利用を考えてみましょう。</p>', '2022-04-06 02:47:46', '2022-05-12 07:43:14'),
(4, '1652359358.png', 'PWA(プロレッシブウェブアプリ)とは何か？', '2022年04月06日', '<h2><strong>PWA(プロレッシブウェブアプリ)とは何か？</strong></h2>\r\n\r\n<p>ブログサイトを作るなら、いろいろなポイントを理解しておく必要があります。モバイル サイトにも力を入れておきたいなら、PWAに関しても知っておくことがおすすめです。 PWAの内容について紹介しましょう。</p>\r\n\r\n<h2>PWAはどんな機能？</h2>\r\n\r\n<p>PWAはモバイルサイト上で、ネイティブアプリのようなユーザー体験を提供するスキルで す。ホーム画面へのアイコン追加やプッシュ通知などを利用して、ユーザーと関わること ができ、また読み込み速度の高速化やオフラインでの閲覧も可能にしてくれます。</p>\r\n\r\n<p>PWAではいろいろな良い機能を使用してサイトの機能性を高めることができるので、他の 競合サイトと差別化を図ることも可能です。ブログサイトの作成をしているなら、利用を 考えてみることができるでしょう。</p>\r\n\r\n<h2>PWAによるメリットとは？</h2>\r\n\r\n<p>PWAを利用するなら具体的にどのようなメリットを得られるのか、知っておきたい人もい るでしょう。PWAを利用する1つ目のメリットは、ユーザーとの接触する機会が増えるこ とです。PWAによりホーム画面へのアイコン通知やプッシュ通知が可能になります。</p>\r\n\r\n<p>また、読み込みの高速化も行えるため、ユーザーがサイトにアクセスする際のストレスを 軽減することができ、良いサイト環境に整備しやすくなります。2つ目のメリットは複数 のデバイスへの接続も可能な点です。</p>\r\n\r\n<p>PWAはウェブサイトを基本にしているため、仕様が違うプラットフォームでも使用できま す。デバイスの仕様ごとにPWAを開発し直すことは必要無いため、どれでも適用できる のも便利です。SEO対策への効果も出るため、サイトの有益性アップの目的として利用す るのもいいでしょう</p>\r\n\r\n<h2>PWAを利用する際の注意点とは？</h2>\r\n\r\n<p>モバイルサイトの有益性を高めることができるPWAですが、注意点もあります。1つ目に 確認しておきたい注意点はOSによる機能の違いです。</p>\r\n\r\n<p>OSの場合は「データ量に制限がある」「インストールを促すバナーが設置できない」と いう部分に違いがあります。Androidだと、iOSと同じような制限は無いので問題なく使 用できますが、OSの違いにより利用できない機能があることを覚えておきましょう。</p>\r\n\r\n<p>2つ目はコストがかかることです。PWAを導入するならコストがかかるので、費用の計算 をしておかないと、サイト運営が難しくなる場合があります。サイト運営のために他のネ イティブアプリなどを使用しているなら、その分費用負担が大きくなるため、バランスを 考えて導入する必要があるでしょう。</p>\r\n\r\n<p>3つ目はアプリストアで登録ができないことです。PWAはアプリではないので、アプリス トアでユーザーからダウンロードしてもらうことはできません。アプリストアに登録する ためには別途登録が必要なので、この点も注意しておくようにしましょう。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>PWAは、モバイルサイトの環境づくりとして利用することができます。企業も利用してい るほどなので、パフォーマンスの向上として期待できます。有益なサイトづくりため導入 を検討してみてください。</p>', '2022-04-06 02:48:59', '2022-05-12 07:42:38'),
(5, '1652359676.png', 'サイトのSEOを改善するためには？ポイントを紹介', '2022年04月06日', '<h2><strong>サイトのSEOを改善するためには？ポイントを紹介</strong></h2>\r\n\r\n<p>ブログサイトを運営するならSEOの改善についても考えておく必要があります。SEOが あることで検索エンジンで上位表示されやすくなり、ユーザー数を集めることができます。 どのようなポイントを確認しておくべきなのか紹介しましょう。</p>\r\n\r\n<h2>キーワードとタイトル設定は目的を考えて決定</h2>\r\n\r\n<p>サイトのSEOを改善するためには、キーワードとタイトル設定を考えることが大事です。 ユーザーが知りたいワードに関して調査して、キーワードを選んで記事やタイトルに入れ ることで、検索数アップの期待が持てます。</p>\r\n\r\n<p>キーワードとタイトル選定は競合サイトを確認して決定することもできますが、サジェス ト機能やキーワードプランナーなどのツールを用いて決定することも可能です。また、タ イトルは32〜40文字以内で簡潔に設定することも大事です。ユーザーがどんな検索キー ワードを入力するのか考えて、記事とタイトル作成をしましょう。</p>\r\n\r\n<h2>内部リンク構造を設置</h2>\r\n\r\n<p>ユーザーに必要な情報を得てもらうために、サイトマップは必要です。そのため、サイト マップの作成方法を知っておくのは重要です。サイトマップを作るためには主に 2つの方 法があり、1つ目は「Sitemap.xmlEditor」を利用することです。これはXMLサイト マップの自動生成ツールであり、URLを入力することでサイトマップを作れます。</p>\r\n\r\n<p>最適な内部リンクの設置はトップページやサイドカラムに最新情報を掲載する、またサイ ト内のページへ辿れるカテゴリ一蘭ページの準備、パンくずリストの設置などが行えます。 定期的に内部リンク設置をしてSEOの改善を行いましょう。</p>\r\n\r\n<h2>外部リンクも設置しておく</h2>\r\n\r\n<p>SEOの改善として外部リンクの設置も行うことが可能です。外部リンクは被リンクを獲得 することで対策することができます。例えば、コンテンツの有益性を高めるために、ツ イッターやインスタグラムなどのSNSで宣伝することが可能です。直接的な評価を確認で きるので，アクセスしたユーザーも信頼性を確認することができます。</p>\r\n\r\n<p>また、プレスリリースやメルマガ、チラシなどを活用してPR活動することも、よりユー ザーの関心を引くことが可能です。外部リンクを設置してサイトの信憑性を高めることが できればSEOの改善となり、上位表示される期待を持つことができます。サイト作りの際 に、外部リンクも確認しておきましょう。</p>\r\n\r\n<h2>モバイル対応を考える</h2>\r\n\r\n<p>SEOを改善するためには、モバイル対応を考えることも大事です。今はパソコンだけでな くスマホからサイトにアクセスするユーザーが多いため、モバイル対応をすることが集客 につながります。</p>\r\n\r\n<p>スマホでの対応については、モバイルフレンドーテストを利用することで確認することが 可能です。不合格な場合はチェックのアドバイスに沿って改善することでモバイルの対応 を行えます。スマホユーザーに最適なサイトになるように、こちらも定期的に確認するよ うにしましょう。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>SEOを改善することで検索エンジンの上位表示を期待することができ、多くのユーザーを サイトに呼び込むことができます。SEOはアップデートなどで変化することもあるため、 定期的な改善を行うようにしましょう。</p>', '2022-04-06 02:50:13', '2022-05-12 07:47:56'),
(6, '1652359347.png', 'WordPressが導入されている理由とは？利用するメリットを紹介', '2022年04月06日', '<h2><strong>WordPressが導入されている理由とは？利用するメリットを紹介</strong></h2>\r\n\r\n<p>ブログサイトを作るときに多くの人が利用しているのは WordPressです。世界でもナン バー1のシェアを記録しており、専門的な知識が無くても利用できます。「なぜ、みんな ブログサイト作成の際にWordPressを導入するの？」と疑問を感じる人もいるので、内 容を紹介しましょう。</p>\r\n\r\n<h2>WordPressを多くの人が利用するポイント</h2>\r\n\r\n<p>サイト作りの際にWordPressを利用する方が多いのは、以下のような理由があるからで す。確認しておきましょう。</p>\r\n\r\n<h3>プログラミングなどのスキルが必要ない</h3>\r\n\r\n<p>通常サイト作りを行うときは、プログラミングなどの高度なスキルが必要です。記事作成 際はボタンの設置や見出し作成、文字の装飾などは HTMLやCSSなどのプログラミング 言語を用いるため、知識が無ければサイト作成は行うことができませんでした。</p>\r\n\r\n<p>しかし、WordPressを利用するならCMSによる、ボタンのみの操作で行うことが可能で す。直感的な操作のみで記事作成を行うことができ、サイトの実装もプログラミングが必 要ないので、誰でも自分のサイトを作ることができる手軽さから多くの人が利用していま す。</p>\r\n\r\n<h2>コンテンツや画像などの管理も楽に行える</h2>\r\n\r\n<p>WordPressは管理面に関しても楽に行うことができます。WordPress上の「メディア」 という部分に使用したい画像をアップロードしておくことで、必要なときに画像を直ぐに 使用できます。逐一画像アップロードする必要はないため、記事作成をストレスなく行う ことができます。</p>\r\n\r\n<p>また、クラウド上に画像が保存されるため、操作ミスによって削除してもメディアから使 用が可能です。また、記事を投稿する時間の設定やタグによるジャンル分け、タイトル変 更などコンテンツ管理も簡単に行えます。記事作成を行いコンテンツが増えたとしても、 管理は楽に行えるため運営管理が楽なのも人気の理由です。</p>\r\n\r\n<h2>プアグインによるサイト運営を行うことが可能</h2>\r\n\r\n<p>WordPressはプラグインをインストールすることが可能です。プラグインは WordPress を拡張する際に利用することができ、バックアップの作成や SNSでの拡散、SEO対策な ど、いろいろなものがあります。プラグインの種類はたくさんあり、無料でインストール できるものが多いため、自分のサイトに必要なものをインストールするのがおすすめです。 ただ、プラグインを多くインストールするとサイトが重くなることもあるため注意してお きましょう。</p>\r\n\r\n<h2>デフォルトのテーマも利用可能</h2>\r\n\r\n<p>サイトの背景やデフォルトを決めるテーマもWordPressにインストールされています。 そのため、自分の好きなテーマを選んでサイト作りを行うこともできれば、途中でテーマ 変更してデザインを大きく変更することも可能です。サイトの実装を変化させる自由度が 高いことも人気が出ているポイントでしょう。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>WordPressを多くの人が導入しているのは、いろいろな理由があるからです。ただ、 WordPressは簡単にサイト作りを行えるため、専門知識がいりません。もし、サイト作り を考えるなら利用を考えてみましょう。</p>', '2022-04-06 02:51:15', '2022-05-12 07:42:27'),
(7, '1652359941.png', 'スマホアプリのハイブリッド開発とは？', '2022年04月06日', '<h2><strong>スマホアプリのハイブリッド開発とは？</strong></h2>\r\n\r\n<p>今ではいろいろなスマホアプリは作成されていますが、ハイブリッドアプリという言葉を 聞いたことがある人もいるでしょう。ただ、ハイブリッドアプリについて詳しく内容を知 らないかもしれません。スマホのハイブリッドアプリについて内容を紹介しましょう。</p>\r\n\r\n<h2>ハイブリッドアプリとはどんなもの？</h2>\r\n\r\n<p>ハイブリッドアプリとは Web サイト作成のときに用いるスキルを利用して、iOS や Android 向けのアプリを開発することです。通常のアプリ作成のときに用いられるプログ ラミング言語はJava などですが、ハイブリッドアプリはHTML5、Java Script などを用 いて作成されるのが特徴的です。</p>\r\n\r\n<h2>ハイブリッドアプリの Flutter /とReact Native とは</h2>\r\n\r\n<p>ハイブリッドアプリにはFlutter とReact Native があります。それぞれの特徴について 知っておくことも大事なので紹介しましょう。</p>\r\n\r\n<h2>Flutter とは</h2>\r\n\r\n<p>Flutter はGoogle 社が開発したモバイルアプリケーションであり、デザイン性が大きく評 価されています。デザイン性の自由度が高いためアプリケーションのフレームワークで活 躍しています。またm2018 年に公開されてから約2 年ほどでライブラリ数を増やすなど、 機能性も良いです。</p>\r\n\r\n<h2>React Native</h2>\r\n\r\n<p>React Native は2015 年にFacebook 社が開発したものであり、「React」をモバイルで 利用できるようにしています。iOS とAndroid の両方で動作するクロスプラットフォーム であり、開発数が少なくてもパフォーマンスを向上することができます。</p>\r\n\r\n<h2>ハイブリッドアプリのメリットとは</h2>\r\n\r\n<p>ハイブリッドアプリを利用するなら、どのようなメリット、デメリットがあるのか知って おきたいでしょう。ハイブリッドアプリを利用するなら、通常のアプリと違い以下のよう なメリットとデメリットがあります。</p>\r\n\r\n<h3>メリット.低コストで開発できる</h3>\r\n\r\n<p>ハイブリッドアプリは開発コストを抑えることができます。スマートフォン向けにアプリ 開発する場合はiOS とAndroid 用に2 種類開発しなくてはいけません。ただ、その場合は 開発言語が違うのでコストが増加し、作成期間も長くなることが予想されます。</p>\r\n\r\n<p>ただ、ハイブリッドアプリはデバイスに依存せずにアプリ開発を行うため、2 種類開発す る必要がありません。また、利用するプログラミング言語も HTML など比較的利用が多い もので開発できるため、新たに言語を覚える時間とて手間もありません。そのため、予算 を抑えて開発ができます。</p>\r\n\r\n<h2>メリット.メンテナンスが楽に行える</h2>\r\n\r\n<p>ハイブリッドアプリは、メンテナンスを楽に行うことができます。iOS とAndroid 用のア プリで作成すると、メンテナンスもそれぞれ個別に行わなくてはいけないので、時間がか かります。しかし、ハイブリッドアプリはマルチプラットフォームにより、複数の OS 上 にアプリをリリースしていたとしても全て1 回で修正が可能です。何か改善点があったと きに直ぐにサイトに反映させることができます</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>ハイブリッドアプリは特徴とメリットがあります。自分に合っているアプリなのか確認し て利用や開発を検討してみましょう。</p>', '2022-04-06 02:52:33', '2022-05-12 07:52:21'),
(8, '1652359877.png', 'ウェブデザインはどのように作られる？', '2022年04月06日', '<h2><strong>ウェブデザインはどのように作られる？</strong></h2>\r\n\r\n<p>サイトを運営して多くのユーザーを集めたいなら，ウェブデザインについて理解しておく ことも大事です。ウェブデザインは訪問したユーザーはサイト内の記事を読む意欲を湧き 立てさせることができるからです。ウェブデザイン作成の際にどのような点を確認してお くべきなのか紹介しましょう。</p>\r\n\r\n<h2>ウェブデザイン作成の際に押さえておくべきポイントとは？</h2>\r\n\r\n<p>ウェブデザインを美しくするためには押さえておくべきポイントがあります。どのような 点を理解しておく必要があるのか内容を紹介しましょう。</p>\r\n\r\n<h2>目立たせたいところを強調する</h2>\r\n\r\n<p>ウェブデザインの作成では、目立たせたいところをピックアップしておくことが大事です。 自分が強調したいワードや画像がある場合、その点を目立たせることでユーザーは何を伝 えたいのか理解できるからです。</p>\r\n\r\n<p>そして、強調するものをどのように目立たせるかがポイントです。選んだワードのフォン トや大きさを変える、画像の場合は色の組み合わせなどによってユーザーはサイトの印象 が大きく変わります。ただ、色や文字の大きさは自分のサイトに合わせて変化させること が大事なので、どのように強調させているのか他のサイトを参考にして確認することも大 事です。</p>\r\n\r\n<p>目立たせるポイントを把握して、ユーザーにサイトのインパクトを与えるようにしましょ う。</p>\r\n\r\n<h2>相性の良い色を選ぶようにする</h2>\r\n\r\n<p>ウェブデザインは色選びをすることも大事です。色には相性があり、適当に選んでしまう とサイトの雰囲気が悪くなってしまうことがあります。自分が「良い」と思った色合いも ユーザーから見ると変に感じてしまうなら、直ぐにサイトから離脱されてしまい、集客効 果を得られません。</p>\r\n\r\n<p>そのため、カラーハントなどのツールを使用して相性の良い色合いを決定するのがいいで しょう。相選択した色の中から相性の良い色を選んでくれるので、サイトの印象が悪くな ることは避けられます。良い色合いを選ぶためにツールの使用を考えてみましょう。</p>\r\n\r\n<h2>余白も効果的に使用する</h2>\r\n\r\n<p>ウェブデザインは余白の使い方も大事です。ボタンやボックス、アイコンなどを何でもサ イト上に貼り付けるなら、ごちゃごちゃしてしまい非常に見づらいサイトになってしまい ます。デザイン性も悪くなるので、ユーザーは見るのを諦めてしまい離脱する原因となる でしょう。</p>\r\n\r\n<p>そのため、定期的に余白を利用して見やすくすることが大事です。例えば、画像の周りに 余白を作るなら、画像がより強調されてユーザーの目に留まります。余白の使い方も分か らないなら他のウェブサイトを閲覧して参考にすることができるでしょう。</p>\r\n\r\n<h2>まずはウェブデザインのポイントを感覚で身に付けよう</h2>\r\n\r\n<p>ウェブデザインは頭で考えることも大事ですが、感覚がポイントになります。自分のデザ イン感覚を向上させることが良いウェブデザインを作る秘訣なので、ギャラリーサイト他 のサイトを参考にデザインを分析してみることが大事です。</p>\r\n\r\n<p>デザインを見て真似してみることで、デザインの感覚を向上することができます。まずは、 良いデザインをたくさん見ることを心がけてください。</p>', '2022-04-06 02:53:28', '2022-05-12 07:51:17'),
(9, '1652359272.png', 'SSLの設定方法と必要な理由とは？内容を紹介', '2022年04月06日', '<h2><strong>SSLの設定方法と必要な理由とは？内容を紹介</strong></h2>\r\n\r\n<p>ブログ記事の作成をするならSSLの設定方法について理解しておくことも大事です。ただ 「SSLの設定方法はどう行うの？」と疑問を感じる人もいるでしょう。SSLの設定方法に ついて内容を紹介しましょう。</p>\r\n\r\n<h2>SSLが必要な理由とは？</h2>\r\n\r\n<p>SSLとは何なのか知っておきたい人もいるでしょう。SSLとはWebサイトと閲覧してい るユーザーとのやり取りを暗号化することです。インターネットは第三者が通信の中身を 盗み見て悪用することがあります。</p>\r\n\r\n<p>例えば、クレジットカード番号やパスワードなどを盗み見られることがあります。もし、 盗み見られてしまうなら、そのサイトを安心して閲覧することや購入などのアクションを 起こすこともできません。</p>\r\n\r\n<p>その第三者の悪用を防ぐためにSSLはデータを暗号化して解読させないようにしています。 暗号化しておくならたとえ盗み見られても解読が困難となっているため、安全に利用する ことができます。つまり、SSLの設定を行っておくことで悪用されることを防ぐことがで きるため、SSLの設定はとても重要だと言えるでしょう。</p>\r\n\r\n<h2>SSLはどのように設定することができるのか？</h2>\r\n\r\n<p>SSLの設定はどのように行うのか理解しておくことが大事です。SSLの設定の流れを理解 しておくなら、SSL設定を行うことが可能です。SSL設定は以下の手順で行うことができ ます。</p>\r\n\r\n<h2>サーバーパネルにログインする</h2>\r\n\r\n<p>SSLを設定するためにはソフトをインストールする必要があります。ApacheとOpenssl などSSL化するためのソフトをインストールできます。また、新しいバージョンになって いるのか確認してインストールするなら、最新の暗号化となっているので安心できます。</p>\r\n\r\n<h2>SSLに必要な証明書を入手する</h2>\r\n\r\n<p>WebサーバーをSSL対応して通信を行うためにはSSL証明書が必要になります。SSL証 明書は認証局が発行してくれますが、これは有料となっている場合が多いです。事前に費 用を確認しておくようにしましょう。</p>\r\n\r\n<p>また、認証局にSSL証明書を発行してもらうためにはCSRファイルの準備も必要です。 秘密鍵の作成と共にCSRファイルの作成を行えるので準備しておくようにしましょう。秘 密鍵とCSRファイルは複雑なワードになっているので、サイトで準備されているプログラ ミングをコピーして作成するのがおすすめです。両方準備することができれば次のステッ プに進みます。</p>\r\n\r\n<h2>任意のSSL証明書を選択</h2>\r\n\r\n<p>認証局はネットで検索して自分の好きな認証局を選択しましょう。SSL証明書はDV認証、 OV認証、EV認証と3種類あります。メールを使用して手続きを行い、使用料を支払うこ とで証明書が送られてくるのでフォルダーに保存しておきます。その後に編集を行うこと でSSL設定を行うことが可能です。SSLの設定は多少複雑になっているのでしっかり手順 を押さえておきましょう。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>SSL設定はサイトの安全性を確保するために大事です。もし、設定が難しいようなら専門 サーバーと契約してSSL設定を行う方がまだ簡単に行えます。SSL設定をして、ユーザー が安心してサイトを閲覧することができるようにしましょう。</p>', '2022-04-06 02:55:32', '2022-05-12 07:41:12'),
(11, '1652359257.png', 'Googleアナリティクスとはどんなツール？', '2022年04月06日', '<h2><strong>Googleアナリティクスとはどんなツール？</strong></h2>\r\n\r\n<p>ブログサイト作成の際にはいろいろなツールを使用します。その中でGoogleアナリティ クスというツールを聞いたことがある人もいるでしょう。ただ「Googleアナリティクス とはどんなツール？」と疑問を感じることもあるかもしれません。Googleアナリティク スの内容について紹介しましょう。</p>\r\n\r\n<h2>Googleアナリティクスは分析するためのツール</h2>\r\n\r\n<p>GoogleアナリティクスはWebサイトを解析するためのツールです。ユーザーが自分のサ イトに訪問した後にどのような行動を取ったのか確認することができるので、サイトの改 善点やユーザー層などを知ることができます。</p>\r\n\r\n<p>サイト作成をしても訪問者がどのような行動を取っているのか確認できなければ、最適な サイト作りにすることができません。サイトで起こして欲しいアクションやユーザー数を もっと増やしたいならGoogleアナリティクスで分析するのがおすすめです。</p>\r\n\r\n<h2>Googleアナリティクスで確認しておきたいポイントとは</h2>\r\n\r\n<p>Googleアナリティクスを利用して自分のサイトを分析するなら、どのように使用するの かポイントを確認しておくことが大事です。Googleアナリティクスの使用ポイントを紹 介しましょう。</p>\r\n\r\n<h2>リアルタイムでユーザー数をチェック</h2>\r\n\r\n<p>Googleアナリティクスの「リアルタイム」という項目では、何人がWebサイトに訪問し てきたのかを確認することができます。自分のサイトのどこの記事を見ているのかも確認 できるため、どの記事がユーザーにヒットしているのか分析することが可能です。</p>\r\n\r\n<p>また、広告配信を行ったときにどれくらいの反応があったのかWebマーケティングの戦 略として利用することもできます。</p>\r\n\r\n<h2>ユーザーにより改善点を確認できる</h2>\r\n\r\n<p>Googleアナリティクスの「ユーザー」という項目では、Webサイト全体の状況を知るこ とができます。「ユーザー」では主に</p>\r\n\r\n<ul>\r\n	<li>・「セッション」で訪問数の確認、</li>\r\n	<li>・「ユーザー」でクッキーと判断されたユーザー数</li>\r\n	<li>・「ページビュー」では閲覧された数字</li>\r\n	<li>・「ページ／セッション」では1回あたりの平均閲覧ページ数</li>\r\n	<li>・「平均セッション時間」では1回あたりの平均滞在時間</li>\r\n</ul>\r\n\r\n<p>を確認できます。</p>\r\n\r\n<p>それぞれの項目から訪問数や滞在時間を確認することで、有益性のあるページはどれなの か分析して判断することが可能です。良い記事とイマイチな記事の見極めとして利用しま しょう。</p>\r\n\r\n<h2>集客によるアクセス経路の確認</h2>\r\n\r\n<p>ユーザーがどのように自分のページにたどり着いたのか確認したいなら、「集客」で確認 します。概要からチャネル・セッション、コンバージョンを確認でき、アクセス分析する ことができます。また「行動」という項目ではユーザーがどのような行動を取ったのか確 認できます。平均滞在時間や直帰率からサイトのページの有益性の高さを分析できるため、 改善点のあるページがどれなのか直ぐに知ることが可能です。</p>\r\n\r\n<h2>まとめ</h2>\r\n\r\n<p>Googleアナリティクスを利用するなら、サイトの有益性を高めることができます。改善 点などを分析して良いサイト作りをすることができるため、ぜひツールとして導入を考え てみてください。</p>', '2022-04-06 03:00:23', '2022-05-12 07:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_04_05_102018_create_works_table', 2),
(8, '2022_04_05_102129_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(2, 'IdenSpire（パキスタンにおけるプログラミング教室）サービス開始', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）はパキスタンにおいて、ITエンジニアになりたい個人または既にITエンジニアとして勤務している方で更に多言語に渡って実力を向上させたい生徒を対象としたプログラミング教室「IdenSpire」を2022年3月下旬より開始しました。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>昨今、人口が急激に増加しているパキスタンにおいてIT業界での仕事を希望する求職者も年々増加傾向にあります。当サービスでは求職者は増えているものの企業のITエンジニア採用が必ずしもスムーズに行われていない現状に着目して開始致しました。背景としてはITエンジニアになりたいと希望する方の技術力や経験値が企業が求めている基準に達していないケースが多く見られ、採用後の解雇や転職してしまうなども存在します。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>そんな現状を踏まえ当社ではパキスタンにおけるIT技術の底上げを行うべくスクールの開設に至りました。座学中心ではなく、実際に現場で日々開発・実装業務を行っている現役のITエンジニアが指導をし、幅広い課題をアサインすることで実際に生徒が職を手にし、仕事をし始めた時にも対応できる能力を提供することが当社の目標です。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>またメンター制度も導入し、一人ひとりの生徒に適したサポートを添えつつ、顧客満足度の向上にも力を入れています。</p>\r\n\r\n<p><a href=\"https://idenbrid.jp/\">https://idenbrid.jp/</a></p>\r\n\r\n<p>&nbsp;</p>', '2022年4月14日', '2022-04-10 05:37:21', '2022-04-10 01:07:11'),
(4, 'アイデンブリッド社公式HP新設', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）は、日本語専用のコーポレートサイトを新設したことをお知らせいたします。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>これまで、当社のコーポレートサイトは英語を主体とする(idenbrid.com)、そしてその下層ページの一つとして日本語サイトを公開していましたが、昨今の日本顧客からの当社サービスへの関心の高まりを受け、より日本企業・顧客に対して情報を拡充した日本語専用サイトを新設しました。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>今回新たに新設したアイデンブリッド社の日本語サイトではどのように当社のクリエイティブ提案力を活かしたビジネス設計やパキスタンに開発の自社拠点を構えて提供する「オンライン開発ハブ（ONLINE DEVELOPMENT HUB）の取り組みをご紹介しています。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>またIT受託開発においても当社がどの分野に人的資本の強化を行い、競合との競争優位性を確保しているのかなど、積極的に発信することで市場からの認知度向上も実施すべく、継続的にブログの更新も一事業として掲載していきます。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>引き続き、アイデンブリッド社の積極的な情報開示を行っていき、公式ホームページを活用しながらより当社をご理解頂けるようにアグレッシブな発信を続けていきます。</p>', '2022年4月10日', '2022-04-13 06:12:48', '2022-04-14 01:03:45'),
(5, '2022年4月稼働時間について', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）の本社は2022年4月中はオフィス稼働時間を現地時刻9:00-16:30（日本時間13:00-20:30)までとさせて頂いております。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>皆様にはご迷惑をお掛けしますが何卒ご理解のほどよろしくお願いします。</p>', '2022年04月14日', '2022-04-14 01:07:40', '2022-04-14 04:18:28'),
(6, '株式IZAとアイデンブリッド社、SES事業において業務提携開始', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）と株式会社IZA（本社：東京都荒川区、代表取締役社長：山田陸、以下「IZA」）は、アイデンブリッド社のSES事業分野強化の一環として、SES事業に関する業務提携契約を締結いたしました。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>本提携では当社が推進するSES事業のビジネスの具現化に向けて、IZAのもつ独自人材の活用した営業システムの確立をアイデンブリッド社が支援します。また積極的な人材交流を通じて、IZA人材における営業が一定する達成された際には中核人材の育成やそのマネジメントシステムの構築にも取り組みます。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>両社の強みを掛け合わせ、SES事業における営業や人材確保など課題解決への貢献を図ります。またこれを架け橋としてSES人材業に留まることなく、これまでにないIT開発分野においても両社でより強い情報提供などを行ってまいります。</p>\r\n\r\n<p>代表者コメント</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>＜株式会社IZA　代表取締役社長　山田陸＞</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>アイデンブリッド様の高い営業力と弊社の開発力を掛け合わせ、ソフトウェア領域で新たな事業機会を創り出せることを心から楽しみにしております。SES事業を通じて両社の事業基盤をより強固にすることができることができるよう邁進して参りますのでよろしくお願い致します。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>＜アイデンブリッド社　CEO　中村奏画＞</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>IZA様との連携したSES事業のビジネス基盤の創出にはとてもワクワクしています。山田社長とはこれまでのやりとりも通じて、今までにはなかったビジネスの可能性を感じています。SES人材業を通じてIZA様と当社双方におけるビジネス支援となるよう尽力していきますので、IZA様との今後の取り組みにも是非ご期待ください。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>【本件に関するお問い合わせ先】</p>\r\n\r\n<p>株式会社IZA　</p>\r\n\r\n<p>Email：riku.yamada@iza.world</p>\r\n\r\n<p>HP :&nbsp;<a href=\"https://www.iza.world/\" target=\"_blank\">https://www.iza.world/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>アイデンブリッド社　営業</p>\r\n\r\n<p>Email：<a href=\"mailto:helloworld@idenbrid.com\" target=\"_blank\">helloworld@idenbrid.com</a></p>\r\n\r\n<p>HP：<a href=\"https://idenbrid.jp/\" target=\"_blank\">https://idenbrid.jp</a></p>', '2022年04月14日', '2022-04-14 06:25:47', '2022-04-14 06:26:30'),
(7, '2022年5月稼働について', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）は2022年5月1日から5月4日まで休みとなっております。皆様にはご迷惑をお掛けしますが何卒ご理解のほどよろしくお願いします。</p>', '2022年04月26日', '2022-04-26 02:29:31', '2022-04-26 02:29:31'),
(8, '2022年7月稼働について', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）は2022年7月11日から7月13日まで休みとなっております。皆様にはご迷惑をお掛けしますが何卒ご理解のほどよろしくお願いします。</p>', '2022年08月05日', '2022-07-04 07:25:49', '2022-08-05 04:59:07'),
(9, '2022年8月稼働について', '<p>IDENBRID INC.（本社：パキスタンラホール市、CEO：中村奏画、以下、アイデンブリッド社）は2022年8月8日から8月9日まで休みとなっております。皆様にはご迷惑をお掛けしますが何卒ご理解のほどよろしくお願いします。</p>', '2022年08月05日', '2022-08-05 05:00:21', '2022-08-05 05:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Idenbrid', 'hamzamalik.idenbrid@gmail.com', NULL, '$2y$10$TxuqGUlVplnXOAfG5njC/exUPVXIaQnokM1n4znxLF7s1rq4cK.g6', NULL, '2022-04-05 06:00:44', '2022-04-05 06:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `image`, `company`, `title`, `content`, `description`, `created_at`, `updated_at`) VALUES
(2, '1649240640.png', '関西圏マッチングサイト企業様', 'クラウドソーシングシステム開発', 'UIUX・システム開発', '<p>マッチングサイト</p>\r\n\r\n<p><strong>当社担当範囲：</strong>フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://onlinelessons.jp/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://onlinelessons.jp/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術</strong></p>\r\n\r\n<p>PHP Laravel</p>\r\n\r\n<p>Bootstrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:24:00', '2022-08-24 00:45:14'),
(3, '1649240662.png', '関東近郊IT開発会社様', '給湯器検索サイト制作', 'システム開発', '<p>プラグイン開発&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>当社担当範囲：</strong>プラグイン・システム開発&nbsp; &nbsp;</p>\r\n\r\n<p><a href=\"https://kyutoki119.com/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://kyutoki119.com/</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>PHP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>MySQL &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:24:22', '2022-08-24 00:44:36'),
(4, '1649240688.png', '九州ウェディングレンタル会社様', '結婚式アイテム貸し出しサイトデザイン制作', 'UIUX・グラフィックデザイン制作', '<p class=\"mb-2\">UIUX・グラフィックデザイン&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロント設計&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Adobe XD&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Illustrator&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2022-04-06 05:24:48', '2022-04-12 02:37:26'),
(5, '1649240724.png', '都内音楽管理会社様', 'クラウドファンディングサイトセキュリティ対応', 'ITセキュリティ・システム保守', '<p>セキュリティー対応</p>\r\n\r\n<p><strong>当社担当範囲：</strong>DDoS攻撃へのセキュリティー対応・システム開発</p>\r\n\r\n<p><a href=\"https://twinmusic.co.jp/ja/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://twinmusic.co.jp/ja/</a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>SQL</p>', '2022-04-06 05:25:24', '2022-08-24 00:43:45'),
(6, '1649240747.png', 'カリフォルニア州女性コンサル起業家様', 'コンサル予約・著作本販売サイト制作', 'UIUX・WEB制作', '<p>WordPress ECサイト</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://anmarieuber.idenbrid.com/\" target=\"__blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://anmarieuber.idenbrid.com/</a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>Core PHP</p>\r\n\r\n<p>Bootstrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:25:47', '2022-08-24 00:42:59'),
(7, '1649240770.png', '沖縄占いスクール様', '四柱推命占いシステム開発', 'UIUX・システム開発', '<p>占いウェブアプリケーション&nbsp;</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロントエンド実装・システム開発</p>\r\n\r\n\r\n<p><a href=\"https://leaderssogo.netlify.app/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://leaderssogo.netlify.app/</a></p>\r\n\r\n<p><a href=\"https://sentenipan.netlify.app/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://sentenipan.netlify.app/</a></p>\r\n\r\n\r\n<p><strong>開発言語・技術：</strong>&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>React JS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Gatsby&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Netlify&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '2022-04-06 05:26:10', '2022-08-24 00:41:59'),
(8, '1649240828.png', '都内カメラマン事務所様', '英語による日本食紹介サイト制作', 'UIUX・WEB制作', '<p>WordPress日本食ブログサイト</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://waribashikitchen.com/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://waribashikitchen.com/</a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>Adobe XD</p>\r\n\r\n<p>Core PHP</p>\r\n\r\n<p>Bootstrap;</p>\r\n\r\n<p>jQuery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>MySQL&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Linux server</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', '2022-04-06 05:27:08', '2022-08-24 00:38:37'),
(9, '1649240847.png', '都内化粧品開発会社様', 'CVRを重要視した訴求型化粧品LP制作', 'UIUX・WEB制作', '<p class=\"mb-2\">スタートアップ会社コスメプロダクトLP</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロントエンド実装・システム開発&nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Adobe XD&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>JavaScript&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>PHP&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>MySQL&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2022-04-06 05:27:27', '2022-04-12 01:53:27'),
(10, '1649240871.png', '都内EC運営スタートアップ企業様', 'インフルエンサーにおけるEC及びオークションサイト制作', 'UIUX・システム開発・WEB制作', '<p>C2C オークションウェブサイト</p>\r\n\r\n<p><strong>当社担当範囲：</strong>フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://byou.jp/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://byou.jp/</a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>Bootstrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>PHP Laravel</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:27:51', '2022-08-24 00:37:49'),
(11, '1649240904.png', '関西圏営業会社様', 'インフルエンサーによる動画配信アプリ', 'UIUX・システム開発・スマホアプリ', '<p class=\"mb-2\">動画配信モバイルアプリ</p>\r\n\r\n<p><strong>当社担当範囲：</strong>フロントエンド実装・システム開発・サーバー開発</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Flutter&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Node JS&nbsp;</p>\r\n\r\n<p>Angular JS&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>AWS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2022-04-06 05:28:24', '2022-04-12 01:42:30'),
(12, '1649240945.png', '都内コンサル企業様', '社内業務用ポータル開発', 'UIUX・システム開発', '<p class=\"mb-2\">社内広報用ポータル</p>\r\n\r\n<p><strong>当社担当範囲：</strong>UIUXデザイン・フロントエンド実装・システム開発</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術 :</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:29:05', '2022-04-12 01:41:24'),
(13, '1649240980.png', '関西圏アフィリエイト企業様', '百科事典のような検索ポータル開発', 'UIUX・システム開発', '<p>アフィリエイト検索ウェブシステム</p>\r\n\r\n<p><strong>当社担当範囲：</strong>フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://commenttable.com/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://commenttable.com/ </a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>PHP Laravel</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:29:40', '2022-08-24 00:36:57'),
(14, '1649241049.png', '関東圏IT企業様', '競技用馬を掲載したサイトのプラグイン開発', 'システム開発', '<p><strong>WordPressプラグイン開発：</strong></p>\r\n\r\n<p>当社担当範囲：システム開発</p>\r\n\r\n<p><a href=\"https://xn--u9j871leggbx4bzdk.com\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i> https://xn--u9j871leggbx4bzdk.com/ </a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>PHP</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:30:49', '2022-08-24 00:35:53'),
(15, '1649241070.png', '都内保育園様', '保育園紹介用のサイト', 'UIUX・WEB制作', '<p><strong>保育園静的ウェブサイト：</strong></p>\r\n\r\n<p>当社担当範囲：UIUXデザイン・フロントエンド実装</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>Adobe XD</p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:31:10', '2022-04-12 01:19:12'),
(16, '1649241104.png', '都内コンサル会社様', 'インバウンド対象のサイト構築', 'UIUX・WEB制作', '<p><strong>WordPressウェブサイト制作：</strong></p>\r\n\r\n<p>当社担当範囲：フロントエンド実装・システム開発</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>PHP</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:31:44', '2022-04-12 01:16:40'),
(17, '1649241138.png', '都内カーペット輸入販売企業様', '自社商品を掲載するカタログサイト構築', 'UIUX・WEB制作', '<p><strong>多言語カタログWordPressサイト：</strong></p>\r\n\r\n<p>当社担当範囲：フロントエンド実装・システム開発</p>\r\n\r\n<p><a href=\"https://yazdani-carpet.com/\" target=\"_blank\"><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i>https://yazdani-carpet.com/</a></p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>PHP</p>\r\n\r\n<p>MySQL</p>', '2022-04-06 05:32:18', '2022-08-24 00:34:22'),
(18, '1649241163.png', '関東近郊災害対策機関', '危機対応のための検索サイト開発', 'UIUX・システム開発', '<p>災害時検索ウェブシステム：</p>\r\n\r\n<p><strong>当社担当範囲：</strong>フロントエンド実装・システム開発</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>HTML</p>\r\n\r\n<p>BootStrap</p>\r\n\r\n<p>jQuery</p>\r\n\r\n<p>PHP</p>\r\n\r\n<p>MySQL</p>\r\n\r\n<p>Linux server</p>', '2022-04-06 05:32:43', '2022-04-12 03:10:36'),
(19, '1649241195.png', '都内コンサル会社様', '社内クラウド環境構築', 'インフラ開発・システム保守', '<p>クラウド環境整備・DBマイグレーション業務等</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>当社担当範囲：</strong>業務・システム整理及びAWS周り全般</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>AWS</p>', '2022-04-06 05:33:15', '2022-04-12 01:04:44'),
(20, '1649241216.png', '都内小売企業様', '個人の魅力や運を測定するスマホアプリ', 'UIUX・システム開発・スマホアプリ', '<p><strong>占いハイブリッドスマホアプリ開発：</strong></p>\r\n\r\n<p>当社担当範囲：フロントエンド実装・システム開発</p>\r\n\r\n<p><i class=\"fa fa-link mr-2\" aria-hidden=\"true\"></i><a href=\"https://play.google.com/store/apps/details?id=com.umagram\" target=\"_blank\">https://play.google.com/store/apps/details?id=com.umagram</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>開発言語・技術：</strong></p>\r\n\r\n<p>Flutter</p>', '2022-04-06 05:33:36', '2022-08-24 00:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
