import 'package:flixory/Utils/constants.dart';
import 'package:flixory/Utils/static.dart';
import 'package:flixory/common/custom_text_filed.dart';
import 'package:flixory/page/admin_panel/actor_details_page/actor_details_page.dart';
import 'package:flixory/page/admin_panel/actor_page/actor_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActorPage extends StatelessWidget {
  ActorPage({super.key});

  ActorPageController actorPageController = Get.put(ActorPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => actorPageController.isAddActorPage.value == true ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      actorPageController.isAddActorPage.value = false;
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Constants.redDark.withOpacity(0.9),
                            Constants.orangeDark.withOpacity(0.9),
                          ],
                        )
                      ),
                      child: Center(
                        child: Icon(Icons.close,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                CustomTextField(
                    onChanged: (String value){},
                    hintText: "Actor Name",
                    controller: actorPageController.nameController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Actor Poster",
                  controller: actorPageController.posterController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Profession",
                  controller: actorPageController.professionController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Height (approx.)",
                  controller: actorPageController.heightController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Weight (approx.)",
                  controller: actorPageController.weightController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Figure Measurements (approx.)",
                  controller: actorPageController.figureController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Eye Color",
                  controller: actorPageController.eyeColorController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Hair Color",
                  controller: actorPageController.hairColorController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Debut",
                  controller: actorPageController.debutController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Awards, Honours, Achievements",
                  controller: actorPageController.awardsController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Date of Birth",
                  controller: actorPageController.dobController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Age (as of 2024)",
                  controller: actorPageController.ageController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Birthplace",
                  controller: actorPageController.birthplaceController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Zodiac sign",
                  controller: actorPageController.zodicSignController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Nationality",
                  controller: actorPageController.nationalityController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Hometown",
                  controller: actorPageController.homeTownController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "School",
                  controller: actorPageController.schoolController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "College/ University",
                  controller: actorPageController.collegeController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Education Qualification",
                  controller: actorPageController.educationController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Food Habit",
                  controller: actorPageController.foodHabitController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Hobbies",
                  controller: actorPageController.hobbiesController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Marital Status",
                  controller: actorPageController.maritalController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Affairs/ Boyfriends",
                  controller: actorPageController.affairsController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Husband/ Spouse",
                  controller: actorPageController.husbandController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Parents",
                  controller: actorPageController.parentsController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Other Family",
                  controller: actorPageController.familyController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Actor (s)",
                  controller: actorPageController.actorController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Actress (s)",
                  controller: actorPageController.actressController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Film",
                  controller: actorPageController.filmController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Food",
                  controller: actorPageController.foodController,
                ),
                SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (String value){},
                  hintText: "Colour (s)",
                  controller: actorPageController.colourController,
                ),
                SizedBox(height: 30,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      actorPageController.addActorFunction();
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Constants.redDark.withOpacity(0.9),
                              Constants.orangeDark.withOpacity(0.9),
                            ],
                          )
                      ),
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ) : Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      actorPageController.isAddActorPage.value = true;
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Constants.redDark.withOpacity(0.9),
                              Constants.orangeDark.withOpacity(0.9),
                            ],
                          )
                      ),
                      child: Center(
                        child: Text(
                          "Add Actor",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                StreamBuilder(
                  stream: actorPageController.readActorData(),
                  builder: (context,snapshot) {
                    if(snapshot.hasData){
                      final actorData = snapshot.data!;

                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:4, // Number of columns
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: actorData.length,
                        itemBuilder: (context,index){
                          return  GestureDetector(
                            onTap: (){
                              actorModel = actorData[index];
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ActorDetailsPage()));
                            },
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white
                                  )
                                // color: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                actorData[index].poster
                                            ),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    actorData[index].name,
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      Text(
                                        actorData[index].dob,
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 15,)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Center(child: CircularProgressIndicator(),);
                    }
                  },
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
