import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:rent24/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  });

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillBlack9007f,
          shape: IconButtonShape.CircleBorder25,
          padding: IconButtonPadding.PaddingAll12,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
