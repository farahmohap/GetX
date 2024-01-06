import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0; //getbuilder
  RxInt count = 0.obs; //getx
  void increament() {
    counter++;
    // update(); //getbuilder
    count++;
  }

  void decreament() {
    counter--;
    // update(); //getbuilder
  }
}
