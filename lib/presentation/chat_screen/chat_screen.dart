import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/app_bar/appbar_image.dart';
import 'package:rent24/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:rent24/widgets/app_bar/custom_app_bar.dart';
import 'package:rent24/widgets/custom_text_form_field.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: getVerticalSize(804),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.img8c98994518b575b,
                      height: getVerticalSize(804),
                      width: getHorizontalSize(390),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(top: 25, bottom: 25),
                                    decoration: AppDecoration.fillIndigoA200,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(70),
                                              leadingWidth: 51,
                                              leading: AppbarImage(
                                                  height: getSize(30),
                                                  width: getSize(30),
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA700,
                                                  margin: getMargin(
                                                      left: 21,
                                                      top: 18,
                                                      bottom: 15),
                                                  onTap: () {
                                                    onTapArrowleft6();
                                                  }),
                                              title: Padding(
                                                  padding: getPadding(left: 18),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse9,
                                                        height: getSize(63),
                                                        width: getSize(63),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    31))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 9,
                                                            bottom: 5),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              AppbarSubtitle1(
                                                                  text:
                                                                      "lbl_mark_mill"
                                                                          .tr),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              1,
                                                                          right:
                                                                              41),
                                                                      child: Text(
                                                                          "lbl_online"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtNunitoExtraBold15Gray40001)))
                                                            ]))
                                                  ])),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(30),
                                                    width: getSize(30),
                                                    svgPath: ImageConstant
                                                        .imgMdidotsvertical,
                                                    margin: getMargin(
                                                        left: 19,
                                                        top: 18,
                                                        right: 19,
                                                        bottom: 15))
                                              ])
                                        ]))),
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: getPadding(top: 34),
                                    child: Container(
                                        margin: getMargin(bottom: 30),
                                        padding:
                                            getPadding(left: 13, right: 13),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(267),
                                                  margin: getMargin(
                                                      left: 7, right: 90),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 10,
                                                      right: 13,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .outlineIndigoA20026
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle37,
                                                            height:
                                                                getVerticalSize(
                                                                    117),
                                                            width:
                                                                getHorizontalSize(
                                                                    232),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        5)),
                                                            margin: getMargin(
                                                                top: 6)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    52),
                                                            width:
                                                                getHorizontalSize(
                                                                    231),
                                                            margin: getMargin(
                                                                top: 15),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child: Container(
                                                                          width: getHorizontalSize(
                                                                              189),
                                                                          child: Text(
                                                                              "msg_mark_mill_want_to".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtSansationBold15Gray80001.copyWith(letterSpacing: getHorizontalSize(0.3))))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child: Text(
                                                                          "lbl_9_52pm"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtInterBold13))
                                                                ]))
                                                      ])),
                                              Container(
                                                  width: getHorizontalSize(266),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 15,
                                                      right: 90),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 8,
                                                      right: 13,
                                                      bottom: 8),
                                                  decoration: AppDecoration
                                                      .outlineIndigoA20026
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text: "lbl_hello_i"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray80001,
                                                                              fontSize: getFontSize(15),
                                                                              fontFamily: 'Sansation',
                                                                              fontWeight: FontWeight.w700)),
                                                                      TextSpan(
                                                                          text: "msg_will_like_to_rent"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray80001,
                                                                              fontSize: getFontSize(15),
                                                                              fontFamily: 'Sansation',
                                                                              fontWeight: FontWeight.w700))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "lbl_9_52pm"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13)))
                                                      ])),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          183),
                                                      margin: getMargin(
                                                          top: 24, right: 4),
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 6,
                                                          right: 9,
                                                          bottom: 6),
                                                      decoration: AppDecoration
                                                          .outlineIndigoA200261
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Text(
                                                                    "msg_alright_its_still"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtSansationBold15WhiteA700)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 1,
                                                                        right:
                                                                            9),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 3),
                                                                              child: Text("lbl_9_52pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold13Gray300)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckmark,
                                                                              height: getSize(20),
                                                                              width: getSize(20),
                                                                              margin: getMargin(left: 9))
                                                                        ])))
                                                          ]))),
                                              Container(
                                                  width: getHorizontalSize(266),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 20,
                                                      right: 90),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 8,
                                                      right: 13,
                                                      bottom: 8),
                                                  decoration: AppDecoration
                                                      .outlineIndigoA20026
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text(
                                                                "msg_okay_i_will_like"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSansationBold15Gray80001)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 6),
                                                                child: Text(
                                                                    "lbl_9_52pm"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold13)))
                                                      ])),
                                              CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  autofocus: true,
                                                  controller: controller
                                                      .messageController,
                                                  hintText: "lbl_message".tr,
                                                  margin: getMargin(top: 83),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray80026,
                                                  shape: TextFormFieldShape
                                                      .CircleBorder34,
                                                  padding: TextFormFieldPadding
                                                      .PaddingT22,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .NunitoBold17Gray400,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 27,
                                                          top: 19,
                                                          right: 19,
                                                          bottom: 19),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCallGray80001)),
                                                  prefixConstraints: BoxConstraints(
                                                      maxHeight:
                                                          getVerticalSize(68)),
                                                  suffix: Container(
                                                      margin: getMargin(
                                                          left: 30,
                                                          top: 19,
                                                          right: 24,
                                                          bottom: 19),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconsaxLinearSend)),
                                                  suffixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(68)))
                                            ]))))
                          ]))
                ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
