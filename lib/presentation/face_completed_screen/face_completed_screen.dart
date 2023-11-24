import 'controller/face_completed_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class FaceCompletedScreen extends GetWidget<FaceCompletedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 36,
            right: 36,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.indigoA20019,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder67,
                ),
                child: Container(
                  height: getSize(
                    134,
                  ),
                  width: getSize(
                    134,
                  ),
                  padding: getPadding(
                    all: 27,
                  ),
                  decoration: AppDecoration.fillIndigoA20019.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder67,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgIconsaxbulkfingerscan,
                        height: getSize(
                          80,
                        ),
                        width: getSize(
                          80,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 30,
                ),
                child: Text(
                  "msg_face_scan_was_successful".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSansationBold25,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  316,
                ),
                margin: getMargin(
                  top: 22,
                  bottom: 5,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor3".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtNunitoSemiBold15Gray40003,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            60,
          ),
          text: "lbl_dashboard".tr,
          margin: getMargin(
            left: 20,
            right: 20,
            bottom: 46,
          ),
        ),
      ),
    );
  }
}
