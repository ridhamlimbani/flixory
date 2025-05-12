import 'package:flixory/Model/add_actor_image_model.dart';
import 'package:flixory/Utils/constants.dart';
import 'package:flixory/Utils/static.dart';
import 'package:flixory/page/admin_panel/actor_details_page/actor_details_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActorDetailsPage extends StatelessWidget {
  ActorDetailsPage({super.key});

  ActorDetailsPageController actorDetailsPageController = Get.put(ActorDetailsPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(actorModel!.poster.toString()),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.redDark.withOpacity(0.9),
                                  Constants.orangeDark.withOpacity(0.9),
                                ],
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.edit,color: Colors.white,),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.redDark.withOpacity(0.9),
                                  Constants.orangeDark.withOpacity(0.9),
                                ],
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.delete,color: Colors.white,),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          actorDetailsPageController.actorNameController.text = actorModel?.name.toString() ?? "-";
                          actorDetailsPageController.showFilterDialog(context: context);
                        },
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.redDark.withOpacity(0.9),
                                  Constants.orangeDark.withOpacity(0.9),
                                ],
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.add_photo_alternate,color: Colors.white,),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.redDark.withOpacity(0.9),
                                  Constants.orangeDark.withOpacity(0.9),
                                ],
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.movie_filter,color: Colors.white,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Name: ",
                      style: TextStyle(
                        color: Constants.orangeDark,
                        fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: actorModel?.name.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                          ),
                        )
                      ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                      text: "Age: ",
                      style: TextStyle(
                          color: Constants.orangeDark,
                        fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: actorModel?.age.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200
                          ),
                        )
                      ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Profession: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.profession.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Height (approx.): ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.height.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Weight (approx.): ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.weight.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Figure (approx.): ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.figure.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Hair Colour: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.hairColor.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Eye Colour: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.eyeColor.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Date of Birth: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.dob.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Birthplace: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.birthplace.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Hometown: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.homeTown.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Zodic Sign: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.zodicSign.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Nationality: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.nationality.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "School: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.school.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "College/ University: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.college.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Education Qualification: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.education.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                ],
              ),
              SizedBox(width: 20,),
              Container(
                height: 200,
                width: 1,
                color: Colors.white,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Marital Status: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.marital.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Affairs/ Boyfriend: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.affairs.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Husband/ Spouse: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.husband.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Parents: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorDetailsPageController.newLineAddedText(text: actorModel?.parents.toString() ?? ''),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                  RichText(
                    text: TextSpan(
                        text: "Other Family: ",
                        style: TextStyle(
                            color: Constants.orangeDark,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                            text: actorModel?.family.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 8,),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 60,
              child: TabBar(
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                controller: actorDetailsPageController.tabController,
                indicator: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Constants.redDark.withOpacity(0.9),
                      Constants.orangeDark.withOpacity(0.9),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.lighten,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: "Images"),
                  Tab(text: "Movies"),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: TabBarView(
              controller: actorDetailsPageController.tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
                  child: StreamBuilder<AddActorImageModel>(
                      stream: actorDetailsPageController.readActorImageData(),
                      builder: (context,snapshot){
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(child: Text('Error: ${snapshot.error}',style: TextStyle(color: Colors.white),));
                        } else if (!snapshot.hasData || snapshot.data == null) {
                          return const Center(child: Text('No data found.',style: TextStyle(color: Colors.white),));
                        } else {
                          final actorData = snapshot.data!;
                          return GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6, // Number of columns
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.80
                            ),
                            itemCount: actorData.poster?.length,
                            itemBuilder: (context,index){
                              return  GestureDetector(
                                onTap: (){
                                  actorDetailsPageController.showImageViewerDialog(
                                    context: context,
                                    imageList: actorData.poster[index].values.first,
                                  );
                                },
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white
                                      ),
                                    image: DecorationImage(
                                        image: NetworkImage(actorData.poster[index].values.first[0] ?? ''),
                                    )
                                  ),
                                ),
                              );
                            },
                          ); // replace with your actual UI
                        }
                      }
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
