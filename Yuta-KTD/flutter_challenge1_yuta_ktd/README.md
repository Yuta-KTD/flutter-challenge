# flutter_challenge1_yuta_ktd

チャレンジ用ディレクトリです。
[GoogleMapAPI](https://mapsplatform.google.com/)を使用して要件を満たすような実装をしています。

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

TODO: 詳細記載する
.
├── api
├── constant: API接続先や、基本的なUIスタイルの定数を管理
├── core:  
│   └── location
├── datastore: 
├── gen
├── model
├── provider
├── repository
├── state
├── view
│   └── charger_spots
│       └── component
│           ├── card
│           │   └── card_text_infos
│           └── map
└── viewmodel