import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokped/config/warna.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(
      () => Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 70),
          child: Column(
            children: [
              Container(
                height: tinggi * 0.86,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hi, Welcome Back!",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.waving_hand_rounded,
                                color: Color.fromARGB(255, 221, 199, 0),
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Hello again, you`ve been missed!",
                                style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(117, 23, 23, 52)),
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
                              decoration: InputDecoration(
                                  labelText: "Enter your Email",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(117, 23, 23, 52)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              117, 23, 23, 52)))),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: TextField(
                              obscureText: controller.hiddenPassword.value
                                  ? true
                                  : false,
                              decoration: InputDecoration(
                                  labelText: "Enter your Password",
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(117, 23, 23, 52)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(117, 23, 23, 52))),
                                  suffixIcon: IconButton(
                                    onPressed: () => controller.changeEye(),
                                    icon: Icon(controller.hiddenPassword.value
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 5),
                      child: TextButton(
                          onPressed: () => Get.toNamed(Routes.FORGOT_PASS),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Color.fromARGB(117, 23, 23, 52),
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: lebar,
                      height: tinggi * 0.05,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.HOME),
                        child: Text(
                          "Login",
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
                      width: lebar,
                      margin: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Container(
                              width: 120,
                              height: 1,
                              color: Color.fromARGB(117, 23, 23, 52)),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 57),
                            child: Text(
                              "Or Login With",
                              style: TextStyle(
                                  color: Color.fromARGB(117, 23, 23, 52)),
                            ),
                          ),
                          Container(
                              width: 120,
                              height: 1,
                              color: Color.fromARGB(117, 23, 23, 52)),
                        ],
                      ),
                    ),
                    Container(
                      width: lebar,
                      height: tinggi * 0.08,
                      // padding: EdgeInsets.only(left: 45, right: 45),
                      // color: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            width: lebar * 0.4,
                            height: tinggi * 0.08,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(117, 23, 23, 52)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.white),
                                onPressed: () => print("pressed"),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 10, left: 20),
                                        child: Image.asset(
                                          "assets/images/Facebook.png",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 55),
                            width: lebar * 0.4,
                            height: tinggi * 0.08,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(117, 23, 23, 52)),
                                borderRadius: BorderRadius.circular(5)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shadowColor: Colors.white),
                                onPressed: () => print("pressed"),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 20, left: 20),
                                        child: Image.asset(
                                          "assets/images/Google.png",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Text(
                                        "Google",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 120, top: 5),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Don`t have an account?",
                        style:
                            TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                      ),
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(Routes.REGISTER),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: bgLogin1),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
