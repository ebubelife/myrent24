import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.UbuntuBold17:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.NunitoExtraBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case TextFormFieldFontStyle.NunitoSemiBold17:
        return TextStyle(
          color: ColorConstant.gray5002,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.NunitoBold17:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.SansationBold17:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.NunitoBold17Gray400:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.InterSemiBold18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.InterSemiBold20:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case TextFormFieldShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case TextFormFieldShape.CircleBorder34:
        return BorderRadius.circular(
          getHorizontalSize(
            34.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillIndigoA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineWhiteA70066:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.whiteA70066,
            width: 2,
          ),
        );
      case TextFormFieldVariant.FillGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray80026:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBluegray50:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.indigoA2004c,
            width: 3,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGray100:
        return ColorConstant.gray100;
      case TextFormFieldVariant.FillIndigoA200:
        return ColorConstant.indigoA200;
      case TextFormFieldVariant.FillGray200:
        return ColorConstant.gray200;
      case TextFormFieldVariant.OutlineWhiteA70066:
        return ColorConstant.whiteA7007f;
      case TextFormFieldVariant.FillGray10001:
        return ColorConstant.gray10001;
      case TextFormFieldVariant.OutlineGray80026:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineIndigoA2004c:
        return false;
      case TextFormFieldVariant.FillGray100:
        return true;
      case TextFormFieldVariant.FillIndigoA200:
        return true;
      case TextFormFieldVariant.FillGray200:
        return true;
      case TextFormFieldVariant.OutlineWhiteA70066:
        return true;
      case TextFormFieldVariant.FillGray10001:
        return true;
      case TextFormFieldVariant.OutlineGray80026:
        return true;
      case TextFormFieldVariant.FillBluegray50:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case TextFormFieldPadding.PaddingT20:
        return getPadding(
          left: 20,
          top: 20,
          bottom: 20,
        );
      case TextFormFieldPadding.PaddingT20_1:
        return getPadding(
          left: 11,
          top: 20,
          right: 11,
          bottom: 20,
        );
      case TextFormFieldPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case TextFormFieldPadding.PaddingT13:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 15,
          top: 15,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT10:
        return getPadding(
          top: 10,
          right: 10,
          bottom: 10,
        );
      case TextFormFieldPadding.PaddingT22:
        return getPadding(
          top: 22,
          bottom: 22,
        );
      default:
        return getPadding(
          top: 20,
          right: 20,
          bottom: 20,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder5,
  RoundedBorder10,
  CircleBorder20,
  CircleBorder34,
}
enum TextFormFieldPadding {
  PaddingAll20,
  PaddingT20,
  PaddingT20_1,
  PaddingT20_2,
  PaddingAll13,
  PaddingT13,
  PaddingT15,
  PaddingT10,
  PaddingT22,
}
enum TextFormFieldVariant {
  None,
  OutlineIndigoA2004c,
  FillGray100,
  FillIndigoA200,
  FillGray200,
  OutlineWhiteA70066,
  FillGray10001,
  OutlineGray80026,
  FillBluegray50,
}
enum TextFormFieldFontStyle {
  NunitoExtraBold17,
  UbuntuBold17,
  NunitoExtraBold20,
  NunitoSemiBold17,
  NunitoBold17,
  SansationBold17,
  NunitoBold17Gray400,
  InterSemiBold18,
  InterSemiBold20,
}
