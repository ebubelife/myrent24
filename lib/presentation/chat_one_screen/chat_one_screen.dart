import '../chat_one_screen/widgets/chat_one_item_widget.dart';
import 'controller/chat_one_controller.dart';
import 'models/chat_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/presentation/notification_one_page/notification_one_page.dart';
import 'package:rent24/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ChatOneScreen extends GetWidget<ChatOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 21,
                    top: 29,
                    right: 21,
                    bottom: 29,
                  ),
                  decoration: AppDecoration.fillIndigoA200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "lbl_hello_john".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSansationBold15Gray20001,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_chat".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtSansationBold32,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgUser,
                              height: getSize(
                                30,
                              ),
                              width: getSize(
                                30,
                              ),
                              margin: getMargin(
                                bottom: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 23,
                    top: 25,
                    right: 31,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: getVerticalSize(
                            26,
                          ),
                        );
                      },
                      itemCount: controller
                          .chatOneModelObj.value.chatOneItemList.value.length,
                      itemBuilder: (context, index) {
                        ChatOneItemModel model = controller
                            .chatOneModelObj.value.chatOneItemList.value[index];
                        return ChatOneItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconsaxoutlinehome2:
        return AppRoutes.notificationOnePage;
      case BottomBarEnum.Notificationindigoa200:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneheart:
        return "/";
      case BottomBarEnum.Iconsaxtwotoneprofile:
        return "/";
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
}
