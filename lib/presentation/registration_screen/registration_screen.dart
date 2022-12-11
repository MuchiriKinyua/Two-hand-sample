import 'package:flutter/material.dart';
import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/core/utils/validation_functions.dart';
import 'package:two_hand/widgets/custom_button.dart';
import 'package:two_hand/widgets/custom_text_form_field.dart';

import 'controller/registration_controller.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
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
                                  controller: controller.groupTwentyController,
                                  hintText: "msg_enter_your_details".tr,
                                  margin:
                                      getMargin(left: 29, top: 68, right: 29),
                                  variant: TextFormFieldVariant.FillTealA200),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupNineteenController,
                                  hintText: "msg_enter_your_name".tr,
                                  margin:
                                      getMargin(left: 25, top: 41, right: 25),
                                  variant: TextFormFieldVariant.FillRed300,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_name".tr,
                                  margin:
                                      getMargin(left: 26, top: 9, right: 26),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupEighteenController,
                                  hintText: "msg_enter_your_email".tr,
                                  margin:
                                      getMargin(left: 25, top: 4, right: 25),
                                  variant: TextFormFieldVariant.FillRed400,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 25, top: 10, right: 25),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.groupSeventeenController,
                                  hintText: "msg_enter_your_password".tr,
                                  margin:
                                      getMargin(left: 24, top: 11, right: 24),
                                  variant: TextFormFieldVariant.FillPink800,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputTwoController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 24, top: 8, right: 24),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Container(
                                  width: getHorizontalSize(257.00),
                                  margin:
                                      getMargin(left: 24, top: 5, right: 24),
                                  child: Text("msg_password_should".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular10)),
                              Container(
                                  margin:
                                      getMargin(left: 26, top: 4, right: 26),
                                  padding: getPadding(
                                      left: 11, top: 1, right: 11, bottom: 1),
                                  decoration: AppDecoration.txtFillPink700,
                                  child: Text("msg_confirm_your_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16)),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputThreeController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 24, top: 2, right: 24),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  textInputAction: TextInputAction.done,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Padding(
                                  padding:
                                      getPadding(left: 42, top: 13, right: 42),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 7),
                                            child: Text(
                                                "msg_do_you_have_an_account".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular12)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignin();
                                            },
                                            child: Container(
                                                margin:
                                                    getMargin(left: 2, top: 1),
                                                padding: getPadding(
                                                    left: 5, right: 5),
                                                decoration: AppDecoration
                                                    .txtFillBluegray500,
                                                child: Text("lbl_sign_in".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14))),
                                      ])),
                              CustomButton(
                                  width: 157,
                                  text: "lbl_register".tr,
                                  margin: getMargin(
                                      left: 54, top: 14, right: 54, bottom: 5),
                                  onTap: onTapRegister)
                            ]))))));
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  void onTapTxtSignin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
