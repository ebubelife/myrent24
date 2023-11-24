import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/call_to_action_screen/models/call_to_action_model.dart';class CallToActionController extends GetxController {Rx<CallToActionModel> callToActionModelObj = CallToActionModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
