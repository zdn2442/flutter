import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/forgot_pass_controller.dart';

class ForgotPassView extends GetView<ForgotPassController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
              bottom: 20,
            ),
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              child: Icon(
                Icons.arrow_back_rounded,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Reset Password",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: lebar * 0.80,
                      child: Text(
                        "Enter the email associated with your account and we'll send an email with instructions to reset your password.",
                        style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w300,
                            color: Color.fromARGB(117, 23, 23, 52)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Email Address",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Enter your Email",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromARGB(117, 23, 23, 52)))),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 55),
            width: lebar,
            height: tinggi * 0.05,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(Routes.VERIFY),
              child: Text(
                "Send Instructions",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff0D8173)),
            ),
          ),
        ],
      ),
    ));
  }
}
