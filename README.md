# Flutter TODO App

## アーキテクチャ
MVVM を基本としたレイヤードアーキテクチャを採用し、状態管理にはRiverpodを使用する

- UIレイヤー
- Dataレイヤー
- Domainレイヤー

### UIレイヤー
画面ごとにUI,VieModel,Stateクラスを基本とする

### Dataレイヤー
データのCRUD操作を行うRepositoryと、外部サービスもしくはローカルストレージとの連携を行うService

### Domainレイヤー
データモデルと複数のRepositoryを参照する機能をまとめたユースケースクラス

## フォルダ構成
- ui
    - feature1
        - widgets
        - view_models
- data
    - repositories
    - services
        - local
        - remote
- domain
    - models
    - usecases
- routing
- util
    - converters
    - extensions

## 機能一覧
- TODO(CRUD)
- ステータス管理(未着手、進行中、完了)
- TODO重要度(低中高)
- TODOタグ(自由に追加)
- 並び替え、フィルタ(重要度順、期限順、タグ)
- オフライン対応、オンライン同期

## データモデル
データ型は Dart/PostgreSQL の形式で記述
### Todo
- ID(int/integer)
- タイトル(String/varchar(40))
- 詳細(String/text)
- ステータス(int/integer)
    - 1: 未着手
    - 2: 進行中
    - 3: 完了
- 登録日時(String/timestamp)
- 更新日時(String/timestamp)
- 削除日時(String?/timestamp)