import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/select_cab_bottomsheet/models/select_cab_model.dart';import 'package:flutter/material.dart';class SelectCabController extends GetxController {TextEditingController paymentoptioncaController = TextEditingController();

TextEditingController paymentoptionwaController = TextEditingController();

Rx<SelectCabModel> selectCabModelObj = SelectCabModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); paymentoptioncaController.dispose(); paymentoptionwaController.dispose(); } 
 }
