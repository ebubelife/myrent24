import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePageSidenavDraweritem extends StatelessWidget {
  //HomePageSidenavDraweritem(this.controller);

  HomePageSidenavDraweritem();

  // HomePageSidenavController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                color: ColorConstant.indigoA200,
                margin: getMargin(bottom: 9),
                padding: getPadding(left: 30, top: 44, right: 30, bottom: 44),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: getSize(88),
                          width: getSize(88),
                          radius: BorderRadius.circular(getHorizontalSize(44)),
                          margin: getMargin(top: 22)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_john_doe".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold20)),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMaterialsymbol,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_dashboard".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgMdipushnotificationoutline,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_notification".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIconsaxLinearCard,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMdiaboutcircleoutline,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_about_us".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFluentpersons,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_support".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIconsaxLinearSetting3,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_settings".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                      Padding(
                          padding: getPadding(left: 7, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClaritylogoutline,
                                height: getSize(25),
                                width: getSize(25),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: Text("lbl_log_out".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoBold20))
                          ])),
                    ]))));
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationOneContainerScreen,
    );
  }

  onTapCard() {
    Get.toNamed(
      AppRoutes.notificationOneContainerScreen,
    );
  }

  onTapAboutus() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }

  onTapSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
