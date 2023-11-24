import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_search_view.dart';

class NewLsitingOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 19, right: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 3, top: 26),
                          child: Text("lbl_favorites".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoExtraBold25Bluegray900)),
                      Padding(
                          padding: getPadding(left: 2, top: 13, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    // controller: controller.searchController,
                                    hintText: "msg_search_product_or".tr,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 27,
                                            top: 13,
                                            right: 14,
                                            bottom: 13),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(50))),
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    margin: getMargin(left: 13),
                                    variant: IconButtonVariant.FillIndigoA200,
                                    shape: IconButtonShape.RoundedBorder10,
                                    padding: IconButtonPadding.PaddingAll12,
                                    onTap: () {
                                      onTapBtnIconsaxoutline();
                                    },
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIconsaxoutline))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 87),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Container(
                                  height: getVerticalSize(80),
                                  width: getHorizontalSize(70),
                                  padding: getPadding(
                                      left: 12, top: 16, right: 12, bottom: 16),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup87),
                                          fit: BoxFit.cover)),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIconsaxlinearadd,
                                        height: getSize(45),
                                        width: getSize(45),
                                        alignment: Alignment.bottomCenter)
                                  ]))))
                    ])),
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

  onTapBtnIconsaxoutline() {
    Get.toNamed(
      AppRoutes.callToActionOneScreen,
    );
  }
}
