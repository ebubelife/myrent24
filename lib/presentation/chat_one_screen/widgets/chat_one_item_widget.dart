import '../controller/chat_one_controller.dart';
import '../models/chat_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore: must_be_immutable
class ChatOneItemWidget extends StatelessWidget {
  ChatOneItemWidget(this.chatOneItemModelObj);

  ChatOneItemModel chatOneItemModelObj;

  var controller = Get.find<ChatOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse980x80,
          height: getSize(
            80,
          ),
          width: getSize(
            80,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              40,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
            bottom: 4,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      chatOneItemModelObj.markmillTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoExtraBold17Black900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 116,
                      bottom: 3,
                    ),
                    child: Obx(
                      () => Text(
                        chatOneItemModelObj.timeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoExtraBold15IndigoA200,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        178,
                      ),
                      child: Obx(
                        () => Text(
                          chatOneItemModelObj.helloiwilllikeTxt.value,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSansationBold15Gray400,
                        ),
                      ),
                    ),
                    Container(
                      width: getSize(
                        30,
                      ),
                      margin: getMargin(
                        left: 37,
                        top: 3,
                        bottom: 3,
                      ),
                      padding: getPadding(
                        left: 10,
                        top: 4,
                        right: 10,
                        bottom: 4,
                      ),
                      decoration: AppDecoration.txtFillIndigoA200.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder15,
                      ),
                      child: Obx(
                        () => Text(
                          chatOneItemModelObj.groupeightynineTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoExtraBold15WhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
