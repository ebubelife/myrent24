import '../controller/transaction_history_controller.dart';
import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactionItemWidget extends StatelessWidget {
  TransactionItemWidget(this.transactionItemModelObj);

  TransactionItemModel transactionItemModelObj;

  var controller = Get.find<TransactionHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 56,
          width: 56,
          variant: IconButtonVariant.FillIndigoA20033,
          shape: IconButtonShape.CircleBorder28,
          padding: IconButtonPadding.PaddingAll12,
          child: CustomImageView(
            svgPath: ImageConstant.imgIconparksolidbanktransfer,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 8,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_funding_to_wallet".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoBold17,
              ),
              Text(
                "msg_january_14_7_45".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoBold15Gray500,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 8,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_5_000_00".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoExtraBold17Black900,
              ),
              Text(
                "lbl_successful".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoBold14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
