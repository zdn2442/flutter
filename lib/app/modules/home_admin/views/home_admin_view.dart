import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokped/app/routes/app_pages.dart';

import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeAdminView'),
          centerTitle: true,
        ),
        body: Container(
          height: tinggi * 0.99,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 8, top: 20, bottom: 10),
                    width: lebar,
                    height: tinggi * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Get.toNamed(Routes.SLIDER_DATA),
                          child: Container(
                            width: 70,
                            child: Column(
                              children: [
                                Image.asset("assets/images/promo.png"),
                                Text(
                                  "Promo Hari Ini",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Column(
                            children: [
                              Image.asset("assets/images/toserba.png"),
                              Text(
                                "Toserba",
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
