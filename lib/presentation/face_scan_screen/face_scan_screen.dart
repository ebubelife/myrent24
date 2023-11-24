import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_button.dart';

class FaceScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 129),
                decoration: BoxDecoration(
                    color: ColorConstant.gray50,
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstant.black90026,
                          spreadRadius: getHorizontalSize(2),
                          blurRadius: getHorizontalSize(2),
                          offset: Offset(0, 40))
                    ],
                    gradient: LinearGradient(
                        begin: Alignment(0, 0.02),
                        end: Alignment(1, 1),
                        colors: [
                          ColorConstant.gray700,
                          ColorConstant.gray40004
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup271),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(all: 21),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              width: getHorizontalSize(151),
                              text: "lbl_face_scan".tr,
                              shape: ButtonShape.Square,
                              prefixWidget: Container(
                                  margin: getMargin(right: 27),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftWhiteA700)),
                              onTap: () {
                                onTapFacescan();
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(345),
                                  width: getHorizontalSize(260),
                                  margin: getMargin(top: 78, bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(172)),
                                      border: Border.all(
                                          color: ColorConstant.whiteA700,
                                          width: getHorizontalSize(4)))))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Notificationindigoa200:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneheart:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.notificationOnePage:
        return NotificationOnePage();
      default:
        return DefaultWidget();
    }
  }

  onTapFacescan() {
    Get.toNamed(
      AppRoutes.faceReconginitionScreen,
    );
  }
}
