class Moqr2model{
dynamic name;

Moqr2model({
    required this.name,
  });

Map<String, dynamic> toMap() {
    return {
      'name': this.name,
    };
  }

  factory Moqr2model.fromMap(Map<String, dynamic> map) {
    return Moqr2model(
      name: map['name'] as dynamic,
    );
  }
}