import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPassController extends GetxController {
  //TODO: Implement ForgotPassController

  final count = 0.obs;
  TextEditingController email = TextEditingController();
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
