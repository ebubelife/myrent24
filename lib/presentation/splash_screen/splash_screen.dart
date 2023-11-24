import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigoA200,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 50,
            right: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img1removebgpreview,
                height: getSize(
                  289,
                ),
                width: getSize(
                  289,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
