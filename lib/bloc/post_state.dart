
import 'package:avocado_test/model/post.dart';

abstract class PostState{}

class PostsInitial extends PostState{}

class LoadingState extends PostState{}

class ErrorState extends PostState{}

class SuccessState extends PostState{
  final List<Post> posts;
  SuccessState({required this.posts});
}