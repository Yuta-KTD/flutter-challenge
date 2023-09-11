# flutter_challenge1_yuta_ktd

チャレンジ用ディレクトリです。
[GoogleMapAPI](https://mapsplatform.google.com/)を使用して要件を満たすような実装をしています。

## バージョン情報
```
Flutter 3.10.6 • channel stable • https://github.com/flutter/flutter.git
Framework • revision f468f3366c (9 weeks ago) • 2023-07-12 15:19:05 -0700
Engine • revision cdbeda788a
Tools • Dart 3.0.6 • DevTools 2.23.1
```

## Getting Started

前提: GoogleMapAPIKeyの取得とAndroid/iOS向けのAPIの有効化([手順参考](https://pub.dev/packages/google_maps_flutter#getting-started:~:text=Enable%20Google%20Map%20SDK%20for%20each%20platform.))

1. このディレクトリで`.env`ファイルを作成してください
2. `.env`ファイルの中は以下のように記述してください
```
MAP_API_KEY=$GoogleMapのAPIKey
EVENE_API_KEY=$EV充電エネチェンジAPIのAPIKey
```
(`.env`ファイルをKotlin/Swiftからも読み込みたいため、[flutter_config](https://pub.dev/packages/flutter_config)を使用しています。)
3. `flutter run`実行

### 画像取り込み
画像取り込み時にタイポや存在しないファイルへの参照を防ぐために、[FlutterGen](https://pub.dev/packages/flutter_gen_runner)を導入しました。
下記手順を実行することで`flutter_challenge1_yuta_ktd/lib/gen/assets.gen.dart`が生成されます。
1. （まだ一度もプロジェクト実行していない場合は）`flutter pub get`を実行
2. `flutter pub run build_runner build --delete-conflicting-outputs`を実行
これによって、`Assets.$画像名.image()`のような形式で画像取得が可能です。
他のファイル取り込みも可能です。詳しい使用方法は[作者のMedium](https://wasabeef.medium.com/fluttergen-25149caea94f)を確認してください。

## other

### 進捗管理

- 進捗、やることはNotionで管理しました
    - [タスクボード](https://www.notion.so/Applications-7fdf4ce90a75495cac1ec58a05f51e32?pvs=4)
    - PR提出~面接終了後までリンクアクセス可能にします

### ディレクトリ設計・構成
基本的には[flutter-architecture-blueprintsリポジトリ](https://github.com/wasabeef/flutter-architecture-blueprints#environment)の図のようなMVVM + Repositoryパターンに沿って実装しました。
[図参照リンク](https://github.com/wasabeef/flutter-architecture-blueprints#environment)

他にも[feature-sistな設計](https://codewithandrea.com/articles/flutter-project-structure/?source=post_page-----240d3c56b597--------------------------------)での開発もやってみたかったのですが、スピード優先ということで慣れている形で実装しました

#### lib配下
今回のプロジェクトで使用したディレクトリ構成です。
他にも日付処理などよく使う処理を入れる`util`や、view直下に`component`を配置することもあります。
以下のような構造になっています。
```
lib
├── constant
├── core 
│   ├── api
│   └── location
├── gen
├── datasource
├── model
├── provider
├── repository
└── view
　   └── charger_spots
 　      └── component
```
各ディレクトリの説明は以下の通りです。
- constant: API接続先や、基本的なUIスタイルの定数を管理
- core: アプリの根幹機能を配置
- api: API疎通に関わる根幹機能（今回でいえばDioでの接続部分）を提供する、リクエストメソッドの分割を行うときもある
- location: 位置情報に関わる根幹機能（今回でいえばgeolocator）を提供する
- gen: FlutterGenで生成されたディレクトリ
- datasource: API接続部分、APIごとに作成されるイメージ
- model: `open_api`ディレクトリで自動生成しなかったモデルクラス
- provider: いわゆるViewModelです。Viewで使用しやすいように各種Provider/Notifireを定義しています
- repository: DataSourceへのアクセスを抽象化するためのもの、ビジネスロジックとデータ操作を分離することを目的とする
- view: 画面を描画する処理、Providerで定義したものをwatch/read/listenする。画面ごとにディレクトリ分けるイメージ
- charger_spots
- component: 画面ごとのコンポーネント

#### open_api配下
OpenAPIDoc(swagger.yamlファイル)から、[openapi-generator](https://openapi-generator.tech/)を使用して[freezed](https://pub.dev/packages/freezed)生成用のモデルを出力し、freezedで生成した内容です。
詳細な使用方法は[open_api側のREADME](./open_api/README.md)を参照ください。
以下のような構造になっています。
```
open_api
├── dist
│   ├── doc
│   └── lib
│       └── model
├─── template
└── package.json
```
各ディレクトリ/ファイルの説明は以下の通りです。
- dist: openapi-generatorで出力したdartプロジェクト
- template: openapi-generator出力用のtemplateファイル（[参考](https://openapi-generator.tech/docs/templating/)）を格納
-  package.json: openapi-generatorを使用するためのnpmパッケージ管理ファイル

#### その他
- `assets`: アプリ内で使用する画像などを保管する。使用方法は[画像取り込み](#画像取り込み)を参照ください
- `.tool-versions`: 本PJではFlutterなどのバージョン管理に[asdf](https://asdf-vm.com/)を使用するので、作成しました。