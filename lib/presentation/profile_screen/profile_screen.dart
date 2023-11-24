import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/core/utils/validation_functions.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.indigoA200,
            appBar: AppBar(
              backgroundColor: ColorConstant.indigoA200,
               elevation:0,
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                  children: [
                    Text("lbl_profile_edit".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoExtraBold20WhiteA700),
                    GestureDetector(
                        onTap: () {
                          onTapTxtSave();
                        },
                        child: Padding(
                            padding: getPadding(bottom: 2),
                            child: Text("lbl_save".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoExtraBold20WhiteA700)))
                  ]),
            ),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 22),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                       
                                        Container(
                                            height: getVerticalSize(80),
                                            width: getHorizontalSize(94),
                                            margin: getMargin(top: 12),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse1380x80,
                                                      height: getSize(80),
                                                      width: getSize(80),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  40)),
                                                      alignment:
                                                          Alignment.centerLeft),
                                                  CustomIconButton(
                                                      height: 35,
                                                      width: 35,
                                                      margin:
                                                          getMargin(bottom: 3),
                                                      variant: IconButtonVariant
                                                          .OutlineIndigoA200,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconsaxlinearcamera))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text("lbl_john_doe".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoExtraBold20WhiteA700)),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                margin: getMargin(top: 40),
                                                padding: getPadding(
                                                    left: 21,
                                                    top: 33,
                                                    right: 21,
                                                    bottom: 33),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 38,
                                                              right: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_full_name"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoBold17Gray500
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.17)))),
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    autofocus:
                                                                        true,
                                                                    controller:
                                                                        controller
                                                                            .fullnameoneController,
                                                                    hintText:
                                                                        "lbl_john_doe"
                                                                            .tr,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                7),
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingAll20)
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14,
                                                              right: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_email"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoBold17Gray500
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.17)))),
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    autofocus:
                                                                        true,
                                                                    controller:
                                                                        controller
                                                                            .emailoneController,
                                                                    hintText:
                                                                        "msg_johndoe12_gmail_com"
                                                                            .tr,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                8),
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingAll20,
                                                                    textInputType:
                                                                        TextInputType
                                                                            .emailAddress,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidEmail(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid email";
                                                                      }
                                                                      return null;
                                                                    })
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14,
                                                              right: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_date_of_birth"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoBold17Gray500
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.17)))),
                                                                CustomTextFormField(
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    autofocus:
                                                                        true,
                                                                    controller:
                                                                        controller
                                                                            .dateController,
                                                                    hintText:
                                                                        "lbl_11_07_2001"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        top: 8),
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingT20,
                                                                    suffix: Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                30,
                                                                            top:
                                                                                22,
                                                                            right:
                                                                                14,
                                                                            bottom:
                                                                                19),
                                                                        child: CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgIconsaxLinearCalendar)),
                                                                    suffixConstraints:
                                                                        BoxConstraints(
                                                                            maxHeight:
                                                                                getVerticalSize(65)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15,
                                                              right: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_state"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoBold17Gray500
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.17)))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            65),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            347),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                7),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckmarkGray400,
                                                                              height: getSize(24),
                                                                              width: getSize(24),
                                                                              alignment: Alignment.centerRight,
                                                                              margin: getMargin(right: 18)),
                                                                          CustomTextFormField(
                                                                              width: getHorizontalSize(347),
                                                                              focusNode: FocusNode(),
                                                                              autofocus: true,
                                                                              controller: controller.stateoneController,
                                                                              hintText: "lbl_anambra".tr,
                                                                              padding: TextFormFieldPadding.PaddingAll20,
                                                                              textInputAction: TextInputAction.done,
                                                                              alignment: Alignment.center)
                                                                        ]))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16,
                                                              right: 1),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_city"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoBold17Gray500
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.17)))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            347),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                6),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Container(height: getVerticalSize(65), width: getHorizontalSize(347), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(5)), border: Border.all(color: ColorConstant.indigoA2004c, width: getHorizontalSize(3))))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(padding: getPadding(left: 24, top: 19), child: Text("lbl_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoExtraBold17Black900.copyWith(letterSpacing: getHorizontalSize(0.17)))))
                                                                        ])),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgIconsaxlineararrowdown2,
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            24),
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    margin: getMargin(
                                                                        top: 26,
                                                                        right:
                                                                            18))
                                                              ]))
                                                    ])))
                                      ])))
                        ])))));
  }

  onTapProfileedit() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapTxtSave() {
    Get.toNamed(
      AppRoutes.profileOneScreen,
    );
  }
}
