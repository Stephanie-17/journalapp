class Journal {
  final int id;
  final String title;
  String mood;
  final String body;
  bool isPinned;
  List tags;
  final DateTime createdAt;

  Journal({
    required this.id,
    required this.title,
    required this.mood,
    required this.body,
    required this.isPinned,
    required this.tags,
    required this.createdAt
  });
}
