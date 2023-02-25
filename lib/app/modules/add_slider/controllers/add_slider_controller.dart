import 'package:get/get.dart';

class AddSliderController extends GetxController {
  //TODO: Implement AddSliderController
  var isStatus = false.obs;

  final count = 0.obs;
  changeStatus() => isStatus.toggle();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
