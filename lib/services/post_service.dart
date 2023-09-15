import 'dart:developer';

import 'package:avocado_test/model/post.dart';
import 'package:avocado_test/services/http_service.dart';

class PostService {
  Future<List<Post>> getPosts() async {
    try {
      final response = await HttpService().getResponse();
      return response.map<Post>((e) => Post.fromJson(e)).toList();
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
