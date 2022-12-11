import 'controller/mpesa_controller.dart';
import 'package:flutter/material.dart';
import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/core/utils/validation_functions.dart';
import 'package:two_hand/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MpesaScreen extends GetWidget<MpesaController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupFifteenController,
                                  hintText: "msg_enter_your_payment".tr,
                                  margin:
                                      getMargin(left: 29, top: 68, right: 29),
                                  variant: TextFormFieldVariant.FillTealA200),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupFourteenController,
                                  hintText: "lbl_enter_amount".tr,
                                  margin:
                                      getMargin(left: 25, top: 41, right: 25),
                                  variant: TextFormFieldVariant.FillRed300),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_amount".tr,
                                  margin:
                                      getMargin(left: 29, top: 9, right: 29),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupThirteenController,
                                  hintText: "msg_enter_phone_number".tr,
                                  margin:
                                      getMargin(left: 25, top: 4, right: 25),
                                  variant: TextFormFieldVariant.FillRed400,
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_phone_number".tr,
                                  margin:
                                      getMargin(left: 33, top: 23, right: 33),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  textInputAction: TextInputAction.done,
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtPay();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 75,
                                          top: 34,
                                          right: 75,
                                          bottom: 5),
                                      padding: getPadding(
                                          left: 30,
                                          top: 3,
                                          right: 46,
                                          bottom: 3),
                                      decoration: AppDecoration.txtFillTeal401,
                                      child: Text("lbl_pay".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular24)))
                            ]))))));
  }

  onTapTxtPay() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
