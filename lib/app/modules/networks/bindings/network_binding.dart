import 'package:get/get.dart';
import 'package:get_cli_todo_app/app/modules/networks/controllers/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NetworkController());
  }
}
