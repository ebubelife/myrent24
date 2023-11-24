import 'controller/call_to_action_two_controller.dart';import 'package:flutter/material.dart';import 'package:rent24/core/app_export.dart';import 'package:rent24/widgets/custom_button.dart';import 'package:rent24/widgets/custom_drop_down.dart';import 'package:rent24/widgets/custom_text_form_field.dart';class CallToActionTwoScreen extends GetWidget<CallToActionTwoController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray50, body: Container(width: double.maxFinite, padding: getPadding(left: 21, top: 22, right: 21, bottom: 22), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(children: [CustomButton(width: getHorizontalSize(105), text: "lbl_back".tr, margin: getMargin(bottom: 1), shape: ButtonShape.Square, fontStyle: ButtonFontStyle.NunitoExtraBold20Bluegray900, prefixWidget: Container(margin: getMargin(right: 29), child: CustomImageView(svgPath: ImageConstant.imgArrowleftGray800)), onTap: () {onTapBack();}), Padding(padding: getPadding(left: 45, top: 3), child: Text("lbl_filter".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoExtraBold20WhiteA700))]), Padding(padding: getPadding(left: 5, top: 11), child: Text("msg_fill_in_the_needed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold17Gray500)), Padding(padding: getPadding(left: 5, top: 23), child: Text("lbl_duration".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold17)), CustomDropDown(focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 14), child: CustomImageView(svgPath: ImageConstant.imgArrowdownGray600)), hintText: "lbl_1_day".tr, margin: getMargin(left: 4, top: 9, right: 5), items: controller.callToActionTwoModelObj.value.dropdownItemList.value, onChanged: (value) {controller.onSelected(value);}), Padding(padding: getPadding(left: 3, top: 19), child: Text("lbl_actual_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold17)), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.durationtwoController, hintText: "lbl_1_day".tr, margin: getMargin(left: 2, top: 8, right: 7), variant: TextFormFieldVariant.FillGray10001, padding: TextFormFieldPadding.PaddingT15, fontStyle: TextFormFieldFontStyle.NunitoBold17, textInputAction: TextInputAction.done, suffix: Container(margin: getMargin(left: 30, top: 15, right: 17, bottom: 15), child: CustomImageView(svgPath: ImageConstant.imgBicalendardate)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(55))), Padding(padding: getPadding(left: 5, top: 20, bottom: 5), child: Text("lbl_price_n1_000".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold17Gray800))])), bottomNavigationBar: CustomButton(height: getVerticalSize(60), text: "lbl_pay_now".tr, margin: getMargin(left: 20, right: 20, bottom: 36)))); } 
onTapBack() { Get.toNamed(AppRoutes.homePageScreen, ); } 
 }