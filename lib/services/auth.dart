import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:dio/dio.dart';

class Auth {
  //static String userId = Hive.box('name').get('userID');
  static String baseUrl = "https://rent24.com.ng/api/";

  Future<dynamic> login({
    @required String? email,
    @required String? password,
  }) async {
    var dio = Dio();

    var formData = FormData.fromMap({
      'email': email,
      'password': password,
    });

    try {
      var response = await dio.post(baseUrl + 'signin',
          data: formData,
          options: Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data["status"] == "__success__") {
          Hive.box("rent").put("all_data", data);

          //successful
          return 200;
        } else {
          //username or password does not exist
          return 401;
        }
      }
    } on DioError catch (e) {
      print(e.message);
      return 405;
    }
  }

  Future<dynamic> signup({
    @required String? full_name,
    @required String? email,
    @required String? password,
    @required String? address,
    @required String? state,
    @required String? city,
    @required String? lga,
    @required String? phone,
  }) async {
    var dio = Dio();

    var formData = FormData.fromMap({
      'email': email,
      'password': password,
      'full_name': full_name,
      'address': address,
      'state': state,
      'city': city,
      'lga': lga,
      'phone': phone,
    });

    try {
      var response = await dio.post(baseUrl + 'signin',
          data: formData,
          options: Options(
            headers: {
              "accept": "application/json",
            },
          ));

      // print(response.data.toString());
      var data = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data["status"] == "__success__") {
          Hive.box("rent").put("all_data", data);

          //successful
          return 200;
        } else {
          //username or password does not exist
          return 401;
        }
      }
    } on DioError catch (e) {
      print(e.message);
      return 405;
    }
  }
}
