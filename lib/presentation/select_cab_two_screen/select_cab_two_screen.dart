import 'controller/select_cab_two_controller.dart';import 'package:flutter/material.dart';import 'package:rent24/core/app_export.dart';import 'package:rent24/widgets/app_bar/appbar_image.dart';import 'package:rent24/widgets/app_bar/appbar_subtitle.dart';import 'package:rent24/widgets/app_bar/custom_app_bar.dart';import 'package:rent24/widgets/custom_button.dart';import 'package:rent24/widgets/custom_icon_button.dart';class SelectCabTwoScreen extends GetWidget<SelectCabTwoController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(height: getVerticalSize(804), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle51910x390, height: getVerticalSize(910), width: getHorizontalSize(390), alignment: Alignment.bottomCenter), Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: SingleChildScrollView(child: Container(height: getVerticalSize(804), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 36, top: 30, right: 29, bottom: 29), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 293), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 31, width: 31, alignment: Alignment.centerRight, child: CustomImageView(svgPath: ImageConstant.imgFluentvehiclecar16regular)), CustomIconButton(height: 31, width: 31, margin: getMargin(top: 388), child: CustomImageView(svgPath: ImageConstant.imgJamcar))])), Spacer(), Padding(padding: getPadding(bottom: 82), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 31, width: 31, child: CustomImageView(svgPath: ImageConstant.imgEvacaroutline)), Align(alignment: Alignment.centerRight, child: Container(margin: getMargin(top: 336), padding: getPadding(all: 9), decoration: AppDecoration.fillIndigoA2004c.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Container(margin: getMargin(top: 1), padding: getPadding(all: 4), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(16), width: getSize(16), decoration: BoxDecoration(color: ColorConstant.indigoA200, borderRadius: BorderRadius.circular(getHorizontalSize(8))))]))]))), CustomIconButton(height: 31, width: 31, margin: getMargin(left: 5, top: 220), child: CustomImageView(svgPath: ImageConstant.imgFluentvehiclecar16regular))])), CustomIconButton(height: 31, width: 31, margin: getMargin(left: 16, top: 75, bottom: 638), child: CustomImageView(svgPath: ImageConstant.imgFluentvehiclecar16regular)), CustomIconButton(height: 31, width: 31, margin: getMargin(left: 27, top: 515, bottom: 198), child: CustomImageView(svgPath: ImageConstant.imgFluentvehiclecar16regular))]))), Align(alignment: Alignment.bottomCenter, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(355), margin: getMargin(left: 18, right: 17), padding: getPadding(left: 13, top: 11, right: 13, bottom: 11), decoration: AppDecoration.outlineGray8002601.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3, right: 56), child: Row(children: [Container(margin: getMargin(top: 4, bottom: 1), padding: getPadding(all: 5), decoration: AppDecoration.outlineIndigoA2001.copyWith(borderRadius: BorderRadiusStyle.circleBorder17), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(20), width: getSize(20), decoration: BoxDecoration(color: ColorConstant.indigoA200, borderRadius: BorderRadius.circular(getHorizontalSize(10))))])), Container(height: getVerticalSize(36), width: getHorizontalSize(232), margin: getMargin(left: 11), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Text("msg_no_5_umushi_street".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationRegular17)), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 1), child: Text("lbl_pickup_location".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold15Gray400)))]))])), Padding(padding: getPadding(top: 3), child: Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 12), child: SizedBox(height: getVerticalSize(25), child: VerticalDivider(width: getHorizontalSize(2), thickness: getVerticalSize(2), color: ColorConstant.indigoA200))), CustomImageView(svgPath: ImageConstant.imgIconsaxbulklocationBlack900, height: getSize(30), width: getSize(30), margin: getMargin(top: 2))]), Padding(padding: getPadding(left: 6, top: 17, bottom: 2), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1), child: Text("lbl_destination".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold15Gray400)), Text("msg_zike_avenue_term".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationRegular17)]))]))]))), CustomImageView(svgPath: ImageConstant.imgVector1, height: getVerticalSize(97), width: getHorizontalSize(138), margin: getMargin(left: 94, top: 115)), Container(width: double.maxFinite, child: Container(margin: getMargin(top: 102), padding: getPadding(left: 10, top: 16, right: 10, bottom: 16), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 12, top: 15), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(80), padding: getPadding(left: 23, top: 4, right: 23, bottom: 4), decoration: AppDecoration.txtFillBlack900.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_mini".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold17WhiteA700)), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 10), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray30001, width: getHorizontalSize(2)), borderRadius: BorderRadiusStyle.circleBorder40), child: Container(height: getSize(80), width: getSize(80), padding: getPadding(left: 10, top: 2, right: 10, bottom: 2), decoration: AppDecoration.outlineGray30001.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle55, height: getSize(60), width: getSize(60), radius: BorderRadius.circular(getHorizontalSize(5)), alignment: Alignment.topCenter)])))]), Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(80), padding: getPadding(left: 22, top: 3, right: 22, bottom: 3), decoration: AppDecoration.txtFillBlack900.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_jeep".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold17WhiteA700)), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 10), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray30001, width: getHorizontalSize(2)), borderRadius: BorderRadiusStyle.circleBorder40), child: Container(height: getSize(80), width: getSize(80), padding: getPadding(all: 10), decoration: AppDecoration.outlineGray30001.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle5560x60, height: getSize(60), width: getSize(60), radius: BorderRadius.circular(getHorizontalSize(5)), alignment: Alignment.center)])))]), SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: getHorizontalSize(80), padding: getPadding(left: 19, top: 4, right: 19, bottom: 4), decoration: AppDecoration.txtFillIndigoA200.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_xuv".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold17WhiteA700)), Container(width: getHorizontalSize(80), margin: getMargin(left: 36), padding: getPadding(left: 23, top: 5, right: 23, bottom: 5), decoration: AppDecoration.txtFillBlack900.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_bus".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSansationBold17WhiteA700))]), Padding(padding: getPadding(top: 10), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.indigoA200, width: getHorizontalSize(2)), borderRadius: BorderRadiusStyle.circleBorder40), child: Container(height: getSize(80), width: getSize(80), padding: getPadding(left: 10, top: 6, right: 10, bottom: 6), decoration: AppDecoration.outlineIndigoA200.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle551, height: getSize(60), width: getSize(60), radius: BorderRadius.circular(getHorizontalSize(5)), alignment: Alignment.topCenter)]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 36), shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray30001, width: getHorizontalSize(2)), borderRadius: BorderRadiusStyle.circleBorder40), child: Container(height: getSize(80), width: getSize(80), padding: getPadding(left: 10, top: 9, right: 10, bottom: 9), decoration: AppDecoration.outlineGray30001.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgRectangle552, height: getSize(60), width: getSize(60), radius: BorderRadius.circular(getHorizontalSize(5)), alignment: Alignment.topCenter)])))]))]))), Container(height: getVerticalSize(120), width: getHorizontalSize(10))])), CustomButton(height: getVerticalSize(60), text: "lbl_select_cab".tr, margin: getMargin(left: 10, top: 23, right: 10), onTap: () {onTapSelectcab();})])))])), Align(alignment: Alignment.topCenter, child: Container(height: getVerticalSize(16), width: double.maxFinite, decoration: BoxDecoration(color: ColorConstant.whiteA700)))])))), CustomAppBar(height: getVerticalSize(895), leadingWidth: 43, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgGrid, margin: getMargin(left: 15, top: 32, bottom: 19)), title: AppbarSubtitle(text: "lbl_select_cab".tr, margin: getMargin(left: 17)), styleType: Style.bgFillWhiteA700)]))])))); } 
onTapSelectcab() { Get.toNamed(AppRoutes.selectCabOneScreen, ); } 
 }