import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simplechat/app/controllers/auth_controller.dart';
import 'package:simplechat/app/data/utils/splash_screen.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return FutureBuilder(
                future: Future.delayed(Duration(seconds: 3)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return GetMaterialApp(
                      debugShowCheckedModeBanner: false,
                      title: "Application",
                      initialRoute: authController.isSkip.isTrue
                          ? authController.isLogin.isTrue
                              ? Routes.LOGIN
                              : Routes.HOME
                          : Routes.INTRODUCTION_SCREEN,
                      getPages: AppPages.routes,
                    );
                  }
                  return SplashScreen();
                });
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
