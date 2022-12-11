import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/homepage_screen/models/homepage_model.dart';

class HomepageController extends GetxController {
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
