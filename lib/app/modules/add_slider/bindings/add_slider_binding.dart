import 'package:get/get.dart';

import '../controllers/add_slider_controller.dart';

class AddSliderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddSliderController>(
      () => AddSliderController(),
    );
  }
}
