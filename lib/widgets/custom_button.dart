import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT1:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT4:
        return getPadding(
          top: 4,
          right: 4,
          bottom: 4,
        );
      case ButtonPadding.PaddingT66:
        return getPadding(
          top: 66,
          right: 66,
          bottom: 66,
        );
      case ButtonPadding.PaddingT19:
        return getPadding(
          top: 19,
          right: 19,
          bottom: 19,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.indigoA200;
      case ButtonVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case ButtonVariant.FillGray5001:
        return ColorConstant.gray5001;
      case ButtonVariant.OutlineWhiteA7004c:
        return ColorConstant.whiteA7004c;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillWhiteA70066:
        return ColorConstant.whiteA70066;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray8002601:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.OutlineIndigoA2004c:
      case ButtonVariant.OutlineIndigoA200:
        return null;
      default:
        return ColorConstant.indigoA200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA7004c:
        return BorderSide(
          color: ColorConstant.whiteA7004c,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA200:
        return BorderSide(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack9003f_2:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.OutlineIndigoA2004c:
      case ButtonVariant.FillGray5001:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillWhiteA70066:
      case ButtonVariant.OutlineBlack9003f_1:
      case ButtonVariant.OutlineGray8002601:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineIndigoA2004c:
        return ColorConstant.indigoA2004c;
      case ButtonVariant.OutlineBlack9003f_1:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineGray8002601:
        return ColorConstant.gray8002601;
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillGray5001:
      case ButtonVariant.OutlineWhiteA7004c:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillWhiteA70066:
      case ButtonVariant.OutlineIndigoA200:
        return null;
      default:
        return ColorConstant.black9003f;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NunitoExtraBold20Bluegray100:
        return TextStyle(
          color: ColorConstant.blueGray100,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.NunitoExtraBold20Bluegray900:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.NunitoBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UbuntuBold15:
        return TextStyle(
          color: ColorConstant.amber500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UbuntuBold15Bluegray10001:
        return TextStyle(
          color: ColorConstant.blueGray10001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoBold17:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.UbuntuBold15IndigoA200:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoExtraBold20IndigoA200:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.SansationBold25:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SansationBold15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.SansationRegular17:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NunitoExtraBold15:
        return TextStyle(
          color: ColorConstant.indigoA200,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.NunitoExtraBold20Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA7004c:
        return Border.all(
          color: ColorConstant.whiteA7004c,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineIndigoA200:
        return Border.all(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack9003f_2:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.OutlineIndigoA2004c:
      case ButtonVariant.FillGray5001:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillWhiteA70066:
      case ButtonVariant.OutlineBlack9003f_1:
      case ButtonVariant.OutlineGray8002601:
        return null;
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA2004c:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA2004c:
        return LinearGradient(
          begin: Alignment(
            0.5,
            1,
          ),
          end: Alignment(
            0.5,
            0,
          ),
          colors: [
            ColorConstant.indigoA200,
            ColorConstant.indigoA100,
          ],
        );
      case ButtonVariant.OutlineBlack9003f_2:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillGray5001:
      case ButtonVariant.OutlineWhiteA7004c:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillWhiteA70066:
      case ButtonVariant.OutlineBlack9003f_1:
      case ButtonVariant.OutlineIndigoA200:
      case ButtonVariant.OutlineGray8002601:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
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
              10,
            ),
          ),
        ];
      case ButtonVariant.OutlineIndigoA2004c:
        return [
          BoxShadow(
            color: ColorConstant.indigoA2004c,
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
      case ButtonVariant.OutlineBlack9003f_1:
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
              10,
            ),
          ),
        ];
      case ButtonVariant.OutlineGray8002601:
        return [
          BoxShadow(
            color: ColorConstant.gray8002601,
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
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillIndigoA200:
      case ButtonVariant.FillGray5001:
      case ButtonVariant.OutlineWhiteA7004c:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillWhiteA70066:
      case ButtonVariant.OutlineIndigoA200:
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
              10,
            ),
          ),
        ];
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  RoundedBorder20,
  RoundedBorder10,
}
enum ButtonPadding {
  PaddingAll16,
  PaddingT1,
  PaddingAll13,
  PaddingAll8,
  PaddingT4,
  PaddingT66,
  PaddingT19,
}
enum ButtonVariant {
  OutlineBlack9003f_2,
  OutlineBlack9003f,
  OutlineWhiteA700,
  FillIndigoA200,
  OutlineIndigoA2004c,
  FillGray5001,
  OutlineWhiteA7004c,
  FillWhiteA700,
  FillWhiteA70066,
  OutlineBlack9003f_1,
  OutlineIndigoA200,
  OutlineGray8002601,
}
enum ButtonFontStyle {
  NunitoExtraBold20,
  NunitoExtraBold20Bluegray100,
  NunitoExtraBold20Bluegray900,
  NunitoBold20,
  UbuntuBold15,
  UbuntuBold15Bluegray10001,
  NunitoBold17,
  UbuntuBold15IndigoA200,
  NunitoExtraBold20IndigoA200,
  SansationBold25,
  SansationBold15,
  SansationRegular17,
  NunitoExtraBold15,
  NunitoExtraBold20Black900,
}
