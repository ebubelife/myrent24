import 'controller/password_reset_controller.dart';import 'package:flutter/material.dart';import 'package:rent24/core/app_export.dart';import 'package:rent24/widgets/custom_button.dart';class PasswordResetScreen extends GetWidget<PasswordResetController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, padding: getPadding(left: 20, top: 45, right: 20, bottom: 45), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(width: getHorizontalSize(105), text: "lbl_back".tr, shape: ButtonShape.Square, fontStyle: ButtonFontStyle.NunitoExtraBold20Bluegray900, prefixWidget: Container(margin: getMargin(right: 29), child: CustomImageView(svgPath: ImageConstant.imgArrowleftGray800)), onTap: () {onTapBack();}), Padding(padding: getPadding(left: 1, top: 24), child: Text("lbl_reset_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold25)), Container(width: getHorizontalSize(348), margin: getMargin(left: 1, top: 18), child: Text("msg_enter_the_email".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold17Gray500)), Container(margin: getMargin(top: 35), padding: getPadding(all: 17), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgPhenvelopesimplebold, height: getSize(25), width: getSize(25), margin: getMargin(top: 1)), Padding(padding: getPadding(left: 18, top: 3, bottom: 2), child: Text("lbl_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUbuntuBold17))])), CustomButton(height: getVerticalSize(60), text: "lbl_send".tr, margin: getMargin(top: 34, bottom: 5), variant: ButtonVariant.FillIndigoA200, onTap: () {onTapSend();})])))); } 
onTapBack() { Get.toNamed(AppRoutes.loginScreen, ); } 
onTapSend() { Get.toNamed(AppRoutes.confirmResetScreen, ); } 
 }