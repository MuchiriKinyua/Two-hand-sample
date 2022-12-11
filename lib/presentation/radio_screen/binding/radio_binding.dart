import '../controller/radio_controller.dart';
import 'package:get/get.dart';

class RadioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RadioController());
  }
}
