import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:tokped/app/controllers/slider_controller.dart';

import '../../../../config/warna.dart';
import '../../../routes/app_pages.dart';
import '../controllers/slider_data_controller.dart';

class SliderDataView extends GetView<SliderDataController> {
  final sliderC = Get.put(SliderController());
  final controller = Get.put(SliderDataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDataView'),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot<Object?>>(
          future: sliderC.getData(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.done) {
              var listData = Snapshot.data!.docs;
              return ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Image.network((listData[index].data()
                      as Map<String, dynamic>)["gambarSlider"]),
                  onTap: () => sliderC.updateData(
                      listData[index].id, true, 'edit', 'edit'),
                  onLongPress: () => Get.defaultDialog(
                      title: "Really Want To Delete It?",
                      middleText: 'are youe sure want to delete this data?',
                      confirm: ElevatedButton(
                          onPressed: () {
                            sliderC.deleteData(listData[index].id);
                            Get.back();
                          },
                          child: Text('Yes')),
                      cancel: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: warnaMerah1),
                          onPressed: () => Get.back(),
                          child: Text('No'))),
                  title: Text((listData[index].data()
                      as Map<String, dynamic>)["ketSlider"]),
                  subtitle: Text(""),
                ),
              );
            } else {
              return Center(
                child: SpinKitCubeGrid(color: Colors.blue,),
              );
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_SLIDER),
        child: Icon(Icons.add),
      ),
    );
  }
}
