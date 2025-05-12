import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flixory/Model/actor_model.dart';
import 'package:flixory/Model/add_actor_image_model.dart';
import 'package:flixory/Model/movie_model.dart';

Future createMovieFunction({required Movie movie}) async{
  final docMovie = FirebaseFirestore.instance.collection('movie').doc();

  final movieData = Movie(
    id: docMovie.id,
    name: movie.name,
    poster: movie.poster,
    url: movie.url,
    genre: movie.genre,
    cast: movie.cast,
    production: movie.production,
    releaseDate: movie.releaseDate,
    type: movie.type,
    watchTime: movie.watchTime,
    description: movie.description,
    language: movie.language,
    resolution: movie.resolution,
    size: movie.size,
  );

  final json = movieData.toJson();

  await docMovie.set(json);
}

Future createActorFunction({required ActorModel actorModel}) async{
  final docMovie = FirebaseFirestore.instance.collection('actor').doc();

  final actorData = ActorModel(
    id: docMovie.id,
    name: actorModel.name,
    poster: actorModel.poster,
    height: actorModel.height,
    actor: actorModel.actor,
    actress: actorModel.actress,
    affairs: actorModel.affairs,
    age: actorModel.age,
    awards: actorModel.awards,
    birthplace: actorModel.birthplace,
    college: actorModel.college,
    colour: actorModel.colour,
    debut: actorModel.debut,
    dob: actorModel.dob,
    education: actorModel.education,
    eyeColor: actorModel.eyeColor,
    family:actorModel.family,
    figure: actorModel.figure,
    film: actorModel.film,
    food: actorModel.food,
    foodHabit: actorModel.foodHabit,
    hairColor: actorModel.hairColor,
    hobbies: actorModel.hobbies,
    homeTown: actorModel.homeTown,
    husband: actorModel.husband,
    marital: actorModel.marital,
    nationality: actorModel.nationality,
    parents: actorModel.parents,
    profession: actorModel.profession,
    school: actorModel.school,
    weight: actorModel.weight,
    zodicSign: actorModel.zodicSign
  );

  final json = actorData.toJson();

  await docMovie.set(json);
}

Future createActorImagesFunction({required AddActorImageModel addActorImageModel,required String id}) async{
  final docMovie = FirebaseFirestore.instance.collection('actor_image').doc(id);

  final actorImageData = AddActorImageModel(
      id: docMovie.id,
      name: addActorImageModel.name,
      poster: addActorImageModel.poster,
  );

  final json = actorImageData.toJson();

  await docMovie.set(json);
}
