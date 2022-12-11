import '../controller/mpesa_controller.dart';
import 'package:get/get.dart';

class MpesaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MpesaController());
  }
}
