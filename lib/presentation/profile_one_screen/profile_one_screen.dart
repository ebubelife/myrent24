import 'controller/profile_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_button.dart';

class ProfileOneScreen extends GetWidget<ProfileOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.indigoA200,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(124),
                          text: "lbl_profile".tr,
                          margin: getMargin(left: 21, top: 22),
                          shape: ButtonShape.Square,
                          prefixWidget: Container(
                              margin: getMargin(right: 30),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgArrowleftWhiteA700)),
                          onTap: () {
                            onTapProfile();
                          }),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1380x80,
                          height: getSize(80),
                          width: getSize(80),
                          radius: BorderRadius.circular(getHorizontalSize(40)),
                          alignment: Alignment.center,
                          margin: getMargin(top: 12)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 9, right: 113),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("lbl_john_doe".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNunitoExtraBold20WhiteA700),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIconsaxlinearedit,
                                        height: getSize(25),
                                        width: getSize(25),
                                        margin: getMargin(
                                            left: 13, top: 1, bottom: 1),
                                        onTap: () {
                                          onTapImgIconsaxlineared();
                                        })
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 40),
                              padding: getPadding(
                                  left: 19, top: 25, right: 19, bottom: 25),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1),
                                            padding: getPadding(
                                                left: 3,
                                                top: 7,
                                                right: 3,
                                                bottom: 7),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_full_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_john_doe".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1, top: 7),
                                            padding: getPadding(
                                                left: 3,
                                                top: 6,
                                                right: 3,
                                                bottom: 6),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Text(
                                                          "lbl_email".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Text(
                                                          "msg_johndoe12_gmail_com"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1, top: 7),
                                            padding: getPadding(
                                                left: 4,
                                                top: 7,
                                                right: 4,
                                                bottom: 7),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_gender".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_male".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1, top: 7),
                                            padding: getPadding(
                                                left: 4,
                                                top: 7,
                                                right: 4,
                                                bottom: 7),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_date_of_birth"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: Text(
                                                          "lbl_11_7_2001".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1, top: 7),
                                            padding: getPadding(
                                                left: 4,
                                                top: 7,
                                                right: 4,
                                                bottom: 7),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Text(
                                                          "lbl_state".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_anambra".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(351),
                                            margin: getMargin(left: 1, top: 7),
                                            padding: getPadding(
                                                left: 4,
                                                top: 7,
                                                right: 4,
                                                bottom: 7),
                                            decoration:
                                                AppDecoration.outlineGray10002,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 8),
                                                      child: Text("lbl_city".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold15Gray400)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text("lbl_awka".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoExtraBold17Gray900))
                                                ]))),
                                    Container(
                                        width: getHorizontalSize(351),
                                        margin: getMargin(top: 7, bottom: 10),
                                        padding: getPadding(
                                            left: 4,
                                            top: 5,
                                            right: 4,
                                            bottom: 5),
                                        decoration:
                                            AppDecoration.txtOutlineGray10002,
                                        child: Text("lbl_address".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtNunitoExtraBold15Gray400))
                                  ])))
                    ]))));
  }

  onTapProfile() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapImgIconsaxlineared() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
