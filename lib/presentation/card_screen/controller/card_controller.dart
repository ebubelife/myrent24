import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/card_screen/models/card_model.dart';import 'package:flutter/material.dart';class CardController extends GetxController {TextEditingController cardnumbervalueController = TextEditingController();

TextEditingController expiringdatevalController = TextEditingController();

TextEditingController cvvvalueController = TextEditingController();

Rx<CardModel> cardModelObj = CardModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); cardnumbervalueController.dispose(); expiringdatevalController.dispose(); cvvvalueController.dispose(); } 
 }
