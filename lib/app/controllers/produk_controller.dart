import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProdukController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
 
 Future <QuerySnapshot<Object?>>getData() async {
    CollectionReference produk = firestore.collection("produk");
    try {
      await produk.get().then((event) {
        for (var doc in event.docs) {
          Get.defaultDialog(
              title: "Data Get :)", middleText: '${doc.id} => ${doc.data()}');
        }
        return event;
      });
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "Error", middleText: 'Failed to get data');
    }
    return await produk.get();
  }
}
