import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/warna.dart';
import '../../../routes/app_pages.dart';
import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        margin: EdgeInsets.only(top: 220),
        // padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 65),
                    child: Image.asset('assets/images/Group 2.png'),
                  ),
                  Container(
                    child: Text(
                      "Check Your Email",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: lebar * 0.50,
                    child: Text(
                      "We have sent a password recover instructions to your email.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    width: lebar * 0.50,
                    height: tinggi * 0.05,
                    child: ElevatedButton(
                      onPressed: () => print("pressed"),
                      child: Text(
                        "Open Email App",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff0D8173)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes.LOGIN),
                        child: Text(
                          "Skip, I\`ll confirm later",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(117, 23, 23, 52),
                              fontWeight: FontWeight.w400),
                        )),
                  )
                ],
              ),
            ),
            Container(
              width: lebar * 0.70,
              margin: EdgeInsets.only(top: 210),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Did not receive the email ? Check your spam filter, or",
                      style: TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                    ),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.FORGOT_PASS),
                      child: Text(
                        "try another email address",
                        style: TextStyle(color: bgLogin1),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
