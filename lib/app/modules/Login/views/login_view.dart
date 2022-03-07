import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/utils/theme.dart';
import '../controllers/login_controller.dart';

import 'package:lottie/lottie.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.6,
              height: Get.height * 0.6,
              child: Lottie.asset('assets/lottie/login.json'),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: Get.width - (2 * edge),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      onSurface: Colors.red,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        //Icon Button
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 24,
                            height: 24,
                            child: Image(
                              image: AssetImage("assets/img/icon_google.png"),
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: edge,
                        ),
                        //Text Button
                        Text("Login With Google"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: edge,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
