import 'package:get/get.dart';

class FunctionsController extends GetxController {
  var showIcon = true.obs;

  void changeIcon() {
    showIcon.value = !showIcon.value;
  }
}
