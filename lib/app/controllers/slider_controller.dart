import 'dart:ffi';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class SliderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = "";
  File? path;

  addData(bool aktifSlider, String gambarSlider, String ketSlider) async {
    CollectionReference slider = firestore.collection("slider");
    final dataSlider = {
      "aktifSlider": aktifSlider,
      "gambarSlider": gambarSlider,
      "ketSlider": ketSlider
    };

// Add a new document with a generated ID
    try {
      await slider.add(dataSlider).then((DocumentReference doc) =>
          Get.defaultDialog(
              title: "Data Uploaded :)",
              middleText: 'DocumentSnapshot added with ID: ${doc.id}'));
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "Error", middleText: 'Failed to add data');
    }
  }

  Future <QuerySnapshot<Object?>>getData() async {
    CollectionReference slider = firestore.collection("slider");
    try {
      await slider.get().then((event) {
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
    return await slider.get();
  }

  updateData(String id, bool aktifSlider, String ketSlider, String gambarSlider)async{
    try {
      final dataSlider = {
      "aktifSlider": aktifSlider,
      "gambarSlider": gambarSlider,
      "ketSlider": ketSlider
    };
      DocumentReference slider = firestore.collection('slider').doc(id);
      await slider.update(dataSlider);
      Get.defaultDialog(
              title: "Data Updated :)",
              middleText: 'data update success');
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "Error", middleText: 'Failed to update data');
    }
  }

  deleteData(String id)async{
    try {
      DocumentReference slider = firestore.collection('slider').doc(id);
      await slider.delete();
      Get.defaultDialog(
              title: "Data Deleted :)",
              middleText: 'data delete success, now you won\'t meet with him again ');
    } catch (e) {
      print(e);
      Get.defaultDialog(title: "Error", middleText: 'Failed to delete data');
    }
  }

  addPhoto() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      String namaFile = result.files.first.name;
      url = namaFile;
      path = file;

      try {
        await storage.ref("${namaFile}").putFile(file);
        final data = await storage.ref("${namaFile}").getDownloadURL();

        url = data;
        return url;
      } catch (e) {
        Get.defaultDialog(title: 'Alert', middleText: 'Failed uploading data');
      }
    } else {
      print("file not sended");
    }
  }
}
