import 'package:get/get.dart';

class IntroductionScreenController extends GetxController {
 var currentPage = 0;
  void changePage(int index) {
    currentPage = index;
    update();
  }
}
