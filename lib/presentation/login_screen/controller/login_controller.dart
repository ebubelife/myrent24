import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';class LoginController extends GetxController {TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); } 
 }
