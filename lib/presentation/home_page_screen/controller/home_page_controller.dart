import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/home_page_screen/models/home_page_model.dart';import 'package:flutter/material.dart';class HomePageController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HomePageModel> homePageModelObj = HomePageModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
