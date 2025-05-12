class Movie {
  String id;
  final String name;
  final String poster;
  final String url;
  final String watchTime;
  final String releaseDate;
  final String description;
  final String type;
  final String language;
  final String resolution;
  final String size;
  final List<String> genre;
  final String production;
  final List<Map<String,dynamic>> cast;

  Movie({
    this.id = '',
    required this.name,
    required this.poster,
    required this.url,
    required this.watchTime,
    required this.releaseDate,
    required this.description,
    required this.type,
    required this.resolution,
    required this.size,
    required this.language,
    required this.genre,
    required this.production,
    required this.cast,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'poster': poster,
    'url': url,
    'watch_time': watchTime,
    'release_date': releaseDate,
    'description': description,
    'type': type,
    'resolution': resolution,
    'size': size,
    'language': language,
    'genre': genre,
    'production': production,
    'cast': cast,
  };
}