class ActorModel {
  String id;
  final String name;
  final String poster;
  final String profession;
  final String height;
  final String weight;
  final String figure;
  final String eyeColor;
  final String hairColor;
  final String debut;
  final String awards;
  final String dob;
  final String age;
  final String birthplace;
  final String zodicSign;
  final String nationality;
  final String homeTown;
  final String school;
  final String college;
  final String education;
  final String foodHabit;
  final String hobbies;
  final String marital;
  final String affairs;
  final String husband;
  final String parents;
  final String family;
  final String actor;
  final String actress;
  final String film;
  final String food;
  final String colour;

  ActorModel({
    this.id = '',
    required this.name,
    required this.poster,
    required this.profession,
    required this.height,
    required this.weight,
    required this.figure,
    required this.eyeColor,
    required this.hairColor,
    required this.debut,
    required this.awards,
    required this.dob,
    required this.age,
    required this.birthplace,
    required this.zodicSign,
    required this.nationality,
    required this.homeTown,
    required this.school,
    required this.college,
    required this.education,
    required this.foodHabit,
    required this.hobbies,
    required this.marital,
    required this.affairs,
    required this.husband,
    required this.parents,
    required this.family,
    required this.actor,
    required this.actress,
    required this.film,
    required this.food,
    required this.colour,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'poster': poster,
    'profession': profession,
    'height': height,
    'weight': weight,
    'figure': figure,
    'eye_color': eyeColor,
    'hair_color': hairColor,
    'debut': debut,
    'awards': awards,
    'dob': dob,
    'age': age,
    'birthplace': birthplace,
    'zodic_sign': zodicSign,
    'nationality': nationality,
    'home_town': homeTown,
    'school': school,
    'college': college,
    'education': education,
    'food_habit': foodHabit,
    'hobbies': hobbies,
    'marital': marital,
    'affairs': affairs,
    'husband': husband,
    'parents': parents,
    'family': family,
    'actor': actor,
    'actress': actress,
    'film': film,
    'food': food,
    'colour': colour,
  };

  static ActorModel fromJson(Map<String, dynamic> json) => ActorModel(
    id: json['id'] ?? '',
    name: json['name'],
    poster: json['poster'],
    profession: json['profession'],
    height: json['height'],
    weight: json['weight'],
    figure: json['figure'],
    eyeColor: json['eye_color'],
    hairColor: json['hair_color'],
    debut: json['debut'],
    awards: json['awards'],
    dob: json['dob'],
    age: json['age'],
    birthplace: json['birthplace'],
    zodicSign: json['zodic_sign'],
    nationality: json['nationality'],
    homeTown: json['home_town'],
    school: json['school'],
    college: json['college'],
    education: json['education'],
    foodHabit: json['food_habit'],
    hobbies: json['hobbies'],
    marital: json['marital'],
    affairs: json['affairs'],
    husband: json['husband'],
    parents: json['parents'],
    family: json['family'],
    actor: json['actor'],
    actress: json['actress'],
    film: json['film'],
    food: json['food'],
    colour: json['colour'],
  );
}