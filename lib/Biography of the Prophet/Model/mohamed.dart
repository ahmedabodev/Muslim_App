class mohamed {
  dynamic hadith;
  dynamic description;

  mohamed({
    required this.hadith,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'hadith': this.hadith,
      'description': this.description,
    };
  }

  factory mohamed.fromMap(Map<String, dynamic> map) {
    return mohamed(
      hadith: map['hadith'] as dynamic,
      description: map['description'] as dynamic,
    );
  }
}