import 'dart:convert';

class Task {
  int id;
  String title;
  Task({
    required this.id,
    required this.title,
  });

  Task copyWith({
    int? id,
    String? title,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'body': title,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source));

  @override
  String toString() => 'Task(id: $id, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Task && other.id == id && other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode;
}
