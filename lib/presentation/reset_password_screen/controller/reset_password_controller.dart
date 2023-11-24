import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/reset_password_screen/models/reset_password_model.dart';import 'package:flutter/material.dart';class ResetPasswordController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
