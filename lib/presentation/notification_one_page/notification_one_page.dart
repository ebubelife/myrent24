import '../notification_one_page/widgets/notification_item_widget.dart';
import 'controller/notification_one_controller.dart';
import 'models/notification_item_model.dart';
import 'models/notification_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rent24/core/app_export.dart';

class NotificationOnePage extends StatelessWidget {
  final NotificationOneController controller =
      Get.put(NotificationOneController(NotificationOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlack900263,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: getPadding(
                    left: 21,
                    right: 21,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 3,
                          top: 21,
                        ),
                        child: Text(
                          "lbl_notification".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoExtraBold20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 29,
                          right: 2,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: getVerticalSize(
                                  13,
                                ),
                              );
                            },
                            itemCount: controller.notificationOneModelObj.value
                                .notificationItemList.value.length,
                            itemBuilder: (context, index) {
                              NotificationItemModel model = controller
                                  .notificationOneModelObj
                                  .value
                                  .notificationItemList
                                  .value[index];
                              return NotificationItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              80,
                            ),
                            width: getHorizontalSize(
                              70,
                            ),
                            padding: getPadding(
                              left: 12,
                              top: 16,
                              right: 12,
                              bottom: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup87,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgIconsaxlinearadd,
                                  height: getSize(
                                    45,
                                  ),
                                  width: getSize(
                                    45,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
