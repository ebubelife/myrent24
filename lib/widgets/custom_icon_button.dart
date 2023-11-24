import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case IconButtonVariant.FillBlack9007f:
        return ColorConstant.black9007f;
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.indigoA200;
      case IconButtonVariant.OutlineWhiteA700:
        return ColorConstant.indigoA200;
      case IconButtonVariant.OutlineIndigoA200:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineIndigoA20033:
        return ColorConstant.indigoA200;
      case IconButtonVariant.FillIndigoA20033:
        return ColorConstant.indigoA20033;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case IconButtonVariant.OutlineIndigoA200:
        return Border.all(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case IconButtonVariant.OutlineBlack9003f_1:
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillBlack9007f:
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.OutlineIndigoA20033:
      case IconButtonVariant.FillIndigoA20033:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case IconButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      case IconButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.CircleBorder34:
        return BorderRadius.circular(
          getHorizontalSize(
            34.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          ),
        ];
      case IconButtonVariant.OutlineIndigoA20033:
        return [
          BoxShadow(
            color: ColorConstant.indigoA20033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ];
      case IconButtonVariant.FillIndigoA200:
      case IconButtonVariant.FillBlack9007f:
      case IconButtonVariant.OutlineWhiteA700:
      case IconButtonVariant.OutlineIndigoA200:
      case IconButtonVariant.FillIndigoA20033:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6.83,
            ),
          ),
        ];
    }
  }
}

enum IconButtonShape {
  CircleBorder15,
  RoundedBorder10,
  CircleBorder25,
  RoundedBorder5,
  CircleBorder28,
  CircleBorder34,
}
enum IconButtonPadding {
  PaddingAll6,
  PaddingAll12,
  PaddingAll19,
}
enum IconButtonVariant {
  OutlineBlack9003f_1,
  FillIndigoA200,
  FillBlack9007f,
  OutlineBlack9003f,
  OutlineWhiteA700,
  OutlineIndigoA200,
  OutlineIndigoA20033,
  FillIndigoA20033,
}
