import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../networks/controllers/network_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final NetworkController _networkController = Get.find<NetworkController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            _networkController.connectionStatus.value == 1
                ? 'Wifi Connected'
                : (_networkController.connectionStatus.value == 2
                    ? 'Mobile Network'
                    : 'No Connection'),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
