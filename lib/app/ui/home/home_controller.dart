
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  var counter = 0.obs;
  void incrementCounter() {
    counter++;
    update();
  }

 
}
