import '../controller/notification_one_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 2,
        bottom: 2,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: getSize(
              70,
            ),
            width: getSize(
              70,
            ),
            margin: getMargin(
              top: 5,
              bottom: 4,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse7,
                  height: getSize(
                    70,
                  ),
                  width: getSize(
                    70,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      35,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 30,
                  width: 30,
                  variant: IconButtonVariant.OutlineWhiteA700,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMdiguestroomoutline,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    254,
                  ),
                  child: Text(
                    "msg_john_doe_requested".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoSemiBold17Black900,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_20mins_ago".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUbuntuMedium14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
