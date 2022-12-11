import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/registration_screen/models/registration_model.dart';
import 'package:flutter/material.dart';

class RegistrationController extends GetxController {
  TextEditingController groupTwentyController = TextEditingController();

  TextEditingController groupNineteenController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupEighteenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController groupSeventeenController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwentyController.dispose();
    groupNineteenController.dispose();
    inputController.dispose();
    groupEighteenController.dispose();
    inputOneController.dispose();
    groupSeventeenController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
