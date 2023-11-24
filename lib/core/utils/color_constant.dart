import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color black9007f = fromHex('#7f000000');

  static Color gray5001 = fromHex('#f7f7ff');

  static Color gray5002 = fromHex('#fcfcfc');

  static Color indigoA100 = fromHex('#8e8eff');

  static Color gray80001 = fromHex('#4f4f4f');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color gray20001 = fromHex('#eeeeee');

  static Color gray20002 = fromHex('#eaeaea');

  static Color blueGray900 = fromHex('#303030');

  static Color gray50026 = fromHex('#26ababab');

  static Color deepPurpleA200 = fromHex('#a35bff');

  static Color gray20003 = fromHex('#ececec');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color gray600 = fromHex('#727272');

  static Color black9004c = fromHex('#4c000000');

  static Color gray400 = fromHex('#afafaf');

  static Color blueGray100 = fromHex('#d1d1d1');

  static Color amber500 = fromHex('#ffb908');

  static Color gray800 = fromHex('#505050');

  static Color gray4003f = fromHex('#3fc8c8c8');

  static Color indigoA20019 = fromHex('#195c5cff');

  static Color gray8002601 = fromHex('#264e4e4e');

  static Color gray200 = fromHex('#f0f0f0');

  static Color gray60026 = fromHex('#266c6c6c');

  static Color gray10003 = fromHex('#f6f6f6');

  static Color indigoA2004c = fromHex('#4c5c5cff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color gray10002 = fromHex('#f5f5f5');

  static Color gray40001 = fromHex('#c2c2c2');

  static Color gray40002 = fromHex('#b0b0b0');

  static Color gray10001 = fromHex('#f2f2f2');

  static Color gray40003 = fromHex('#b3b3b3');

  static Color gray40004 = fromHex('#b8b8b8');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50019 = fromHex('#198f8f8f');

  static Color indigoA20066 = fromHex('#665c5cff');

  static Color indigoA20026 = fromHex('#265c5cff');

  static Color blueGray50 = fromHex('#f1f1f1');

  static Color blueGray10001 = fromHex('#d6d6d6');

  static Color indigoA10019 = fromHex('#199494ff');

  static Color blueGray10002 = fromHex('#d9d9d9');

  static Color gray80026 = fromHex('#26454545');

  static Color gray5003f = fromHex('#3fa3a3a3');

  static Color indigoA200 = fromHex('#5c5cff');

  static Color lightBlue90019 = fromHex('#1900498d');

  static Color gray50 = fromHex('#f9f9ff');

  static Color purple10026 = fromHex('#26d6adff');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#939393');

  static Color gray70019 = fromHex('#195f5f5f');

  static Color gray50003 = fromHex('#a4a4a4');

  static Color indigoA1000c = fromHex('#0ca2a2ff');

  static Color gray50002 = fromHex('#a3a3a3');

  static Color black90026 = fromHex('#26000000');

  static Color indigoA20033 = fromHex('#335c5cff');

  static Color gray700 = fromHex('#636363');

  static Color gray500 = fromHex('#8f8f8f');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#001a33');

  static Color gray90001 = fromHex('#1f1f1f');

  static Color indigoA10026 = fromHex('#26adadff');

  static Color gray300 = fromHex('#dfdfdf');

  static Color gray30001 = fromHex('#dbdbdb');

  static Color gray100 = fromHex('#f4f4f4');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color gray40026 = fromHex('#26c5c5c5');

  static Color deepPurpleA20096 = fromHex('#969647ff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
