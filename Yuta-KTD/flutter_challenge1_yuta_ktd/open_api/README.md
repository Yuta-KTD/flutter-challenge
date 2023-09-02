# 用途
OpenAPIDocから、openapi-generatorを使用してfreezed生成用のモデルを作成するために作成されたディレクトリです。
まだ試作の段階ですが、十分効力はあるので使用しています。

# 使用方法
1. OpenAPIDocをディレクトリのルートに配置する
2. `npm run generate`を実行
3. `dist`ディレクトリにモデルクラスが出力される
4. `dist`ディレクトリに移動
5. `dart pub get`を実行
6. `dart pub run build_runner build`を実行

## 注意点
### 手順1
- enumにしたい箇所についてはcomponents/schemasに定義しないと出力されなかったのでOpenAPIDocを修正しています
    - templateをうまく修正すればいける？
### 手順2
- `charger_spot.dart`
    - `source`が、`source_`として出力されてしまいますので、手作業で戻しています
        - スクリプトやテンプレートが原因？
    - `maintenance_note`の配列内に`Null`が入ってくることがあったのでnullableにしましたが、モデルに反映されなかったので`List<String?>`に変更しています
        - これもスクリプトやテンプレートが原因？
- `grouped_total_unit_prices_this_month_next_month_by_user`が`models.dart`に反映されないので手作業で追加しています