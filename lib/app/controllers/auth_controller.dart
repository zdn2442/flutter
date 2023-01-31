import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokped/config/warna.dart';

import '../routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            title: "Error!", middleText: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            title: "Error!",
            middleText: 'Wrong password provided for that user.');
      }
    }
  }

  logout() async {
    Get.defaultDialog(
      title: "Really Want To Go?",
      middleText: 'are youe sure want to logout?',
      confirm: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Get.offAllNamed(Routes.LOGIN);
          },
          child: Text('Yes')),
      cancel: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: warnaMerah1),
        onPressed: () => Get.back(), 
        child: Text('No')
      )
    );
  }

  register(String emailAddress, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
            title: "Error!", middleText: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
            title: "Error!",
            middleText: 'The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
