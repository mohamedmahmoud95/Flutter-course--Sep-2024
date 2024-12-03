class ToDohaya {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  ToDohaya({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory ToDohaya.fromJson(Map<dynamic, dynamic> json) {
    return ToDohaya(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['todo'] as String,
      completed: json['completed'] as bool,
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'todo': title,
      'completed': completed,
    };
  }

  @override
  String toString() {
    return 'ToDohaya{userId: $userId, id: $id, title: $title, completed: $completed}';
  }

}
