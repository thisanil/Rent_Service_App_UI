import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/screen/profile_screen.dart';

import '../common/constants/constants.dart';
import 'filter_page_screen.dart';
import 'main_page_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 int currentIndex=0;
 List page=[
   MainPage(),
   FilterScreen(),
   MainPage(),
   ProfileScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFCFECDF)
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         unselectedItemColor: Colors.black45,
         selectedItemColor: comColor,
         items:  const [
           BottomNavigationBarItem(
             icon: Icon(Icons.home_outlined),
               label: "home"
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.filter_alt_outlined),
             label: "home"
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.favorite_border),
               label: "home"
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.perm_identity),
               label: "home"
           ),
         ],
         currentIndex: currentIndex,
         onTap: (int index){
           setState(() {
             currentIndex=index;
           });
         },
       ),
        body: page[currentIndex],
      ),
    );
  }
}
