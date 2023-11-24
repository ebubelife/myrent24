import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';class ChatController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
