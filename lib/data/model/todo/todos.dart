/// userId : 1
/// id : 1
/// title : "delectus aut autem"
/// completed : false

class Todos {
  Todos({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  Todos.fromJson(dynamic json) {
    userId = json['userId'].toString();
    id = json['id'].toString();
    title = json['title'].toString();
    completed = json['completed'];
  }

  String? userId;
  String? id;
  String? title;
  bool? completed;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['completed'] = completed;
    return map;
  }
}
