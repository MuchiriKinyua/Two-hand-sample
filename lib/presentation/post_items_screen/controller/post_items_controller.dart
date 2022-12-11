import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/presentation/post_items_screen/models/post_items_model.dart';
import 'package:flutter/material.dart';

class PostItemsController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  TextEditingController groupEightController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<PostItemsModel> postItemsModelObj = PostItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
    groupEightController.dispose();
    inputController.dispose();
    groupSevenController.dispose();
    inputOneController.dispose();
    groupSixController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
