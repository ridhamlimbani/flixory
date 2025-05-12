import 'package:flixory/Responsive/responsive_layout.dart';
import 'package:flixory/Utils/static.dart';
import 'package:flixory/app_bar/app_bar_widget.dart';
import 'package:flixory/drawer/drawer_page.dart';
import 'package:flixory/page/admin_panel/actor_page/actor_page.dart';
import 'package:flixory/page/admin_panel/dashboard_page/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: (ResponsiveLayout.isTinyLimit(context) ||  ResponsiveLayout.isTinyHeightLimit(context))
            ? Container()
            : AppBarWidget(),
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: DashBoardPage(),
        tablet: DashBoardPage(),
        largeTablet: DashBoardPage(),
        computer: Obx(
            ()=> Row(
              children: [
                SizedBox(
                    width: 250,
                    child: DrawerPage()
                ),
                if(currentDrawerIndex.value == 4)
                  Expanded(child: ActorPage())
                else
                  Expanded(child: DashBoardPage()),
              ],
            )
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
