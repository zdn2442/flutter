import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/warna.dart';
import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final authC = Get.put(AuthController());
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx(() => Scaffold(
            body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                height: tinggi * 0.93,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 20,),
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
                                "Create Account",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Connect with your friends today!",
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
                              controller: controller.email,
                              keyboardType: TextInputType.emailAddress,
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
                                "Mobile Number",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  prefixIcon: Container(
                                    width: lebar * 0.13,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin:
                                                EdgeInsets.fromLTRB(5, 3, 5, 3),
                                            padding: EdgeInsets.only(left: 5),
                                            child: Text(
                                              "+62",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      117, 23, 23, 52)),
                                            )),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          height: tinggi * 0.04,
                                          child: VerticalDivider(
                                            color: Color(0x401b1b1b),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  hintText: "Enter your mobile number",
                                  hintStyle: TextStyle(
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
                              controller: controller.password,
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
                      margin: EdgeInsets.only(top: 55),
                      width: lebar,
                      height: tinggi * 0.05,
                      child: ElevatedButton(
                        onPressed: () => authC.register(controller.email.text,
                                controller.password.text),
                        child: Text(
                          "Register",
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
                      width: lebar * 0.99,
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
                 margin: EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Already have an account?",
                        style:
                            TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                      ),
                    ),
                    TextButton(
                        onPressed: () => Get.toNamed(Routes.LOGIN),
                        child: Text(
                          "Login",
                          style: TextStyle(color: bgLogin1),
                        ))
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
