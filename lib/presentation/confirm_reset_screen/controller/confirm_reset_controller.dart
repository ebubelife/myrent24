import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/confirm_reset_screen/models/confirm_reset_model.dart';import 'package:flutter/material.dart';class ConfirmResetController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<ConfirmResetModel> confirmResetModelObj = ConfirmResetModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
