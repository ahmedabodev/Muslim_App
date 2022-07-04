class HomeModel{
  dynamic rewaya;
  dynamic name;
  dynamic Server;
  dynamic count;
  dynamic suras;


  HomeModel({
    required this.rewaya,
    required this.name,
    required this.Server,
    required this.count,
    required this.suras,
  });

  Map<String, dynamic> toMap() {
    return {
      'rewaya': this.rewaya,
      'name': this.name,
      'Server':this.Server,
      'count': this.count,
      'suras':this.suras
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      rewaya: map['rewaya'] as dynamic,
      name: map['name'] as dynamic,
      Server: map['Server']as dynamic,
      count: map['count'],
      suras: map['suras'],
    );
  }
}