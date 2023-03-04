import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controllers/slider_controller.dart';

class CreateSliderController extends GetxController {
  //TODO: Implement CreateSliderController
  final aktifasi = true.obs;
  changeActivation() => aktifasi.toggle();

  TextEditingController gambarSlider = TextEditingController();
  TextEditingController ketSlider = TextEditingController();

  uploadGambar() async{
    final data = SliderController().addPhoto();
    gambarSlider.text = data;
  }

  final count = 0.obs;
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
