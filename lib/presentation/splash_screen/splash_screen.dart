import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:two_hand/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 30, top: 127, right: 30),
                              child: CommonImageView(
                                  imagePath: ImageConstant.img15949900635591,
                                  height: getVerticalSize(88.00),
                                  width: getHorizontalSize(281.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 50, right: 30),
                              child: Text("msg_welcome_to_2hand".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(209.00),
                              margin: getMargin(left: 30, top: 17, right: 30),
                              child: Text("msg_2hand_dealers_enables".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtNext();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 80, right: 30, bottom: 5),
                                  padding: getPadding(
                                      left: 30, top: 6, right: 49, bottom: 6),
                                  decoration: AppDecoration.txtFillTeal400,
                                  child: Text("lbl_next".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular20WhiteA700))))
                    ])))));
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
