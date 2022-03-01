import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 100,),
              Container(
                width: Get.width *0.4,
                height: Get.height * 0.4,
                child: Lottie.asset('assets/lottie/cloud.json'),
              ),
              SizedBox(height: 100,),
              Column(
                children: [
                  Text(
                    "Simple Chat",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                  ),
                  Text(
                    "v 1.0",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
