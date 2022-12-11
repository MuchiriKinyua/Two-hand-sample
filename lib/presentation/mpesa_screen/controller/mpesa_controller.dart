import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/mpesa_screen/models/mpesa_model.dart';
import 'package:flutter/material.dart';

class MpesaController extends GetxController {
  TextEditingController groupFifteenController = TextEditingController();

  TextEditingController groupFourteenController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupThirteenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  Rx<MpesaModel> mpesaModelObj = MpesaModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFifteenController.dispose();
    groupFourteenController.dispose();
    inputController.dispose();
    groupThirteenController.dispose();
    inputOneController.dispose();
  }
}
