import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'data_uploader.dart';

class DataUploaderView extends StatelessWidget {
  DataUploaderView({Key? key}) : super(key: key);

  DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image(image: AssetImage("assets/images/physics.png"),height: 200,width: 200,),
          Center(
            child: Text("Data Uploading........"),
          ),
        ],
      )
    );
  }
}
