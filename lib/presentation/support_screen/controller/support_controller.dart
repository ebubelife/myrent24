import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/support_screen/models/support_model.dart';import 'package:flutter/material.dart';class SupportController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<SupportModel> supportModelObj = SupportModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
