import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rent_servise/loginOP/login_screen.dart';
import 'package:rent_servise/screen/main_screen.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  User? user = FirebaseAuth.instance.currentUser;
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,child){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home: AnimatedSplashScreen(
              duration: 3000,
              splash:Center(
                child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/image/spalsh_logo.png")),
              ),
              splashTransition: SplashTransition.fadeTransition,
              nextScreen: User!=null?MainScreen():LoginScreen(),
              backgroundColor:Colors.white ,





            ),
          );
        });
  }
}


