class TodoItem {
  int id;
  String title;
  String tag;
  DateTime dateTime;

  TodoItem({required this.id, required this.title, required this.tag, required this.dateTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'tag': tag,
      'dateTime': dateTime.toIso8601String(),
    };
  }

  factory TodoItem.fromMap(Map<String, dynamic> map) {
    return TodoItem(
      id: map['id'],
      title: map['title'],
      tag: map['tag'],
      dateTime: DateTime.parse(map['dateTime']),
    );
  }
}
