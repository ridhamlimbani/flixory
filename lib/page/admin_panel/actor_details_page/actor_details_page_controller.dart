import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flixory/Model/add_actor_image_model.dart';
import 'package:flixory/Static/create_movie_function.dart';
import 'package:flixory/Utils/constants.dart';
import 'package:flixory/Utils/static.dart';
import 'package:flixory/common/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ActorDetailsPageController extends GetxController with GetTickerProviderStateMixin{
  late TabController tabController;
  TextEditingController posterUrlController = TextEditingController();
  TextEditingController actorNameController = TextEditingController();
  RxInt activeIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  String newLineAddedText({required String text}){
    String textString = "";
    if(text.contains("&")){
      List<String> listText = text.split("&");

      textString = "${listText[0]} \n${listText[1]}";
    }

    return textString;
  }

  Future<void> showFilterDialog({required BuildContext context}) async {

    AddActorImageModel addActorImageModel = await readActorPosterData();
    showDialog(
        context: context,
        builder: (_) => Dialog(
          backgroundColor: Constants.purpleLight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Add Actor Image",style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          onChanged: (String value){},
                          hintText: "Actor Name",
                          isReadOnly: true,
                          controller: actorNameController,
                      ),
                      SizedBox(height: 10,),
                      CustomTextField(
                          onChanged: (String value){},
                          hintText: "Poster Url",
                          controller: posterUrlController,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 30,
                                width: 80,
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.white70
                                    ),
                                  )
                                )
                              ),
                            ),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () async {
                                String id = actorModel?.name.trim().toLowerCase().replaceAll(' ', '_') ?? '';
                                List<Map<String, List<String>>> posterList = addActorImageModel.poster;

                                Map<String, List<String>> map = {
                                  "${posterList.length - 1}": [

                                  ],
                                };

                                posterList.add(map);
                                AddActorImageModel actorImageModel = AddActorImageModel(
                                    name: actorNameController.text,
                                    poster: posterList,
                                );
                                
                                await createActorImagesFunction(
                                  id: id,
                                  addActorImageModel: actorImageModel
                                );
                              },
                              child: Container(
                                height: 30,
                                width: 80,
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
                                  child: Text("Save",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]
                ),
              ),
            )
        )
    );
  }

  void showImageViewerDialog({required BuildContext context,required List<String> imageList}) {
    showDialog(
        context: context,
        builder: (_) => Dialog(
          backgroundColor: Constants.purpleLight,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.38,
              child: Padding(
                padding: const EdgeInsets.all(16.0).copyWith(top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CarouselSlider.builder(
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
                          Container(
                            height: 430,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageList[index]
                                ),
                                fit: BoxFit.fill
                              )
                            ),
                          ),
                      options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 1.0,
                        aspectRatio: 1.0,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) => activeIndex.value = index,
                      ),
                    ),
                    if(imageList.length > 1)
                    SizedBox(
                      height: 40,
                      child: Obx(() => AnimatedSmoothIndicator(
                        activeIndex: activeIndex.value,
                        count: imageList.length,
                        effect: WormEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: Constants.orangeDark
                        ),
                      )),
                    )
                  ],
                ),
              ),
            )
        )
    );
  }

  Stream<AddActorImageModel> readActorImageData() =>
      FirebaseFirestore.instance
          .collection("actor_image")
          .doc("pooja_hegde")
          .snapshots()
          .map((snapshot) => AddActorImageModel.fromJson(snapshot.data()!)
      );

  Future<AddActorImageModel> readActorPosterData() async {
    final snapshot = await FirebaseFirestore.instance
        .collection("actor_image")
        .doc("pooja_hegde")
        .get();

    if (snapshot.exists) {
      return AddActorImageModel.fromJson(snapshot.data()!);
    } else {
      throw Exception('Document not found');
    }
  }

}