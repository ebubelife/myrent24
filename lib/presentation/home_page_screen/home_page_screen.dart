import '../home_page_sidenav_draweritem/home_page_sidenav_draweritem.dart';
import '../new_lsiting_one_screen/new_lsiting_one_screen.dart';
import '../new_lsiting_screen/new_lsiting_screen.dart';
import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';
import 'package:rent24/widgets/custom_button.dart';
import 'package:rent24/widgets/custom_icon_button.dart';
import 'package:rent24/widgets/custom_search_view.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        drawer: Drawer(child: HomePageSidenavDraweritem()),
        appBar: AppBar(
            leading: null,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
                width: double.maxFinite,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Builder(
                        builder: (BuildContext context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              child: SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                    "assets/images/element3menu_icon.png"),
                              ),
                            ),
                          );
                        },
                      ),
                    ]))),
        body: Stack(children: [
          Container(
              width: size.width,
              margin: EdgeInsets.only(top: 35),
              child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 17),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 4, right: 21),
                                    child: Row(children: [
                                      Expanded(
                                          child: CustomSearchView(
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller:
                                                  controller.searchController,
                                              hintText:
                                                  "msg_search_product_or".tr,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 27,
                                                      top: 13,
                                                      right: 14,
                                                      bottom: 13),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(50)))),
                                      CustomIconButton(
                                          height: 50,
                                          width: 50,
                                          margin: getMargin(left: 13),
                                          variant:
                                              IconButtonVariant.FillIndigoA200,
                                          shape:
                                              IconButtonShape.RoundedBorder10,
                                          padding:
                                              IconButtonPadding.PaddingAll12,
                                          onTap: () {
                                            onTapBtnIconsaxoutline();
                                          },
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgIconsaxoutline))
                                    ])),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 15, right: 14),
                                    child: Row(children: [
                                      CustomButton(
                                          width: getHorizontalSize(130),
                                          text: "lbl_accomodation".tr,
                                          variant:
                                              ButtonVariant.OutlineIndigoA2004c,
                                          shape: ButtonShape.RoundedBorder20,
                                          padding: ButtonPadding.PaddingAll13,
                                          fontStyle:
                                              ButtonFontStyle.UbuntuBold15),
                                      CustomButton(
                                          height: getVerticalSize(45),
                                          width: getHorizontalSize(95),
                                          text: "lbl_ride".tr,
                                          margin: getMargin(left: 12),
                                          variant: ButtonVariant.FillGray5001,
                                          shape: ButtonShape.RoundedBorder10,
                                          padding: ButtonPadding.PaddingAll13,
                                          fontStyle: ButtonFontStyle
                                              .UbuntuBold15Bluegray10001,
                                          onTap: () {
                                            onTapRide();
                                          }),
                                      Container(
                                          height: getVerticalSize(45),
                                          width: getHorizontalSize(109),
                                          margin: getMargin(left: 10),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height:
                                                            getVerticalSize(45),
                                                        width:
                                                            getHorizontalSize(
                                                                115),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray5001,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10))))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "lbl_event_center".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUbuntuBold15))
                                              ]))
                                    ])),
                                Padding(
                                    padding: getPadding(left: 4, top: 13),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnrectangle();
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .outlineGray50026
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: []))),
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 48, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Nearby".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterSemiBold20),
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: Text("lbl_see_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold17))
                                        ])),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(top: 25),
                                    child: IntrinsicWidth(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                          Container(
                                              height: getVerticalSize(340),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap:
                                                                        (() => {
                                                                              Get.toNamed(AppRoutes.callToActionScreen)
                                                                            }),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/img_rectangle13_218x285.png"),
                                                                  ),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 6),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            // margin:EdgeInsets.only(top:6),
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(top: 6, left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                          Container(
                                              height: getVerticalSize(332),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap:
                                                                        (() => {
                                                                              Get.toNamed(AppRoutes.callToActionScreen)
                                                                            }),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/img_rectangle13_218x285.png"),
                                                                  ),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                          Container(
                                              height: getVerticalSize(332),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap:
                                                                        (() => {
                                                                              Get.toNamed(AppRoutes.callToActionScreen)
                                                                            }),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/img_rectangle13_218x285.png"),
                                                                  ),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 4, top: 13),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapColumnrectangle();
                                              },
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .outlineGray50026
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: []))),
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 48, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_new_product".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterSemiBold20),
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: Text("lbl_see_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold17))
                                        ])),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(top: 25),
                                    child: IntrinsicWidth(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                          Container(
                                              height: getVerticalSize(332),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap:
                                                                        (() => {
                                                                              Get.toNamed(AppRoutes.callToActionScreen)
                                                                            }),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/images/img_rectangle13_218x285.png"),
                                                                  ),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                          Container(
                                              height: getVerticalSize(332),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Image.asset(
                                                                      "assets/images/img_rectangle13_218x285.png"),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                          Container(
                                              height: getVerticalSize(332),
                                              width: getHorizontalSize(285),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    332),
                                                            width:
                                                                getHorizontalSize(
                                                                    285),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(10)),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: ColorConstant
                                                                          .gray50026,
                                                                      spreadRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      blurRadius:
                                                                          getHorizontalSize(
                                                                              2),
                                                                      offset:
                                                                          Offset(
                                                                              0,
                                                                              10))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                bottom: 16),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Image.asset(
                                                                      "assets/images/img_rectangle13_218x285.png"),
                                                                  Row(
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2),
                                                                            child: Text("lbl_duplex_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterSemiBold15)),
                                                                        Container(
                                                                            height:
                                                                                getVerticalSize(20),
                                                                            width: getHorizontalSize(117),
                                                                            margin: getMargin(left: 21),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerRight, child: Text("lbl_1_200_00_yr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterBold1693)),
                                                                              CustomImageView(svgPath: ImageConstant.imgMdinaira, height: getSize(18), width: getSize(18), alignment: Alignment.bottomLeft)
                                                                            ]))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              10),
                                                                      child: Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgIconsaxboldlocation,
                                                                                height: getVerticalSize(20),
                                                                                width: getHorizontalSize(21)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 1, bottom: 2),
                                                                                child: Text("msg_st_faith_eke_awka".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtInterMedium14))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              6),
                                                                      child: Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgMdibedoutline,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(top: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 4, top: 8, bottom: 2),
                                                                                child: Text("lbl_6_bed_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13)),
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCilbath,
                                                                                height: getSize(25),
                                                                                width: getSize(25),
                                                                                margin: getMargin(left: 14, bottom: 3)),
                                                                            Padding(
                                                                                padding: getPadding(left: 5, top: 9, bottom: 1),
                                                                                child: Text("lbl_4_bath_room".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoMedium13))
                                                                          ]))
                                                                ]))),
                                                  ])),
                                        ])))
                              ]))),
                ])),
                padding: EdgeInsets.only(bottom: 10),
              )),
          /*   bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type));
        })*/

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(
                      color: const Color.fromARGB(
                          255, 215, 214, 214), // Greyish color
                      width: 1.0, // Thin border
                    ),
                  ),
                ),
                child: Row(children: [
                  CustomImageView(
                    svgPath: 'assets/images/home2home_button.svg',
                    height: 30,
                    width: 30,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: CustomImageView(
                      svgPath: 'assets/images/notificationnotify_bell.svg',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: 'assets/images/heartlike_icon.svg',
                    height: 30,
                    width: 30,
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: 'assets/images/profileprofile.svg',
                    height: 30,
                    width: 30,
                  ),
                ])),
          ),
          GestureDetector(
            onTap: () {
              Get.to(NewLsitingOneScreen);
            },
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomImageView(
                  svgPath: 'assets/images/Rectanglehex_button.svg',
                  height: 90,
                  width: 90,
                )),
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NewLsitingScreen(),
                  ),
                );
                // Get.to(NewLsitingOneScreen);
              },
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 40.0), // Adjust the value as needed

                      child: Icon(Icons.add,
                          color: Color.fromARGB(255, 255, 219, 36)))))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.homePageScreen;
      case BottomBarEnum.Notificationindigoa200:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Iconsaxtwotoneheart:
        return AppRoutes.newLsitingOneScreen;
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return AppRoutes.profileScreen;
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

  onTapRide() {
    Get.toNamed(
      AppRoutes.rideScreen,
    );
  }

  onTapColumnrectangle() {
    Get.toNamed(
      AppRoutes.callToActionScreen,
    );
  }

  onTapColumnlaptopdel() {
    Get.toNamed(
      AppRoutes.callToActionThreeScreen,
    );
  }
}
