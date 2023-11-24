import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/profile_screen/models/profile_model.dart';import 'package:flutter/material.dart';class ProfileController extends GetxController {TextEditingController fullnameoneController = TextEditingController();

TextEditingController emailoneController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController stateoneController = TextEditingController();

Rx<ProfileModel> profileModelObj = ProfileModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullnameoneController.dispose(); emailoneController.dispose(); dateController.dispose(); stateoneController.dispose(); } 
 }
