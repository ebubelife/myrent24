import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/core/utils/validation_functions.dart';
import 'package:rent24/widgets/app_bar/appbar_image.dart';
import 'package:rent24/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:rent24/widgets/app_bar/custom_app_bar.dart';
import 'package:rent24/widgets/custom_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(88),
                leadingWidth: 50,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgArrowleftGray800,
                    margin: getMargin(left: 20, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft1();
                    }),
                title: AppbarSubtitle2(
                    text: "lbl_log_in2".tr, margin: getMargin(left: 23))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 19, top: 3, right: 19, bottom: 3),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(191),
                              margin: getMargin(left: 2),
                              child: Text("msg_welcome_back_please".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold17Gray500)),
                          Container(
                              margin: getMargin(top: 44, right: 2),
                              padding: getPadding(all: 17),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgPhenvelopesimplebold,
                                    height: getSize(25),
                                    width: getSize(25),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding:
                                        getPadding(left: 18, top: 3, bottom: 2),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUbuntuBold17))
                              ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 29),
                              variant: TextFormFieldVariant.FillGray100,
                              fontStyle: TextFormFieldFontStyle.UbuntuBold17,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 17, top: 15, right: 18, bottom: 20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgMaterialsymbolslockoutline)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(60)),
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
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 30, right: 10),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtNunitoExtraBold17)))),
                          CustomButton(
                              height: getVerticalSize(60),
                              text: "lbl_log_in3".tr,
                              margin: getMargin(left: 1, top: 25),
                              variant: ButtonVariant.FillIndigoA200,
                              onTap: () {
                                onTapLogin();
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 28, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            TextSpan(
                                                text: "lbl_create_account".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .indigoA200,
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Ubuntu',
                                                    fontWeight:
                                                        FontWeight.w700))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.passwordResetScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
