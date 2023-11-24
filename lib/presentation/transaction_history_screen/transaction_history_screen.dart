import '../transaction_history_screen/widgets/transaction_item_widget.dart';
import 'controller/transaction_history_controller.dart';
import 'models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_button.dart';
import 'package:rent24/widgets/custom_drop_down.dart';

class TransactionHistoryScreen extends GetWidget<TransactionHistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 19, top: 29, right: 19, bottom: 29),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(237),
                          text: "msg_transaction_history".tr,
                          margin: getMargin(left: 2),
                          shape: ButtonShape.Square,
                          padding: ButtonPadding.PaddingT1,
                          fontStyle: ButtonFontStyle.NunitoExtraBold20Black900,
                          prefixWidget: Container(
                              margin: getMargin(right: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleftBlack900)),
                          onTap: () {
                            onTapTransaction();
                          }),
                      CustomDropDown(
                          width: getHorizontalSize(196),
                          focusNode: FocusNode(),
                          autofocus: true,
                          icon: Container(
                              margin: getMargin(left: 10),
                              child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgMaterialsymbolsarrowdropdown)),
                          hintText: "msg_2022_11_15_2023_04_14".tr,
                          margin: getMargin(left: 4, top: 16),
                          variant: DropDownVariant.None,
                          padding: DropDownPadding.PaddingT1,
                          fontStyle: DropDownFontStyle.NunitoBold14,
                          items: controller.transactionHistoryModelObj.value
                              .dropdownItemList.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 39),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(19));
                                  },
                                  itemCount: controller
                                      .transactionHistoryModelObj
                                      .value
                                      .transactionItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    TransactionItemModel model = controller
                                        .transactionHistoryModelObj
                                        .value
                                        .transactionItemList
                                        .value[index];
                                    return TransactionItemWidget(model);
                                  }))))
                    ]))));
  }

  onTapTransaction() {
    Get.toNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
