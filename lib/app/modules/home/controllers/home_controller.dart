import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var currentPage = 0;

  void changePage(int page) {
    this.currentPage = page;
    update();
  }
}
