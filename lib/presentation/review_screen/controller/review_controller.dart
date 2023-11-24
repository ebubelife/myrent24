import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/review_screen/models/review_model.dart';import 'package:flutter/material.dart';class ReviewController extends GetxController {TextEditingController group138Controller = TextEditingController();

Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group138Controller.dispose(); } 
 }
