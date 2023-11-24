import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/call_to_action_one_screen/models/call_to_action_one_model.dart';import 'package:flutter/material.dart';class CallToActionOneController extends GetxController {TextEditingController locationController = TextEditingController();

Rx<CallToActionOneModel> callToActionOneModelObj = CallToActionOneModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); locationController.dispose(); } 
 }
