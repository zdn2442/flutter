import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_slider_controller.dart';

class AddSliderView extends GetView<AddSliderController> {
  final controller = AddSliderController();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text('AddSliderView'),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    // controller: controller.email,
                    decoration: InputDecoration(
                        labelText: "Enter an image url",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromARGB(117, 23, 23, 52)))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextField(
                    // controller: controller.email,
                    decoration: InputDecoration(
                        labelText: "Enter a description",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(117, 23, 23, 52)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color.fromARGB(117, 23, 23, 52)))),
                  ),
                ),
                Row(
                  children: [
                    Switch(
                      // This bool value toggles the switch.
                      value: true,
                      activeColor: Colors.red,
                      onChanged: (value) => controller.changeStatus(),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
