import 'controller/call_to_action_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/app_bar/appbar_image.dart';
import 'package:rent24/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:rent24/widgets/app_bar/custom_app_bar.dart';
import 'package:rent24/widgets/custom_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';
import 'package:flutter_seekbar/flutter_seekbar.dart';

class CallToActionOneScreen extends GetWidget<CallToActionOneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.indigoA200,
        appBar: CustomAppBar(
            height: getVerticalSize(56),
            leadingWidth: 57,
            leading: AppbarImage(
                height: getSize(40),
                width: getSize(40),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 17, top: 8, bottom: 8),
                onTap: () {
                  onTapArrowleft3();
                }),
            centerTitle: true,
            title: AppbarSubtitle1(text: "lbl_filter".tr),
            actions: [
              CustomButton(
                  height: getVerticalSize(40),
                  width: getHorizontalSize(64),
                  text: "lbl_reset".tr,
                  margin: getMargin(left: 21, top: 8, right: 21, bottom: 8),
                  variant: ButtonVariant.OutlineWhiteA7004c,
                  padding: ButtonPadding.PaddingAll8,
                  fontStyle: ButtonFontStyle.NunitoBold17,
                  onTap: () {
                    onTapReset();
                  })
            ]),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 70, bottom: 34),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 17),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgVolume,
                            height: getSize(25),
                            width: getSize(25),
                            margin: getMargin(bottom: 1)),
                        Padding(
                            padding: getPadding(left: 6, top: 2),
                            child: Text("lbl_property_type".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoExtraBold17WhiteA700))
                      ])),
                  Padding(
                      padding: getPadding(left: 17, top: 21),
                      child: Row(children: [
                        CustomButton(
                            height: getVerticalSize(45),
                            width: getHorizontalSize(130),
                            text: "lbl_accomodation".tr,
                            variant: ButtonVariant.FillWhiteA700,
                            shape: ButtonShape.RoundedBorder10,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle: ButtonFontStyle.UbuntuBold15IndigoA200),
                        CustomButton(
                            height: getVerticalSize(45),
                            width: getHorizontalSize(95),
                            text: "lbl_hotel_hall".tr,
                            margin: getMargin(left: 12),
                            variant: ButtonVariant.FillWhiteA70066,
                            shape: ButtonShape.RoundedBorder10,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle:
                                ButtonFontStyle.UbuntuBold15Bluegray10001),
                        CustomButton(
                            height: getVerticalSize(45),
                            width: getHorizontalSize(95),
                            text: "Events ".tr,
                            margin: getMargin(left: 12),
                            variant: ButtonVariant.FillWhiteA70066,
                            shape: ButtonShape.RoundedBorder10,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle:
                                ButtonFontStyle.UbuntuBold15Bluegray10001),
                      ])),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.locationController,
                      hintText: "lbl_location".tr,
                      margin: getMargin(left: 18, top: 21, right: 17),
                      variant: TextFormFieldVariant.OutlineWhiteA70066,
                      shape: TextFormFieldShape.RoundedBorder10,
                      padding: TextFormFieldPadding.PaddingT13,
                      fontStyle: TextFormFieldFontStyle.NunitoSemiBold17,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      prefix: Container(
                          margin: getMargin(
                              left: 12, top: 14, right: 12, bottom: 12),
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgIconsaxLinearSearchnormal1)),
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(50))),
                  Padding(
                      padding: getPadding(left: 22, top: 32),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgMdiguestroomoutline,
                            height: getSize(25),
                            width: getSize(25)),
                        Padding(
                            padding: getPadding(left: 6, top: 1),
                            child: Text("lbl_rooms".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoExtraBold17WhiteA700))
                      ])),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: controller.locationController,
                      hintText: "Room count".tr,
                      margin: getMargin(left: 18, top: 21, right: 17),
                      variant: TextFormFieldVariant.OutlineWhiteA70066,
                      shape: TextFormFieldShape.RoundedBorder10,
                      padding: TextFormFieldPadding.PaddingAll13,
                      fontStyle: TextFormFieldFontStyle.NunitoSemiBold17,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(50))),
                ])),
        bottomNavigationBar: CustomButton(
            height: getVerticalSize(60),
            text: "lbl_apply".tr,
            margin: getMargin(left: 20, right: 20, bottom: 26),
            variant: ButtonVariant.OutlineBlack9003f_1,
            fontStyle: ButtonFontStyle.NunitoExtraBold20IndigoA200,
            onTap: () {
              onTapApply();
            }));
  }

  onTapApply() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  onTapArrowleft3() {
    Get.back();
  }

  onTapReset() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
