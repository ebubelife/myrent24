import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

void showToast(String label) {
  Fluttertoast.showToast(
    msg: label,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Color.fromARGB(255, 123, 123, 123),
    textColor: Color.fromARGB(255, 255, 255, 255),
    fontSize: 16.0,
  );
}
