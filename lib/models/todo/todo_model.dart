class TodoModel {
  TodoModel({
    required this.title,
    this.description,
    this.isComplete = false,
    required this.createdOn,
    required this.updatedOn,
    this.deletedAt,
  });

  final String title;
  final String? description;
  final bool isComplete;
  final DateTime createdOn;
  final DateTime updatedOn;
  final DateTime? deletedAt;
}
