import 'package:flixory/Responsive/responsive_layout.dart';
import 'package:flixory/Utils/constants.dart';
import 'package:flixory/Utils/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Constants.kPadding),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Admin Menu",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                trailing: ResponsiveLayout.isComputer(context)
                    ? null
                    : IconButton(
                       onPressed: (){
                         Navigator.pop(context);
                       },
                       icon: Icon(Icons.close,color: Colors.white,)),
              ),
              ...List.generate(
                _buttonNames.length,
                  (index) => Column(
                    children: [
                      Obx(
                        () => Container(
                        decoration: index == currentDrawerIndex.value ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Constants.redDark.withOpacity(0.9),
                                Constants.orangeDark.withOpacity(0.9),
                              ],
                            )
                        ) : null,
                        child: ListTile(
                          title: Text(
                            _buttonNames[index].title,
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          leading: Padding(
                            padding: EdgeInsets.all(Constants.kPadding),
                            child: Icon(
                              _buttonNames[index].icon,
                              color: Colors.white,
                            ),
                          ),
                          onTap: (){
                            currentDrawerIndex.value = index;
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 0.1,
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonInfo{
  String title;
  IconData icon;

  ButtonInfo({
    required this.title,
    required this.icon
  });
}

List<ButtonInfo> _buttonNames =[
  ButtonInfo(title: 'Home', icon: Icons.home),
  ButtonInfo(title: 'Movie', icon: Icons.movie),
  ButtonInfo(title: 'Web Series', icon: Icons.movie_creation_outlined),
  ButtonInfo(title: 'Genre', icon: Icons.generating_tokens),
  ButtonInfo(title: 'Actor', icon: Icons.person),
];
