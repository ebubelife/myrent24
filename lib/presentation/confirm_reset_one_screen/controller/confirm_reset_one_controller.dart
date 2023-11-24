import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/confirm_reset_one_screen/models/confirm_reset_one_model.dart';import 'package:flutter/material.dart';class ConfirmResetOneController extends GetxController {TextEditingController entercodetextController = TextEditingController();

Rx<ConfirmResetOneModel> confirmResetOneModelObj = ConfirmResetOneModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); entercodetextController.dispose(); } 
 }
