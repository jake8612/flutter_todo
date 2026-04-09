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

## 機能一覧
- TODO
- TODOカテゴリ
- TODOメモ
- TODOリマインド
- TODOタグ
- 削除リスト
- TODO重要度