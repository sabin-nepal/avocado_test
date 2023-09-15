import 'dart:io';

import 'package:avocado_test/services/network/api_exceptions.dart';
import 'package:avocado_test/services/network/api_response.dart';
import 'package:http/http.dart' as http;

class HttpService{
  
  Future getResponse() async {
    try {
      Uri uri = Uri(
          scheme: "https",
          host: "jsonplaceholder.typicode.com",
          path: "posts",);
      final response = await http.get(uri, headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
      return AppResponse.throwResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }
}