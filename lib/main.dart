import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(
   MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(future: _initialization,builder: (context, snapshot)  {
      if(snapshot.hasError){
        return Center(child: Text('Error: ${snapshot.error}'));
      }
      if(snapshot.connectionState == ConnectionState.done){
          return GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      );
      }
      return Center(child: CircularProgressIndicator());
    });
  }
}
