import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../controllers/produk_controller.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  

  final count = 0.obs;
  @override
  void onInit() {
    ProdukController().filterData();
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
