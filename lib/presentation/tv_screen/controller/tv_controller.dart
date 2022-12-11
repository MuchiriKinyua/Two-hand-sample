import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/tv_screen/models/tv_model.dart';

class TvController extends GetxController {
  Rx<TvModel> tvModelObj = TvModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
