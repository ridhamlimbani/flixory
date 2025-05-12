import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flixory/Model/actor_model.dart';
import 'package:flixory/Static/create_movie_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ActorPageController extends GetxController{
  RxBool isAddActorPage = false.obs;

  RxString actorName = "".obs;
  RxString actorPoster = "".obs;
  RxString actorDOB = "".obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController posterController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController figureController = TextEditingController();
  TextEditingController eyeColorController = TextEditingController();
  TextEditingController hairColorController = TextEditingController();
  TextEditingController debutController = TextEditingController();
  TextEditingController awardsController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController birthplaceController = TextEditingController();
  TextEditingController zodicSignController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController homeTownController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController foodHabitController = TextEditingController();
  TextEditingController hobbiesController = TextEditingController();
  TextEditingController maritalController = TextEditingController();
  TextEditingController affairsController = TextEditingController();
  TextEditingController husbandController = TextEditingController();
  TextEditingController parentsController = TextEditingController();
  TextEditingController familyController = TextEditingController();
  TextEditingController actorController = TextEditingController();
  TextEditingController actressController = TextEditingController();
  TextEditingController filmController = TextEditingController();
  TextEditingController foodController = TextEditingController();
  TextEditingController colourController = TextEditingController();

  addActorFunction() async {
    final actorData = ActorModel(
      zodicSign: zodicSignController.text.trim(),
      weight: weightController.text.trim(),
      school: schoolController.text.trim(),
      profession: professionController.text.trim(),
      parents: parentsController.text.trim(),
      nationality: nationalityController.text.trim(),
      marital: maritalController.text.trim(),
      husband: husbandController.text.trim(),
      homeTown: homeTownController.text.trim(),
      hobbies: hobbiesController.text.trim(),
      hairColor: hairColorController.text.trim(),
      foodHabit: foodHabitController.text.trim(),
      food: foodController.text.trim(),
      film: filmController.text.trim(),
      figure: figureController.text.trim(),
      eyeColor: eyeColorController.text.trim(),
      education: educationController.text.trim(),
      dob: dobController.text.trim(),
      debut: dobController.text.trim(),
      colour: colourController.text.trim(),
      college: collegeController.text.trim(),
      birthplace: birthplaceController.text.trim(),
      awards: awardsController.text.trim(),
      age: ageController.text.trim(),
      affairs: affairsController.text.trim(),
      actress: actressController.text.trim(),
      actor: actorController.text.trim(),
      height: heightController.text.trim(),
      family: familyController.text.trim(),
      name: nameController.text.trim(),
      poster: posterController.text.trim()
    );

    await createActorFunction(actorModel: actorData);
  }

  Stream<List<ActorModel>> readActorData()
      => FirebaseFirestore
          .instance
          .collection("actor")
          .snapshots()
          .map((snapshot)
              => snapshot.docs.map((doc) => ActorModel.fromJson(doc.data())).toList());
}