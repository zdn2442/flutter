import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokped/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 30, 30, 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [bgLogin, bgLogin1])),
        child: Column(
          children: [
            Container(
              height: tinggi * 0.90,
              child: Column(
                children: [
                  Container(
                    width: lebar,
                    height: tinggi * 0.3,
                    // color: Colors.black,
                    margin: EdgeInsets.only(bottom: 30, top: 120),
                    child: Image.asset("assets/images/sp.png",
                        fit: BoxFit.contain),
                  ),
                  Container(
                    width: lebar,
                    child: Text(
                      "Let`s Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Connect with each other with chatting or calling. Enjoy safe and private texting",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    width: lebar,
                    height: tinggi * 0.05,
                    margin: EdgeInsets.only(top: 100),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Join Now",
                        style: TextStyle(
                            color: bgLogin,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              width: lebar,
              margin: EdgeInsets.only(left: 120, ),
              child: Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                      TextButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN_PHONE),
                      child: Text(
                        "Phone",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
