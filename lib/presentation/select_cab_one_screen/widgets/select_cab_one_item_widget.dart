import '../controller/select_cab_one_controller.dart';
import '../models/select_cab_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore: must_be_immutable
class SelectCabOneItemWidget extends StatelessWidget {
  SelectCabOneItemWidget(this.selectCabOneItemModelObj);

  SelectCabOneItemModel selectCabOneItemModelObj;

  var controller = Get.find<SelectCabOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getHorizontalSize(
            81,
          ),
          child: Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMaterialsymbolBlueGray90001,
                height: getSize(
                  20,
                ),
                width: getSize(
                  20,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  bottom: 1,
                ),
                child: Obx(
                  () => Text(
                    selectCabOneItemModelObj.personscounterTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoMedium13,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            left: 79,
          ),
          child: Row(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgIconparkoutlinemanualgear,
                height: getSize(
                  20,
                ),
                width: getSize(
                  20,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  bottom: 1,
                ),
                child: Obx(
                  () => Text(
                    selectCabOneItemModelObj.autogearTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoMedium13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
