class ModelDoctor {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const ModelDoctor({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory ModelDoctor.fromJson(Map<dynamic, dynamic> json) {
    return ModelDoctor(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
