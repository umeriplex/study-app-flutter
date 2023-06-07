import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController{

  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  Future<void> uploadData() async {
    final manifestBundle = await DefaultAssetBundle.of(Get.context!).loadString("AssetManifest.json");
    final Map<String,dynamic> assetsMap = json.decode(manifestBundle);
    final papersInAssets = assetsMap.keys.where((path) => path.startsWith("assets/DB/papers") && path.contains(".json")).toList();
    debugPrint(papersInAssets.toString());
    debugPrint(assetsMap.toString());
  }
}
