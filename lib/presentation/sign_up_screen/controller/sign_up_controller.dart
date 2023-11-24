import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';class SignUpController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController phonenumberController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullnameController.dispose(); phonenumberController.dispose(); cityController.dispose(); addressController.dispose(); passwordController.dispose(); } 
 }
