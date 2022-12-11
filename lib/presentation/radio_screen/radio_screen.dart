import 'controller/radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:two_hand/core/app_export.dart';

class RadioScreen extends GetWidget<RadioController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 29, top: 68, right: 29),
                              padding: getPadding(
                                  left: 4, top: 1, right: 4, bottom: 1),
                              decoration: AppDecoration.txtFillTealA200,
                              child: Text("lbl_item_details".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 84, top: 5, right: 84),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle32,
                                  height: getVerticalSize(121.00),
                                  width: getHorizontalSize(129.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 29, top: 10, right: 29),
                              padding: getPadding(
                                  left: 8, top: 1, right: 8, bottom: 1),
                              decoration: AppDecoration.txtFillRed400,
                              child: Text("lbl_description2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 52, top: 16, right: 52),
                              child: Text("msg_1_year_old_woofer".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 52, top: 20, right: 52),
                              child: Text("msg_amazing_bass_and".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 52, top: 19, right: 52),
                              child: Text("lbl_remote_control".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 52, top: 21, right: 52),
                              child: Text("msg_bluetoooth_enabled".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtBuy();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 52, top: 29, right: 52, bottom: 5),
                                  padding: getPadding(
                                      left: 30, top: 3, right: 46, bottom: 3),
                                  decoration: AppDecoration.txtFillTeal401,
                                  child: Text("lbl_buy".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular24))))
                    ])))));
  }

  onTapTxtBuy() {
    Get.toNamed(AppRoutes.mpesaScreen);
  }
}
