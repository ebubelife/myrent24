import 'controller/call_to_action_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/app_bar/appbar_iconbutton.dart';
import 'package:rent24/widgets/app_bar/custom_app_bar.dart';
import 'package:rent24/widgets/custom_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

class CallToActionScreen extends GetWidget<CallToActionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 19, bottom: 19),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          height: getVerticalSize(285),
                          width: getHorizontalSize(368),
                          margin: getMargin(top: 2),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle16,
                                height: getVerticalSize(285),
                                width: getHorizontalSize(368),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(10)),
                                alignment: Alignment.center),
                            CustomAppBar(
                                height: getVerticalSize(64),
                                leadingWidth: 70,
                                leading: AppbarIconbutton(
                                    svgPath:
                                        ImageConstant.imgArrowleftWhiteA700,
                                    margin: getMargin(left: 20),
                                    onTap: () {
                                      onTapArrowleft4();
                                    }),
                                actions: [
                                  AppbarIconbutton(
                                      svgPath:
                                          ImageConstant.imgMdicardsheartoutline,
                                      margin: getMargin(left: 20, right: 20))
                                ])
                          ])),
                      Container(
                          padding: getPadding(
                              left: 18, top: 24, right: 18, bottom: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(left: 3, right: 5),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_duplex_home".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold17),
                                          Text("lbl_1_200_00_yr".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold1693)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIconsaxboldlocation,
                                          height: getVerticalSize(20),
                                          width: getHorizontalSize(21)),
                                      Padding(
                                          padding: getPadding(
                                              left: 10, top: 1, bottom: 1),
                                          child: Text(
                                              "msg_st_faith_eke_awka".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterMedium14))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 10),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGroup114,
                                          height: getVerticalSize(20),
                                          width: getHorizontalSize(108)),
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 1, bottom: 1),
                                          child: Text("msg_5_1_115_reviews".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtSansationBold15))
                                    ])),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 12, right: 40),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMdibedoutline,
                                              height: getSize(25),
                                              width: getSize(25)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 4, bottom: 2),
                                              child: Text("lbl_6_bed_room".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoMedium13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 44, top: 5, bottom: 1),
                                              child: Text("lbl_4_bath_room".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoMedium13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 48, top: 4, bottom: 2),
                                              child: Text("lbl_2500sqr".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoMedium13))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 23, right: 7),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgEllipse4,
                                          height: getSize(60),
                                          width: getSize(60),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(30))),
                                      Padding(
                                          padding: getPadding(
                                              left: 11, top: 13, bottom: 4),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_john_doe".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold17Gray900),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 1, top: 2),
                                                    child: Text("lbl_owner".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold15))
                                              ])),
                                      Spacer(),
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          margin:
                                              getMargin(top: 10, bottom: 10),
                                          variant: IconButtonVariant
                                              .OutlineBlack9003f,
                                          shape: IconButtonShape.RoundedBorder5,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolscalloutline)),
                                      CustomIconButton(
                                          height: 40,
                                          width: 40,
                                          margin: getMargin(
                                              left: 22, top: 10, bottom: 10),
                                          variant: IconButtonVariant
                                              .OutlineBlack9003f,
                                          shape: IconButtonShape.RoundedBorder5,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMaterialsymbolWhiteA700))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 2, top: 27),
                                    child: Text("lbl_description".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold15Gray900)),
                                Container(
                                    width: getHorizontalSize(342),
                                    margin: getMargin(
                                        left: 5, top: 9, right: 6, bottom: 1),
                                    child: Text("msg_lorem_ipsum_dolor".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoMedium15))
                              ]))
                    ]))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 20, right: 20, bottom: 19),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(60), text: "lbl_rent_now".tr)
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
