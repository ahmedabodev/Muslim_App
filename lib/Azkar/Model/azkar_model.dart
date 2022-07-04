class azakrsaba7{
  dynamic content;
  dynamic description;
  dynamic count;
  dynamic category;

  azakrsaba7({
    required this.content,
    required this.description,
    required this.count,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'content': this.content,
      'description': this.description,
      'count': this.count,
      'category': this.category,
    };
  }

  factory azakrsaba7.fromMap(Map<String, dynamic> map) {
    return azakrsaba7(
      content: map['content'] as dynamic,
      description: map['description'] as dynamic,
      count: map['count'] as dynamic,
      category: map['category'] as dynamic,
    );
  }
}