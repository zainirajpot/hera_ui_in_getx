import 'package:get/get.dart';
import 'package:hera_ui_in_getx/Controller_page/controller_functions.dart';

// class FunctionsBinding implements Bindings {
// @override
// void dependencies() {
//   Get.lazyPut<FunctionsController>(() => FunctionsController(
//      ));
//   }
// }import 'package:get/get.dart';

class HeraLoginPageBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<FunctionsController>(() => FunctionsController(
    ));
  }
}