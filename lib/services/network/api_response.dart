import 'dart:convert';

import 'package:avocado_test/services/network/api_exceptions.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class AppResponse {
  AppResponse(Response response);

  static dynamic throwResponse(Response response) {
    debugPrint("Method,Url: ${response.request}");
    debugPrint("Response: ${(response.body)}");

    switch (response.statusCode) {
      case 200:
        return json.decode(response.body.toString());

      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw NotFoundException("You are not authoirized");
      case 404:
        throw NotFoundException('Record not found');
      case 422:
        throw BadRequestException(response.body.toString());  
      case 609:
        throw NotFoundException('Record not found');
      case 500:
        throw InternalServerException(
            'Sorry something went wrong. Please try again later');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
