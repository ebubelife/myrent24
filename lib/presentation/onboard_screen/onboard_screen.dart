import 'controller/onboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_button.dart';

class OnboardScreen extends GetWidget<OnboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstant.black90026,
                          spreadRadius: getHorizontalSize(2),
                          blurRadius: getHorizontalSize(2),
                          offset: Offset(0, 40))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment(0.02, 0.01),
                        end: Alignment(0.67, 1),
                        colors: [
                          ColorConstant.indigoA200,
                          ColorConstant.deepPurpleA20096
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnboard),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    color: Color.fromARGB(255, 115, 8, 255).withOpacity(0.3),
                    padding:
                        getPadding(left: 18, top: 49, right: 18, bottom: 49),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(239),
                              // margin: getMargin(top: 95),
                              child: Text("msg_search_less_find".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterBold40)),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Text("msg_great_experience".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold17)),
                          CustomButton(
                              height: getVerticalSize(60),
                              text: "lbl_create_account".tr,
                              margin: getMargin(top: 62),
                              variant: ButtonVariant.OutlineBlack9003f,
                              onTap: () {
                                onTapCreateaccount();
                              }),
                          CustomButton(
                              height: getVerticalSize(60),
                              text: "lbl_login".tr,
                              margin: getMargin(top: 18),
                              variant: ButtonVariant.OutlineWhiteA700,
                              fontStyle:
                                  ButtonFontStyle.NunitoExtraBold20Bluegray100,
                              onTap: () {
                                onTapLogin();
                              }),
                          Spacer(),
                          Container(
                              width: getHorizontalSize(312),
                              margin: getMargin(left: 22, right: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_by_creating_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "lbl_term".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800)),
                                    TextSpan(
                                        text: "lbl_s".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "lbl_condition".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800)),
                                    TextSpan(
                                        text: "msg_and_agree_to_our".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "msg_privacy_policy".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(15),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  onTapCreateaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
