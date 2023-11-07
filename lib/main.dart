import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_cli_todo_app/app/modules/networks/bindings/network_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: NetworkBinding(),
    ),
  );
}
