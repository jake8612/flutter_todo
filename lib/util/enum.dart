/// [TODO]ステータス
enum TodoStatus {
  untouched('未着手'),
  working('進行中'),
  done('完了'),
  ;

  final String label;

  const TodoStatus(this.label);
}
