import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tokped/app/controllers/slider_controller.dart';

class SliderDataController extends GetxController {
  //TODO: Implement SliderDataController

  final count = 0.obs;
  var data;
  @override
  void onInit() {
    super.onInit();
   data = SliderController().getData();
    log("data get");
    print(data);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
