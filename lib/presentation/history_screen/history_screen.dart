import 'controller/history_controller.dart';import 'package:flutter/material.dart';import 'package:rent24/core/app_export.dart';import 'package:rent24/widgets/custom_button.dart';class HistoryScreen extends GetWidget<HistoryController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, body: Container(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, child: Container(width: double.maxFinite, padding: getPadding(all: 21), decoration: AppDecoration.gradientIndigoA200DeeppurpleA200, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(width: getHorizontalSize(139), text: "lbl_about_us".tr, shape: ButtonShape.Square, prefixWidget: Container(margin: getMargin(right: 19), child: CustomImageView(svgPath: ImageConstant.imgArrowleftWhiteA700)), onTap: () {onTapAboutus();}), Container(width: getHorizontalSize(338), margin: getMargin(top: 28, right: 9), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtNunitoMedium17)), Container(width: getHorizontalSize(338), margin: getMargin(top: 12, right: 9, bottom: 18), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtNunitoMedium17))]))), Padding(padding: getPadding(left: 20, top: 26), child: Text("lbl_our_story".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoExtraBold25)), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(338), margin: getMargin(left: 20, top: 15, right: 31, bottom: 5), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtNunitoMedium17Gray80001)))])))); } 
onTapAboutus() { Get.toNamed(AppRoutes.homePageScreen, ); } 
 }