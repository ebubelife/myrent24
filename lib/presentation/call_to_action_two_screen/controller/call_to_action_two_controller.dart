import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/call_to_action_two_screen/models/call_to_action_two_model.dart';import 'package:flutter/material.dart';class CallToActionTwoController extends GetxController {TextEditingController durationtwoController = TextEditingController();

Rx<CallToActionTwoModel> callToActionTwoModelObj = CallToActionTwoModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); durationtwoController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; callToActionTwoModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); callToActionTwoModelObj.value.dropdownItemList.refresh(); } 
 }
