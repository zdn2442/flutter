import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ProdukController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
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

  Future<QuerySnapshot<Object?>> getDataKejarDiskon() async {
    final produk = firestore.collection("produk").where("flashSale", isEqualTo: true);
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

  filterData() async {
    final result = await firestore
        .collection("produk")
        .where("flashSale", isEqualTo: true)
        // .orderBy("hargaP", descending: true)
        // .limitToLast(5)
        .get();
    print(result.docs.length);
    print("================");
    if (result.docs.length > 0) {
      result.docs.forEach((element) {
        print(element.data());
      });
    } else {
      print("no data :(");
    }
  }

  Future<QuerySnapshot<Object?>> detailKejarDiskon() async {
    CollectionReference diskon = firestore.collection("produk");
    return await diskon.where('flashSale', isEqualTo: true).get();
  }
}
