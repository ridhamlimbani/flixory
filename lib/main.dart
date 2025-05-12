import 'package:firebase_core/firebase_core.dart';
import 'package:flixory/Utils/constants.dart';
import 'package:flixory/page/admin_panel/admin_home_page/admin_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAm215sxQ-zYpjdoG50_O-ljM2WJ6tcYwE",
        appId: "1:258915911673:web:fc8684c15ee8b588875f28",
        messagingSenderId: "258915911673",
        projectId: "flixory-cdc82",
      )
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flixory",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Constants.purpleDark,
          canvasColor: Constants.purpleLight,
          drawerTheme: DrawerThemeData(
              backgroundColor: Constants.purpleLight
          )
      ),
      home: TaskBar(),
    )
  );
}

class BoxGrid extends StatelessWidget {
  BoxGrid({super.key});

  BoxGridController boxGridController = Get.put(BoxGridController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
                () => boxGridController.isBoxUIShow.value == false
                ? Column(
              children: [
                TextFormField(
                  controller: boxGridController.columnController,
                  decoration: InputDecoration(
                      hintText: "Enter a column",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      disabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: boxGridController.rowsController,
                  decoration: InputDecoration(
                      hintText: "Enter a row",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      disabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      focusedBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      boxGridController.onContinueClickLister(
                        column: int.parse(boxGridController.columnController.text.toString().trim()),
                        row: int.parse(boxGridController.rowsController.text.toString().trim()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
                : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: boxGridController.columns.value,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 5.0,
                children: List.generate(boxGridController.totalBoxes.value, (index) {
                  return GestureDetector(
                    onTap: () => boxGridController.handleTapClickLister(index),
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: boxGridController.highlightedBoxes.contains(index)
                            ? Colors.orange[300]
                            : Colors.blue[100],
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                    ),
                  );
                }),
              ),
            )
        ),
      ),
    );
  }
}

class BoxGridController extends GetxController{
  TextEditingController columnController = TextEditingController();
  TextEditingController rowsController = TextEditingController();

  RxBool isBoxUIShow = false.obs;
  RxInt columns = 0.obs;
  RxInt totalBoxes = 0.obs;
  RxSet<int> highlightedBoxes = RxSet();

  void handleTapClickLister(int index) {
    Set<int> selected = {};

    int row = index ~/ columns.value;
    int col = index % columns.value;

    for (int r = 0; r <= row; r++) {
      for (int c = 0; c <= col; c++) {
        int idx = r * columns.value + c;
        if (idx < totalBoxes.value) {
          selected.add(idx);
        }
      }
    }

    highlightedBoxes
      ..clear()
      ..addAll(selected);
  }

  onContinueClickLister({required int column,required int row}){
    isBoxUIShow.value = true;

    columns.value = column;
    totalBoxes.value = column * row;
  }
}

class TaskBar extends StatelessWidget {
  const TaskBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BoxGrid()
                  )
                );
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text(
                    'Task 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NumberGrid()
                  )
                );
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text(
                    'Task 2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NumberGrid extends StatelessWidget {
  NumberGrid({super.key});

  NumberGridController numberGridController = Get.put(NumberGridController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TextFormField(
            controller: numberGridController.startController,
            decoration: InputDecoration(
                hintText: "Enter a start no.",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                disabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                )
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: numberGridController.endController,
            decoration: InputDecoration(
                hintText: "Enter a end no.",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                disabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                )
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: numberGridController.boxController,
            decoration: InputDecoration(
                hintText: "Enter a total box.",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                disabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                ),
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.black
                    )
                )
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: GestureDetector(
              onTap: (){
                numberGridController.onContinueClickLister(
                    box: int.parse(numberGridController.boxController.text.trim()),
                );
              },
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Obx(() => numberGridController.isNumberUIShow.value
              ? SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numberGridController.currentNumbers.length,
              itemBuilder: (context, index) {
                int number = numberGridController.currentNumbers[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      '$number',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          )
              : SizedBox()),
          SizedBox(height: 15,),
          Obx(
              () => numberGridController.isNumberUIShow.value == true
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        numberGridController.previousPage();
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text(
                            'Previous',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        numberGridController.nextPage();
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
              : SizedBox()
          ),
        ],
      ),
    );
  }
}

class NumberGridController extends GetxController{
 TextEditingController startController = TextEditingController();
 TextEditingController endController = TextEditingController();
 TextEditingController boxController = TextEditingController();

 RxInt totalBox = 0.obs;
 RxBool isNumberUIShow = false.obs;
 RxList<int> numbers = <int>[].obs;
 RxInt currentPage = 0.obs;

 List<List<int>> paginatedNumbers = [];


 void onContinueClickLister({required int box}) {
   int? start = int.tryParse(startController.text.trim());
   int? end = int.tryParse(endController.text.trim());

   if (start == null || end == null || end < start || box <= 0) {
     Get.snackbar('Error', 'Please enter valid numbers');
     return;
   }

   // Generate full number list
   numbers.value = List.generate(end - start + 1, (i) => start + i);

   // Paginate into chunks
   paginatedNumbers = [];
   for (var i = 0; i < numbers.length; i += box) {
     paginatedNumbers.add(
       numbers.sublist(i, i + box > numbers.length ? numbers.length : i + box),
     );
   }

   totalBox.value = box;
   currentPage.value = 0;
   isNumberUIShow.value = true;
 }

 List<int> get currentNumbers =>
     paginatedNumbers.isNotEmpty ? paginatedNumbers[currentPage.value] : [];

 void nextPage() {
   if (currentPage.value < paginatedNumbers.length - 1) {
     currentPage.value++;
   }
 }

 void previousPage() {
   if (currentPage.value > 0) {
     currentPage.value--;
   }
 }
}



