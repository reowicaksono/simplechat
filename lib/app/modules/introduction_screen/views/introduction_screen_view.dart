import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplechat/app/data/utils/introduction_helper.dart';
import '../controllers/introduction_screen_controller.dart';

class IntroductionScreenView extends GetView<IntroductionScreenController> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1EBDA),
      body: IntroductionHelper(),
    );
  }
}
