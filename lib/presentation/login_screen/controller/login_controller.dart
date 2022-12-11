import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController groupTwelveController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupElevenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController buttonOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwelveController.dispose();
    inputController.dispose();
    groupElevenController.dispose();
    inputOneController.dispose();
    buttonOneController.dispose();
  }
}
