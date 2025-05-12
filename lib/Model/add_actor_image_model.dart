class AddActorImageModel {
  String id;
  final String name;
  final List<Map<String, List<String>>> poster;

  AddActorImageModel({
    this.id = '',
    required this.name,
    required this.poster,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'poster': poster,
  };

  static AddActorImageModel fromJson(Map<String, dynamic> json) {
    final posterList = json['poster'] as List<dynamic>;

    final poster = posterList.map((item) {
      final map = Map<String, dynamic>.from(item);
      return map.map((key, value) => MapEntry(key, List<String>.from(value)));
    }).toList();

    return AddActorImageModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      poster: poster,
    );
  }
}
