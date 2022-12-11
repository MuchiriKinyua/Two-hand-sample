import 'package:flutter/material.dart';
import 'package:two_hand/core/app_export.dart';
import 'package:two_hand/core/utils/validation_functions.dart';
import 'package:two_hand/widgets/custom_text_form_field.dart';

import 'controller/login_controller.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 53, top: 86, right: 53),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgUndrawgonesho,
                                          height: getVerticalSize(197.00),
                                          width: getHorizontalSize(215.00)))),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupTwelveController,
                                  hintText: "msg_enter_your_email".tr,
                                  margin:
                                      getMargin(left: 34, top: 37, right: 34),
                                  variant: TextFormFieldVariant.FillRed400,
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.inputController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 34, top: 3, right: 34),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.groupElevenController,
                                  hintText: "msg_enter_your_password".tr,
                                  margin:
                                      getMargin(left: 36, top: 4, right: 36),
                                  variant: TextFormFieldVariant.FillPink800,
                                  alignment: Alignment.centerLeft,
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
                                  controller: controller.inputOneController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 33, top: 8, right: 33),
                                  padding: TextFormFieldPadding.PaddingAll12,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  alignment: Alignment.centerLeft,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 39, top: 8, right: 39),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 4),
                                                child: Text(
                                                    "msg_do_you_have_an_account"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14)),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSignup();
                                                },
                                                child: Container(
                                                    margin: getMargin(left: 4),
                                                    padding: getPadding(
                                                        left: 5,
                                                        top: 1,
                                                        right: 5,
                                                        bottom: 1),
                                                    decoration: AppDecoration
                                                        .txtFillBluegray500,
                                                    child: Text(
                                                        "lbl_sign_up".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular14)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtLogin();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 56, top: 5, right: 56),
                                          padding: getPadding(
                                              left: 30,
                                              top: 7,
                                              right: 49,
                                              bottom: 7),
                                          decoration:
                                              AppDecoration.txtFillTeal400,
                                          child: Text("lbl_log_in".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular20WhiteA700)))),
                            ]))))));
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.registrationScreen);
  }

  onTapTxtLogin() {
    Get.toNamed(AppRoutes.profileScreen);
  }
}
