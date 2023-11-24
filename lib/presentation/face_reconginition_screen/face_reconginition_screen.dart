import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_button.dart';

class FaceReconginitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 22, right: 21, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(216),
                          text: "msg_face_recognition".tr,
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT1,
                          fontStyle:
                              ButtonFontStyle.NunitoExtraBold20Bluegray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftGray800)),
                          onTap: () {
                            onTapFace();
                          },
                          alignment: Alignment.centerLeft),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("lbl_take_a_selfie".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoExtraBold20Gray900)),
                      Container(
                          width: getHorizontalSize(295),
                          margin: getMargin(left: 26, top: 28, right: 27),
                          child: Text("msg_we_will_use_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNunitoBold16)),
                      Container(
                          margin:
                              getMargin(left: 4, top: 20, right: 4, bottom: 5),
                          padding: getPadding(
                              left: 29, top: 25, right: 29, bottom: 25),
                          decoration: AppDecoration.outlineGray4003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getSize(161),
                                        width: getSize(161),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder62),
                                                      child: Container(
                                                          height: getSize(124),
                                                          width: getSize(124),
                                                          padding: getPadding(
                                                              all: 7),
                                                          decoration: AppDecoration
                                                              .outlineIndigoA20019
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder62),
                                                          child: Stack(
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse16,
                                                                    height:
                                                                        getSize(
                                                                            110),
                                                                    width:
                                                                        getSize(
                                                                            110),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            55)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center)
                                                              ])))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(161),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .indigoA200))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          161),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  2),
                                                          thickness:
                                                              getVerticalSize(
                                                                  2),
                                                          color: ColorConstant
                                                              .indigoA200)))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        top: 12, right: 13, bottom: 6),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(10));
                                        },
                                        itemCount: 6,
                                        itemBuilder: (context, index) {})))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(60),
                text: "lbl_take_selfie".tr,
                margin: getMargin(left: 20, right: 20, bottom: 46),
                onTap: () {
                  onTapTakeselfie();
                })));
  }

  onTapFace() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapTakeselfie() {
    Get.toNamed(
      AppRoutes.faceScanScreen,
    );
  }
}
